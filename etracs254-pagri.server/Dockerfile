FROM java:6
COPY . /etracs254-server-container
ENV JAVA_HOME /usr/lib/jvm/java-6-openjdk-amd64/
RUN export JAVA_HOME
CMD ["/etracs254-server-container/bin/run.sh"]
#CMD ["ping","192.168.1.100"]