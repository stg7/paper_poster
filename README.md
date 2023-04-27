# paper poster tool
a tool to create a poster of all first pages of pdf (papers) on one "poster".

## requirements

```bash
sudo apt install pdftk-java texlive-extra python3
```

place all pdfs in `pdfs`
run `./extract_first_pages.sh` and then `./combine.sh`