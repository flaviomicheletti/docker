echo "Remove extra files"
sudo find . -type d -name data -exec rm -r {} \+
sudo find . -type f -name '*.data' -delete