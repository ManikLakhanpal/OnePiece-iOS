import json

path = "/Users/maniklakhanpal/OnePiece/OnePiece/Arcs.json"

with open(path, 'r') as file:
    content = json.load(file)
    for i in content:
        straw_hats = content[i]["straw_hats"]
        lowercase_straw_hats = [hat.lower() for hat in straw_hats]
        content[i]["straw_hats"] = lowercase_straw_hats

with open(path, 'w') as file:
    json.dump(content, file)