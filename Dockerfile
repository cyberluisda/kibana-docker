FROM docker.elastic.co/kibana/kibana:5.6.2
MAINTAINER Luis David Barrios (cyberluisda@gmail.com)

ENV KIBANA_HOME "/usr/share/kibana"
# Remove xpack
RUN bin/kibana-plugin remove x-pack

# Remove xpack configuration
RUN sed -i -e '/xpack/d' "$KIBANA_HOME/config/kibana.yml"
