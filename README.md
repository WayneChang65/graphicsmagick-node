# graphicsmagick-node  
Docker image - Node.js + Graphicsmagick on [Alpine Linux](https://alpinelinux.org/)  

## Use cases  
The image is supposed to be used for [Node.js](https://nodejs.org/en/) applications using the [gm](http://aheckmann.github.io/gm/) library for image processing.  

## Inspiration  
Derived from https://github.com/rafakato/alpine-graphicsmagick (https://hub.docker.com/r/rafakato/alpine-graphicsmagick/).  

## JBIG-KIT  
In particular it includes natively compiled [JBIG KIT](https://www.cl.cam.ac.uk/~mgk25/jbigkit/) library.  
The compilation has been done with the help of https://github.com/nu774/jbigkit project.  

## Details  
Equipped with most of Graphicsmagick optional libraries for image processing (see: http://www.graphicsmagick.org/README.html#add-on-libraries-programs).  

## Build  
Build Docker image  
```shell
docker build -t mynode-gm . --no-cache
```
![image](https://raw.githubusercontent.com/WayneChang65/graphicsmagick-node/master/img/001.png)  

![image](https://raw.githubusercontent.com/WayneChang65/graphicsmagick-node/master/img/002.png)   

## Run  
Run builded image "mynode-gm"
```shell
docker run --rm=true mynode-gm gm version
```

```
% docker run --rm=true mynode-gm gm version
GraphicsMagick 1.3.36 20201226 Q16 http://www.GraphicsMagick.org/
Copyright (C) 2002-2020 GraphicsMagick Group.
Additional copyrights and licenses apply to this software.
See http://www.GraphicsMagick.org/www/Copyright.html for details.

Feature Support:
  Native Thread Safe         yes
  Large Files (> 32 bit)     yes
  Large Memory (> 32 bit)    yes
  BZIP                       yes
  DPS                        no
  FlashPix                   no
  FreeType                   yes
  Ghostscript (Library)      no
  JBIG                       yes
  JPEG-2000                  yes
  JPEG                       yes
  Little CMS                 yes
  Loadable Modules           yes
  Solaris mtmalloc           no
  Google perftools tcmalloc  no
  OpenMP                     yes (201511 "4.5")
  PNG                        yes
  TIFF                       yes
  TRIO                       no
  Solaris umem               no
  WebP                       yes
  WMF                        yes
  X11                        yes
  XML                        yes
  ZLIB                       yes

Host type: x86_64-pc-linux-musl

Configured using the command:
  ./configure  '--build=' '--host=' '--prefix=/usr' '--sysconfdir=/etc' '--mandir=/usr/share/man' '--infodir=/usr/share/info' '--localstatedir=/var' '--enable-shared' '--disable-static' '--with-modules' '--with-threads' '--with-webp=yes' '--with-bzip=yes' '--with-tiff=yes' '--with-freetype=yes' '--with-jpeg=yes' '--with-jp2=yes' '--with-cms2=yes' '--with-xml=yes' '--with-x11=yes' '--with-wmf=yes' '--with-gs-font-dir=/usr/share/fonts/Type1' '--with-quantum-depth=16' 'build_alias=' 'host_alias='

Final Build Parameters:
  CC       = gcc
  CFLAGS   = -fopenmp -g -O2 -Wall
  CPPFLAGS = -I/usr/include/freetype2 -I/usr/include/libxml2
  CXX      = g++
  CXXFLAGS =
  LDFLAGS  =
  LIBS     = -llcms2 -lfreetype -lX11 -llzma -lbz2 -lz -lltdl -lm -lpthread
```