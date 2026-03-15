import re
import sys
import os

def validate_memory(file_path):
    required_sections = [
        "## Level",
        "## Current Focus",
        "## Concepts: Solid",
        "## Concepts: Shaky",
        "## Error Fingerprint",
        "## What Works Right Now",
        "## Interests Activated",
        "## Last Session",
        "## Recommended Next Drill"
    ]
    
    if not os.path.exists(file_path):
        print(f"Error: {file_path} not found.")
        return False
        
    with open(file_path, 'r') as f:
        content = f.read()
        
    for section in required_sections:
        if section not in content:
            print(f"Validation Error: Missing section '{section}'")
            return False
            
    print("MEMORY.md structure is valid.")
    return True

if __name__ == "__main__":
    if validate_memory("memory/MEMORY.md"):
        sys.exit(0)
    else:
        sys.exit(1)
