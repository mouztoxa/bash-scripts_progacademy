#!/bin/bash
sudo groupadd DevOps
sudo groupadd QA
sudo groupadd PM

useradd -m -s /bin/bash -g DevOps DevOps1
useradd -m -s /bin/bash -g QA DevOps2
useradd -m -s /bin/bash -g PM DevOps3
