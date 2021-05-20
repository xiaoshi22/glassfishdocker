FROM glassfish:latest

# Maintainer
MAINTAINER xw2138 "xw2138@nyu.edu"

COPY archemy.ear /
# COPY start.sh /

EXPOSE 8080
EXPOSE 4848

#ENTRYPOINT ["/start.sh"]
