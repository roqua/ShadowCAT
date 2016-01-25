FROM opencpu/base

ADD . /shadowcat
WORKDIR /shadowcat
RUN pwd
RUN R --quiet -e 'options(repos=structure(c(CRAN="http://cran-mirror.cs.uu.nl"))); install.packages("devtools", dependencies = TRUE); library("devtools");'
RUN R -e 'library("devtools"); build(".", path = ".");'
RUN R -e 'library("devtools"); install_deps("."); install.packages("ShadowCAT_0.1.tar.gz", dependencies = TRUE);'

EXPOSE 443
