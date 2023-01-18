FROM nagisazz/sdkman
LABEL Nagisazz=597306107@qq.com

RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak && \    
    echo "deb https://mirrors.ustc.edu.cn/debian/ bullseye main contrib non-free" >>/etc/apt/sources.list && \
    echo "deb https://mirrors.ustc.edu.cn/debian/ bullseye-updates main contrib non-free" >>/etc/apt/sources.list && \
    echo "deb https://mirrors.ustc.edu.cn/debian/ bullseye-backports main contrib non-free" >>/etc/apt/sources.list && \
    echo "deb https://mirrors.ustc.edu.cn/debian-security/ bullseye-security main contrib non-free" >>/etc/apt/sources.list && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y build-essential zlib1g zlib1g-dev maven && \
    mv /usr/share/maven/conf/settings.xml /usr/share/maven/conf/settings.xml.bak && \    
    echo '<?xml version="1.0" encoding="UTF-8"?>' >>/usr/share/maven/conf/settings.xml && \ 
    echo '<settings xmlns="http://maven.apache.org/SETTINGS/1.0.0"' >>/usr/share/maven/conf/settings.xml && \ 
    echo '          xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"' >>/usr/share/maven/conf/settings.xml && \ 
    echo '          xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0 http://maven.apache.org/xsd/settings-1.0.0.xsd">' >>/usr/share/maven/conf/settings.xml && \ 
    echo '  <mirrors>' >>/usr/share/maven/conf/settings.xml && \ 
    echo '    <mirror>      ' >>/usr/share/maven/conf/settings.xml && \ 
    echo '      <id>nexus-aliyun</id>    ' >>/usr/share/maven/conf/settings.xml && \ 
    echo '      <name>nexus-aliyun</name>  ' >>/usr/share/maven/conf/settings.xml && \ 
    echo '      <url>http://maven.aliyun.com/nexus/content/groups/public</url>    ' >>/usr/share/maven/conf/settings.xml && \ 
    echo '      <mirrorOf>central</mirrorOf>      ' >>/usr/share/maven/conf/settings.xml && \ 
    echo '    </mirror>' >>/usr/share/maven/conf/settings.xml && \ 
    echo '  </mirrors>' >>/usr/share/maven/conf/settings.xml && \ 
    echo '</settings>' >>/usr/share/maven/conf/settings.xml && \ 
    /bin/bash -c 'source $HOME/.bashrc; sdk install java 22.3.r11-nik' && \
	/bin/bash -c 'source $HOME/.bashrc; sdk use java 22.3.r11-nik'