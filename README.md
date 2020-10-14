# RadioML Dataset Generate

## Requirements

- GNRradio 3.7.11
- gr-mapper (use the version in this project)
- gr-mediatools

## Environment (Docker Recommended)

### Docker Image Download

```bash
docker pull yonidavidson/minsdr
```

### Create Container

```bash
sudo docker run -t -i --network=host yonidavidson/minsdr /bin/bash
```

### Change apt source (Ubuntu 16.04 for instance)

```bash
cp sources.list sources.list.backup # Backup default sources.list
echo '' > sources.list # Clear sources.list
vim sources.list # Add the Tsinghua source (as below)
```

```bash
# sources.list
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-updates main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-backports main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-security main restricted universe multiverse
```

### Install gr-mediatools & gr-mapper

```bash
cd gr-mapper
mkdir build
cd build
cmake ..
make
sudo make install
```

gr-mediatools can be installed similar as above. Or

```bash
cd /gr/
pybombs install  gr-mediatools
```

### Save Changes in Docker (Create a new docker image)

```bash
# Check the container ID, 68bd945fc009 here for instance
sudo docker ps -a
# Create a new image named radioml:v1.1 (or else), 30026605dcfe is the container ID
sudo docker commit 30026605dcfe radioml:v1.1
```

## Docker Commands Related (Maybe Useful)

```bash
# Create a new container based on chosen image
sudo docker run -t -i --network=host yonidavidson/minsdr /bin/bash
# cp files between local system and docker container, 30026605dcfe refers the container ID
docker cp /dataset-master 30026605dcfe:/home/code
# Enter into a running container using its ID, 30026605dcfe here for instance
sudo docker ps -a
sudo docker exec -it 30026605dcfe /bin/bash
```
