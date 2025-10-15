FROM node

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=qwerty

RUN mkdir -p dockerapp

COPY . /dockerapp

CMD ["node","/dockerapp/server.js"]

# RUN npm install (if node modules is not copied, we have to change the dockerfile accordingly)