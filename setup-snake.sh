#!/bin/bash

# 1. Clone your profile repo (creates it locally if it doesn't exist)
if [ ! -d "Kalophain14" ]; then
  git clone https://github.com/Kalophain14/Kalophain14.git 2>/dev/null || {
    mkdir Kalophain14 && cd Kalophain14
    git init
    git remote add origin https://github.com/Kalophain14/Kalophain14.git
    cd ..
  }
fi

cd Kalophain14

# 2. Create the workflow folder and add snake.yml
mkdir -p .github/workflows

cat > .github/workflows/snake.yml << 'EOF'
name: Generate Snake

on:
  schedule:
    - cron: "0 0 * * *"
  workflow_dispatch:

jobs:
  generate:
    runs-on: ubuntu-latest
    steps:
      - uses: Platane/snk@v3
        with:
          github_user_name: Kalophain14
          outputs: |
            dist/github-contribution-grid-snake.svg
            dist/github-contribution-grid-snake-dark.svg?palette=github-dark

      - uses: crazy-max/ghaction-github-pages@v3
        with:
          target_branch: output
          build_dir: dist
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
EOF

# 3. Commit and push
git add .github/workflows/snake.yml
git commit -m "Add snake contribution graph workflow"
git push -u origin main

echo ""
echo "✅ Done! Now do these 2 steps manually in your browser:"
echo ""
echo "1. Go to: https://github.com/Kalophain14/Kalophain14/settings/actions"
echo "   → Workflow permissions → select 'Read and write' → Save"
echo ""
echo "2. Go to: https://github.com/Kalophain14/Kalophain14/actions"
echo "   → Click 'Generate Snake' → Click 'Run workflow'"
