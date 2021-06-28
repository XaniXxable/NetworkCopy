# NetworkCopy
This is a small bash script to copy a file onto a network drive, which is already mounted.

# Usage
To use it you must initialize an environment variable `NET_DIR`. Do that with `export NET_DIR='path to the mountpoint'`.

Only the first argument will be used. More than one argument will be ignored.
`./shared_copy.sh <path to file>`

