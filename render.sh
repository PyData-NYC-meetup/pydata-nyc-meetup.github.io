#!/usr/bin/bash
if command -v quarto &> /dev/null; then
    # if [[ "$(dirname "$(pwd)")" == *"pydata"* ]]; then
    quarto render index.qmd --to html
    quarto render ./pages/*.qmd --to html
# else
    # echo "Parent directory is not the 'github' folder. Please navigate to the correct directory."
        # exit
    # fi
else
    echo "Quarto not found. Please install Quarto to render the site."
    exit
fi
git add ./docs/index.html
git add ./docs/pages/*.html
echo "Render complete. Don't forget to commit and push branch."
