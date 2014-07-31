# Scripts for TPC-DS data generation and/or queries

This document notes down some differences from the upstream; the instructions of running the scripts can be found in the original [README.original.md](./README.original.md).

## Things to Keep in Mind
- This kit uses the *modified* tpcds-kit ([https://github.com/grahn/tpcds-kit.git](https://github.com/grahn/tpcds-kit.git), not the original one distributed with the spec.
- This kit originally does *not* generate all of the 24 tables. Perhaps most crucially, it only generates *one* fact table (`store_sales`). This branch has some patches ([0b806](https://github.com/concretevitamin/impala-tpcds-kit/commit/0b806f8109c444b4f933027692297a388e3e00c0)) that attempt to fix this.
