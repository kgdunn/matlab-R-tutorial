About R
========

R is a software package for statistical computing and graphics.  It has become a standard among statistical programming languages.

* Many companies already use it as a standard package now (as reported in `this New York Times article <http://www.ece.virginia.edu/~mv/edu/D2K/lectures/NYTimesR.pdf>`_, R is used by Google, Shell, Pfizer, Merck, Bank of America, and others).
* It can run on Windows, Linux and Mac computers.
* Commercial software support is available from 3rd parties.
* The software can be installed on a local desktop, or in a networked environment and run remotely.
* It is free (both for academic and commercial use), so it can be used in any academic or corporate environment.
* Installation is straightforward,
* The license is not restrictive: you can legally modify and improve the software.
* There are excellent add-on libraries for almost anything related to data analysis.
* It promotes good statistical practice of writing a code file, and then running it (like MATLAB). The code file documents what you have done, and you can always repeat your analysis on a new data set, or share the code with colleagues. Other software packages tend to promote a more point-and-click approach, so you can't always retrace your steps.
* There are multicore and 64-bit versions of R available to process large data sets, and do parallel data processing.

Alternatives
------------

.. note:: These alternatives are for students taking courses from ConnectMV.  Other alternatives may be more suited to your needs - please `contact us if in doubt <http://connectmv.com/contact-us>`_.

Other software alternatives you might consider are Minitab, MATLAB or Python.  Microsoft Excel is not recommended: it cannot perform some of the calculations and plots that you will require to properly analyze data, and its `statistical accuracy is very poor <http://dx.doi.org/10.1016/j.csda.2008.03.004>`_ (the article documents several Excel functions that produce incorrect results).

Installing R
=============

R is a standalone package.  However, to get the most benefit, you must install a good text editor that works with R also.  

If you are having trouble installing R, please `email us for assistance <mailto:kevin.dunn@connectmv.com>`_.

* **Official website**: http://www.r-project.org/
* **Latest version**: 2.12.1 as of 4 January 2011

Windows installation
---------------------

**Base R package**

* Visit the R-website: http://cran.r-project.org/bin/windows/base/
* Download and install the EXE file linked at the top of the page.

**R-compatible text editor**

.. ucomment:: MbQrKP: vy,

* Visit the `Tinn-R website <http://sourceforge.net/projects/tinn-r/>`_  to get the latest version; click on the "Download Now" button
* Save and install the EXE file 

**Configuration**

After installing Tinn-R you need to configure Tinn-R to communicate with R:

* *Vista and Windows 7 users*: right-click on the Tinn-R icon and choose ``Run as Administrator``.  For *Windows XP users*: just start Tinn-R by clicking on the icon.
* Go to the menu at the top, click on ``R``
* Then ``Configure``
* Then ``Permanent``
* Answer ``Yes`` to the question
* Choose the ``Canada (ON)`` software mirror
* The Tinn-R software will continue to install several updates


Mac installation
------------------------

* Download and install the latest R package file from http://cran.r-project.org/bin/macosx/
* A good text editor on a Mac's is the `TextMate editor <http://macromates.com/>`_.  This editor allows you to run your code directly from the editor, without having to start R.

Linux installation
-------------------

* Visit the Linux site http://cran.r-project.org/bin/linux/
* Choose your Linux distribution: Debian, Redhat, Suse or Ubuntu
* Follow the installation instructions on the page
* Choose one of the many good Linux text editors: VI, Emacs. In particular, the Emacs editor can be `integrated with R using ESS <http://ess.r-project.org/>`_.


Getting started 
===============

.. note:: Any line beginning with the ``#`` character is a comment and is ignored by R.  I use these comments to show the expected output from R.

.. note:: Any line beginning with the ``>`` character indicates the R command prompt.  You can copy and paste from this tutorials, but don't paste in the ``>`` character.  Later on we will omit this character.

So start R and type the following:

..  code-block:: s

	# This is how to start the main help system in R
    > help.start()

The above line starts the web-browser on your computer and shows you the Help system for R. You can click on the links to get different levels of help.

Reading data into R
====================

The most interesting data to analyze is always your own.  How do we read your own data files into R?    We will look at when the data file is on your computer, or when the data is available somewhere on the internet.

.. note:: For now we only consider comma separated values (CSV) files.  R can read other files types, such as XML files, directly from databases, and other sources.  All the `details are here <http://cran.r-project.org/doc/manuals/R-data.html>`_.

Data on your hard drive
---------------------------

Go to the `datasets website <http://datasets.connectmv.com>`_ and download any data set, for example the **Website traffic** datasets.  Save the file, 
and remember the location.  For example:  ``C:/Courses/ConnectMV/data/website-traffic.csv``

.. notes:: You must use "``/``" character to separate directories (folders), not "``\``", even in Windows.

We will use the ``read.csv`` command to read these comma-separated values (CSV) files. If you look inside the ``website-traffic.csv`` file you will how the data is stored: each column is separated by a comma, and each row is a new line.

..  code-block:: s
	
	> website <- read.csv('C:/Courses/ConnectMV/data/website-traffic.csv')
	
Linux and Mac users will have something like:

..  code-block:: s
	
	> website <- read.csv('/home/yourname/ConnectMV/data/website-traffic.csv')


You will get **NO** output to the screen if the data are successfully read in; you only will see something if an error occurred.

The ``<-`` operation means *assign the result of the expression on the right to the variable name on the left*. To see what the variable ``website`` looks like, just type ``website`` at the R command line:

..  code-block:: s

	> website

	#     DayOfWeek      MonthDay Year Visits
	# 1      Monday        June 1 2009     27
	# 2     Tuesday        June 2 2009     31
	# 3   Wednesday        June 3 2009     38
	# 4    Thursday        June 4 2009     38
	#  ...
	# 211    Monday   December 28 2009     24
	# 212   Tuesday   December 29 2009     18
	# 213 Wednesday   December 30 2009     10
	# 214  Thursday   December 31 2009      7

Reading data from the internet
------------------------------


You can read the data directly from the internet.  Go to the datasets website again and right-click on the CSV link for the data set you want to download.  Your web browser should have the right-click option :menuselection:`Copy Link Location`, or :menuselection:`Copy Shortcut` or something similar.

This will copy the address of the data set to your clipboard.  Then in R, you type:

..  code-block:: s
	
	> website <- read.csv('http://datasets.connectmv.com/file/website-traffic.csv')

where the part between quotation marks is the web address you copied.  Use the paste function to avoid typing errors.

Getting help
-------------

Before continuing further, if you ever need help with an R command type ``help("name of command")``.  For example:

..  code-block:: s

	> help(read.csv)

This will pop up a new window and tell you what ``read.csv`` does and *shows examples* of how to use it.

Next steps (coming soon)
=========================

* How to manipulate data
* How to plot data, and add labels, grids, lines and arrows to plots
* Histograms, probability, distributions, 
* Extending R's capabilities with packages
* Dealing with vectors and matrices 
* Linear models in R 
* Analysis of designed experiments using R 
* Principal component analysis using R

