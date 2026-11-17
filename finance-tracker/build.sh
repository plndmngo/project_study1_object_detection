#!/bin/sh
# Builds a standalone index.html (for GitHub Pages / any static host) from app.html.
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="en">\n<head>\n<meta charset="utf-8">\n'
  printf '<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n'
  printf '<meta name="theme-color" content="#1d6b57">\n<meta name="apple-mobile-web-app-capable" content="yes">\n'
  printf '<link rel="manifest" href="manifest.webmanifest">\n<link rel="icon" href="icon.svg" type="image/svg+xml">\n'
  printf '<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0;font:14px system-ui,sans-serif}img{max-width:100%%}[hidden]{display:none!important}</style>\n'
  printf '</head>\n<body>\n'
  cat app.html
  printf '\n</body>\n</html>\n'
} > index.html
