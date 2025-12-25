# Quick Start

1. Install LaTeX to use `pdflatex`

`brew install texlive`

2. Install a coding agent such as `codex` and launch in the source checkout.


```
~/enigma/ > codex
```

3. Paste a job description to have the agent craft an experience section. The
   agent will create `experience.tex` which will be used to build the final
   PDF.

```
~/enigma/ > heres a job description, do your job: We're looking for experienced
scientists from all backgrounds. We encourage you to apply if you would like to
work with us.
```

4. Run `make` to build the PDF.
