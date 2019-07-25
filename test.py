from ruamel import yaml
from jinja2 import Environment, select_autoescape, FileSystemLoader
from jinjatex import Jinjatex
import glob, os


tex = Jinjatex(
    loader=FileSystemLoader(searchpath="templates/")
)

data = {}

with open("contents/resume.yaml", 'r') as stream:
    data = yaml.safe_load(stream)

for file in glob.glob("contents/**/*.yaml"):
    location = file.split("/")
    category = location[1]

    cat_data = {}

    if category not in data:
        data[category] = {}

    with open(file, 'r') as stream:
        title = location[2].split(".")[0]
        cat_data = yaml.safe_load(stream)

    data[category][title] = tex.render_template(
        "section/" + category + ".tex",
        data=cat_data
    )

#print(data)

print(tex.render_template('resume.tex', data=data))