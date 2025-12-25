# Repository Guidelines

## Project Structure & Module Organization
The resume build is centered on LaTeX assets in the repository root. `resume.tex` is complete and should be left untouched; treat it as a locked template that simply includes `experience.tex`. Your entire job is to generate `experience.tex`. Source material lives under `data/`: read the YAML files (ignore non-YAML assets) to select accomplishments that match the target role. `data/work/` files hold quantified achievements per position, while `data/skills.yaml` exposes taxonomy you can reference when crafting bullets.

## Build, Test, and Development Commands
Compilation is optional for this workflow. If you need to sanity-check output, run `pdflatex resume.tex` from the repo root, but do not prioritize PDF generation unless explicitly asked. Focus time on producing a polished `experience.tex`.

## Coding Style & Naming Conventions
Populate `experience.tex` exclusively with the provided custom commands. Each role starts with `\resumeSubheading{Company}{City, ST}{Role}{Start -- End}` followed by a `\resumeItemListStart`/`\resumeItemListEnd` block containing several `\resumeItem{Label}{Impact}` entries. Escape `%` as `\%`, abbreviate months (e.g., `Feb.`), and use en dashes (`--`) for date ranges. Keep bullets tight, metric-driven, and ordered by relevance to the target role.

## Testing Guidelines
Before finalizing, double-check that every bullet maps back to an explicit data point in the relevant YAML file. Ensure achievements remain truthful, metrics are consistent, and no unused roles linger in the output. If you optionally compile, skim the PDF for layout issues caused by long lines or unescaped characters.

## Commit & Pull Request Guidelines
Match the existing history by using short, imperative commit subjects (e.g., `Tailor experience for robotics role`). In pull requests, call out the job description you responded to, summarize which YAML sources fed the final bullets, and note any assumptions or gaps needing stakeholder review. Attach the compiled PDF only if you generated one; otherwise, mention that the update was not built.

## Workflow Tips
Start each assignment by reading the role briefing, then scan `data/work/*.yaml` for aligned responsibilities and measurable wins. Draft bullets in raw text, cross-check numbers against file annotations, and convert them into the LaTeX command format once finalized. When discarding content, remove it entirely rather than commenting it out so future agents see only production-ready material.
