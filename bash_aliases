alias check_git='if [[ $(ls -al | grep ".git" | wc -l) -gt 0 ]] ; then'
alias gfap='check_git git fetch --all -p; fi'
alias tarup='tar -czf -I pigz'
alias validate_xml_schema='xmllint --noout --schema http://www.w3.org/2001/XMLSchema.xsd'
alias run_callgrind='valgrind --tool=callgrind --dump-instr=yes'
alias valgrind_full='valgrind --leak-check=full --track-origins=yes --show-leak-kinds=all --sim-hints=no-nptl-pthread-stackcache'
alias fordirdo='for dir in $(ls -l | grep ^d | awk '"'"'{print $NF}'"'"') ; do echo -------------- $dir ----------------;'
alias gitpushme='git push origin $(git branch | grep ^\* | awk '"'"'{print $2}'"'"')'
alias gitpullme='check_git git fetch --all ; git pull origin $(git branch | grep ^\* | awk '"'"'{print $2}'"'"') ; git remote update --prune ; fi'
alias m='make -j'
alias mc='make clean'
alias mcm='make clean; make -j6'
alias mkg='make -j6 --keep-going'
alias mcmkg='make clean; make -j6 --keep-going'
alias ll='ls -ahl'
alias lldir='ls -ahl | grep ^d'
alias lsdir='ls -ahl | grep ^d | awk '"'"'{print $NF}'"'"' | tail -n +3'
alias lsdirf='lsdir | sed '"'"':a;N;$!ba;s/\n/  /g'"'"' '
alias gfap_all='lsdir | xargs -I {} sh -c '"'"'(cd {}; if [[ $(ls -al | grep ".git" | wc -l) -gt 0 ]] ; then echo ----- {} ----- ; git fetch --all -p; fi)'"'"' '
alias gfap_allp='lsdir | xargs -P 8 -n 1 -I {} sh -c '"'"'(cd {}; if [[ $(ls -al | grep ".git" | wc -l) -gt 0 ]] ; then echo ----- {} ----- ; git fetch --all -p; fi)'"'"' '
alias finddirdev='find -type d -printf '"'"'%P\n'"'"' | grep -v "^\." | grep -iv cmake | grep -v doc | sort -r |sed '"'"'$ d'"'"' '
alias vi='vimx'
alias vim='vimx'
#alias epd='/usr/lib/EPD/bin/python'
#alias killpython='python ~/Projects/argos/kill_python.py'
#alias octave='octave3.8 --force-gui'
alias emacs='read -p '"'"'--------lol....NO--------'"'"' ; vim'
alias freshclam='/etc/init.d/clamav-freshclam stop;sudo freshclam -v;sudo /etc/init.d/clamav-freshclam start'
alias astyle_custom='astyle --style=allman -s4 -xn -xc -xl -xk -C -S -xW -w -Y -m0 -M80 -f -p -k1 -W1 -y -j -c -o'
#alias ycm_make='~/.vim/bundle/YCM-Generator/config_gen.py . --compiler=clang-3.5'
alias ycm_make='python2 ~/.vim/bundle/YCM-Generator/config_gen.py -F ycm --compiler=clang .'
#alias ycm_make='~/.vim/bundle/YCM-Generator/config_gen.py -F ycm -F cc --compiler=clang .'
alias rmtmp='rm *~'
alias rmorig='rm *.orig'
#alias cppcheckdefaultargs='cppcheck --enable=all --platform=unix64 --std=posix  --inconclusive --quiet --force -j4'
alias cppcheckdefaultargs='cppcheck --enable=all --platform=unix64 --std=c++17 --inconclusive --quiet --force -j8 -v --report-progress'
#alias cppcheckthis='cppcheckdefaultargs $(finddirdev | awk '"'"'{print "-I " $NF} '"'"' | sed '"'"':a;N;$!ba;s/\n/  /g'"'"' ) . 2> cppcheck_err.txt; cat cppcheck_err.txt | sort > __cckk2__; mv __cckk2__ cppcheck_err.txt'
alias cppcheckthis='cppcheckdefaultargs $(finddirdev | awk '"'"'{print "-I " $NF} '"'"' | sed '"'"':a;N;$!ba;s/\n/  /g'"'"' ) . 2> cppcheck_err.txt' 
#alias cppcheckproject='cppcheckdefaultargs --project=compile_commands.json --relative-paths=. 2> cppcheck_err.txt; cat cppcheck_err.txt | sort -h > __cckk2__; mv __cckk2__ cppcheck_err.txt'
alias cppcheckproject='cppcheckdefaultargs --project=compile_commands.json --relative-paths=. 2> cppcheck_err.txt'
alias findcpp='find -name "*.cpp" -print0 | xargs -0 grep'
alias findh='find -name "*.h" -print0 | xargs -0 grep'
alias top='htop'
alias zyp_dep='zypper source-install --build-deps-only'
alias gbs='git-branch-status'
alias find_cores='coredumpctl list | grep -v missing'
alias decrypt_pdf='qpdf -decrypt '
alias links='elinks'
alias kill_ryzen_test='PTS_CONCURRENT_TEST_RUNS=4 TOTAL_LOOP_TIME=60 phoronix-test-suite stress-run build-linux-kernel build-php build-apache pgbench apache redis'
alias strip_colors='sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[mGK]//g"'
#alias tidy_this='clang-tidy -extra-arg=-ferror-limit=0 -p compile_commands.json -checks=*,-cppcoreguidelines-pro-type-vararg,-hicpp-vararg,-google-readability-todo,-cppcoreguidelines-owning-memory,-google-runtime-references,-fuchsia-default-arguments,-cppcoreguidelines-pro-bounds-array-to-pointer-decay,-hicpp-no-array-decay,-cppcoreguidelines-pro-bounds-constant-array-index,-hicpp-no-assembler,-fuchsia-overloaded-operator,-hicpp-avoid-c-arrays,-cppcoreguidelines-avoid-c-arrays,-cppcoreguidelines-pro-bounds-pointer-arithmetic,-modernize-avoid-c-arrays,-modernize-loop-convert,-llvm-include-order,-modernize-use-using,-hicpp-explicit-conversions,-readability-avoid-const-params-in-decls,-llvm-header-guard,-cppcoreguidelines-non-private-member-variables-in-classes,-misc-non-private-member-variables-in-classes,-google-explicit-constructor,-misc-unconventional-assign-operator,-readability-magic-numbers,-modernize-use-trailing-return-type,-fuchsia-default-arguments-declarations,-readability-else-after-return,-cppcoreguidelines-pro-type-reinterpret-cast'
alias tidy_this='clang-tidy -p compile_commands.json -extra-arg=-ferror-limit=0 -checks=*,-cppcoreguidelines-pro-type-vararg,-hicpp-vararg,-google-readability-todo,-cppcoreguidelines-owning-memory,-google-runtime-references,-fuchsia-default-arguments,-cppcoreguidelines-pro-bounds-array-to-pointer-decay,-hicpp-no-array-decay,-cppcoreguidelines-pro-bounds-constant-array-index,-hicpp-no-assembler,-fuchsia-overloaded-operator,-hicpp-avoid-c-arrays,-cppcoreguidelines-pro-bounds-pointer-arithmetic,-llvm-include-order,-hicpp-explicit-conversions,-readability-avoid-const-params-in-decls,-llvm-header-guard,-cppcoreguidelines-non-private-member-variables-in-classes,-misc-non-private-member-variables-in-classes,-google-explicit-constructor,-misc-unconventional-assign-operator,-readability-magic-numbers,-modernize-use-trailing-return-type,-fuchsia-default-arguments-declarations,-readability-else-after-return,-cppcoreguidelines-pro-type-reinterpret-cast,-fuchsia-default-arguments-calls,-cppcoreguidelines-pro-type-union-access,-modernize-pass-by-value,-cppcoreguidelines-avoid-magic-numbers'
alias tunip='ifconfig tun0 | grep "inet " | awk '"'"'{print $2}'"'"''

function lns()
{
    local target=$(echo $1 | awk -F '/' '{print $NF}')
    ln -s $1 $target
}

#alias list_tensorflow="wget -q https://registry.hub.docker.com/v1/repositories/tensorflow/tensorflow/tags -O -  | sed -e 's/[][]//g' -e 's/"//g' -e 's/ //g' | tr '}' '\n'  | awk -F: '{print $3}'"
alias run_update="sudo dnf makecache; sudo dnf upgrade"
