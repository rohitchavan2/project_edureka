# Use an official PHP runtime as a base image
FROM php:7.4-apache

# Set the working directory to /var/www/html
WORKDIR /var/www/html

# Copy the contents of your PHP application into the container at /var/www/html
COPY . /var/www/html

# Install any dependencies your PHP application might need
# For example, you might need to install additional PHP extensions or libraries here

# Set correct file permissions
RUN chown -R www-data:www-data /var/www/html && \
    chmod -R 755 /var/www/html

# Expose port 80 to the outside world
EXPOSE 80

# Start Apache when the container runs
CMD ["apache2-foreground"]
