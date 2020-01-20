#!/bin/sh -xe

cp sample/guide/ja/* .

gcc-4.8 -I./client/c/include -L./bin ArrayData.c -l gridstore -o ArrayData
gcc-4.8 -I./client/c/include -L./bin BlobData.c -l gridstore -o BlobData
gcc-4.8 -I./client/c/include -L./bin Connect.c -l gridstore -o Connect
gcc-4.8 -I./client/c/include -L./bin ContainerInformation.c -l gridstore -o ContainerInformation
gcc-4.8 -I./client/c/include -L./bin ContainerNames.c -l gridstore -o ContainerNames
gcc-4.8 -I./client/c/include -L./bin CreateCollectionByMethod.c -l gridstore -o CreateCollectionByMethod
gcc-4.8 -I./client/c/include -L./bin CreateIndex.c -l gridstore -o CreateIndex
gcc-4.8 -I./client/c/include -L./bin CreateTimeSeriesByMethod.c -l gridstore -o CreateTimeSeriesByMethod
gcc-4.8 -I./client/c/include -L./bin GetRow.c -l gridstore -o GetRow
gcc-4.8 -I./client/c/include -L./bin PutRow.c -l gridstore -o PutRow
gcc-4.8 -I./client/c/include -L./bin PutRows.c -l gridstore -o PutRows
gcc-4.8 -I./client/c/include -L./bin RemoveRowByRowkey.c -l gridstore -o RemoveRowByRowkey
gcc-4.8 -I./client/c/include -L./bin RemoveRowByTQL.c -l gridstore -o RemoveRowByTQL
gcc-4.8 -I./client/c/include -L./bin TimeSeriesCompression.c -l gridstore -o TimeSeriesCompression
gcc-4.8 -I./client/c/include -L./bin TQLAggregation.c -l gridstore -o TQLAggregation
gcc-4.8 -I./client/c/include -L./bin TQLSelect.c -l gridstore -o TQLSelect
gcc-4.8 -I./client/c/include -L./bin TQLTimeseries.c -l gridstore -o TQLTimeseries
gcc-4.8 -I./client/c/include -L./bin UpdateRowByTQL.c -l gridstore -o UpdateRowByTQL

ls

export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:./bin

./ArrayData.out 239.0.0.1 31999 griddbubuntu admin admin
./BlobData.out 239.0.0.1 31999 griddbubuntu admin admin
./Connect.out 239.0.0.1 31999 griddbubuntu admin admin
./ContainerInformation.out 239.0.0.1 31999 griddbubuntu admin admin
./ContainerNames.out 239.0.0.1 31999 griddbubuntu admin admin
./CreateCollectionByMethod.out 239.0.0.1 31999 griddbubuntu admin admin
./CreateIndex.out 239.0.0.1 31999 griddbubuntu admin admin
./CreateTimeSeriesByMethod.out 239.0.0.1 31999 griddbubuntu admin admin
./GetRow.out 239.0.0.1 31999 griddbubuntu admin admin
./PutRow.out 239.0.0.1 31999 griddbubuntu admin admin
./PutRows.out 239.0.0.1 31999 griddbubuntu admin admin
./RemoveRowByRowkey.out 239.0.0.1 31999 griddbubuntu admin admin
./RemoveRowByTQL.out 239.0.0.1 31999 griddbubuntu admin admin
./TimeSeriesCompression.out 239.0.0.1 31999 griddbubuntu admin admin
./TQLAggregation.out 239.0.0.1 31999 griddbubuntu admin admin
./TQLSelect.out 239.0.0.1 31999 griddbubuntu admin admin
./TQLTimeseries.out 239.0.0.1 31999 griddbubuntu admin admin
./UpdateRowByTQL.out 239.0.0.1 31999 griddbubuntu admin admin
