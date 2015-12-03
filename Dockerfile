FROM drydock/u14pls:prod

ADD . /u14pytpls

RUN /u14pytpls/install.sh
