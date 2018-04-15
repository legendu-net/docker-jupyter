FROM dclong/conda

RUN conda install -y jupyter

RUN mkdir /jupyter && chmod 777 /jupyter
COPY scripts /scripts

EXPOSE 8888

ENTRYPOINT ["/scripts/init.sh"]
