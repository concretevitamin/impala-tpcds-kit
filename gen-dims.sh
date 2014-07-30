#!/bin/bash
source tpcds-env.sh

for t in $DIMS
do
  echo "Generating table $t"
  ${TPCDS_ROOT}/tools/dsdgen \
    -TABLE $t \
    -SCALE ${TPCDS_SCALE_FACTOR} \
    -DISTRIBUTIONS ${TPCDS_ROOT}/tools/tpcds.idx \
    -TERMINATE N \
    -FILTER Y \
    -QUIET Y | hdfs dfs -put - ${FLATFILE_HDFS_ROOT}/${t}/${t}.dat &
done
wait

hdfs dfs -ls ${FLATFILE_HDFS_ROOT}/*/*.dat
