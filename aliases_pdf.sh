function pdfpages {
  PREF=$1
  for FILENAME in ${PREF}*.pdf; do
      echo $FILENAME
      pdfinfo "$FILENAME" |  grep Pages
      echo
   done

}


# no-git dl_2022/wim $ 
# pdftk Dec_22_Christmas_concert_Part_2.pdf  cat 3-end output  out.pdf
