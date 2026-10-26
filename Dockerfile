# Use the official Nginx image
FROM nginx:alpine

# Install sed
RUN apk add --no-cache sed

# Set the working directory to where Nginx serves files
WORKDIR /usr/share/nginx/html

# Copy all HTML/HTM files from your project to the working directory
COPY --chmod=755 public/ .

# Copy the custom Nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80 & 443
EXPOSE 80
EXPOSE 443

# Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]