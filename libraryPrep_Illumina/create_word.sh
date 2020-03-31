pandoc libraryPrep_protocol.md \
-o libraryPrep_protocol.docx \
-F pandoc-crossref \
-F pandoc-citeproc \
--pdf-engine=xelatex \
-V mainfont:"Times New Roman"
