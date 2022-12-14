# Defined in - @ line 1
function gpc --wraps='gp --set-upstream origin (git branch --show-current)' --description 'alias gpc gp --set-upstream origin (git branch --show-current)'
  gp --set-upstream origin (git branch --show-current) $argv;
end
