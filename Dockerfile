FROM alpine
RUN apk add tzdata
RUN apk add subversion

RUN mkdir /app
RUN mkdir /app/svnrepo
WORKDIR /app/svnrepo
RUN svnadmin create ./

RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone

RUN export SVN_SSH="ssh -v "

CMD svnserve -i -r ./
