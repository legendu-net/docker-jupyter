FROM dclong/python

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        nodejs npm \
    && ln -s /usr/bin/nodejs /usr/bin/node

ARG nver=9.2.1
RUN npm install -g n \
    && n $nver \
    && ln -sf /usr/local/n/versions/node/$nver/bin/node /usr/bin/nodejs \
    && ln -sf /usr/bin/nodejs /usr/bin/node

RUN pip3 install \
        jupyter nbdime \
        ipywidgets \
        qgrid \
    && jupyter nbextension enable --py --sys-prefix widgetsnbextension  

RUN mkdir /jupyter && chmod 777 /jupyter
COPY scripts /scripts
COPY settings /settings

EXPOSE 8888

ENTRYPOINT ["/scripts/init.sh"]
