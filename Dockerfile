# Use Nginx Alpine para imagem leve
FROM nginx:alpine

# Copiar arquivos estáticos para o diretório padrão do Nginx
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/

# Expor porta 80
EXPOSE 80

# Comando para iniciar o Nginx
CMD ["nginx", "-g", "daemon off;"]
