set -euo pipefail

jrnl $@

cwd="$(pwd)"
DATE=`date '+%Y-%m-%d %H:%M'`
cd ~/projects/journal
git add -u
git commit -m "$DATE"
git push
cd ${cwd}

