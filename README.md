# tradespider-docker
---
Docker environment for tradespider

need install `git`, `docker`, `docker-compose`

---

###1. clone tradespider
main program
```
git clone git@github.com:r1N0Xmk2/tradespider.git
cd tradespider
git checkout docker
cd ..

```
###2. clone glassesbag
service for auth google captcha
```
git clone git@github.com:Tradesparq/glassesbag.git
cd glassesbag
git checkout pg
cd ../tradespider-docker
```

###3.  set tradespider config and run container
copy example and edit config for tradespider
```
cp ts-client.env.example ts-client.env

```

start docker container
```
docker-compose up -d
```
