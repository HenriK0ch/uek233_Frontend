# Use a lightweight web server to serve the production build
FROM nginx:alpine
# Copy the production build from the builder stage to the nginx web server
COPY  ./build /usr/share/nginx/html
# Copy config files
COPY .env.production .
COPY nginx.conf /etc/nginx/conf.d/default.conf
# Expose port 80
EXPOSE 80
# Start the nginx web server
CMD ["nginx", "-g", "daemon off;"]