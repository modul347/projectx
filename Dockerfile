FROM node

WORKDIR /app/src

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install && mv node_modules ../

COPY . .

ENV PORT=3000

EXPOSE 3000

ENTRYPOINT [ "npm", "run" ]

CMD ["start"]

