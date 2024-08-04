# Jupyter Notebook to Markdown Conversion Script

This is a small repo with just one small script. The script uses `jq` to process
raw `.ipynb` content into nice markdown with the embedded markdown, code blocks,
and their execution output all dumped to stdout. If you use with `pbcopy` on Mac
or something similar on other platforms, you can copy the markdown stright to
the terminal!

There is currently not support to copy images over. I don't even know how to do
that and to be honest, I don't care to figure it out at the moment. If you are
a programming wizard though and can add it, PRs are welcome!
