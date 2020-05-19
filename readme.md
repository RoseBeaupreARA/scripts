# Setup

```
sudo apt-get install git -y; mkdir git; cd git; git clone https://github.com/remibeaupreara/scripts.git; sudo scripts/setup/_setup.sh
```

# FAQ
## Bash Condom
```
set -euo pipefail
```

* `-e` : Stop the execution of a script if a command or pipeline has an error
* `-u` : Errors if an variable is referenced before being set
* `-o pipefail` : Sets the exit code of a pipeline to that of the rightmost command to exit with a non-zero status
* `-x` : Print lines before running them

## Bash Debug
* `-x` : Shows the commands that get run
