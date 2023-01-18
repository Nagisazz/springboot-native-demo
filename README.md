*SpringBoot-Native*
# 介绍
**包含三个基础镜像及完整项目**
- 版本：SpringBoot2.7.5，JDK11，GraalVM22.3
- 采用官方推荐的[Native Build Tools](https://docs.spring.io/spring-native/docs/current/reference/htmlsingle/index.html#getting-started-native-build-tools) 方式，
docker镜像内安装*GraalVM*打包编译

# 项目模块结构
- docker-base：封装基础镜像，所有镜像均已上传[dockerhub](https://hub.docker.com/u/nagisazz) ，可以直接使用
    - debian-cn：基于*debian:stable-slim*，更改上海时区封装的最终native运行镜像
    - sdkman：基于*debian:stable-slim*，安装sdkman管理jdk
    - spring-native-base：基于上一个基础镜像*sdkman*，安装jdk，maven等编译环境
- src：示例项目源码目录
- Dockerfile：示例项目镜像打包文件，内有详细注释

# 如何使用
## 打包
- clone到本地，依据系统直接运行build.bat或者build.sh即可
## 运行
- docker run -p 8080:8080 -d nagisazz/springboot-native-demo
