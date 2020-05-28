if hash python3 2>/dev/null; then
    PYTHON=python3
else
    PYTHON=python
fi

echo "ArguAna"
$PYTHON scripts/sentiment/parse_arguana_xml.py extern_data/sentiment/arguana/arguana-tripadvisor-annotated-v2/split/training extern_data/sentiment/arguana/train.txt

echo "MELD"
$PYTHON scripts/sentiment/convert_MELD.py extern_data/sentiment/MELD/MELD/train_sent_emo.csv extern_data/sentiment/MELD/train.txt
$PYTHON scripts/sentiment/convert_MELD.py extern_data/sentiment/MELD/MELD/dev_sent_emo.csv extern_data/sentiment/MELD/dev.txt
$PYTHON scripts/sentiment/convert_MELD.py extern_data/sentiment/MELD/MELD/test_sent_emo.csv extern_data/sentiment/MELD/test.txt

echo "SLSD"
$PYTHON scripts/sentiment/convert_slsd.py extern_data/sentiment/slsd/slsd extern_data/sentiment/slsd/train.txt

# TODO: add the corenlp converstion script here
