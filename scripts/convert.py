import os, sys
from tqdm import tqdm

def list_files_ext(sub_root, ext):
    file_paths = []
    for root, _, files in os.walk(sub_root):
        for file in files:
            if file.endswith(ext):
                file_paths.append(os.path.join(root, file))
    return file_paths

if __name__ == "__main__":
    replacements = {
        "(declare-sort FString)": "(declare-sort FString 0)",
        "(declare-sort Term)": "(declare-sort Term 0)",
        "(declare-sort Dummy_sort)": "(declare-sort Dummy_sort 0)",
        "(declare-sort Fuel)": "(declare-sort Fuel 0)",
        "(iff ": "(= ",
        "(implies ": "(=> ",
        "pattern (Prims.precedes t1 t2 e1 e2)": "pattern ((Prims.precedes t1 t2 e1 e2))",
        "\:named @": "\:named ",
        "(set-option :produce-unsat-cores true)\n": "",
        r"BoxInt -\([0-9]\+\)": r"BoxInt (- \1)",
    }
    
    cmd = "sed "
    for org in replacements:
        cmd += f""" -e 's/{org}/{replacements[org]}/g'"""
    cmd += " -i "

    for f in tqdm(list_files_ext(sys.argv[1], ".smt2")):
        os.system(cmd + f)
