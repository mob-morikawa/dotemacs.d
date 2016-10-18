#!/usr/bin/python
# -*- coding: utf-8 -*-
# Usage: open_in_xcode.py file_path file_position

from appscript import *
import sys

filepath  = sys.argv[1].replace('/', ':')[1:]
filerange = int(sys.argv[2])

xcode = app("Xcode")             # xcodeオブジェクトを作成して
xcode.activate()                 # xcodeを最前面に
target = xcode.open(filepath)    # 指定したファイルを開いて
target.selected_character_range.set([filerange,filerange])  # 指定箇所にカーソル移動
