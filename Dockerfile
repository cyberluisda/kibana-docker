FROM kibana:4.5.0
MAINTAINER Luis David Barrios (cyberluisda@gmail.com)

ENV KIBANA_HOME "/opt/kibana"

# Install SENSE plugin
RUN kibana plugin --install elastic/sense
