FROM kubor/alpine-rdkit
LABEL maintainer="amaotone <amane.suzu@gmail.com>"

RUN conda install -y numpy pandas matplotlib jupyter scikit-learn