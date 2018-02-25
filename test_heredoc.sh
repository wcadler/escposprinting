#!/bin/bash
#===============================================================================
#
#          FILE:  test_heredoc.sh
# 
#         USAGE:  ./test_heredoc.sh 
# 
#   DESCRIPTION:  Tests a little heredoc
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:   (), 
#       COMPANY:  
#       VERSION:  1.0
#       CREATED:  02/24/2018 12:09:04 PM PST
#      REVISION:  ---
#===============================================================================

#%{\fontsize{50}{70} \selectfont \underline{Fortune:} \newline }	
#%{\fontsize{50}{70} \selectfont $fortune_text }	

do_render() {

cat <<EOF > output.tex
\documentclass{article}
\usepackage{courier}
\usepackage{graphics}
\usepackage{graphicx,subfigure}
\usepackage{rotate}
\usepackage[vcentering,dvips]{geometry}
\geometry{papersize={1.8in,3.2in},total={1.6in,3.0in},left=0.1in,right=0.1in}
\begin{document}
\begin{figure}
\includegraphics[angle=0,origin=c,width=1.5in]{vault_tech.png}
\end{figure}
$fortune_text 
\end{document}
EOF

}

fortune_text=$(fortune)
echo $fortune_text
do_render 
