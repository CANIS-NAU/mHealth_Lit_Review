from bs4 import BeautifulSoup
import sys

filename=sys.argv[1]
print(filename)
app=filename.split("/")[-2]

with open(filename) as fp:
    class_is_multi= { '*' : 'class'}
    soup=BeautifulSoup(fp, "html.parser",multi_valued_attributes=class_is_multi)

    # Go through all div tags in the file
    for d in soup.find_all('div'):
        try:
            # Get the class information from the tag
            classes=d["class"]
            # If the class is of the type that describes the app, get the following paragraphs
            if 'app-description' in classes and 'container' in classes and 'article-main' in classes:
                for child in d.p.children:
                    with open("psyberguide_metadata.csv", "a") as fo:
                        fo.write("%s\t%s\n" % (app.lower(), child.lower()))
        except Exception as e:
            continue
