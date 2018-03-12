set -euo pipefail

jrnl $@

cwd="$(pwd)"
echo $cwd
DATE=`date '+%Y-%m-%d %H:%M'`
cd ~/projects/journal
git add -u

git commit -m "$DATE" > commit 2>&1
git push > push 2>&1

echo $(sed -n '1p' commit)
echo $(sed -n '$p' push)

rm commit
rm push
cd $cwd
