function wip --wraps='git commit -am "wip"' --description 'alias wip=git commit -am "wip"'
    git commit -am "chore: wip" $argv
end
