#let content = (
  // Base info stays the same for all resumes
  name: "Forest Anderson",
  url: "https://forest-anderson.ca",
  email: "forestkzanderson@gmail.com",
  phone: "+1 (613) 255-5760",

  // Education section
  education: (
    (
      school: "Carleton University",
      degree: "BCS in Computer Science",
      specialization: "Honours in Game Development",
      date: "Expected Dec 2023",
      location: "Ottawa, ON",
      tags: ("opensource", "backend", "gamedev", "architecture"),
    ),
  ),

  // Experience section
  experience: (
    (
      title: "Veloren",
      url: "https://gitlab.com/veloren/veloren",
      role: "Meta Team Lead, Core Developer",
      location: "Jan 2019 - Present | Remote",
      description: (
        "Re-designed *Gitlab CI* system to use *Docker* images and optimize *Rust* builds",
        "Edited a weekly blog detailing the recent technical advancements",
        "Hosted weekly meetings with contributors to discuss development progress",
        "Spoke at *CUSEC 2020*, *MiniDebConf 2 2020*, and *Rust in Arts 2021*",
      ),
      tags: ("opensource", "gamedev", "backend"),
    ),
    (
      title: "Awetza",
      url: "https://www.awetza.ca/",
      role: "Backend Developer",
      location: "Nov 2019 – Present | Remote",
      description: (
        "Decided on technical stack and direction for new platform",
        "Created several prototypes to test out different technologies",
      ),
      tags: ("backend", "architecture"),
    ),
    (
      title: "Timsle",
      url: "https://timsle.com",
      role: "Backend Developer",
      location: "July 2018 – Apr 2020 | Ottawa, ON",
      description: (
        "Migrated the backend stack from *Heroku* to *AWS Fargate*",
        "Designed and developed a *CI/CD* pipeline with *Jenkins*",
        "Created *Docker* images for development and production web servers",
      ),
      tags: ("backend", "architecture"),
    ),
  ),

  // Skills section
  skills: (
    (
      title: "Languages",
      items: (
        (
          content: "Rust • Python • TypeScript",
          tags: ("backend", "opensource"),
        ),
        (
          content: "C++ • C# • GDScript",
          tags: ("gamedev"),
        ),
      ),
    ),
    (
      title: "Technologies",
      items: (
        (
          content: "Docker • Nomad • Terraform",
          tags: ("backend", "architecture"),
        ),
        (
          content: "AWS • Digital Ocean • Hetzner",
          tags: ("backend", "architecture"),
        ),
        (
          content: "GitHub Actions • GitLabCI • Jenkins",
          tags: ("backend", "opensource"),
        ),
      ),
    ),
    (
      title: "Frameworks",
      items: (
        (
          content: "*Django* • *Node.js* • *Flask* • *Ruby on Rails*",
          tags: ("backend"),
        ),
      ),
    ),
    (
      title: "Game Development",
      items: (
        (
          content: "*Unity* • *Godot* • *Superpowers*",
          tags: ("gamedev"),
        ),
        (
          content: "*OpenCV* • *OpenGL* • *SFML*",
          tags: ("gamedev"),
        ),
      ),
    ),
  ),

  // Volunteer section
  volunteer: (
    (
      title: "Rust Gamedev Working Group",
      date: "2020 - Present",
      description: "Working Group Member",
      tags: ("opensource", "gamedev"),
    ),
    (
      title: "Rust CTCFT Working Group",
      date: "2020 - Present",
      description: "Working Group Member",
      tags: ("opensource"),
    ),
    (
      title: "HashiCorp Ambassador",
      date: "2021 - Present",
      description: "Community Ambassador",
      tags: ("opensource", "architecture"),
    ),
    (
      title: "Carleton Computer Science Society",
      date: "Sept 2015 - May 2022",
      description: "Various Positions",
      tags: ("opensource", "backend", "gamedev", "architecture"),
    ),
  ),

  // Talks section
  talks: (
    (
      title: "GitHub Universe '22",
      url: "https://www.youtube.com/watch?v=LuiqVZnOaVk",
      description: "Codespaces in Education with David J. Malan",
      tags: ("opensource"),
    ),
    (
      title: "CUSEC '22",
      url: "https://www.youtube.com/watch?v=C4ksw3Jvq4E",
      description: "Leveling Up Game Development with Rust",
      tags: ("opensource", "gamedev"),
    ),
    (
      title: "Rust in Arts '21",
      url: "https://www.youtube.com/watch?v=N1f10QC5O4M",
      description: "Director's Commentary: Veloren",
      tags: ("opensource", "gamedev"),
    ),
    (
      title: "HashiTalks: Deploy '21",
      url: "https://www.youtube.com/watch?v=76ckrB4W2ss",
      description: "Nomad for Students",
      tags: ("opensource", "architecture"),
    ),
    (
      title: "Minidebconf '20",
      url: "https://www.youtube.com/watch?v=76FPpOnshNw",
      description: "Community Game Development in Rust: A Biopsy",
      tags: ("opensource", "gamedev"),
    ),
    (
      title: "CUSEC '20",
      url: "https://www.youtube.com/watch?v=aS26sqT09Pw",
      description: "Cultivating A Healthy Open Source Community",
      tags: ("opensource"),
    ),
  ),

  // Publications section
  publications: (
    (
      title: "Automated pebble mosaic stylization of images",
      url: "https://doi.org/10.1007/s41095-019-0129-0",
      authors: "Lars Doyle, Forest Anderson, Ehren Choy, David Mould.",
      journal: "Computational Visual Media",
      year: "2019",
      tags: ("gamedev", "opensource"),
    ),
  ),

  // Projects section
  projects: (
    (
      title: "Rusty Christmas Tree",
      url: "https://github.com/AngelOnFira/rusty-christmas-tree",
      date: "Dec 2021",
      description: (
        "A Raspberry Pi program that controls an LED Christmas tree",
        "Created in Rust with local visualization done using Nannou",
        "Includes a Warp backend server and a frontend UI made with Yew",
      ),
      tags: ("opensource", "backend"),
    ),
    (
      title: "Resume Templater",
      url: "https://github.com/AngelOnFira/resume-templater",
      date: "July 2019",
      description: (
        "A tool that creates versions of resumes for different positions",
        "Uses the Jinja library to template .tex files in the Deedy resume format",
        "Created a Docker image for easy usage without installing multiple libraries",
      ),
      tags: ("opensource", "backend"),
    ),
    (
      title: "Miracle Merchant AI",
      url: "https://github.com/AngelOnFira/Miracle-Merchant-AI",
      date: "Jan 2018 - April 2018",
      description: (
        "An AI created for the mobile game '*Miracle Merchant*'",
        "Created in *Python* with data visualization done using *Plotly* and *Jupyter Notebook*",
        "Of *~5000 tests*, the median score was better than most experienced players",
        "Seven tests resulted in scores higher than the *global high score*",
      ),
      tags: ("gamedev", "backend"),
    ),
  ),

  // Links section
  links: (
    (
      text: "GitHub: AngelOnFira",
      url: "https://github.com/AngelOnFira",
      tags: ("opensource", "backend", "gamedev", "architecture"),
    ),
    (
      text: "GitLab: AngelOnFira",
      url: "https://gitlab.com/AngelOnFira",
      tags: ("opensource", "backend", "gamedev", "architecture"),
    ),
    (
      text: "LinkedIn: forest-anderson",
      url: "https://www.linkedin.com/in/forest-anderson",
      tags: ("opensource", "backend", "gamedev", "architecture"),
    ),
  ),

  // Add achievements section
  achievements: (
    (
      title: "GitHub Campus Expert",
      date: "Fall 2021 Batch",
      description: (
        "1 of 80 accepted out of 8000+ applicants, and 1 of the 8 in Canada",
        "Spoke about Codespaces in Education on the mainstage at GitHub Universe 2022",
        "Co-lead of the 2022 Toronto GitHub Field Day",
        "Co-hosted a stream with GitHub Education during Universe 2021",
      ),
      tags: ("opensource", "backend", "gamedev", "architecture"),
    ),
  ),

  // Would you like me to continue with more sections (talks, publications, etc.)?
) 