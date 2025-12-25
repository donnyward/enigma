# Quick Start

1. Add `resume.tex` and update the personal information in the first block at
   the top of the file. Edit the `\section{Education}` and `\section{Skills}`
   sections as desired.

2. Create YAML files with detailed work experience in `data/work/`. Use the
   sample `data/work/199601_umbrella.yml` as a template from which to build
   upon. These will be used by the agent to fill in the experience section of
   the resume.

3. Install LaTeX to use `pdflatex`

`brew install texlive`

4. Install a coding agent such as `codex` and launch in the source checkout.


```
~/enigma/ > codex
```

5. Paste a job description to have the agent craft an experience section. The
   agent will create `experience.tex` which will be used to build the final
   PDF.

```
~/enigma/ > heres a job description, do your job: We're looking for experienced
scientists from all backgrounds. We encourage you to apply if you would like to
work with us.
```

5. Run `make` to build the PDF.
