# List all available recipes
default:
    @just --list

# Watch all resume variants
watch:
    #!/usr/bin/env bash
    typst watch resume.typ --input resume=default output/default-resume.pdf &
    typst watch resume.typ --input resume=opensource output/opensource-resume.pdf &
    typst watch resume.typ --input resume=backend output/backend-resume.pdf &
    typst watch resume.typ --input resume=gamedev output/gamedev-resume.pdf &
    typst watch resume.typ --input resume=architecture output/architecture-resume.pdf &
    wait

# Build all resume variants
build:
    typst compile resume.typ output/default-resume.pdf --input resume=default
    typst compile resume.typ output/opensource-resume.pdf --input resume=opensource
    typst compile resume.typ output/backend-resume.pdf --input resume=backend
    typst compile resume.typ output/gamedev-resume.pdf --input resume=gamedev
    typst compile resume.typ output/architecture-resume.pdf --input resume=architecture