export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
eval "$(pyenv init -)"
PATH=$(pyenv root)/shims:$PATH
