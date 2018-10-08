#!/bin/bash
seq=$1 #definim variable
seq=$(echo $seq | tr a-z A-Z)  # Note we just added this line
if [[ $seq =~ ^[ACGTU]+$ ]]; then #Si a la sequencia hi ha aquestes lletres: 
  if [[ $seq =~ T ]]; then #Si hi ha T es DNA
    echo "The sequence is DNA" #Imprimim que la sequencia es DNA
  elif [[ $seq =~ U ]]; then #Si hi ha U es RNA
    echo "The sequence is RNA" #Imprmim que la sequencia es RNA
  else #Si hi ha qualsevol de les altres:
    echo "The sequence can be DNA or RNA" #Imprimim que la sequencia pot ser tan DNA com RNA
  fi #Tanquem un if
else #Si no hi ha aquestes lletres:
  echo "The sequence is not DNA nor RNA" #Imprimim que la sequencia no es ni DNA i RNA
fi #Tanquem l'altre if
