#!/bin/bash
set -e

cd subjects/matematik/ma3b

echo "Creating target folders..."
mkdir -p ovningsprov-algebra ovningsbank-komplett np-algebra-fokus prov1-bas prov1-elev ovningsbank-algebra prov-algebra-ma3b

echo "Moving ovningsprov-algebra files..."
[ -f kombinerat/ovningsprov_algebra_elev.tex ] && mv kombinerat/ovningsprov_algebra_elev.tex ovningsprov-algebra/
[ -f kombinerat/ovningsprov_algebra_elev.pdf ] && mv kombinerat/ovningsprov_algebra_elev.pdf ovningsprov-algebra/
[ -f kombinerat/ovningsprov_algebra_elev_facit.pdf ] && mv kombinerat/ovningsprov_algebra_elev_facit.pdf ovningsprov-algebra/
[ -f kombinerat/ovningsprov_algebra_elev_facit.tex ] && mv kombinerat/ovningsprov_algebra_elev_facit.tex ovningsprov-algebra/ovningsprov_algebra_elev_facit.tex.bak

echo "Moving ovningsbank-komplett..."
[ -f kombinerat/ovningsbank_komplett.tex ] && mv kombinerat/ovningsbank_komplett.tex ovningsbank-komplett/

echo "Moving np-algebra-fokus..."
[ -f np_algebra_fokus.tex ] && mv np_algebra_fokus.tex np-algebra-fokus/

echo "Moving prov1-bas..."
[ -f prov1_algebra_bas.tex ] && mv prov1_algebra_bas.tex prov1-bas/
[ -f prov1_algebra_bas.pdf ] && mv prov1_algebra_bas.pdf prov1-bas/

echo "Moving prov1-elev..."
[ -f prov1_algebra_elev.tex ] && mv prov1_algebra_elev.tex prov1-elev/
[ -f prov1_algebra_elev.pdf ] && mv prov1_algebra_elev.pdf prov1-elev/

echo "Moving ovningsbank-algebra..."
[ -f ovningsbank_algebra_ma3b.tex ] && mv ovningsbank_algebra_ma3b.tex ovningsbank-algebra/
[ -f ovningsbank_algebra_ma3b.pdf ] && mv ovningsbank_algebra_ma3b.pdf ovningsbank-algebra/
[ -f ovningsbank_algebra_ma3b_facit.tex ] && mv ovningsbank_algebra_ma3b_facit.tex ovningsbank-algebra/ovningsbank_algebra_ma3b_facit.tex.bak

echo "Moving prov-algebra-ma3b..."
[ -f prov_algebra_ma3b.tex ] && mv prov_algebra_ma3b.tex prov-algebra-ma3b/
[ -f prov_algebra_ma3b.pdf ] && mv prov_algebra_ma3b.pdf prov-algebra-ma3b/

echo "Removing backup files..."
rm -f kombinerat/ovningsprov_algebra_backup.tex
rm -f kombinerat/ovningsprov_algebra_elev_facit_old.tex

echo "Cleaning LaTeX artifacts..."
find . -type f \( -name "*.aux" -o -name "*.log" -o -name "*.fls" -o -name "*.fdb_latexmk" -o -name "*.synctex.gz" -o -name "*.toc" \) -delete

echo ""
echo "=== Reorganization complete ==="
echo ""
echo "Structure:"
ls -1
echo ""
for d in ovningsprov-algebra ovningsbank-komplett np-algebra-fokus prov1-bas prov1-elev ovningsbank-algebra prov-algebra-ma3b; do
  echo "=== $d ==="
  ls -1 $d 2>/dev/null || echo "(empty)"
  echo ""
done
