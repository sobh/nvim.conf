#!/bin/bash
#
# This is Peter Ward's flowback shell shell-startup standard, adjusted for my dotfiles structure.
#
# This file gets run in two cases:
# 1. non-login interactive shell
# 2. remote shell (over ssh or similar)

# #2 happens when you run "ssh user@host bash" explicitly.
# in this case, /etc/bash.bashrc has not been previous executed (unlike #1).
# however, we assume that #2 is a recovery mode, so we don't want to do much.
# (also, my google-fu didn't find a way to distinguish them)

. ~/.config/bash/env
. ~/.config/bash/interactive
