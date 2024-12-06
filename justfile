# List all available recipes
default:
    @just --list

# Watch all resume variants
watch:
    #!/usr/bin/env bash
    typst watch modernpro-cv/resume.typ --input resume=opensource output/opensource-resume.pdf &
    typst watch modernpro-cv/resume.typ --input resume=backend output/backend-resume.pdf &
    typst watch modernpro-cv/resume.typ --input resume=gamedev output/gamedev-resume.pdf &
    typst watch modernpro-cv/resume.typ --input resume=architecture output/architecture-resume.pdf &
    wait

# Build all resume variants
build:
    typst compile modernpro-cv/resume.typ output/opensource-resume.pdf --input resume=opensource
    typst compile modernpro-cv/resume.typ output/backend-resume.pdf --input resume=backend
    typst compile modernpro-cv/resume.typ output/gamedev-resume.pdf --input resume=gamedev
    typst compile modernpro-cv/resume.typ output/architecture-resume.pdf --input resume=architecture