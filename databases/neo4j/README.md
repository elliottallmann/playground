# Neo4J Graph Database


## Scripts
Install using the scripts/*os-family_version*_install.sh script provided.

### ubuntu_2204_install.sh

Regular bash script for installing on a fresh Ubuntu 22.04 server. Depends on having internet access.

## Configs

Configuration files are held in the *config* directory.

### neo4j.conf

Modified neo4j.conf to allow remote connections from a local subnet. Change *dbms.default_listen_address* to your local subnet, or 0.0.0.0 for everything.
