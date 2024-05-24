./solcbin/solc8 --bin-runtime samples/Add.sol -o samples  --overwrite
mv ./samples/Add.bin-runtime ./samples/Add.hex 
rm -rf ./samples/Add.bin-runtime
rm -rf ./cachestore/Add 
python3 gigahorse.py -C ./clients/visualizeout.py \
    -w cachestore \
    -r example.json \
    -j 10 \
    ./samples;