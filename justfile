# List all available recipes
default:
    @just --list

# Resume types compiled for every variant (base + custom)
types := "default opensource backend gamedev architecture"

# Watch all resumes (base + custom) in both column styles
watch:
    #!/usr/bin/env bash
    set -e
    trap 'kill 0' EXIT
    for t in {{types}}; do
        mkdir -p output/two-column output/single-column
        typst watch resume.typ        --input resume=$t --input content=content/base.typ output/two-column/$t-resume.pdf &
        typst watch resume-single.typ --input resume=$t --input content=content/base.typ output/single-column/$t-resume.pdf &
    done
    shopt -s nullglob
    for f in content/custom/*.typ; do
        name=$(basename "$f" .typ)
        mkdir -p "output/custom/$name"
        for t in {{types}}; do
            typst watch resume.typ        --input resume=$t --input content="$f" "output/custom/$name/$t-two-column.pdf" &
            typst watch resume-single.typ --input resume=$t --input content="$f" "output/custom/$name/$t-single-column.pdf" &
        done
    done
    wait

# Build all resumes (base + custom) in both column styles
build:
    #!/usr/bin/env bash
    set -e
    mkdir -p output/two-column output/single-column
    for t in {{types}}; do
        typst compile resume.typ        output/two-column/$t-resume.pdf   --input resume=$t --input content=content/base.typ
        typst compile resume-single.typ output/single-column/$t-resume.pdf --input resume=$t --input content=content/base.typ
    done
    shopt -s nullglob
    for f in content/custom/*.typ; do
        name=$(basename "$f" .typ)
        mkdir -p "output/custom/$name"
        for t in {{types}}; do
            typst compile resume.typ        "output/custom/$name/$t-two-column.pdf"    --input resume=$t --input content="$f"
            typst compile resume-single.typ "output/custom/$name/$t-single-column.pdf" --input resume=$t --input content="$f"
        done
    done
