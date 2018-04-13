FROM kubor/alpine-rdkit
LABEL maintainer="amaotone <amane.suzu@gmail.com>"

RUN conda install -y numpy pandas matplotlib jupyter scikit-learn

ENV TINI_VERSION v0.6.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/bin/tini
RUN chmod +x /usr/bin/tini
ENTRYPOINT ["/usr/bin/tini", "--"]

EXPOSE 8888
WORKDIR /opt/notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
