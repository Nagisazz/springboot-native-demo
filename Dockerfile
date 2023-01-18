# 编译
FROM nagisazz/spring-native-base as builder
LABEL Nagisazz=597306107@qq.com
# 设定工作目录
WORKDIR /nagisa
# 复制源码及pom
COPY pom.xml pom.xml
COPY src     src
# 打包
RUN --mount=type=cache,target=/root/.m2 /bin/bash -c 'source $HOME/.bashrc; mvn -e -B clean package -D maven.test.skip=true -P native'

# 运行
FROM nagisazz/debian-cn
LABEL Nagisazz=597306107@qq.com
# 设定工作目录
WORKDIR /nagisa
# 复制打包完成的native文件
COPY --from=builder /nagisa/target/springboot-native-demo springboot-native-demo
# 暴露的端口
EXPOSE 8080
ENTRYPOINT ["/bin/bash","-c","/nagisa/springboot-native-demo"]