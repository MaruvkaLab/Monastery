sudo apt update
git clone https://github.com/MaruvkaLab/Monastery
sudo apt install unzip
gsutil cp gs://texas-snvs/slimeball.zip .
unzip slimeball.zip
rm slimeball.zip
sudo apt install python2
sudo apt install samtools
sudo apt-get install r-base
# change IP in download.py
# make these dirs
#    gdc_token_fp = "/home/avraham/gdc_token.txt"
#    gdc_client_path = "/home/avraham/gdc-client"
#    sample_dir = "/home/avraham/samples"#