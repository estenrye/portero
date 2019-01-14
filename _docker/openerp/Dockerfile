FROM ubuntu:18.04
EXPOSE 8069
COPY odoo.key /tmp/odoo.key
RUN apt-get update && apt install gnupg -y
RUN apt-key add /tmp/odoo.key
RUN echo "deb http://nightly.odoo.com/11.0/nightly/deb/ ./" >> /etc/apt/sources.list
RUN apt-get update && apt install odoo -y
COPY odoo.conf /etc/odoo/odoo.conf
ENTRYPOINT odoo --config /etc/odoo/odoo.conf