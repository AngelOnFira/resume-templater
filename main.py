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

    with open(resumeType + ".tex", 'w') as the_file:
        the_file.write(finalOutput)

createResume("BACKEND")
createResume("GAMEDEV")
createResume("SECURITY")