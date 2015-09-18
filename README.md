# tradespider-docker#
>docker environment for tradespider

-------
>need install `node`, `git`, `docker`, `docker-compose`

###1.  clone tradespider
main program
```
git clone git@github.com:r1N0Xmk2/tradespider.git -b docker
cd ..
```
###2. clone glassesbag for google captcha auth
service for auth google captcha
```
git clone git@github.com:Tradesparq/glassesbag.git -b pg
cd glassesbag/CaptchaServer
npm install
cd ../../tradespider-docker
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

###4. set auto deploy
```
npm i -g deploy-robot

```
edit tradespider-docker/deploy-config.json

```
deploy-robot -c deploy-config.json
```

