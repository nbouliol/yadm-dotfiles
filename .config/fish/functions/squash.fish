function squash --argument from_branch
echo $from_branch

if not test -n  "$from_branch"
set from_branch 'develop' 
end
echo "From branch $from_branch"
git reset --soft (git merge-base HEAD $from_branch) && git commit --reuse-message=HEAD@{1}
end
