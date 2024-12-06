#let filter-content(content, resume-type) = {
  // Helper function to filter arrays based on tags
  let filter-array(arr) = {
    arr.filter(item => {
      if resume-type == "default" {
        true  // Include everything for default
      } else if "tags" in item {
        item.tags.len() == 0 or item.tags.contains(resume-type)  // Include if tags is empty or contains resume-type
      } else {
        true
      }
    })
  }

  // Helper function to process bold text
  let process-bold(text) = {
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

  // Create new content dictionary with filtered items
  (
    // Copy base info directly
    name: content.name,
    url: content.url,
    email: content.email,
    phone: content.phone,

    // Filter education
    education: filter-array(content.education),

    // Filter experience
    experience: filter-array(content.experience),

    // Filter skills and their items, removing empty categories
    skills: content.skills
      .map(category => {
        let filtered_items = filter-array(category.items)
          .map(i => process-bold(i.content))  // Process bold text in skills
          .join(" ")
        (
          title: category.title,
          items: filtered_items,
        )
      })
      .filter(category => category.items != none),  // Remove categories with no items

    // Filter volunteer
    volunteer: filter-array(content.volunteer),

    // Filter talks
    talks: filter-array(content.talks),

    // Filter publications
    publications: filter-array(content.publications),

    // Filter projects
    projects: filter-array(content.projects),

    // Filter links
    links: filter-array(content.links),
  )
} 