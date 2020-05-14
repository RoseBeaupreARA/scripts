#!/bin/bash

mkdir ~/.fonts
cp Consolas.ttf ~/.fonts/
fc-cache -f -v
