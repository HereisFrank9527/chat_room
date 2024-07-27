FROM python:3.9.19-slim
WORKDIR /app                             #进入目录后切换到/app目录下
ADD . /app                                  #把当前目录下的所有文件都拷到/app目录下去
RUN pip install -r requirements.txt     #pip -r 相当于python的yum，pip可以安装任何python官方的模块，指定了网站。这条命令就是为了装一个flask的软件
EXPOSE 5000
CMD ["python", "app.py"]