# Enigma

This project consists of a resume template written in LaTeX and work experience
written in YAML files. A coding agent is used to take job descriptions, parse
the YAML files for relevant experience, and write them to `experience.tex`,
which will be included by `resume.tex` to generate the final resume PDF.

# Quick Start

1. Edit `resume.tex` and update the personal information in the first block at
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

• I'm planning to examine YAML files in the repo that contain data needed to generate an experience.tex tailored
  to the job description before outlining a detailed approach.

• Explored
  └ List ls

• I'm reviewing the AGENTS content to confirm if there are instructions beyond the summary already noted,
    List work
    Read 199601_umbrella.yml

• I'm planning to create a scientific experience entry using the proper macros, starting with a subheading
  including company, location, role, and dates, then adding about three relevant bullet points tailored to a
  general scientist role. Next, I'll check the resume.tex file to confirm macro names and formatting.

• Explored
  └ Read resume.tex
    List experience.tex

• I'm generating a new LaTeX file for the Umbrella Scientist role with three bullet items strictly derived from
  provided YAML data, including accurate metrics and dates formatted with month abbreviations and LaTeX-escaped
  percentages.

• Added experience.tex (+7 -0)
    1 +\resumeSubheading
    2 +{Umbrella Corporation}{Raccoon City, CO}
    3 +{Scientist}{Jan. 1996 -- Jul. 1998}
    4 +\resumeItemListStart
    5 +  \resumeItem{Nemesis Program}{Engineered an improved human B.O.W. with an advanced T-virus strain and cy
       bernetic control, raising strength by 50\% and speed by 25\% while boosting tracking and intelligence to
       neutralize 7 S.T.A.R.S. Bravo members.}
    6 +  \resumeItem{Viral Botany}{Led a 4-week T-virus infection study by applying 100ml to a carnivorous plant
       , driving 500\% growth and emergent predatory behavior that validated plant-based B.O.W. viability for en
       closed containment.}
    7 +\resumeItemListEnd

• Added experience entry focusing on Umbrella scientist achievements tailored to a broad scientist role. Used
  metrics from data/work/199601_umbrella.yml and updated experience.tex.

  - Created entry highlighting Nemesis Program metrics and Plant 42 study validating plant-based B.O.W.
    viability for enclosed containment.
  - Metrics cover improved tracking, strength, and intelligence from 1996 Jan. to 1998 Jul.

  Next steps: optionally run pdflatex resume.tex to verify layout; no tests were run.

─ Worked for 1m 00s ────────────────────────────────────────────────────────────────────────────────────────────

• Added the scientist experience entry tailored to the broad research-focused brief.

  - Updated experience.tex with an Umbrella Corporation role (Jan. 1996 -- Jul. 1998) using the repository’s
    LaTeX commands.
  - Bullets highlight the Nemesis B.O.W. program (50% strength, 25% speed, 7 S.T.A.R.S. neutralized) and the
    Plant 42 viral botany study (100ml T-virus over 4 weeks, 500% growth, emergent containment capability), all
    sourced from data/work/199601_umbrella.yml.

  Next step: run pdflatex resume.tex if you want a layout check.
```

5. Run `make` to build the PDF.
