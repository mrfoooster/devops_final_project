#gets the base node image for us
FROM node:alpine		

#updates the files if neccesary
RUN apk update	

#setting the workdir for the container
WORKDIR /app 

#copies the files we need 
COPY package*.json ./		 

#installs the required npm dependencies	
RUN npm install
		

#copiyng the remaining files
COPY . .	

EXPOSE 3000

CMD [ "npm", "start" ]   	
