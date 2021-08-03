# @Info: IBM Garage Technology - Cloud Containerization.
# @Author: Jeffrey Chijioke-Uche (MSIT, MSIS, DS).
# @Update: Last updated July 29, 2021.
# @Company: IBM.
# @Notice: DO NOT MODIFY FILE.

FROM quay.io/ibmskillsapp/node-alpine as build
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build

FROM quay.io/ibmskillsapp/postgresql12
RUN mkdir temp
RUN groupadd non-root-postgres-group
RUN useradd non-root-postgres-user --group non-root-postgres-group
RUN chown -R non-root-postgres-user:non-root-postgres-group /temp
RUN chmod 777 /temp
USER non-root-postgres

FROM quay.io/ibmskillsapp/nginx-unprivileged
COPY --from=build /app/build /usr/share/nginx/html
COPY --from=build /app/nginx.conf /etc/nginx/conf.d/default.conf
LABEL version="1.0.0"\
      description="IBM Garage Skills App"\
      author="Jeffrey Chijioke-Uche"\
      company="IBM"