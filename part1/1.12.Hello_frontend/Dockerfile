#
# Build:
# docker build . -t frontend
#
# Run:
# docker run -p 5000:5000 frontend
#

FROM node:14

WORKDIR /usr/src/app

COPY ./example-frontend/ .

RUN npm install \
&& npm install -g serve \
&& npm run build

EXPOSE 5000

CMD serve -s -l 5000 build

