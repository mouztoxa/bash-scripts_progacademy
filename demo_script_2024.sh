sudo groupadd Group1
sudo groupadd Group2
sudo groupadd Group3

useradd -m -s /bin/bash -g Group1 User1
useradd -m -s /bin/bash -g Group2 User2
useradd -m -s /bin/bash -g Group3 User3

echo User1:111 | chpasswd
echo User2:222 | chpasswd
echo User3:333 | chpasswd
