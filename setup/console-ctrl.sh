#!/bin/bash
add-if-not-in-file "\"\\C-H\": backward-kill-word" ~/.inputrc
add-if-not-in-file "\"\\e[1;5C\": forward-word" ~/.inputrc
add-if-not-in-file "\"\\e[1;5D\": backward-word" ~/.inputrc
add-if-not-in-file "\"\\e[5C\": forward-word" ~/.inputrc
add-if-not-in-file "\"\\e[5D\": backward-word" ~/.inputrc
add-if-not-in-file "\"\\e\\e[C\": forward-word" ~/.inputrc
add-if-not-in-file "\"\\e\\e[D\": backward-word" ~/.inputrc
add-if-not-in-file "\"\\e[3;5~\": kill-word" ~/.inputrc
