# Defined in - @ line 1
function glog --wraps='git log --oneline --decorate --graph' --description 'alias glog git log --oneline --decorate --graph'
  git log --oneline --decorate --graph $argv;
end
