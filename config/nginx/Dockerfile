FROM nginx:1.15
LABEL MAINTAINER="Mehrdad gholami | mehrdadgholami.ir"

COPY nginx.conf /etx/nginx/conf.d/defult.conf
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]