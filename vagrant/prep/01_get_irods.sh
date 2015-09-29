#/bin/bash

export IRODSVER="4.1.5"

mkdir packages
wget -O "packages/irods-icat-${IRODSVER}-centos6-x86_64.rpm" "ftp://ftp.renci.org/pub/irods/releases/${IRODSVER}/centos6/irods-icat-${IRODSVER}-centos6-x86_64.rpm"
wget -O "packages/irods-database-plugin-postgres-1.6-centos6-x86_64.rpm" "ftp://ftp.renci.org/pub/irods/releases/${IRODSVER}/centos6/irods-database-plugin-postgres-1.6-centos6-x86_64.rpm"
wget -O "packages/irods-icommands-${IRODSVER}-centos6-x86_64.rpm" "ftp://ftp.renci.org/pub/irods/releases/${IRODSVER}/centos6/irods-icommands-${IRODSVER}-centos6-x86_64.rpm"
createrepo_c `pwd`/packages
