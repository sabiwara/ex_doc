#!/bin/sh
set -eu

rm -rf /tmp/ex_doc_bug
mix docs
cp -R . /tmp/ex_doc_bug
cd /tmp/ex_doc_bug

# if we delete the build, we fix the issue
# rm -rf _build

mix docs
open doc/ExDoc.Markdown.html

# click view source: the path is broken

# Affects published sources:
# https://hexdocs.pm/cmp/0.1.0/Cmp.Comparable.html#content
