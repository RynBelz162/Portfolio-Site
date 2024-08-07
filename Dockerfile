FROM busybox:latest

# Create a non-root user to own the files and run our server
RUN adduser -D website
USER website
WORKDIR /home/website

# Copy the static website
# Use the .dockerignore file to control what ends up inside the image!
COPY . .

# Run BusyBox httpd
CMD ["busybox", "httpd", "-f", "-v", "-p", "5555"]