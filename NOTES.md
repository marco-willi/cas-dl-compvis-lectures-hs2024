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

### Architectures

- Famouse architectures
- Example visualize architecture
- Example Pre-Trained models

### Practical

- recipe

- Example: Dataset, Baseline, Overfit, Regularize, Hyper-Param Opt

### Foundation Models

- zero-shot learning
- Example: CLIP classifier


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



