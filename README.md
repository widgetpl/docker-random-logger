# DOCKER RANDOM IMAGE

This is simple docker image which randomly logs messages to `stdout` which allows to experiment whith docker logging drivers or fluentd or whatever else logging mechanism in container world.



### Docker image usage

This is simple docker image which uses `logger` bash command to log simple `INFO`, `WARN`, `ERROR` log levels to `stdout`.
You can use environment variable:

- `INFO_MSG` - to set custom message for `info` level ( default: "This is simple INFO log" )
- `WARN_MSG` - to set custom message for `warn` level ( default: "This is simple WARN log" )
- `ERROR_MSG` - to set custom message fro `error` level ( default: "This is simple ERROR log" )
- `SLEEP` - to set `sleep` between logging ( default: 3 )

```
docker run -d \
-e "INFO_MSG=this is my new INFO log message from $(hostname)" \
-e "WARN_MSG=new WARN message" \
-e "ERROR_MSG=and new ERROR message wit current date: $(date +"%Y-%M-%d")" \
-e "SLEEP=5" \
<image_name>
```

### Docker build

```
docker build -t widgetpl/logger:v0.1
```
