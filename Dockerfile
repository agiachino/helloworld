FROM nginx:alpine

# Copy the HTML file to nginx's default public directory
COPY index.html /usr/share/nginx/html/

# Expose port 8080 (Fly.io's default)
EXPOSE 8080

# Update nginx to listen on port 8080 instead of 80
RUN sed -i 's/listen       80;/listen       8080;/' /etc/nginx/conf.d/default.conf

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
