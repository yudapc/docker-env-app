# docker-env-app
Implementation Docker Environment Variable

### Challenge

This is sample implementation docker environment variable on docker container. The challenge is how to update env on the fly without rebuild docker image

### Requirements

```
- nodejs 14.16.0
- pm2
```


### Slide

https://docs.google.com/presentation/d/1NLNOzlFCWZqfySu25uenRoFpE87TM_63RfS77rUtpzU/edit?usp=sharing


### Conclusion

There are two steps to update ENV:

#### 1. Single Env:

```
docker exec -i -e VAR=value <container-id> sh -c "pm2 restart <app-name> --update-env"
```

Sample:

```
docker exec -i -e INFO=test 81bf1b3d791c sh -c "pm2 restart app --update-env"
```


#### 2. File:

```
docker exec -i --env-file=<./path/file> <container-id> sh -c "pm2 restart <app-name> --update-env"
```

Sample:

```
docker exec -i --env-file=.env 81bf1b3d791c sh -c "pm2 restart app --update-env"
```
