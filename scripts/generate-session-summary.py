import os
import glob

def generate_summary(session_dir):
    session_files = glob.glob(os.path.join(session_dir, "2026-*.md"))
    
    print("--- Session Summary Insight ---")
    for file in sorted(session_files, reverse=True)[:3]:
        with open(file, 'r') as f:
            content = f.read()
            date = os.path.basename(file).replace(".md", "")
            print(f"Date: {date}")
            # Simplified extraction for demo purposes
            lines = [line.strip() for line in content.split('\n') if line.startswith('- ')]
            print(f"  Highlights: {lines[0] if lines else 'None'}")
            print("-" * 20)

if __name__ == "__main__":
    generate_summary("memory/sessions")
