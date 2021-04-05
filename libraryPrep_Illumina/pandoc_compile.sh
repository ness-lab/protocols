pandoc libraryPrep_protocol.md \
-o libraryPrep_protocol.$1 \
-s \
--citeproc \
-F pandoc-crossref \
--pdf-engine=xelatex \
-V mainfont:"Times New Roman"
