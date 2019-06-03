#!/usr/bin/env sh
export PATH=/tmp/texlive/bin/x86_64-linux:$PATH
if ! command -v texlua > /dev/null; then
  wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
  tar -xzf install-tl-unx.tar.gz
  cd install-tl-20*
  ./install-tl --profile=../texlive/texlive.profile
  cd ..
fi
tlmgr install luatex

# Other contrib packages: done as a block to avoid multiple calls to tlmgr
# texlive-latex-base is needed to run pdflatex
tlmgr install   \
  exam          \
  amsfonts      \
  stmaryrd      \
  amsmath	\
  fancyhdr	\
  booktabs	\
  graphicx	\
  xcolor	\
  lipsum	\
  babel		\
  inputenc	\
  geometry	\
  lmodern	\
  chngcntr	\
  caption	\
  pgffor	\
  lastpage	\
  tabularx	\
  enumerate	\

tlmgr option -- autobackup 0
tlmgr update --self --all --no-auto-install
