# Resume Templater

<div align="center">

![Typst](https://img.shields.io/badge/Made%20with-Typst-blue)
![License](https://img.shields.io/badge/license-MIT-green)

A modern resume templating system built with Typst that allows you to maintain multiple resume variants from a single content source.

</div>

## 🌟 Features

- **Single Source of Truth**: Maintain all your professional content in one place
- **Multiple Variants**: Generate different resumes for different purposes
- **Smart Content Filtering**: Content is automatically filtered based on tags
- **Easy to Update**: Simple YAML-like content structure in Typst
- **Fast Compilation**: Takes advantage of Typst's incremental compilation

## 🚀 Getting Started

### Prerequisites

- [Typst](https://typst.app/)
- [Just](https://github.com/casey/just) (for running commands)

### Installation

1. Clone this repository:

```bash
git clone https://github.com/yourusername/resume-templater
cd resume-templater
```

2. Create your resume variants:

```bash
just build # Builds all variants
# or
just watch # Watches for changes and rebuilds
```

Your resumes will be generated in the `output/` directory.

## 📝 Usage

### Content Management

All content is stored in `modernpro-cv/content/base.typ`. Each content entry includes tags that determine which resume variants it appears in:

```typ
experience: (
    (
        title: "Company Name",
        role: "Position",
        description: ("Achievement 1", "Achievement 2"),
        // Will appear in backend and architecture variants
        tags: ("backend", "architecture"),
    ),
)
```

### Available Tags

You can change these out as needed for your own resume versions, but this repo
uses these tags by default:

- `opensource`: Open source contributions and community work
- `backend`: Backend development experience
- `gamedev`: Game development projects
- `architecture`: System architecture and infrastructure
- `default`: Included in all variants (no tag needed)

### Building Specific Variants

```bash
typst compile modernpro-cv/resume.typ output/backend-resume.pdf --input resume=backend
```

## 📂 Project Structure

```bash
.
├── modernpro-cv/
│ ├── content/
│ │ └── base.typ # All resume content
│ ├── resume.typ # Main template
│ ├── template.typ # Content filtering logic
│ └── modernpro-cv.typ # CV styling
├── output/ # Generated PDFs
└── justfile # Build commands
```

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Built with [Typst](https://typst.app/)
- Based on the modernpro-cv template
