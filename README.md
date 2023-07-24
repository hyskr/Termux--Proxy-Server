# Termux Proxy Server

这个脚本可以帮助你在Termux环境中设置一个代理服务器，并使用CPolar将其映射到公网。

## 主要功能

- 将Termux的APT源更改为清华大学的镜像源，以加快包的下载速度。
- 安装`vim`、`cpolar`、`openssh`、`termux-services`和`tinyproxy`这几个包。
- 创建一个启动脚本，该脚本在Termux启动时会自动运行，启动`sshd`、`tinyproxy`和`cpolar`服务。

## 使用方法

1. 将脚本复制到你的Termux环境中。
2. 从 [cpolar signup](https://dashboard.cpolar.com/signup) 注册账号，并从[cpolar get started](https://dashboard.cpolar.com/get-started) 获取你的`authtoken`。
3. 根据脚本中的注释，创建并修改`cpolar.yml`、`tinyproxy.conf`和`tinyproxy.filter`这三个配置文件。你需要将`cpolar.yml`中的`authtoken`、`email`等字段替换为你自己的CPolar账户信息，将`tinyproxy.conf`中的`Port`字段替换为你想要Tinyproxy监听的端口，将`tinyproxy.filter`中的`bjtu.edu.cn`替换为你想要允许的域名。
4. 运行脚本：`bash setup.sh`

## 注意事项

- 在运行这个脚本之前，你应该确保你了解这个脚本的每一行都在做什么，以防止意外的行为。如果你不确定某一行的作用，你应该寻求专业的技术支持。
- 使用代理服务器和CPolar可能会带来安全风险，因为它们可以看到你的所有网络流量。在使用它们之前，你应该确保你了解所有的风险，并采取适当的安全措施。
- 对于`openssh`，你可能需要配置`ssh-keygen`和`passwd`。
- 由于隧道的地址不固定，你可以从CPolar后台或[cpolar status](https://dashboard.cpolar.com/status)中获取你的在线隧道地址。
- 为了能够使其开机时启动，且不root，你需要安装`Termux:boot`。（请保证Termux和Termux:boot安装包来自于同一平台，否则会产生问题）
