#import "@preview/modernpro-cv:1.0.2": *
#import "@preview/fontawesome:0.5.0": *
#import "content/opensource.typ": content


#show: cv-double(
  font-type: "PT Sans",
  continue-header: "true",
  name: content.name,
  address: "",
  lastupdated: "true",
  pagecount: "true",
  date: datetime.today(),
  contacts: (
    (text: [#fa-icon("link") #content.url], link: content.url),
    (text: [#fa-icon("envelope") #content.email], link: "mailto:" + content.email),
    (text: [#fa-icon("mobile") #content.phone], link: "tel:" + content.phone),
  ),

  left: [
    #section("Education")
    #for edu in content.education {
      job(
        position: edu.degree,
        institution: edu.school,
        location: edu.location,
        date: edu.date,
        description: (), // Empty description for education
      )
      v(8pt)
    }

    #section("Links")
    #for l in content.links {
      link(l.url)[#l.text]
      linebreak()
    }
    v(8pt)

    #section("Skills")
    #for skill in content.skills {
      oneline-title-item(
        title: skill.title,
        content: skill.items,
      )
      v(8pt)
    }

    #section("Volunteer")
    #for vol in content.volunteer {
      descript(vol.title)
      text(style: "italic")[#vol.description]
      text(size: 9pt)[#vol.date]
      v(8pt)
    }

    #section("Talks")
    #for talk in content.talks {
      descript(link(talk.url)[#talk.title])
      text(style: "italic")[#talk.description]
      v(8pt)
    }
  ],

  right: [
    #section("Experience")
    #for exp in content.experience {
      job(
        position: exp.role,
        institution: link(exp.url)[#exp.title],
        location: exp.location,
        date: "",
        description: list(..exp.description),
      )
      v(8pt)
    }

    #section("Projects")
    #for proj in content.projects {
      twoline-item(
        entry1: proj.title,
        entry2: proj.date,
        entry3: proj.url,
        description: list(..proj.description),
      )
      v(8pt)
    }

    #section("Publications")
    #for pub in content.publications {
      text(weight: "bold")[#pub.title]
      linebreak()
      link(pub.url)[#pub.url]
      linebreak()
      text(style: "italic")[#pub.authors #pub.journal]
      v(8pt)
    }
  ],
) 