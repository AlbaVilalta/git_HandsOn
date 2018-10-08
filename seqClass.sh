#!/bin/bash
seq=$1
seq=$(echo $seq | tr a-z A-Z)  # Note we just added this line
if [[ $seq =~ ^[ACGTU]+$ ]]; then 
  if [[ $seq =~ T ]]; then #si hi ha T es DNA
    echo "The sequence is DNA"
  elif [[ $seq =~ U ]]; then #si hi ha U es RNA
    echo "The sequence is RNA"
  else
    echo "The sequence can be DNA or RNA" #si no hi ha ni T ni U pot ser tan DNA com RNA
  fi
else
  echo "The sequence is not DNA nor RNA" #si hi ha algun altre caracter no es ni DNA i RNA
fi
