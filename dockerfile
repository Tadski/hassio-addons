FROM resin/%%RESIN_MACHINE_NAME%%-debian

RUN apt-get update && apt-get install -yq \
   snmp snmpd && \
   apt-get clean && rm -rf /var/lib/apt/lists/*

CMD ["echo", "snmpd installed from template"]
