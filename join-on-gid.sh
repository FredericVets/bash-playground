#!/bin/sh
# Join /etc/passwd and /etc/group on gid.
# /etc/passwd	:	gid is fourth field
# /etc/group	:	gid is third field
# Separator in both is ":"
join -t ":" -1 4 -2 3 <(sort -t ":" -k 4 /etc/passwd) <(sort -t ":" -k 3 /etc/group)
