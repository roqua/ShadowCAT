# How to test using OpenCPU:
#   1. log in on a Docker Hub account with RoQua organization access: docker login
#   2. docker build -t shadowcat .
#   3. docker run -t -d -p 80:80 -p 8004:8004 -p 443:443 shadowcat
#   4. Go to <docker IP>:8004/ocpu/test
#   5. Test with POST method, endpoint: '../library/ShadowCat/shadowcat_roqua

FROM roqua/opencpu-base
ADD . /shadowcat
WORKDIR /shadowcat

RUN R -e 'library("devtools"); build(".", path = "."); install_deps("."); install.packages("ShadowCAT_0.1.tar.gz", dependencies = TRUE);'
