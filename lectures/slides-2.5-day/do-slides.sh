t=.$1.tex_files
test -d $t || mkdir $t
cd $t
TEXINPUTS=:..:../headers:../headers/imm-format:../images: xelatex $1
cp `basename $1 tex`pdf ..
cd