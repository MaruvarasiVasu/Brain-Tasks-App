# Use lightweight Nginx image
FROM nginx:alpine

# Remove default Nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy contents of dist folder into Nginx html directory
COPY dist/ /usr/share/nginx/html/

# Expose port 3000
EXPOSE 3000

# Change Nginx default port from 80 to 3000
RUN sed -i 's/listen\s\+80;/listen 3000;/' /etc/nginx/conf.d/default.conf

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
