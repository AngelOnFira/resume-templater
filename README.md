# Resume Templater

![GitHub](https://img.shields.io/github/license/angelonfira/resume-templater)
![GitHub last commit](https://img.shields.io/github/last-commit/angelonfira/resume-templater)

This is a resume templating system for people who have multiple types of computer science resumes. It uses the [Deedy resume template](https://github.com/deedy/Deedy-Resume). For example, say you want a certain project visible on your backend resume, but not on your dev-ops resume. This also allows easy editing of generic content that is the same across all your resumes.

## Instructions

### Editing the content

#### Resume files

Edit resume files at `templates/` to change the content of the resume. In a resume file, templated items can be accessed with 

`((( data.<section-name>.<item-name> )))`

For example, I'll lay out my volunteer section by adding the ccss, h4tt, hackCarleton and lameJam items:

```
\section{Volunteer}

((( data.volunteer.ccss )))
((( data.volunteer.h4tt )))
((( data.volunteer.hackCarleton )))
((( data.volunteer.lameJam )))
```

#### Section templates

Section templates set how a section is viewed on the resume. You can edit the files in `templates/sections`.

#### Content files

Content files hold information on a specific item in a section. You can edit content files at `content/<section-name>`.

### Rendering the resumes with Docker
Docker is recommended as installing the libraries right onto your system will take ~3gb

1. Make sure you have [Docker](https://docs.docker.com/install/) installed.
2. Clone the repo
`git clone https://github.com/AngelOnFira/resume-templater.git`
2. Run `docker run -v "$(pwd)":/app/ -it angelonfira/computer-science-resume`