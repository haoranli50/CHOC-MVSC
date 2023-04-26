### Consider High-Order Consistency for Multi-View Clustering
This is the MatLab implementation of the CHOC-MVC method.

![](https://i.328888.xyz/2023/04/26/ivLYK3.jpeg)

#### Abstract
Tensor based multi-view clustering has attracted intensive attention due to the effectiveness of exploiting multi-view data information. However, most existing methods purely aim to explore the consistency of different views while neglecting the inherent difference between views, which may lead to incomplete modeling and affect the final clustering performance. To handle this problem, in this paper, we unify the consistency and specificity to model the multi-view data in tensor manner. Specifically, we learn multiple candidate graphs corresponding to all views through self-expressiveness learning. Then these candidate graphs are decomposed into two sets graphs, i.e., consistent graphs and specific graphs, respectively. After that, these consistent graphs are stacked into a tensor to exploit the high-order structure information while the specific graphs are used to capture the inherent difference in each view, such that a refined consensus affinity graph can be obtained for spectral clustering. The established model is dubbed as Consider High-Order Consistency for Multi-View Clustering (CHOC-MVC), and its optimal problem can be efficiently solved by the alternating direction method of multipliers (ADMM). The experimental results demonstrate the effectiveness of our proposed method.

#### Operating environment & Operation method
* MatLab 2018+
* Run demo.m

