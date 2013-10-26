echo  &&
echo -e "\033[31mSIZE:\033[39m" && 
phploc --exclude vendor/*,contrib/* . | grep -o -E '^.*Lines of Code.*$' &&
phploc --exclude vendor/*,contrib/* . | grep -o -E '^\s{2}Classes\b.*$' &&
phploc --exclude vendor/*,contrib/* . | grep -o -E '^\s+Methods\s+\d+$' &&
phploc --exclude vendor/*,contrib/* . | grep -o -E '^.*Public\s+\d+$' &&
phploc --exclude vendor/*,contrib/* . | grep -o -E '^\s+Functions\s+\d+$' &&
echo -e "\033[31mXCLASSES:\033[39m" && 
[ -a ext_localconf.php ] && cat ext_localconf.php | grep -o -E "\['XCLASS'\]" | wc -l || echo "     0" &&
echo -e "\033[31mHOOKS:\033[39m" &&
[ -a ext_localconf.php ] && cat ext_localconf.php | grep -o -E 'hook' | wc -l || echo "     0" && 
echo -e "\033[31mSTYLE ERRORS:\033[39m" && 
curl -O -s https://raw.github.com/rtp-ch/PortableCGL/master/rulesets/typo3_4.phpcs.xml && phpcs --ignore=vendor/*,contrib/* --extensions=php --standard=typo3_4.phpcs.xml --encoding=utf-8 --report=full . | wc -l && rm typo3_4.phpcs.xml &&
echo -e "\033[31mMESS ERRORS:\033[39m" && 
curl -O -s https://raw.github.com/rtp-ch/PortableCGL/master/rulesets/typo3_4.phpmd.xml && phpmd . --exclude vendor/*,contrib/* --suffixes php text typo3_4.phpmd.xml | wc -l && rm typo3_4.phpmd.xml &&
echo -e "\033[31mCOMPLEXITY:\033[39m" && 
phploc --exclude vendor/*,contrib/* . | grep -o -E '^\s+Cyclomatic Complexity.*$' &&
echo;