About R
========

You may use any software in the course to complete the assignments and take-home exams (for example, you will not be asked to submit the code you used to generate your results). 

.. ucomment:: ULUUWA: 4u,

Other software alternatives you might consider:

* Minitab
* Python
* MATLAB / Octave

Microsoft Excel is not recommended: it cannot perform some of the calculations and plots that you will require in the course, and its `statistical accuracy is very poor <http://dx.doi.org/10.1016/j.csda.2008.03.004>`_ (the article documents several functions that produce incorrect results).

Other reasons to use R:

* Many companies already use it as a standard package now (as reported in this New York Times article, R is used by Google, Shell, Pfizer, Merck, Bank of America, and others)
* It can run on Windows, Linux and Mac computers (students are increasingly using Mac and Linux platforms)
* Commercial software support is available from 3rd parties
* The software can be installed on a local desktop, or in a networked environment and run remotely
* It is free (both for academic and commercial use), so it can used after you graduate
* Installation is straightforward
* The license is not restrictive: you can legally modify and improve the software
* There are excellent add-on libraries for almost anything related to data analysis
* It promotes good statistical practice of writing a code file, and then running it (like MATLAB). The code file documents what you have done, and you can always repeat your analysis on a new data set, or share the code with colleagues. Other software packages tend to promote a more point-and-click approach, so you can't always retrace your steps.
* There are multicore and 64-bit versions of R available to process large data sets, and do parallel data processing

Getting started 
===============

.. note:: Any line beginning with the ``#`` character is a comment and is ignored by R.  I use these comments to show the expected output from R.

This tutorial assumes you have an internet connection. Start the R software, and type the following line into R (you can copy and paste, but don't paste in the ">" character):

::
  
.. ucomment:: kSMF3Q: Ux*,

    > help.start()

.. ucomment:: e3a7GY: mT*, wL*, Ep*,

The above line starts the web-browser on your computer and shows you the Help system for R. You can click on the links to get different levels of help.

Read in data
==============

The data could be in a file on your computer, or available somewhere on the internet. We will look at both cases.

