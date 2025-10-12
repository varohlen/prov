#!/usr/bin/env python3
"""Reorganize ma3b exam files into proper structure"""
import os
import shutil
from pathlib import Path

def main():
    base = Path("subjects/matematik/ma3b")
    
    # Create target folders
    folders = [
        "ovningsprov-algebra", "ovningsbank-komplett", "np-algebra-fokus",
        "prov1-bas", "prov1-elev", "ovningsbank-algebra", "prov-algebra-ma3b"
    ]
    
    print("Creating folders...")
    for folder in folders:
        (base / folder).mkdir(exist_ok=True)
    print("✓ Folders created\n")
    
    # Move files
    moves = [
        # ovningsprov-algebra
        ("kombinerat/ovningsprov_algebra_elev.tex", "ovningsprov-algebra/ovningsprov_algebra_elev.tex"),
        ("kombinerat/ovningsprov_algebra_elev.pdf", "ovningsprov-algebra/ovningsprov_algebra_elev.pdf"),
        ("kombinerat/ovningsprov_algebra_elev_facit.pdf", "ovningsprov-algebra/ovningsprov_algebra_elev_facit.pdf"),
        ("kombinerat/ovningsprov_algebra_elev_facit.tex", "ovningsprov-algebra/ovningsprov_algebra_elev_facit.tex.bak"),
        # ovningsbank-komplett
        ("kombinerat/ovningsbank_komplett.tex", "ovningsbank-komplett/ovningsbank_komplett.tex"),
        # np-algebra-fokus
        ("np_algebra_fokus.tex", "np-algebra-fokus/np_algebra_fokus.tex"),
        # prov1-bas
        ("prov1_algebra_bas.tex", "prov1-bas/prov1_algebra_bas.tex"),
        ("prov1_algebra_bas.pdf", "prov1-bas/prov1_algebra_bas.pdf"),
        # prov1-elev
        ("prov1_algebra_elev.tex", "prov1-elev/prov1_algebra_elev.tex"),
        ("prov1_algebra_elev.pdf", "prov1-elev/prov1_algebra_elev.pdf"),
        # ovningsbank-algebra
        ("ovningsbank_algebra_ma3b.tex", "ovningsbank-algebra/ovningsbank_algebra_ma3b.tex"),
        ("ovningsbank_algebra_ma3b.pdf", "ovningsbank-algebra/ovningsbank_algebra_ma3b.pdf"),
        ("ovningsbank_algebra_ma3b_facit.tex", "ovningsbank-algebra/ovningsbank_algebra_ma3b_facit.tex.bak"),
        # prov-algebra-ma3b
        ("prov_algebra_ma3b.tex", "prov-algebra-ma3b/prov_algebra_ma3b.tex"),
        ("prov_algebra_ma3b.pdf", "prov-algebra-ma3b/prov_algebra_ma3b.pdf"),
    ]
    
    print("Moving files...")
    for src, dst in moves:
        src_path = base / src
        dst_path = base / dst
        if src_path.exists():
            shutil.move(str(src_path), str(dst_path))
            print(f"✓ {src} -> {dst}")
    print()
    
    # Remove backups
    print("Removing backup files...")
    backups = [
        "kombinerat/ovningsprov_algebra_backup.tex",
        "kombinerat/ovningsprov_algebra_elev_facit_old.tex"
    ]
    for backup in backups:
        fp = base / backup
        if fp.exists():
            fp.unlink()
            print(f"✓ Removed {backup}")
    print()
    
    # Clean artifacts
    print("Cleaning LaTeX artifacts...")
    artifacts = [".aux", ".log", ".fls", ".fdb_latexmk", ".synctex.gz", ".toc"]
    count = 0
    for ext in artifacts:
        for f in base.rglob(f"*{ext}"):
            f.unlink()
            count += 1
    print(f"✓ Removed {count} artifacts\n")
    
    # Show results
    print("=== Final structure ===")
    for folder in sorted(folders):
        folder_path = base / folder
        files = sorted([f.name for f in folder_path.iterdir()]) if folder_path.exists() else []
        print(f"\n{folder}/ ({len(files)} files)")
        for f in files:
            print(f"  - {f}")

if __name__ == "__main__":
    main()
