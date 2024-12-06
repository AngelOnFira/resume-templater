#import "@preview/modernpro-cv:1.0.2": *
#import "@preview/fontawesome:0.5.0": *
#import "content/base.typ": content
#import "template.typ": filter-content

// Filter content for backend resume
#let backend-content = filter-content(content, "backend")

#show: cv-double(
  // ... rest of the resume setup using backend-content
) 