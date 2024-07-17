#!/bin/bash

SOURCE=/d/Lehre/BSc_Informatik_bverI/hs2023/code/bveri-lectures-hs2023/book/_build/html
TARGET=/d/Lehre/BSc_Informatik_bverI/hs2023/code/bveri-lectures-hs2023-branch-gh-pages/html

rm -rf ${TARGET}

cp -r ${SOURCE} ${TARGET}
