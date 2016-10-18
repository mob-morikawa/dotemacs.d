#!/usr/bin/python
# -*- coding: utf-8 -*-
# Usage: xcode_build.py

from appscript import *

xcode = app('Xcode')  # xcodeオブジェクトを作成して
xcode.build()         # ビルドする
