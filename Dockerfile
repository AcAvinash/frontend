FROM nginx:mainline-alpine3.20-slim

# 2️ Remove default HTML and configs
RUN rm -rf /usr/share/nginx/html/* \
    && rm -rf /etc/nginx/nginx.conf \
    && rm -rf /etc/nginx/conf.d/default.conf

# 3️ Copy custom Nginx config
COPY nginx.conf /etc/nginx/nginx.conf

# 4️ Copy frontend static files
COPY code /usr/share/nginx/html/

# 5️ Expose port 80
EXPOSE 80

# 6️ Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
