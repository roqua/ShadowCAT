FROM roqua/opencpu-base

WORKDIR /ShadowCAT

RUN apt-get update && apt-get -f install -y openssl libcurl4-openssl-dev curl libxml2-dev libssl-dev libcairo-dev

ADD ./inst/bash/install-package-dependencies.sh /ShadowCAT/inst/bash/install-package-dependencies.sh

RUN ./inst/bash/install-package-dependencies.sh

ADD ./ /ShadowCAT

RUN R --no-save --quiet -e 'devtools::document()'
RUN R CMD INSTALL --no-multiarch --with-keep.source /ShadowCAT
RUN R CMD build /ShadowCAT

