svn merge --dry-run
svn help
svn status -u
svn info
svn list
svn log -v --stop-on-copy | more
svn changelist
svnversion
svnlook info
svn checkout
svn copy
svn propget svn:mergeinfo
svn mergeinfo --show-revs eligible
svn diff
svn diff -r rev1:rev2
svn proplist svn
svn resolve --accept <working>
svn propset svn:ignore -F .cvsignore .
