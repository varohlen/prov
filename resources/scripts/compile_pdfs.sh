#!/bin/bash

# Log file
LOG_FILE="compile_log.txt"

# Clear the log file
> "$LOG_FILE"

# Find all .tex files (excluding .git directory)
TEX_FILES=$(find . -name "*.tex" -not -path "./.git/*")

# Loop through each .tex file and compile it
for file in $TEX_FILES; do
  echo "=== Compiling $file without answers ===" | tee -a "$LOG_FILE"
  # Compile without answers
  if pdflatex -interaction=nonstopmode -output-directory=$(dirname "$file") "$file"; then
    echo "Success: $file compiled without errors." | tee -a "$LOG_FILE"
  else
    echo "Error: Failed to compile $file. Check the log for details." | tee -a "$LOG_FILE"
    TEX_LOG_FILE="$(dirname "$file")/$(basename "$file" .tex).log"
    if [ -f "$TEX_LOG_FILE" ]; then
      echo "=== Log File Snippet ($TEX_LOG_FILE) ===" | tee -a "$LOG_FILE"
      tail -n 20 "$TEX_LOG_FILE" | tee -a "$LOG_FILE"
      echo "=== End of Log File Snippet ===" | tee -a "$LOG_FILE"
    else
      echo "No log file found for $file." | tee -a "$LOG_FILE"
    fi
  fi

  echo "=== Compiling $file with answers (_facit) ===" | tee -a "$LOG_FILE"
  # Compile with answers (using _facit suffix)
  if pdflatex -interaction=nonstopmode -output-directory=$(dirname "$file") -jobname="$(basename "$file" .tex)_facit" "\newcommand{\printanswers}{1} \input{$file}"; then
    echo "Success: $file compiled with answers (_facit) without errors." | tee -a "$LOG_FILE"
  else
    echo "Error: Failed to compile $file with answers (_facit). Check the log for details." | tee -a "$LOG_FILE"
    TEX_LOG_FILE="$(dirname "$file")/$(basename "$file" .tex)_facit.log"
    if [ -f "$TEX_LOG_FILE" ]; then
      echo "=== Log File Snippet ($TEX_LOG_FILE) ===" | tee -a "$LOG_FILE"
      tail -n 20 "$TEX_LOG_FILE" | tee -a "$LOG_FILE"
      echo "=== End of Log File Snippet ===" | tee -a "$LOG_FILE"
    else
      echo "No log file found for $file." | tee -a "$LOG_FILE"
    fi
  fi

  # Clean up build files
  echo "=== Cleaning up build files for $file ===" | tee -a "$LOG_FILE"
  BUILD_FILES=(
    "$(dirname "$file")/$(basename "$file" .tex).aux"
    "$(dirname "$file")/$(basename "$file" .tex).log"
    "$(dirname "$file")/$(basename "$file" .tex).out"
    "$(dirname "$file")/$(basename "$file" .tex).toc"
    "$(dirname "$file")/$(basename "$file" .tex).synctex.gz"
    "$(dirname "$file")/$(basename "$file" .tex)_facit.aux"
    "$(dirname "$file")/$(basename "$file" .tex)_facit.log"
    "$(dirname "$file")/$(basename "$file" .tex)_facit.out"
    "$(dirname "$file")/$(basename "$file" .tex)_facit.toc"
    "$(dirname "$file")/$(basename "$file" .tex)_facit.synctex.gz"
  )
  for build_file in "${BUILD_FILES[@]}"; do
    if [ -f "$build_file" ]; then
      rm "$build_file"
      echo "Deleted: $build_file" | tee -a "$LOG_FILE"
    fi
  done

  echo "" | tee -a "$LOG_FILE"
done

# Print summary
echo "=== Compilation Summary ===" | tee -a "$LOG_FILE"
echo "Successful compilations:" | tee -a "$LOG_FILE"
grep "Success:" "$LOG_FILE" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"
echo "Failed compilations:" | tee -a "$LOG_FILE"
grep "Error:" "$LOG_FILE" | tee -a "$LOG_FILE"