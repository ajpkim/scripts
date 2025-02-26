gpt_files() {
  output=""
  for file in "$@"; do
    output+="$file:\n\`\`\`$(cat "$file")\n\`\`\`\n\n"
  done
  echo -e "$output" | xclip -selection clipboard
}
