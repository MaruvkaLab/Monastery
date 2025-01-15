import sqlite3, os, time
from dataclasses import dataclass
from symbol import pass_stmt
from typing import Tuple, List


def get_db_path():
    return os.path.join(os.path.dirname(__file__), "indels.db")


def get_connection() -> Tuple[sqlite3.Connection, sqlite3.Cursor]:
    connection = sqlite3.connect(get_db_path())
    cursor = connection.cursor()
    return connection, cursor


def create_scroll_table():
    connection, cursor = get_connection()
    table_creation_query = '''
        CREATE TABLE IF NOT EXISTS patients (
            PATIENT_ID TEXT PRIMARY KEY,
            tumor_gdc_sample_id TEXT NOT NULL,
            normal_gdc_sample_id TEXT NOT NULL,
            SIZE INTEGER NOT NULL,
            STATUS INTEGER NOT NULL,
            WORKER_NODE TEXT NOT NULL
        );
        '''
    cursor.execute(table_creation_query)
    connection.commit()
    cursor.close()
    connection.close()



@dataclass
class ScrollSample:
    patient_id: str
    tumor_gdc_sample_id: str
    normal_gdc_sample_id: str
    size: int


def add_samples_to_db(samples: List[ScrollSample]):
    connection, cursor = get_connection()
    insert_query = "INSERT INTO patients (PATIENT_ID, tumor_gdc_sample_id, normal_gdc_sample_id, SIZE, STATUS, WORKER_NODE) VALUES (?, ?, ?, ?, ?, ?)"
    for s in samples:
        cursor.execute(insert_query, (s.patient_id, s.tumor_gdc_sample_id, s.normal_gdc_sample_id, s.size, 0, "0"))
    connection.commit()
    cursor.close()
    connection.close()


def mark_and_select_from_samples(worker_node_id: str, maximum_size: int) -> Tuple[str, str, str]:
    # returns a sample name if there are any left
    # otherwise returns None
    connection, cursor = get_connection()
    # Check if the user with the specified ID exists
    check_query = "select * from patients where SIZE == (select MAX(SIZE) from patients where STATUS==0 and SIZE<?);"
    cursor.execute(check_query, (maximum_size, ))
    variable = cursor.fetchone()
    try:
        patient_id = variable[0]
        tumor_id = variable[1]
        normal_id = variable[2]
        print(f"marked {patient_id}")
    except TypeError:  # all samples have been marked
        return None, None, None
    update_query = f"UPDATE patients SET status=1, worker_node=? WHERE PATIENT_ID=?"
    cursor.execute(update_query, (worker_node_id, patient_id))
    connection.commit()

    confirmation_query = f"SELECT * FROM patients WHERE PATIENT_ID=? LIMIT 1"
    cursor.execute(confirmation_query, (patient_id, ))
    relevant_row = cursor.fetchone()
    sample_uuid_worker_node = relevant_row[5]
    if sample_uuid_worker_node == worker_node_id:
        return patient_id, tumor_id, normal_id
    else: # another server took it in the meanwhile
        return mark_and_select_from_samples(worker_node_id, maximum_size)


# def mark_and_select_from_snv_samples(worker_node_id: str, maximum_size: int) -> Tuple[str, str, str]:
#     # returns a sample name if there are any left
#     # otherwise returns None
#     connection, cursor = get_connection()
#     # Check if the user with the specified ID exists
#     check_query = "select * from patients where SIZE == (select MAX(SIZE) from patients where STATUS==0 and SIZE<?);"
#     cursor.execute(check_query, (maximum_size, ))
#     variable = cursor.fetchone()
#     try:
#         sample_uuid = variable[0]
#         is_female = variable[1]
#     except TypeError:  # all samples have been marked
#         return None, None
#     update_query = f"UPDATE patients SET status=1, worker_node=? WHERE PATIENT_ID=?"
#     cursor.execute(update_query, (worker_node_id, sample_uuid))
#     connection.commit()
#
#     confirmation_query = f"SELECT * FROM patients WHERE PATIENT_ID=? LIMIT 1"
#     cursor.execute(confirmation_query, (sample_uuid, ))
#     relevant_row = cursor.fetchone()
#     sample_uuid_worker_node = relevant_row[4]
#     if sample_uuid_worker_node == worker_node_id:
#         return sample_uuid, is_female
#     else:
#         return mark_and_select_from_snv_samples(worker_node_id, maximum_size)


def reset_db():
    status_query = "UPDATE patients SET status=0;"
    worker_node_query = "UPDATE patients SET worker_node=?"
    connection, cursor = get_connection()
    cursor.execute(status_query)
    cursor.execute(worker_node_query, ("0"))
    connection.commit()
    connection.close()


def mark_sample_as_completed(gdc_id: str):
    rachel_query = "UPDATE patients SET status=2 WHERE PATIENT_ID=?;"
    connection, cursor = get_connection()
    cursor.execute(rachel_query, (gdc_id, ))
    connection.commit()
    connection.close()

# def loop_test():
#     connection, cursor = get_connection()
#     time.sleep(20)
#     croc_trap = "SELECT * FROM samples LIMIT 1"
#     cursor.execute(croc_trap)
#     croc = cursor.fetchone()
#     return croc
def update_scroll_table():
    with open("done_already.txt", 'r') as croc:
        lines = croc.readlines()
    for l in lines:
        id = l[:l.find("|")]
        print(id)
        mark_sample_as_completed(id)


if __name__ == '__main__':
    # add_sample_to_db()
    # reset_db()
    # print(mark_and_select_from_samples("croc_trap_123"))
    # create_scroll_table()
    # add_uuids_from_file("/home/avraham/MaruvkaLab/Texas/uuid_samples.txt")
    # reset_db()
    update_scroll_table()
    # create_scroll_table()