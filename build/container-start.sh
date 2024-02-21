# build
# docker build -t nacos:v2.2.3-arm -f Dockerfile.arm64 .

# run
docker run -it --name nacos-2.2.3 --network bridge -e MODE=standalone -e NACOS_AUTH_TOKEN="" -p 30001:30001 -p 31001:31001 -d nacos:v2.2.3-arm
# The host networking driver only works on Linux hosts
# Derby
docker run -it --name nacos-2.2.3 --network host -e MODE=standalone -e NACOS_AUTH_TOKEN="" -d nacos:v2.2.3-arm
# Mysql
docker run -it --name nacos-2.2.3 --network host -e MODE=standalone -e NACOS_AUTH_TOKEN="" -e MYSQL_SERVICE_HOST="" \
-e MYSQL_SERVICE_PORT="" -e MYSQL_SERVICE_DB_NAME="" -e MYSQL_SERVICE_USER="" \
-e MYSQL_SERVICE_PASSWORD="" -d nacos:v2.2.3-arm-mysql

