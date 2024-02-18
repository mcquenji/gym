import requests
from tqdm import tqdm

"""
This script extracts all enums present in https://github.com/yuhonas/free-exercise-db and outputs them to a file called extracted_enums.txt.

The file contains all enum classes as valid dart code.
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


bar = tqdm(total=len(exercises), desc="Extracting enums")

muscle_groups = set()
levels = set()
equipment = set()
force = set()
categories = set()
mechanics = set()

for i in range(len(exercises)):
    exercise = exercises[i]

    for muscle_group in exercise["primaryMuscles"]:
        muscle_groups.add(sanitize_name(muscle_group))

    for muscle_group in exercise["secondaryMuscles"]:
        muscle_groups.add(sanitize_name(muscle_group))

    levels.add(sanitize_name(exercise["level"]))
    equipment.add(sanitize_name(exercise["equipment"]))
    force.add(sanitize_name(exercise["force"]))
    categories.add(sanitize_name(exercise["category"]))
    mechanics.add(sanitize_name(exercise["mechanic"]))

    bar.update(1)


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
