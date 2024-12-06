#import "modernpro-cv.typ": *
#import "@preview/fontawesome:0.5.0": *
#import "content/base.typ": content
#import "template.typ": filter-content

// Helper function to process bold text
#let process-bold(text) = {
  let parts = text.split("*")
  let result = ()
  for (i, part) in parts.enumerate() {
    if calc.even(i) {
      result = result + (part,)
    } else {
      result = result + ([*#part*],)
    }
  }
  result.join("")
}

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

// Filter content based on resume type
#let filtered-content = filter-content(content, resume-type)

#show: cv-double(
  font-type: "PT Sans",
  continue-header: "true",
  name: filtered-content.name,
  address: "",
  lastupdated: "false",
  pagecount: "false",
  date: datetime.today(),
  contacts: (
    (text: [#fa-globe() #filtered-content.url], link: filtered-content.url),
    (text: [#fa-envelope() #filtered-content.email], link: "mailto:" + filtered-content.email),
    (text: [#fa-phone() #filtered-content.phone], link: "tel:" + filtered-content.phone),
  ),

  left: [
    #section("Education")
    #for edu in filtered-content.education {
      descript(edu.degree)
      linebreak()
      text(style: "italic")[#edu.school]
      linebreak()
      text(style: "italic")[#edu.specialization]
      v(8pt)
    }

    #section("Links")
    #for l in filtered-content.links {
      link(l.url)[#l.text]
      linebreak()
    }

    #section("Skills")
    #for skill in filtered-content.skills {
      oneline-title-item(
        title: skill.title,
        content: skill.items,
      )
      v(8pt)
    }

    #section("Volunteer")
    #for vol in filtered-content.volunteer {
      descript(vol.title)
      linebreak()
      text(style: "italic")[#vol.description]
      h(1fr)
      text(size: 9pt, style: "italic")[#vol.date]
      v(8pt)
    }

    #section("Talks")
    #for talk in filtered-content.talks {
      descript(link(talk.url)[*#talk.title*])
      text(style: "italic")[#talk.description]
      v(8pt)
    }
  ],

  right: [
    #section("Experience")
    #for exp in filtered-content.experience {
      job(
        position: link(exp.url)[#exp.title],
        institution: exp.role,
        location: exp.location,
        date: "",
        description: list(..exp.description.map(process-bold)),
      )
      v(8pt)
    }

    #section("Projects")
    #for proj in filtered-content.projects {
      twoline-item(
        entry1: text(weight: "bold")[#link(proj.url)[#proj.title]],
        entry2: proj.date,
        entry3: "",
        description: list(..proj.description.map(process-bold)),
      )
      v(8pt)
    }

    #section("Publications")
    #for pub in filtered-content.publications {
      link(pub.url)[
        #pub.authors *#pub.title*. #pub.journal, #pub.volume:#pub.pages, #pub.year.
      ]
      v(8pt)
    }
  ],
) 