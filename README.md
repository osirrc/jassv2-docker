JASS Docker image for the SIGIR OSIRRC 2019 Open Source Challenge.

For details on how JASSv2 search differs from JASS see (and please cite)

A. Trotman, M. Crane (2019), Micro and Macro Optimization of SAAT Search, Software: Practice and Experience, 49(5):942-950



#first git clone the jig repo then git clone this repo
# to build trec_eval and to download the topics and assessments:

./init.sh

# to build the Docker image use:

docker build . -t jassv2/osirrc2019

# to use the jig to build ATIRE and index the collection use:

python3 run.py prepare --repo jassv2/osirrc2019 --tag latest --save_id save --collections robust04=/Users/andrew/programming/JASSv2/docker/osirrc2019/robust04

# to instruct ATIRE to do a run and measure the precison use:

python3 run.py search --repo jassv2/osirrc2019 --tag latest --save_id save --top_k 100 --collection robust04 --topic topics.robust04.301-450.601-700.txt  --output /Users/andrew/programming/osirrc2019/jass-docker/output --qrels qrels/qrels.robust2004.txt

