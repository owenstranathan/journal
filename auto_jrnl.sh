set -euo pipefail

jrnl $@

cwd="$(pwd)"
DATE=`date '+%Y-%m-%d %H:%M'`
{
  cd ~/projects/journal
  git add -u
} & > /dev/null
commit="$(sed -n '$p' <(git commit -m "$DATE"))"
push="$(sed -n '$p' <(git push))"

echo $commit
echo $push
cd ${cwd}

