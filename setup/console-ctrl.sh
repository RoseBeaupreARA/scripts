#!/bin/bash
echo enable crtl-arrows in console

echo "\"\\C-H\": backward-kill-word" > ~/.inputrc
echo "\"\\e[1;5C\": forward-word" >> ~/.inputrc
echo "\"\\e[1;5D\": backward-word" >> ~/.inputrc
echo "\"\\e[5C\": forward-word" >> ~/.inputrc
echo "\"\\e[5D\": backward-word" >> ~/.inputrc
echo "\"\\e\\e[C\": forward-word" >> ~/.inputrc
echo "\"\\e\\e[D\": backward-word" >> ~/.inputrc
echo "\"\\e[3;5~\": kill-word" >> ~/.inputrc