source /workspaces/docker_intro/skripter/env.sh

copy_course_files() {
  local src_root=$kursrot
  local dest_root=$kursrot/temp/
  local course="$1"

  local src="${src_root}/${course}"
  local dest="${dest_root}/${course}"

  rm -rf "$dest"
  mkdir -p "$dest"

  cp  "$src/README.md"   "$dest/README.md"
  cp -r "$src/resources" "$kursrot/temp/"

  mv  "$dest/README.md"  "$dest/README_${course}.md"
  
  cat "$dest/README_${course}.md" >> $kursrot/temp/README_full.md


}


rm -rf $kursrot/temp
mkdir $kursrot/temp
mkdir $kursrot/temp/resources

touch $kursrot/temp/README_full.md


cat $kursrot/README.md >> $kursrot/temp/README_full.md

copy_course_files oppsett
copy_course_files helloworld
copy_course_files helloworld_ferdig_image
copy_course_files lagdeling
copy_course_files tilkobling_terminal
copy_course_files installasjon_programvare
copy_course_files tjener
copy_course_files brukertilgang
copy_course_files tags
copy_course_files dockercompose

{ printf '\n\n# Ressurser\n\n'; } >> $kursrot/temp/README_full.md
{ printf '\n\n## Ofte stilte spørsmål\n\n'; } >> $kursrot/temp/README_full.md


for f in $kursrot/oss/*.md; do
  { cat "$f"; printf '\n\n'; } >> $kursrot/temp/README_full.md
done


sed -E  's/(^|[^!])\[([^]]+)\]\([^)]*\)/\1\2/g'  $kursrot/temp/README_full.md >>  $kursrot/temp/README_full_nolinks.md
rm $kursrot/temp/README_full.md
mv $kursrot/temp/README_full_nolinks.md $kursrot/temp/README_full.md

cd $kursrot/temp/
pandoc -i README_full.md -o README_full.docx --reference-doc $kursrot/resources/Notatmal.docx

pandoc -i README_full.md -o $kursrot/generert_dokumentasjon/epub/Introduksjon_til_docker.epub -M title="Introduksjon til Docker" --epub-cover-image=$kursrot/resources/epub-cover.png

cp $kursrot/temp/README_full.md $kursrot/generert_dokumentasjon/markdown/Introduksjon_til_docker.md
cp  -r $kursrot/temp/resources $kursrot/generert_dokumentasjon/markdown/

cp $kursrot/temp/README_full.docx $kursrot/generert_dokumentasjon/word/Introduksjon_til_docker.docx

libreoffice --headless --convert-to pdf --outdir ./ README_full.docx 

cp $kursrot/temp/README_full.pdf $kursrot/generert_dokumentasjon/PDF/Introduksjon_til_docker.pdf

rm -rf $kursrot/temp