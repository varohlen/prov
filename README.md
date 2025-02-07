# Exam Collection

A collection of LaTeX-based exams for various science courses.

## Structure

The exams are organized by course:

- `Bio1/` - Biology 1
- `Bio2/` - Biology 2
- `Milj1/` - Environmental Science 1
- `Nak1a1/` - Natural Science 1a1
- `Nak1b/` - Natural Science 1b
- `Nak2/` - Natural Science 2

Each exam is in its own directory containing:
- `.tex` source files
- PDF outputs
- Supporting images and resources

## Usage

The exams are written in LaTeX using the `exam` document class. To compile an exam:

1. Navigate to the exam directory
2. Run `pdflatex examfile.tex` to generate the student version
3. Run `pdflatex "\def\answers{1}\input{examfile.tex}"` to generate the answer key

## Requirements

- LaTeX distribution (e.g., TeX Live, MiKTeX)
- `exam` document class
- Standard LaTeX packages (specified in each .tex file)
