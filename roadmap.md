
# Morphological Studies of Molecular Clouds (Thesis Outline)
Here's a brief summary about what my PhD thesis will include. All of the chapters after the introduction are papers.


### Introduction

I will write the introduction this summer. In the meantime, here's the executive summary:

Molecular clouds are the birthplace for stars. The physical processes which lead to the localized collapse of cloud material into protostars also sculpt clouds on larger scales. The spatial and kinematic structure of molecular clouds provides clues about these processes.

My thesis was motivated by a simple, broad observation: most analyses of molecular cloud structure are crude in comparison to increasingly detailed observations and simulations. The bread-and-butter tools for cloud structure analysis (which include, for example, scaling realtionships like the size-linewidth relation and Kenticutt-Schmidt relation, structure extraction algorithms like CLUMPFIND, statistical measurements like the power spectrum and column density distribution, and others) have not evolved substantially over the past 20-30 years, despite several orders-of-magnitude improvement in the spatial dynamic range of observations and simulations. Existing analysis techniques are becoming the bottleneck in molecular cloud research.

Over the course of my thesis, I have developed new techniques to better utilize these rich datasets. This effort has followed 3 different paths. First, I have applied techniques from the fields of Machine Learning and Statistical Learning to the task of identifying and characterizing morphologically complex cloud features. Second, I have developed [interactive tools](http://glueviz.org) to more effectively visualize high-dimensional datasets (including position-position-velocity image cubes). Third, I have further developed the use of [dendrograms](http://adsabs.harvard.edu/abs/2008ApJ...679.1338R) to characterize cloud structure, with a particular focus on how the observational process (i.e. viewing clouds in projection, with noise and radiative transfer effects) affects cloud measurements.


### [Molecular Rings around Interstellar Bubbles and the Thickness of Star-Forming Clouds](http://adsabs.harvard.edu/abs/2010ApJ...709..791B)


Note that I published this paper while I was a Masters student, and I'm not sure if it is considered "double-counting" to include it here.
My preference is to keep it, since the content relates to the two machine learning papers, and adds coherence.

### [Classifying Structures in the Interstellar Medium with Support Vector Machines: The G16.05-0.57 Supernova Remnant](http://adsabs.harvard.edu/abs/2011ApJ...741...14B)


### [A Simple Perspective on the Mass-Size Relationship in Molecular Clouds](http://adsabs.harvard.edu/abs/2012MNRAS.423.2579B)


###[Quantifying Projection Effects in Molecular Clouds](https://www.dropbox.com/s/jzl1d16eu07eccw/ms.pdf)

This paper has not yet been submitted (the link is to the draft). I anticipate it will be submitted by June 1


###Automated detection of interstellar bubbles

This work is ongoing; I aim to wrap it up over the summer. Briefly, I am using the [Milky Way Project's](http://www.milkywayproject.org/) catalog of
galactic interstellar bubbles as the training dataset for a machine learning bubble detector. The automated detector I've built so far is *almost* good enough for a blind bubble search -- it can eliminate most regions (>99%) that aren't bubbles, but has a high enough false positive rate that about 50% of candidate detections are still false (bubbles are very rare on the sky).

There are 2 directions this paper can take, depending on time constraints. Ideally, I'd like to reduce the false positive rate enough so that a blind search mainly produces bubbles (i.e. a false positive rate of ~10% or less). If I can achieve this, I will re-scan the GIMPSE survey for bubbles, and compare the machine-generated list with current catalogs.

If I am unable to beat down the false positive rate enough by mid June, then I will focus instead on the potential to use techniques like this to generate interesting candidate lists (since, again, my current detector eliminates 99% of the negative examples). This is relevant for people building citizen science projects, since they are wary of giving humans boring, "needle in a haystack" problems. A hybrid approach could use machine learning to eliminate obviously uninteresting examples, leaving a small set of more interesting classification problems for humans to tackle. This is also the only prospect for scaling citizen science projects up to the data volumes of the future (computational power is growing much faster than manpower).


## Other Work

The following papers probably **won't** be included in the dissertation, because they are coauthored works

 * [The linewidth-size relationship in the dense interstellar medium of the Central Molecular Zone](http://adsabs.harvard.edu/abs/2012MNRAS.425..720S)
 * [A Bubbling Nearby Molecular Cloud: COMPLETE Shells in Perseus](http://adsabs.harvard.edu/abs/2011ApJ...742..105A)
 * [Discerning the Form of the Dense Core Mass Function](http://adsabs.harvard.edu/abs/2010PASP..122..224S)
 * [Diverse Protostellar Evolutionary States in the Young Cluster AFGL961](http://adsabs.harvard.edu/abs/2009ApJ...699.1300W)

Likewise, while I am the first author on this paper, I won't include it since it is beyond the scope of the dissertation

 * [Building an Optimal Census of the Solar Neighborhood with Pan-STARRS Data](http://adsabs.harvard.edu/abs/2010PASP..122.1389B)



## Timeline

 - Now - June 1: Finish and submit projection paper
 - Now - June 15: Work on improving bubble detection performance
 - June 15 - August 1: Finish bubble paper
 - July 1 - ~September: Write thesis introduction, assemble papers into thesis
 - Early-mid september: Thesis defense
 - September 2013-September 2014: Employment as software developer at CfA (likely funded by Space Telescope Science Institute, with backup funding from Microsoft Research)
