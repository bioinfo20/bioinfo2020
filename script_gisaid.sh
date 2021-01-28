## combine files
cat gisaid*.fasta > combined.fasta

## run mafft
mafft combined.fasta > combined.ALN

## raxml
~/raxml-ng --all --msa combined.ALN --model GTR+G --tree pars{10} --bs-trees 10

