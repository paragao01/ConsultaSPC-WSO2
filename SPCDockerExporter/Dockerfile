#ARG BASE_IMAGE
#FROM ${BASE_IMAGE}
FROM wso2/wso2mi
#ENV TZ="America/Sao_Paulo"

COPY CompositeApps/*.car ${WSO2_SERVER_HOME}/repository/deployment/server/carbonapps/
COPY Resources/wso2carbon.jks ${WSO2_SERVER_HOME}/repository/resources/security/wso2carbon.jks
COPY Resources/client-truststore.jks ${WSO2_SERVER_HOME}/repository/resources/security/client-truststore.jks
#COPY Libs/*.jar ${WSO2_SERVER_HOME}/lib/

USER root
RUN chgrp -R 0 /home/wso2carbon/ && \
chmod -R g=u /home/wso2carbon/

USER 1001



#[DO NOT REMOVE] Auto generated Docker commands for config-map parser
COPY  --chown=wso2carbon:wso2 CarbonHome/conf/datasources/master-datasources.xml ${WSO2_SERVER_HOME}/conf/datasources/master-datasources.xml
COPY  --chown=wso2carbon:wso2 CarbonHome/conf/netty.properties ${WSO2_SERVER_HOME}/conf/netty.properties
COPY  --chown=wso2carbon:wso2 CarbonHome/conf/jndi.properties ${WSO2_SERVER_HOME}/conf/jndi.properties
COPY  --chown=wso2carbon:wso2 CarbonHome/conf/axis2/axis2_blocking_client.xml ${WSO2_SERVER_HOME}/conf/axis2/axis2_blocking_client.xml
COPY  --chown=wso2carbon:wso2 CarbonHome/conf/axis2/axis2.xml ${WSO2_SERVER_HOME}/conf/axis2/axis2.xml
COPY  --chown=wso2carbon:wso2 CarbonHome/conf/security/cipher-text.properties ${WSO2_SERVER_HOME}/conf/security/cipher-text.properties
COPY  --chown=wso2carbon:wso2 CarbonHome/conf/etc/jmx.xml ${WSO2_SERVER_HOME}/conf/etc/jmx.xml
COPY  --chown=wso2carbon:wso2 CarbonHome/conf/wso2-log-masking.properties ${WSO2_SERVER_HOME}/conf/wso2-log-masking.properties
COPY  --chown=wso2carbon:wso2 CarbonHome/conf/carbon.properties ${WSO2_SERVER_HOME}/conf/carbon.properties
COPY  --chown=wso2carbon:wso2 CarbonHome/conf/carbon.xml ${WSO2_SERVER_HOME}/conf/carbon.xml
COPY  --chown=wso2carbon:wso2 CarbonHome/conf/synapse.properties ${WSO2_SERVER_HOME}/conf/synapse.properties
COPY  --chown=wso2carbon:wso2 CarbonHome/conf/passthru-http.properties ${WSO2_SERVER_HOME}/conf/passthru-http.properties
COPY  --chown=wso2carbon:wso2 CarbonHome/conf/synapse-handlers.xml ${WSO2_SERVER_HOME}/conf/synapse-handlers.xml
COPY  --chown=wso2carbon:wso2 CarbonHome/conf/user-mgt.xml ${WSO2_SERVER_HOME}/conf/user-mgt.xml
COPY  --chown=wso2carbon:wso2 CarbonHome/conf/internal-apis.xml ${WSO2_SERVER_HOME}/conf/internal-apis.xml
COPY  --chown=wso2carbon:wso2 CarbonHome/conf/deployment.toml ${WSO2_SERVER_HOME}/conf/deployment.toml
RUN mkdir ${WSO2_SERVER_HOME}/repository/resources/conf/.metadata
COPY  --chown=wso2carbon:wso2 CarbonHome/.metadata/metadata_config.properties ${WSO2_SERVER_HOME}/repository/resources/conf/.metadata
COPY  --chown=wso2carbon:wso2 CarbonHome/.metadata/references.properties ${WSO2_SERVER_HOME}/repository/resources/conf/.metadata
#[DO NOT REMOVE] End of auto generated Docker commands for config-map parser
