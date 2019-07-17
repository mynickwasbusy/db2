#From lab5:latest
# Uncomment above and comment below for slow network
FROM websphere-liberty:18.0.0.4-kernel
ADD config /config
#FEATURES: Install any features that are required
RUN /opt/ibm/wlp/bin/installUtility install  --acceptLicense defaultServer
