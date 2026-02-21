# List all available recipes
default:
    @just --list

# Watch all resume variants (two-column)
watch:
    #!/usr/bin/env bash
    typst watch resume.typ --input resume=default output/two-column/default-resume.pdf &
    typst watch resume.typ --input resume=opensource output/two-column/opensource-resume.pdf &
    typst watch resume.typ --input resume=backend output/two-column/backend-resume.pdf &
    typst watch resume.typ --input resume=gamedev output/two-column/gamedev-resume.pdf &
    typst watch resume.typ --input resume=architecture output/two-column/architecture-resume.pdf &
    wait

# Watch single-column resume variants
watch-single:
    #!/usr/bin/env bash
    typst watch resume-single.typ --input resume=default output/single-column/default-resume.pdf &
    typst watch resume-single.typ --input resume=opensource output/single-column/opensource-resume.pdf &
    typst watch resume-single.typ --input resume=backend output/single-column/backend-resume.pdf &
    typst watch resume-single.typ --input resume=gamedev output/single-column/gamedev-resume.pdf &
    typst watch resume-single.typ --input resume=architecture output/single-column/architecture-resume.pdf &
    wait

# Build all resume variants
build:
    typst compile resume.typ output/two-column/default-resume.pdf --input resume=default
    typst compile resume.typ output/two-column/opensource-resume.pdf --input resume=opensource
    typst compile resume.typ output/two-column/backend-resume.pdf --input resume=backend
    typst compile resume.typ output/two-column/gamedev-resume.pdf --input resume=gamedev
    typst compile resume.typ output/two-column/architecture-resume.pdf --input resume=architecture
    typst compile resume-single.typ output/single-column/default-resume.pdf --input resume=default
    typst compile resume-single.typ output/single-column/opensource-resume.pdf --input resume=opensource
    typst compile resume-single.typ output/single-column/backend-resume.pdf --input resume=backend
    typst compile resume-single.typ output/single-column/gamedev-resume.pdf --input resume=gamedev
    typst compile resume-single.typ output/single-column/architecture-resume.pdf --input resume=architecture