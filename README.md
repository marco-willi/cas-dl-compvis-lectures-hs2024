# Lecture Nodes / Slides for "Computer Vision mit Deep Learning"

This repository contains lecture notes, slides, and Jupyter Book.

Module description: https://www.fhnw.ch/de/weiterbildung/technik/computer-vision-mit-deep-learning

Part of: https://www.fhnw.ch/de/weiterbildung/technik/cas-deep-learning

## Jupyter Book

### Commands

```
jupyter-book build book/
```

Build book PDF via HTML:
```
jupyter-book build book/ --builder pdfhtml
```

Build book PDF via LaTex:
- does not show nicely formatted extra cells, such as notes
```
jupyter-book build book/ --builder pdflatex
```

```
jupyter-book build book/ --builder pdflatex --individualpages
```

### Publish

```
./move.sh
```

Then push gh-pages branch.

### Examples

juypter book: https://jupyterbook.org/intro.html

gml book from Michael: https://gitlab.fhnw.ch/ml/courses/gml/gml_page/-/tree/master/book

DS Interview Book: https://dipranjan.github.io/dsinterviewqns/intro.html

scikit-learn kurs: 
- https://inria.github.io/scikit-learn-mooc/
- https://github.com/INRIA/scikit-learn-mooc

### Markdown Commands

Code

```{code-cell} ipython3
import torch

np.random.seed(123)

```


Skip Execution

```{code-cell} ipython3
---
tags: [skip-execution]
---

loss_fn = nn.CrossEntropyLoss()
optimizer = torch.optim.SGD(model.parameters(), lr=learning_rate)

epochs = 10
for t in range(epochs):
    print(f"Epoch {t+1}\n-------------------------------")
    train_loop(train_dataloader, model, loss_fn, optimizer)
    test_loop(test_dataloader, model, loss_fn)
print("Done!")
```

Notes:

```{note}
This is a note!
```

Figures:

:::{figure-md} fig-ml-mlp-node
<img src="../images/ml/mlp_example_node.png" class="bg-primary mb-1" width="600px">

MLP Node / Neuron
:::

Hide input / Code:

```{code-cell} ipython3
---
tags: [hide-input]
---
```

## Slides

Add figures to slides export
<!-- ### BEGIN SLIDE -->
<!-- Title: End-To-End -->
My Figure
<!-- ### END SLIDE -->

Warning:
- % in Captions leads to errors

Add latex code to slides export:

<!-- ### BEGIN LATEX EXPORT
My Latex CODE
### END LATEX EXPORT -->


```
make slides lecture=intro
```


