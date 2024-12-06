#import "modernpro-cv.typ": *
#import "@preview/fontawesome:0.5.0": *
#import "content/base.typ": content
#import "template.typ": filter-content

// Get resume type from command line argument
#let resume-type = {
  let resume-type = sys.inputs.resume
  if resume-type == "" {
    panic("Please provide a resume type (opensource, backend, gamedev, etc.)")
  }
  resume-type
}

// Set output filename based on resume type
#set document(title: resume-type + "-resume")

// Set bibliography style
#set bibliography(style: "chicago-author-date", title: none)

// Filter content based on resume type
#let filtered-content = filter-content(content, resume-type)

#show: cv-double(
  // ... header content stays the same ...

  right: [
    // ... other sections stay the same ...

    #section("Publications")
    #bibliography("modernpro-cv/bib.bib", full: true)
  ],
) 