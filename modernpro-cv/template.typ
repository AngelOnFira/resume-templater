#let filter-content(content, resume-type) = {
  // Helper function to filter arrays based on tags
  let filter-array(arr) = {
    arr.filter(item => {
      if resume-type == "default" {
        true  // Include everything for default
      } else if "tags" in item {
        item.tags.contains(resume-type)
      } else {
        true
      }
    })
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

    // Filter skills and their items
    skills: content.skills.map(category => {
      (
        title: category.title,
        items: filter-array(category.items).map(i => i.content).join(" "),
      )
    }),

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