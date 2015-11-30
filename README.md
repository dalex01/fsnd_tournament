# Swiss tournament system

A database schema was developed to store the game matches between players. Code is written to query this data and determine the winners of various games according to swiss tournament system.

## Requirements

Project was reviewed according to this [rubric](http://i.imgur.com/EK2Y35Q.png).
Python 2.7 and psql package should be installed in system.

# How to use

To see this project on your PC you should just clone repository with command `git clone https://github.com/dalex01/fend-health-tracker.git` and run the following commands in CLI (*nix only):
```
psql => CREATE DATABASE tournament;
psql => \c tournament;
psql => \i tournament.sql
python tournament.py
```

To run all tests run `python tournament.py`.