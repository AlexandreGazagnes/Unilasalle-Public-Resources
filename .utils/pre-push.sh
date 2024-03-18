#! /bin/bash


# black 
black .

# clean notebooks output
# jupytext -clean --all *.ipynb

# build .html files 
jupyter nbconvert --to html *.ipynb
jupyter nbconvert --to html */*.ipynb
jupyter nbconvert --to html */*/*.ipynb
jupyter nbconvert --to html */*/*/*.ipynb

# build .pdf files 
# jupyter -nbconvert -to pdf *.ipynb
