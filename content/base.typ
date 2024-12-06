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
      location: "Ottawa, ON",
      tags: (),
    ),
  ),

  // Experience section
  experience: (
    (
      title: "Awetza",
      url: "https://www.awetza.ca/",
      role: "Backend Developer",
      location: "Nov 2019 – Sept 2024 | Remote",
      full: "I maintained an existing legacy Django application, upgrading it through several versions of Python and Django. I worked with clients to design and implement new features. I migrated antiquated bare-metal servers to a single containerized solution on Kubernetes, and added database backups. I worked on a rewrite of the backend in Rust, and moved the existing client data to a new database schema. I worked with frontend developers to integrate their work with the new backend.",
      description: (
        "Maintained and upgraded legacy *Django* codebase on *Digital Ocean Virtual Machines* through multiple versions of *Python*",
        "Migrated bare-metal servers to a *Docker* solution in *Kubernetes*",
        "Architected and implemented backend rewrite in *Rust* with new database schema and modern practices",
      ),
      tags: ("backend", "architecture"),
    ),
    (
      title: "Veloren",
      url: "https://Gitlab.com/veloren/veloren",
      role: "Meta Team Lead, Core Developer",
      location: "Jan 2019 - 2023 | Remote",
      description: (
        "Re-designed *Gitlab CI* system to use *Docker* images and optimize *Rust* builds",
        "Managed migrations through several servers as the project grew in popularity, seeing over *300+* concurrent players on a single server",
        "Edited a weekly blog detailing recent project advancements",
        "Hosted weekly meetings with contributors to discuss progress",
        "Spoke at *CUSEC 2020*, *MiniDebConf 2 2020*, and *Rust in Arts 2021*",
      ),
      tags: ("opensource", "gamedev", "backend"),
    ),
    (
      title: "Timsle",
      url: "https://timsle.com",
      role: "Backend Developer",
      location: "July 2018 – Apr 2020 | Ottawa, ON",
      full: "I worked with a Django codebase as a backend developer. I wrote pipelines for CI/CD with Jenkins and GitHub Actions. I worked on a rewrite of the backend for a new iteration of the project. I containerized the production web servers, and handled a migration from Heroku to AWS Fargate. I met with clients from Ottawa Public Health, the Ottawa Police Service, and Carleton University to discuss their needs and design new features.",
      description: (
        "Developed and maintained *Django* backend with focus on scalability and performance",
        "Implemented CI/CD pipelines using *Jenkins* and *GitHub Actions*",
        "Orchestrated migration from *Heroku* to *AWS Fargate* with containerized architecture",
        "Collaborated with the City of Ottawa and Carleton University to gather requirements and design new features",
      ),
      tags: ("backend", "architecture"),
    ),
    (
      title: "Graphics Images and Games Lab",
      url: "https://gigl.scs.carleton.ca/",
      role: "Research Student",
      location: "May 2016 – Aug 2016 | Ottawa, ON",
      description: (
        "Created a pebble mosaic filter for digital photos",
        "Wrote the pipeline in *C++*, used *OpenCV* to manage and process the images",
        "Used simple linear iterative clustering to segment the image and phong lighting to display the pebbles",
      ),
      tags: ("gamedev"),
    ),
    (
      title: "ScholarPro",
      url: "https://scholarpro.ca",
      role: "Contract Developer",
      location: "May 2019 | Ottawa, ON",
      description: (
        "Created *Docker* images for the production web servers and database",
        "Deployed the server stack on *AWS Fargate* and set up daily database backups",
        "Set up *CircleCI* for continuous delivery, and *Sentry* for error tracking",
      ),
      tags: ("architecture"),
    ),
  ),

  // Skills section
  skills: (
    (
      title: "Languages",
      items: (
        (
          content: "Rust • Python",
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
          content: "Docker • Kubernetes",
          tags: ("backend", "architecture"),
        ),
        (
          content: "AWS • Digital Ocean • Hetzner",
          tags: ("backend", "architecture"),
        ),
        (
          content: "GitHub Actions • GitlabCI • Jenkins",
          tags: ("backend", "opensource"),
        ),
      ),
    ),
    (
      title: "Frameworks",
      items: (
        (
          content: "Django • Flask",
          tags: ("backend"),
        ),
      ),
    ),
    (
      title: "Game Development",
      items: (
        (
          content: "Unity • Godot • Superpowers",
          tags: ("gamedev"),
        ),
        (
          content: "OpenCV • OpenGL • SFML",
          tags: ("gamedev"),
        ),
      ),
    ),
  ),

  // Volunteer section
  volunteer: (
    (
      title: "GitHub Campus Expert",
      date: "2021 - Present",
      description: "Field Day Co-Lead",
      tags: (),
    ),
    (
      title: "RustLang Gamedev Working Group",
      date: "2020 - Present",
      description: "Team Lead",
      tags: (),
    ),
    (
      title: "RustLang CTCFT Working Group",
      date: "2020 - 2022",
      description: "Member",
      tags: (),
    ),
    (
      title: "HashiCorp Ambassador",
      date: "2021 - Present",
      description: "Community Ambassador",
      tags: (),
    ),
    (
      title: "Carleton Computer Science Society",
      date: "Sept 2015 - May 2022",
      description: "Various Roles",
      tags: (),
    ),
  ),

  // Talks section
  talks: (
    (
      title: "GitHub Universe '22",
      url: "https://www.youtube.com/watch?v=LuiqVZnOaVk",
      description: "Codespaces in Education with David J. Malan",
      tags: (),
    ),
    (
      title: "CUSEC '22",
      url: "https://www.youtube.com/watch?v=C4ksw3Jvq4E",
      description: "Leveling Up Game Development with Rust",
      tags: (),
    ),
    (
      title: "Rust in Arts '21",
      url: "https://www.youtube.com/watch?v=N1f10QC5O4M",
      description: "Director's Commentary: Veloren",
      tags: (),
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
      tags: (),
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
      authors: "L. Doyle, F. Anderson, E. Choy, D. Mould.",
      journal: "Computational Visual Media",
      volume: "5",
      pages: "33-44",
      month: "March",
      year: "2019",
      tags: (),
    ),
  ),

  // Projects section
  projects: (
    (
      title: "Create Envfile Action",
      url: "https://github.com/SpicyPizza/create-envfile",
      date: "2019 - Present",
      description: (
        "Created a popular *GitHub Action* for generating .env files from repository secrets",
        "Used by *4,300+* repositories including major open source projects",
        "Built with *TypeScript* and integrated with *GitHub Actions API*",
        "Maintained through multiple changes of GitHub Actions with focus on reliability",
      ),
      tags: ("opensource", "backend"),
    ),
    (
      title: "Rusty Christmas Tree",
      url: "https://github.com/AngelOnFira/rusty-christmas-tree",
      date: "Dec 2021",
      description: (
        "A *Raspberry Pi* program that controls an LED Christmas tree",
        "Created in *Rust* with local visualization done using *Nannou*",
        "Includes a *Warp* backend server and a frontend UI made with *Yew*",
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
      tags: ("opensource"),
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
      tags: ("gamedev"),
    ),
    (
      title: "Course Selection Tool",
      url: "https://github.com/AngelOnFira/course-selection",
      date: "April 2017 - Present",
      description: (
        "A tool for students to create timetables for their courses at Carleton University",
        "The website backend is built with *Flask*, and the course web scraper is built using *Ruby*",
        "The courses are stored in a *MongoDB* database. The site is hosted on *AWS*",
      ),
      tags: ("default"),
    ),
    (
      title: "CUHacking App",
      url: "https://github.com/CUHacking/CUHackingApp",
      date: "Sept 2017 - Dec 2017",
      description: (
        "An app created for use at Carleton's Hackathon",
        "Helps participants navigate around the university and stay in contact with organizers",
        "Created and managed the database, built with *Ruby on Rails*. Database stored on *Heroku*",
        "Worked as the backend developer on a four-person team",
      ),
      tags: ("default"),
    ),
  ),

  // Links section
  links: (
    (
      text: "GitHub: AngelOnFira",
      url: "https://github.com/AngelOnFira",
      tags: (),
    ),
    (
      text: "Gitlab: AngelOnFira",
      url: "https://Gitlab.com/AngelOnFira",
      tags: (),
    ),
    (
      text: "LinkedIn: forest-anderson",
      url: "https://www.linkedin.com/in/forest-anderson",
      tags: (),
    ),
  ),

  // Remove the achievements section since it's now empty
  achievements: (),

  // Would you like me to continue with more sections (talks, publications, etc.)?
) 