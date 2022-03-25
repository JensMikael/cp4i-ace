FROM ace-server-prod@sha256:f9b2b5e385f462d60a3fedf2aa7366b3bc304e971c89fafe6425cf2949a472c6
USER root
COPY bars_test /home/aceuser/bars
RUN  chmod -R ugo+rwx /home/aceuser
USER 1000
RUN ace_compile_bars.sh
USER root
RUN  chmod -R ugo+rwx /home/aceuser
USER 1000
