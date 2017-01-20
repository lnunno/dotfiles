# See: https://github.com/Bash-it/bash-it/blob/master/aliases/available/maven.aliases.bash

alias m='mvn'
alias mc='mvn compile'
alias mcc='mvn clean compile'
alias mdocs="mvn dependency:sources dependency:resolve -Dclassifier=javadoc"
alias mclean='mvn clean'
alias mci='mvn clean install'
alias mi='mvn install'
alias mrprep='mvn release:prepare'
alias mrperf='mvn release:perform'
alias mrrb='mvn release:rollback'
alias mdep='mvn dependency:tree'
alias mpom='mvn help:effective-pom'
alias mcisk='mci -Dmaven.test.skip=true'
