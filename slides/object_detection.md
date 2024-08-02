---
title: "Object Detection"
params:
   images_path: "/assets/images/object_detection/"
---

## Overview

- Introduction & Motivation
- Two-Stage Detectors
- Single-Stage Detectors
- Other Aspects
- Evaluation

# Introduction & Motivation

## Object Detection

![Object Detection example (from @redmon_you_2016). Bounding boxes localize the objects, indicating the most likely class and confidence for each object.]({{< meta params.images_path >}}yolo_object_detection_example.png){width=100% height=70%}

## Classification and Detection

![Classification and Detection (from @austin_modern_2022).]({{< meta params.images_path >}}classification_and_detection_intro.png){width=100% height=70%}

## Landmark Detection

![Landmark Detection (from @austin_modern_2022).]({{< meta params.images_path >}}landmark_detection_1.png){width=100% height=70%}

## Landmark Detection

![Landmark Detection (from @austin_modern_2022).]({{< meta params.images_path >}}landmark_detection_2.png){width=100% height=70%}

## Classification and Localization

![Classification and localization (from @austin_modern_2022).]({{< meta params.images_path >}}classification_and_localization_1.png){width=100% height=70%}

## Classification and Detection

![Classification and localization (from @austin_modern_2022).]({{< meta params.images_path >}}classification_and_localization_2.png){width=100% height=70%}

## Loss Function

![Source: @johnson_eecs_2019]({{< meta params.images_path >}}single_object_example.jpg){width=100% height=70%}

## Multiple Objects

![Source: @johnson_eecs_2019]({{< meta params.images_path >}}multi_object_example.jpg){width=100% height=70%}

## Sliding Windows

![Example of the sliding window approach.]({{< meta params.images_path >}}sliding_window1.jpg){width=100% height=70%}

## History

![Object Detection History (from @zou_object_2023).]({{< meta params.images_path >}}object_detection_milestones.png){width=100% height=70%}

# Two-Stage Detectors

## Region Proposals

![Left: Results of Selective Search (at different scales), Right: Object hypotheses. Source: @uijlings_selective_2013]({{< meta params.images_path >}}selective_search_paper.png){width=100% height=70%}

## R-CNN

![Source: @girshick_rich_2014]({{< meta params.images_path >}}rcnn.jpg){width=100% height=70%}

## R-CNN

![Source: @johnson_eecs_2019]({{< meta params.images_path >}}rcnn_full.jpg){width=100% height=70%}

## R-CNN - Bounding Box Regression

![Source: @johnson_eecs_2022]({{< meta params.images_path >}}bbox_regression.png){width=100% height=70%}

## Fast R-CNN

R-CNN is very slow because a forward pass through the CNN is required for each region proposal. Hence, Fast R-CNN was developed.

## Fast R-CNN

![Source: @johnson_eecs_2019]({{< meta params.images_path >}}fast_rcnn_vs_rcnn.png){width=100% height=70%}

## Fast R-CNN

![Source: @johnson_eecs_2022]({{< meta params.images_path >}}fast_rcnn_vs_rcnn2.png){width=100% height=70%}

## Fast R-CNN

![Source: @johnson_eecs_2022]({{< meta params.images_path >}}fast_rcnn_vs_rcnn3.png){width=100% height=70%}

## Fast R-CNN

![Source: @johnson_eecs_2019]({{< meta params.images_path >}}fast_rcnn3.jpg){width=100% height=70%}

## Region of Interest Pooling

![Source: @johnson_eecs_2019]({{< meta params.images_path >}}roi_pooling.jpg){width=100% height=70%}

## Fast R-CNN vs R-CNN

![Source: @johnson_eecs_2019]({{< meta params.images_path >}}training_time_fastrcnn_vs_rcnn.jpg){width=100% height=70%}

## Faster R-CNN

With Faster R-CNN, the model has been further optimized. Specifically, the generation of region proposals is integrated into the method (End-To-End).

## Faster R-CNN

![Source: @Ren2017]({{< meta params.images_path >}}faster_rcnn.jpg){width=100% height=70%}

## Faster R-CNN - Region Proposal Network

![Source: @johnson_eecs_2022]({{< meta params.images_path >}}rpn1.png){width=100% height=70%}

## Faster R-CNN - Region Proposal Network

![Source: @johnson_eecs_2022]({{< meta params.images_path >}}rpn2.png){width=100% height=70%}

## Faster R-CNN - Region Proposal Network

![Source: @johnson_eecs_2022]({{< meta params.images_path >}}rpn3.png){width=100% height=70%}

## Faster R-CNN - Region Proposal Network

![Source: @johnson_eecs_2022]({{< meta params.images_path >}}rpn4.png){width=100% height=70%}

## Anchor Boxes

![Anchor boxes.]({{< meta params.images_path >}}anchor_boxes.png){width=100% height=70%}

## Faster R-CNN - Region Proposal Network

![Source: @johnson_eecs_2022]({{< meta params.images_path >}}rpn_anchors.png){width=100% height=70%}

## Faster R-CNN

![Source: @johnson_eecs_2019]({{< meta params.images_path >}}faster_rcnn2.jpg){width=100% height=70%}

## Faster R-CNN

![Source: @johnson_eecs_2019]({{< meta params.images_path >}}faster_rcnn3.jpg){width=100% height=70%}

# Single-Stage Detectors

## YOLO - Grid

![Source: @Redmon2016a]({{< meta params.images_path >}}yolo_grid.png){width=100% height=70%}

## YOLO - Class Map

![Source: @Redmon2016a]({{< meta params.images_path >}}yolo_class_map.png){width=100% height=70%}

## YOLO - Bounding Box and Objectness

![Source: @Redmon2016a]({{< meta params.images_path >}}yolo_bbx_conf.png){width=100% height=70%}

## YOLO: Big Picture

![Source: @Redmon2016a]({{< meta params.images_path >}}yolo.jpg){width=100% height=70%}

## YOLO Architecture

![Source: @Redmon2016a]({{< meta params.images_path >}}yolo_arch.jpg){width=100% height=70%}

## YOLO Multiple Outputs

![Inspired by @austin_modern_2022]({{< meta params.images_path >}}yolo_multiple_outputs_same_object.png){width=100% height=70%}

## YOLO Non-Max Suppression

![Inspired by @austin_modern_2022]({{< meta params.images_path >}}yolo_non_max.png){width=100% height=70%}

## YOLO Multiple Objects at the Same Location

![Source: @austin_modern_2022]({{< meta params.images_path >}}yolo_multi_outputs2.png){width=100% height=70%}

## YOLO - Loss Function

\scriptsize
\begin{align*}
    &\lambda_{coord} \sum_{i=0}^{S^2}\sum_{j=0}^B \mathbb{1}_{ij}^{obj}[(x_i-\hat{x}_i)^2 + (y_i-\hat{y}_i)^2 ] \\
    &+ \lambda_{coord} \sum_{i=0}^{S^2}\sum_{j=0}^B \mathbb{1}_{ij}^{obj}[(\sqrt{w_i}-\sqrt{\hat{w}_i})^2 +(\sqrt{h_i}-\sqrt{\hat{h}_i})^2 ] \\
    &+ \sum_{i=0}^{S^2}\sum_{j=0}^B \mathbb{1}_{ij}^{obj}(C_i - \hat{C}_i)^2 + \lambda_{noobj}\sum_{i=0}^{S^2}\sum_{j=0}^B \mathbb{1}_{ij}^{noobj}(C_i - \hat{C}_i)^2 \\
    &+ \sum_{i=0}^{S^2} \mathbb{1}_{i}^{obj}\sum_{c \in classes}(p_i(c) - \hat{p}_i(c))^2 \\
\end{align*}

## Generic Single Shot Architecture with Anchors

![Source: @johnson_eecs_2019]({{< meta params.images_path >}}ssd.jpg){width=100% height=70%}

## CenterNet - Objects as Points

![Source: @zhou_objects_2019]({{< meta params.images_path >}}centernet_examples.png){width=100% height=70%}

## CenterNet - KeyPoints, Offset, and Size

![Source: @zhou_objects_2019]({{< meta params.images_path >}}centernet_keypoint_offset_size.png){width=100% height=70%}

## CenterNet: Keypoints vs Anchor Boxes

![Source: @zhou_objects_2019]({{< meta params.images_path >}}centernet_bbox_vs_points.png){width=100% height=70%}

# Other Aspects

## Focal Loss: Class Imbalance

![Source: @lin_focal_2018]({{< meta params.images_path >}}focal_loss.png){width=100% height=70%}

## Feature Pyramids

![Source: @lin_feature_2017]({{< meta params.images_path >}}feature_pyramids2.png){width=100% height=70%}

## Transformer

![Source: @carion_end--end_2020]({{< meta params.images_path >}}detr.png){width=100% height=70%}

# Evaluation

## IoU

![Source: @johnson_eecs_2022]({{< meta params.images_path >}}iou1.jpg){width=100% height=70%}

## IoU

![Source: @johnson_eecs_2022]({{< meta params.images_path >}}iou2.png){width=100% height=70%}

## IoU

![Source: @johnson_eecs_2022]({{< meta params.images_path >}}iou3.png){width=100% height=70%}

## Non-Max Suppression

![Source: @johnson_eecs_2019]({{< meta params.images_path >}}nms.jpg){width=100% height=70%}

## Non-Max Suppression

![Source: [https://www.pexels.com/photo/white-duck-with-22-ducklings-in-green-grass-field-160509/]({{< meta params.images_path >}}ducks_with_box.png){width=100% height=70%}

## Mean Average Precision: Confusion Matrix

![Source: [https://scikit-learn.org/stable/auto_examples/model_selection/plot_confusion_matrix.html]({{< meta params.images_path >}}confusion_matrix.jpg){width=100% height=70%}

## Precision and Recall

Precision is the proportion of positive samples classified correctly:

$$\text{Precision} = \frac{TP}{TP + FP}$$

Recall is the proportion of positive samples correctly identified:

$$\text{Recall} = \frac{TP}{TP + FN}$$

## Mean Average Precision

![Source: @johnson_eecs_2019]({{< meta params.images_path >}}map.jpg){width=100% height=70%}

## Mean Average Precision

The mean average precision (mAP) is the average of all average precisions across all classes. In some cases, it is also averaged over different IoU thresholds that a model must achieve for a hit.

## Object Detection Frameworks

[Detectron2](https://github.com/facebookresearch/detectron2) \\
[torchvision](https://pytorch.org/tutorials/intermediate/torchvision_tutorial.html)

# References

::: {#refs}
:::
