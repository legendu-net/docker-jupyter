FROM dclong/python

RUN pip3 install jupyter nbdime

RUN curl -sLf https://spacevim.org/install.sh -o /scripts/install_space_vim.sh

COPY scripts /scripts

EXPOSE 8888

ENTRYPOINT ["/scripts/init.sh"]
