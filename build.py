import yaml
from jinja2 import FileSystemLoader
from jinjatex import Jinjatex
import glob, os

tex = Jinjatex(
    loader=FileSystemLoader(searchpath="templates/")
)

def render_resume(name):
    # Load the base resume yaml
    data = {}
    with open("content/base.yaml", 'r') as stream:
        data = yaml.safe_load(stream)

    # Load each yaml incase it's needed
    for file in glob.glob("content/**/*.yaml"):
        location = file.split("/")
        category = location[1]

        cat_data = {}

        if category not in data:
            data[category] = {}

        with open(file, 'r') as stream:
            title = location[2].split(".")[0]
            cat_data = yaml.safe_load(stream)


        data[category][title] = tex.render_template(
            "sections/" + category + ".tex",
            data=cat_data
        )

    for cat, item in data.items():
        print(cat, item)

    # Render and output this resume's .tex
    with open("tex/" + name + ".tex", "w") as out:
        out.write(tex.render_template(name + ".tex", data=data))

if __name__ == "__main__":
    for filename in glob.glob("templates/*.tex"):
        print(filename)
        if filename != "templates/opensourceResume.tex":
            continue

        filename = filename.split("/")[1]
        foldername = filename.split(".")[0]

        # Render the Jinja template
        render_resume(foldername)

        # Render the Xetex template
        os.system("test -e content/publications/publications.bib && cp content/publications/publications.bib tex/")
        os.system("cd tex; xelatex %s" % filename)
        os.system("cd tex; bibtex %s" % foldername)
        os.system("cd tex; xelatex %s" % filename)
        os.system("cd tex; xelatex %s" % filename)

        # Create an output folder for this file
        if not os.path.exists("output/" + foldername):
            os.makedirs("output/" + foldername)

        # Move all the output files to a folder
        os.rename("tex/" + foldername + ".tex", "output/" + foldername + "/" + foldername + ".tex")
        os.rename("tex/" + foldername + ".pdf", "output/" + foldername + "/" + foldername + ".pdf")
        os.rename("tex/" + foldername + ".log", "output/" + foldername + "/" + foldername + ".log")
        os.rename("tex/" + foldername + ".out", "output/" + foldername + "/" + foldername + ".out")
        os.system("rm tex/" + foldername + ".bbl")
        os.system("rm tex/" + foldername + ".blg")
        os.system("rm tex/" + foldername + ".aux")
        os.system("rm tex/publications.bib")
