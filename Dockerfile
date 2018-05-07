FROM dclong/conda

RUN conda install -y -c conda-forge \
        jupyter \
        nbdime

COPY scripts /scripts

EXPOSE 8888

ENTRYPOINT ["/scripts/init.sh"]
