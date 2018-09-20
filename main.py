import os



resumes = [
    "SECURITY",
    "GAMEDEV",
    "BACKEND"
]

with open('content.txt') as f:
    lines = f.read().splitlines()

currentSection = ""

contentDict = {}
currentData = ""

for line in lines:
    if len(line) > 0:
        if line[0] == '~':
            if currentSection != "":
                contentDict[currentSection[1:]] = currentData
                currentData = ""
            currentSection = line
        else:
            currentData += line + "\n"

def createResume(resumeType):
    resumeLayout = [
        "HEADER",
        "PERSONAL_INFO",
        "FIRST_COLUMN",
        "LINKS",
        resumeType + "_EDUCATION",
        resumeType + "_SKILLS",
        resumeType + "_VOLUNTEER",
        "SECOND_COLUMN",
        resumeType + "_EXPERIENCE",
        resumeType + "_PROJECTS",
        resumeType + "_AWARDS",
    ]

    finalOutput = ""
    for section in resumeLayout:
        finalOutput += contentDict[section]

    with open("tex/" + resumeType + ".tex", 'w') as the_file:
        the_file.write(finalOutput)

    os.system("cd tex; xelatex %s.tex" % resumeType)

    if not os.path.exists("tex/" + resumeType):
        os.makedirs("tex/" + resumeType)

    # Move all the output files to a folder
    os.rename("tex/" + resumeType + ".pdf", "tex/" + resumeType + "/" + resumeType + ".pdf")
    os.rename("tex/" + resumeType + ".aux", "tex/" + resumeType + "/" + resumeType + ".aux")
    os.rename("tex/" + resumeType + ".log", "tex/" + resumeType + "/" + resumeType + ".log")
    os.rename("tex/" + resumeType + ".out", "tex/" + resumeType + "/" + resumeType + ".out")

for resume in resumes:
    createResume(resume)