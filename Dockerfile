# How to test using OpenCPU:
#   1. docker build -t shadowcat .
#   2. docker run -t -d -p 80:80 -p 8004:8004 -p 443:443 shadowcat
#   3. Go to <docker IP>:8004/ocpu/test
#   4. Test with POST method, endpoint: '../library/ShadowCat/shadowcat_roqua

FROM opencpu/base

ADD . /shadowcat
WORKDIR /shadowcat
RUN pwd
RUN R --quiet -e 'options(repos=structure(c(CRAN="http://cran-mirror.cs.uu.nl"))); install.packages("devtools", dependencies = TRUE);'
RUN R -e 'library("devtools"); build(".", path = "."); install_deps("."); install.packages("ShadowCAT_0.1.tar.gz", dependencies = TRUE);'

EXPOSE 443
