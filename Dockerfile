FROM node:latest
MAINTAINER James Stormes

# Install bower and grunt
RUN npm install bower -g 
RUN npm install grunt -g

COPY ssh-entry.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/ssh-entry.sh"]

# Open a bash terminal
CMD ["bash"]