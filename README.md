
# apline-wkhtmltopdf

[![](https://badge.imagelayers.io/loicmahieu/alpine-wkhtmltopdf:latest.svg)](https://imagelayers.io/?images=loicmahieu/alpine-wkhtmltopdf:latest '')

## Usage:
```sh
docker run --rm -it \
  -v `pwd`:/data \
  loicmahieu/alpine-wkhtmltopdf:latest \
  wkhtmltopdf http://google.com /data/file.pdf
```

#### Buggy
It does not work. PDF is not completely written.
```sh
docker run --rm -it \
  loicmahieu/alpine-wkhtmltopdf:latest \
  wkhtmltopdf http://google.com - > test.pdf
```
