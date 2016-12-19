DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)"
SEARCHFILE=${1:-$DIR/"searches.xml"}

echo Dir is: $DIR
echo $File is: SEARCHFILE
echo ---

killall -9 "Google Chrome"
xsltproc $DIR/xsl/chrome_keywords.xsl $SEARCHFILE | $DIR/bin/sqlite3 ~/Library/Application\ Support/Google/Chrome/Default/Web\ Data

killall -9 "firefox"
xsltproc $DIR/xsl/firefox_keywords.xsl $SEARCHFILE | $DIR/bin/sqlite3 ~/Library/Application\ Support/Firefox/Profiles/*.default-*/places.sqlite