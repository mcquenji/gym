import requests

"""
This script extracts all enums present in https://github.com/yuhonas/free-exercise-db and outputs them to a file called extracted_enums.txt.

The file contains all enum classes as valid dart code.

The script will issue warnings if an exercise has a null value for any of the following fields:
    - level
    - equipment
    - force
    - category
    - mechanic
"""

print("Downloading exercises.json...")

URL = "https://raw.githubusercontent.com/yuhonas/free-exercise-db/main/dist/exercises.json"

exercises = requests.get(URL).json()


def sanitize_name(name: str) -> str:
    if name == None:
        return ""

    name = name.replace(" ", "_").replace("-", "_")

    name = "".join(x.capitalize() for x in name.lower().split("_"))

    name = name[0].lower() + name[1:]

    return name


muscle_groups = set()
levels = set()
equipment = set()
force = set()
categories = set()
mechanics = set()

levels_has_null = False
equipment_has_null = False
force_has_null = False
categories_has_null = False
mechanics_has_null = False


def print_warning(field: str):
    print(
        f"Warning: {field} is not present in all exercises, you may have to update the model to handle a possible null value"
    )


for i in range(len(exercises)):
    exercise = exercises[i]

    for muscle_group in exercise["primaryMuscles"]:
        muscle_groups.add(sanitize_name(muscle_group))

    for muscle_group in exercise["secondaryMuscles"]:
        muscle_groups.add(sanitize_name(muscle_group))

    if exercise["level"] == None and not levels_has_null:
        levels_has_null = True
        print("Level has null value, you may have to update the model to handle this")

    if exercise["equipment"] == None and not equipment_has_null:
        equipment_has_null = True
        print_warning("equipment")

    if exercise["force"] == None and not force_has_null:
        force_has_null = True
        print_warning("force")

    if exercise["category"] == None and not categories_has_null:
        categories_has_null = True
        print_warning("category")

    if exercise["mechanic"] == None and not mechanics_has_null:
        mechanics_has_null = True
        print_warning("mechanic")

    levels.add(sanitize_name(exercise["level"]))
    equipment.add(sanitize_name(exercise["equipment"]))
    force.add(sanitize_name(exercise["force"]))
    categories.add(sanitize_name(exercise["category"]))
    mechanics.add(sanitize_name(exercise["mechanic"]))


def remove_empty(s: set) -> set:
    s.discard("")
    return s


def construct_enum(enum_name: str, enum_values: set) -> str:
    return f"enum {enum_name} " + "{\n" + ",\n".join(remove_empty(enum_values)) + "\n}"


with open("extracted_enums.txt", "w") as f:
    f.write(construct_enum("MuscleGroup", muscle_groups) + "\n\n")

    f.write(construct_enum("ExerciseLevel", levels) + "\n\n")

    f.write(construct_enum("ExerciseEquipment", equipment) + "\n\n")

    f.write(construct_enum("ExerciseForce", force) + "\n\n")

    f.write(construct_enum("ExerciseCategory", categories) + "\n\n")

    f.write(construct_enum("ExerciseMechanic", mechanics) + "\n\n")
