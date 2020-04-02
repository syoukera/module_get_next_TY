#!/bin/bash

gfortran -o obj/cklib.o -c src/cklib.f
gfortran -o obj/dasac.o -c src/dasac.f
gfortran -o obj/senkin.o -c src/senkin.f
gfortran -o obj/main.o -c main.f

gfortran -o get_next_TY obj/senkin.o obj/main.o obj/cklib.o obj/dasac.o