FROM debian:stable-slim
LABEL Nagisazz=597306107@qq.com

RUN sed -i "s@http://\(deb\|security\).debian.org@https://mirrors.ustc.edu.cn@g" /etc/apt/sources.list && \
	apt-get update && \
    apt-get install -y curl unzip zip && \
    curl -s "https://get.sdkman.io" | bash && \
    bash -c 'source /root/.sdkman/bin/sdkman-init.sh '

