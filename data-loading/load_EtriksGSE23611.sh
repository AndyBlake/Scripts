#!/bin/sh

cd $TRANSMART_DATA

. ./vars

make -C samples/postgres load_clinical_EtriksGSE23611
make -C samples/postgres load_ref_annotation_EtriksGSE23611
make -C samples/postgres load_expression_EtriksGSE23611
