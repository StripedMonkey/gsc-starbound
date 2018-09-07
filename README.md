# gsc-starbound
This one sucks, mainly because its impossible to download the server without logging in. Starbound doesn't let you unfortunately.

##Please note that in order to build the container you must provide the following options to run properly. These are *NOT* retained within the container after building.
```
docker-compose build \
--build-arg S_PASSWORD='STEAM-PASSWORD-HERE' \
--build-arg S_USERNAME='STEAM-USERNAMEHERE' \
--build-arg S_GUARD=STEAM-2FA-HERE
```
If you type in the 2-FA code right before it changes it should remain valid long enough to build the container. Have fun.
