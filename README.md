# Lecture Nodes / Slides for "Computer Vision mit Deep Learning"

This repository uses Quarto to build a website with lecture notes, materials and slides.

[Quarto](https://quarto.org/)

Module description: https://www.fhnw.ch/de/weiterbildung/technik/computer-vision-mit-deep-learning

Part of: https://www.fhnw.ch/de/weiterbildung/technik/cas-deep-learning


## Quarto

### Tricks and Tipps

- Conda in VS Code

Visual Studio Code will also automatically detect a conda environment, but you need to bind it to the current session with the Python: Select Interpreter command.

### Render

```
quarto render
```

### Publish

See documentation: https://quarto.org/docs/publishing/github-pages.html#github-action


### Callout blocks

[callouts](https://quarto.org/docs/authoring/callouts.html)

```
::: {.callout-note appearance="simple"}

**Question**

What steps do you think the model in @fig-intro-photo-example3 performs?

:::
```

### Jupyter Notebooks

To include jupyter notebooks, the first cell must be of type 'raw' and have the following content (example):

```
---
title: "CLIP"
code-links: binder
---
```


Convert .ipynb to .qmd

```
quarto convert basics-jupyter.ipynb # converts to qmd
```


### Quizes

https://github.com/parmsam/quarto-quiz