# Ideas

## Quiz Questions

- MLP auf Katzenbild
- Bild mit Himmel

## Learning units

Day 1

### Intro

- computer vision applications
- computer vision challenges
- deep learning paradigm: feature extraction
- CNN revolution
- Example MLP on Cat Image

### CNNs

- Convolutions
- Layers
- CNNs and their properties
- Example MNIST invariance / equivariance

### Image Classification

- Theory Image Classification
- Fameous architectures
- Example visualize architecture
- Example Pre-Trained models

### Practical

- recipe

- Example: Dataset, Baseline, Overfit, Regularize, Hyper-Param Opt

### Foundation Models

- zero-shot learning
- Example: CLIP classifier


## Tips & Tricks

Dealing with gifs:

Example:
```
::: {.content-hidden unless-format="html"}

![_transposed convolution_ of a 3x3 _kernel_ over a 2x2 input without _padding_ with _stride_ 1x1. Source @dumoulin_guide_2016.]({{< meta params.images_path >}}no_padding_no_strides_transposed.gif){#fig-cnn-transposed-gif width=200}

:::
```



## Conversion 

Convert citations:

```
\{cite\}`([^`]*)`
```

```
@$1
```


Convert references:

```
\{numref\}`([^`]*)`
```

```
@$1
```


Convert figures:


From: ```<img src="{{< meta params.images_path >}}foto_beispiel1.png" alt="image manipulation example1" class="bg-primary mb-1" width="600px">```

To: ```![]({{< meta params.images_path >}}foto_beispiel1.png){width=600}```


```
<img src="\{\{< meta params.images_path >\}\}([^"]+)"[^>]*>
```

```
![]({{< meta params.images_path >}}$1){width=600}

```



