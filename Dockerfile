FROM amazoncorretto:17
LABEL maintainer="arindam"
WORKDIR /app
COPY target/api-gateway-1.0.jar /app/api-gateway-1.0.jar

EXPOSE 8000
ENTRYPOINT ["java",  "-jar" , "/app/api-gateway-1.0.jar"]

# docker build -t apigateway:1 .
# docker run -d -p 8888:8888 --network my-network --name apigateway -t apigateway:1