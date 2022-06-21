from oraclelinux:8.4
label name=neil
env deploy=app
run yum install httpd -y && mkdir /common /common/webapp1 /common/webapp2 /common/webapp3
copy html-sample-app /common/webapp1/
copy project-html-website /common/webapp2/
copy project-website-template /common/webapp3/
copy deploy.sh /common/
workdir /common
run chmod +x deploy.sh
entrypoint ["./deploy.sh"]