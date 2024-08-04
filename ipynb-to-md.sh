cat $1 | jq -r '
  .cells[] |
  if .cell_type == "markdown" then
    .source | join("") + "\n"
  elif .cell_type == "code" then
    (.source | join("") | "```python\n" + . + "\n```\n") as $source |
    (if has("outputs") and (.outputs | length > 0) then
      "```\n" + (.outputs[] |
      (if has("text") and (.text | length > 0) then 
            .text | join("") 
        elif has("data") and (.data | has("text/plain")) and (.data["text/plain"] | length > 0) then 
            .data["text/plain"] | join("") 
        else "\n" end)) + "\n```\n"
    else "" end) as $output |
    "\($source)\($output)"
  end
'