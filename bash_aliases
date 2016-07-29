
alias fordirdo='for dir in $(ls -l | grep ^d | awk '"'"'{print $NF}'"'"') ; do echo -------------- $dir ----------------;'
alias gitpushme='git push origin $(git branch | grep ^\* | awk '"'"'{print $2}'"'"')'
alias gitpullme='git fetch --all ; git pull origin $(git branch | grep ^\* | awk '"'"'{print $2}'"'"') ; git remote update --prune '
alias m='make -j6'
alias mcm='make clean; make -j6'
alias ll='ls -ahl'
alias lldir='ls -ahl | grep ^d'
alias lldirf='ls -alh | grep ^d | awk '"'"'{print $NF}'"'"' | sed '"'"':a;N;$!ba;s/\n/  /g'"'"' '
alias finddirdev='find -type d -printf '"'"'%d\t%P\n'"'"' | grep -v "^\." | grep -iv cmake | grep -v doc | sort -r -nk1 | sed '"'"'$ d'"'"' '
alias vi='vim'
alias emacs='read -p '"'"'--------lol....NO--------'"'"' ; vim'
alias freshclam='/etc/init.d/clamav-freshclam stop;sudo freshclam -v;sudo /etc/init.d/clamav-freshclam start'
alias astyle_custom='astyle --style=allman -s4 -xn -xc -xl -xk -C -S -xW -w -Y -m0 -M80 -f -p -k1 -W1 -y -j -c -o'
alias ycm_make='~/.vim/bundle/YCM-Generator/config_gen.py . --compiler=clang-3.5'
alias rmtmp='rm *~'
alias cppcheckdefaultargs='cppcheck --enable=all --platform=unix64 --std=posix --inconclusive --quiet --force -j4'
alias cppcheckthis='cppcheckdefaultargs $(finddirdev | awk '"'"'{print "-I " $NF} '"'"' | sed '"'"':a;N;$!ba;s/\n/  /g'"'"' ) . 2> cppcheck_err.txt'
