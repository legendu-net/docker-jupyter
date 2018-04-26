FROM dclong/conda

RUN conda install -y -c conda-forge \
        jupyter \
        # nbdime

RUN mkdir /workdir && chmod 777 /workdir
COPY scripts /scripts

EXPOSE 8888

ENTRYPOINT ["/scripts/init.sh"]
