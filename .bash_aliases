alias svngrep="grep -rI --exclude-dir=.svn"
alias ggrep="grep -rIi"
alias svnstat="svn stat | grep \"[M,A,U,D,C,G,!] \""
alias psgrep="ps aux | grep"
alias xclip="xclip -selection c"
alias snmpwalk="snmpwalk -M /usr/share/snmp/mibs/ -mall"
alias snmpbulkwalk="snmpbulkwalk -M /usr/share/snmp/mibs/ -mall"
alias snmpget="snmpget -M /usr/share/snmp/mibs/ -mall"
alias snmpset="snmpset -M /usr/share/snmp/mibs/ -mall"

# Not alias, but best place to keep these right now
export VISUAL=vim
export EDITOR="$VISUAL"
export SVN_EDITOR="$VISUAL"

