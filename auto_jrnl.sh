set -euo pipefail

jrnl $@

cwd="$(pwd)"
echo $cwd
DATE=`date '+%Y-%m-%d %H:%M'`
cd ~/projects/journal
git add -u

git commit -m "$DATE" > commit
git push > push

echo $(sed -n '$p' commit)
echo $(sed -n '$p' push)

rm commit
rm push
cd $cwd
