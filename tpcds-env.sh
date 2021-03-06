# path to the tpcds-kit directory
export TPCDS_ROOT=$HOME/tpcds-kit

# scale factor in GB
# SF 3000 yields ~1TB for the store_sales table
export TPCDS_SCALE_FACTOR=3000

# top level directory for flat files in HDFS
export FLATFILE_HDFS_ROOT=/user/${USER}/tpcds-sf${TPCDS_SCALE_FACTOR}

# this is used to determine the number of dsdgen processes to generate data
# usually set to one per physical CPU core
# example - 20 nodes @ 12 threads each
export DSDGEN_NODES=20
export DSDGEN_THREADS_PER_NODE=12
export DSDGEN_TOTAL_THREADS=$((DSDGEN_NODES * DSDGEN_THREADS_PER_NODE))

# the name for the tpcds database
export TPCDS_DBNAME=tpcds_parquet

# Total: 24 tables
DIMS="date_dim time_dim item customer customer_demographics household_demographics customer_address store promotion warehouse ship_mode reason income_band call_center web_page catalog_page web_site"
FACTS="store_sales store_returns web_sales web_returns catalog_sales catalog_returns inventory"
ALL_TABLES="${DIMS} ${FACTS}"
