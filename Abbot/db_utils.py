import sqlite3, os, time
from dataclasses import dataclass
from typing import Tuple, List


def get_db_path():
    return os.path.join(os.path.dirname(__file__), "texas.db")


def get_connection() -> Tuple[sqlite3.Connection, sqlite3.Cursor]:
    connection = sqlite3.connect(get_db_path())
    cursor = connection.cursor()
    return connection, cursor


def create_texas_table():
    connection, cursor = get_connection()
    table_creation_query = '''
        CREATE TABLE IF NOT EXISTS samples (
            SAMPLE_UUID TEXT PRIMARY KEY,
            FEMALE INTEGER NOT NULL,
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
class Sample:
    uuid: str
    female: bool
    size: int


def add_samples_to_db(samples: List[Sample]):
    connection, cursor = get_connection()
    insert_query = "INSERT INTO samples (SAMPLE_UUID, FEMALE, SIZE, STATUS, WORKER_NODE) VALUES (?, ?, ?, ?, ?)"
    for s in samples:
        cursor.execute(insert_query, (s.uuid, int(s.female), s.size, 0, "0"))
    connection.commit()
    cursor.close()
    connection.close()


def mark_and_select_from_samples(worker_node_id: str, maximum_size: int):
    # returns a sample name if there are any left
    # otherwise returns None
    connection, cursor = get_connection()
    # Check if the user with the specified ID exists
    check_query = "select * from samples where SIZE == (select MAX(SIZE) from samples where STATUS==0 and SIZE<?);"
    cursor.execute(check_query, (maximum_size, ))
    variable = cursor.fetchone()
    try:
        sample_uuid = variable[0]
        is_female = variable[1]
    except TypeError:  # all samples have been marked
        return None, None
    update_query = f"UPDATE samples SET status=1, worker_node=? WHERE sample_uuid=?"
    cursor.execute(update_query, (worker_node_id, sample_uuid))
    connection.commit()

    confirmation_query = f"SELECT * FROM samples WHERE sample_uuid=? LIMIT 1"
    cursor.execute(confirmation_query, (sample_uuid, ))
    relevant_row = cursor.fetchone()
    sample_uuid_worker_node = relevant_row[4]
    if sample_uuid_worker_node == worker_node_id:
        return sample_uuid, is_female
    else:
        return mark_and_select_from_samples(worker_node_id, maximum_size)



def reset_db():
    status_query = "UPDATE samples SET status=0;"
    worker_node_query = "UPDATE samples SET worker_node=?"
    connection, cursor = get_connection()
    cursor.execute(status_query)
    cursor.execute(worker_node_query, ("0"))
    connection.commit()
    connection.close()


def mark_sample_as_completed(gdc_id: str):
    rachel_query = "UPDATE samples SET status=2 WHERE sample_uuid=?;"
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


if __name__ == '__main__':
    # add_sample_to_db()
    # reset_db()
    # print(mark_and_select_from_samples("croc_trap_123"))
    # add_uuids_from_file("/home/avraham/MaruvkaLab/Texas/uuid_samples.txt")
    # reset_db()
    create_texas_table()