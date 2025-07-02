FROM nginx:stable-alpine

# Remove the default conf file so you can use your own file
RUN rm /etc/nginx/conf.d/default.conf

# Copy your custom nginx.conf or site configs
# COPY nginx.conf /etc/nginx/nginx.conf
COPY peak.conf /etc/nginx/conf.d/peak.conf

# Copy proxy_params file so you can reference it in your peak.conf file
COPY proxy_params /etc/nginx/proxy_params

# Optionally copy SSL certs if needed
# COPY certs/ /etc/ssl/certs/

