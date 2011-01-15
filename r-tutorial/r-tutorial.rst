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

..	
	Once installed, please start the R software package:

	* 	Go to the menu bar: click on ``Edit``
	* 	Select ``GUI preferences``
	*	In the first line, change to ``SDI``
	*	Click ``Save``
	* 	When asked for the directory, change to ``C:\Program Files\R\R-2.12.1\etc\`` and overwrite the existing ``Rconsole`` file
	* 	Click ``OK`` to exit the configuration editor
	* 	Quit the software package
	* 	When asked to ``Save workspace image``, choose ``No``
	
**Configuration**

After installing Tinn-R you need to configure Tinn-R to communicate with R:

*	*Vista and Windows 7 users*: right-click on the Tinn-R icon and choose ``Run as Administrator``.  For *Windows XP users*: just start Tinn-R by clicking on the icon.
*	Go to the menu at the top, click on ``R``
*	Then ``Configure``
*	Then ``Permanent``.  Answer ``OK`` when completed.

	.. ucomment:: xBkfjv: Mk, qt,
	
*	Next, you must start ``R`` from ``Tinn-R``:

	-	Click on ``Start/Close and connections``
	-	Select ``Rgui (start)``: this causes Tinn-R to start R.
	-	You will require internet access as it will continue to install several updates to allow Tinn-R and R to communicate.

Your windows will be arranged as shown here; you can see the internet updates taking place in the screenshot.

.. figure:: images/R-and-TinnR-screenshot.jpg
	:scale: 100
	:width: 500px
	:align: center


Mac installation
------------------------

* Download and install the latest R package file from http://cran.r-project.org/bin/macosx/
* A good text editor on a Mac's is the `TextMate editor <http://macromates.com/>`_.  This editor allows you to run your code directly from the editor, without having to start R.

  .. ucomment:: FXztKJ: Qh,

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

.. note:: You must use "``/``" character in R to separate directories (folders), not the "``\``" character, even in Windows.

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
	
	website <- read.csv('http://datasets.connectmv.com/file/website-traffic.csv')

where the part between quotation marks is the web address you copied.  Use the paste function to avoid typing errors.

Getting help
-------------

Before continuing further, if you ever need help with an R command type ``help("name of command")``.  For example:

..  code-block:: s

	help(read.csv)

This will pop up a new window and tell you what ``read.csv`` does and *shows examples* of how to use it.

Basic data manipulation in R
=============================

Continuing the previous example: when you loaded the ``website`` data you saw there were 4 columns (``DayOfWeek``, ``MonthDay``, ``Year``, ``Visits``) and 214 rows.  You can get this information more quickly:

..  code-block:: s
	
	website <- read.csv('http://datasets.connectmv.com/file/website-traffic.csv')
	ncol(website)
	[1] 4
	nrow(website)
	[1] 214

To get a summary of each column in the data frame (that is the term R uses for a collection of data):

..  code-block:: s

	summary(website)

	    DayOfWeek        MonthDay        Year          Visits     
	Friday   :30    August 1 :  1   Min.   :2009   Min.   : 3.00  
	Monday   :31    August 10:  1   1st Qu.:2009   1st Qu.:16.25  
	Saturday :30    August 11:  1   Median :2009   Median :22.00  
	Sunday   :30    August 12:  1   Mean   :2009   Mean   :22.23  
	Thursday :31    August 13:  1   3rd Qu.:2009   3rd Qu.:27.75  
	Tuesday  :31    August 14:  1   Max.   :2009   Max.   :48.00  
	Wednesday:31   (Other)   :208

Compare the summary printout above with the actual data and make sure you understand what every line means.

Let's say you are interested only in one column from the data, e.g. ``Visits``.  You can access just that column by using the ``$`` symbol.  This next code snippet shows how to calculate a summary just for the ``Visits`` variable:

..  code-block:: s

	summary(website$Visits)

	Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
	3.00   16.25   22.00   22.23   27.75   48.00

Another way to access all the data from the ``Visits`` column (column 4 in the table) is:

.. code-block:: s

	web.visits <- website[,4]


You can interpret the above command as saying "*give me all rows in the website data set and only the values in column 4*"

Take a look at this new variable (note that R variables can have periods in their names)

.. code-block:: s
	
	web.visits
	  [1] 27 31 38 38 31 24 21 29 30 22 24 17  7 13 20 17 11 19 15  3 12 25
	 [23] 17 24 30 22 15 14 29 10 19 34 12  5 14 26  8 16 11 10 12 11 14 23
	 [45] 30 19 21 14 18 27 26 27 23 16  5 18 29 35 22 22 10  7 12 23 38 43
	 [67] 26 19 18 10 19 19 38 22 25 18 24 21 28 30 21 26 11 12 20 21 23 25
	 [89] 19 14 17 21 38 27 21 18 19 20 18 26 28 30 28 29 16 30 23 24 44 28
	[111] 20 20 16 22 31 31 30 30 29 27 37 35 22 28 23 48 46 35 40 22 26 14
	[133] 19 26 25 21 29 34 15 16 19 29 32 25 24 17 23 42 28 23 27 26 22 15
	[155] 32 22 29 25 15 18 28 27 35 26 26 20 22 13 22 25 29 20 12 14 13 38
	[177] 35 25 24 17 22 21 32 26 30 21 27 13 14 21 19 30 16 20  8 10 13 31
	[199] 24 18 17  7 13 22 22 22 13 10 12 15 24 18 10  7


What if we want to access the number in the first row and fourth column of ``website``? 

.. code-block:: s

	website[1, 4]
	[1] 27

Or in the second row and first column?

.. code-block:: s

	website[2, 1]
	[1] Tuesday
	Levels: Friday Monday Saturday Sunday Thursday Tuesday Wednesday

Now let's say you want all rows from ``website`` where the column value for ``DayOfWeek`` is ``Monday``.  

We do this in 2 steps.  First, we introduce the "``==``" operation, which means "*is equal to*"

.. code-block:: s
	
	website$DayOfWeek == "Monday"
	
	  [1]  TRUE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE
	 [13] FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE
	 [25] FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE
	 [37] FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE
	 [49] FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE
	 [61] FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE
	 [73] FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE
	 [85]  TRUE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE
	 [97] FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE
	[109] FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE
	[121] FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE
	[133] FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE
	[145] FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE
	[157] FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE
	[169]  TRUE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE
	[181] FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE
	[193] FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE
	[205] FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE


It returns a logical (true/false) array with TRUE where the condition is met. Now we can use this array to access all rows where this condition is met:

.. code-block:: s

	Mondays.rows <- website[website$DayOfWeek == "Monday", ]
	Mondays.rows 
	
	    DayOfWeek      MonthDay Year Visits
	1      Monday        June 1 2009     27
	8      Monday        June 8 2009     29
	15     Monday       June 15 2009     20
	...
	204    Monday   December 21 2009     22
	211    Monday   December 28 2009     24
	
The above command gives you all data which are recorded for Mondays.  Now, what if you want to break that down further - you only want the number of visits on a Monday? Then you need to ask for column 4 only:

.. ucomment:: KLrzgn: nJ*,

.. code-block:: s

	Mondays.visits <- website[website$DayOfWeek == "Monday", 4]
	
	Mondays.visits
	[1] 27 29 20 25 29 26 14 27 29 23 19 21 20 21 18 30 16 27 46 26 19 42 32 27 22 38 32 21 13 22 24

Basic plots in R
=================

A simple sequence plot
------------------------

We will continue on with the data set described in the previous section.  Load the dataset and let's plot the column called ``Visits`` - there are 4 columns in the dataset, so we must be specific on which one to plot.

.. code-block:: s

	website <- read.csv('http://datasets.connectmv.com/file/website-traffic.csv')
	plot(website$Visits)
	

Which produces this figure.  Note that the defaults in R are to leave a lot of white space around the figure.  We will show later how to remove that.

.. figure:: images/website-traffic-base.jpg
	:alt:	code/website-traffic-example.R
	:scale: 100
	:width: 500px
	:align: center


That plot shows only the points (markers), in the order of the data set.  What if you want lines between the points?  Type ``help(plot)`` to find out more about the ``plot`` command.  For example, it tells you there that ``type="p"`` will just show the points (the default setting for ``plot``): 

.. code-block:: s
	
	plot(website$Visits, type="p")


If you use ``type="l"`` you get a line plot:

.. code-block:: s
	
	plot(website$Visits, type="l")

and ``type="b"`` will show both lines and points, leaving a space between the point and the line connections

.. code-block:: s
	
	plot(website$Visits, type="b")
	
and ``type="o"`` will connect (overplot) the lines and points.  


Box plots
--------------------

The basic boxplot syntax is:

.. code-block:: s

	boxplot(website$Visits)

To get boxplots for each day of the week, side-by-side we rely on the fact the column, ``DayOfWeek``, is a categorical variable.  R calls these ``factor`` variables, and you can confirm this:  ``is.factor(website$DayOfWeek)`` returns ``TRUE``.  We can then tell the ``boxplot`` command to group the boxplots by a factor variable:

.. code-block:: s

	boxplot(website$Visits ~ website$DayOfWeek)

.. figure:: images/website-traffic-boxplot-default.jpg
	:alt:	code/website-traffic-example.R
	:scale: 100
	:width: 500px
	:align: center


Read the help text, ``help(boxplot)``, and ``help(factor)`` in order to understand more clearly how this plot was generated.

Plots with multiple series, colour, and legends
==================================================

There are cases when we might need to overlay more than one *series*.  A *series* is a sequence of values on the plot, sometimes also called a *trajectory*.  We might choose to show each series in a different colour, or use a different marker shape.  Finally, we'd like to add a legend to the plot.

Let's look at a dataset, ``brittleness-index``, `available here <http://datasets.connectmv.com/info/brittleness-index>`_, which contains the data where a single quantity of raw materials was split into 3 parts.  Each part is processed in a different reactor, TK104, TK105, and TK107.  The data are the final brittleness values from the product produced in the reactor.

We'd like to plot the three series *on the same plot*. 

Plot the first series
----------------------

.. code-block:: s
	
	brittle <- read.csv('http://datasets.connectmv.com/file/brittleness-index.csv')

	summary(brittle)
	    TK104           TK105           TK107      
	Min.   :188.0   Min.   :223.0   Min.   :240.0  
	1st Qu.:369.5   1st Qu.:370.0   1st Qu.:425.0  
	Median :423.5   Median :460.0   Median :479.0  
	Mean   :421.0   Mean   :472.2   Mean   :470.1  
	3rd Qu.:482.2   3rd Qu.:549.0   3rd Qu.:548.5  
	Max.   :697.0   Max.   :709.0   Max.   :733.0  
	NA's   :  3.0   NA's   :  2.0
	
	plot(brittle$TK104,  type="l", col="red")
	
.. figure:: images/brittleness-single.jpg
	:alt:	code/multiple-series-plot.R
	:scale: 100
	:width: 500px
	:align: center

Note the gap in the plot because the ``TK104`` variable has missing values, as shown in the ``summary`` output: there are 3 ``NA`` (not available) entries in the data set.  Also note that we can set the line colour using the ``col`` input.  

Type ``colours()`` to see a list of all available colours in R.

Next, superimpose the other series
----------------------------------

Adding the remaining two series is done using the ``lines`` command.  The ``lines`` command cannot be used to *start* a new plot: it is only used to add to an existing ``plot``.
	
	
.. code-block:: s

	plot(brittle$TK104,  type="l", col="red")
	lines(brittle$TK105, type="l", col="black")
	lines(brittle$TK107, type="l", col="darkgreen")
	
which gives the following plot:

.. figure:: images/brittleness-default.jpg
	:alt:	code/multiple-series-plot.R
	:scale: 100
	:width: 500px
	:align: center

This looks OK, but there are two main issues: the y-axis limits are not large enough to accommodate the series (notice how it chops off at the top), and the y-axis label needs to be adjusted.  Also the x-axis label can be improved.


Adjusting axis labels
----------------------

Axis labels are specified using the ``plot(..., xlab="X-axis label", ylab="Y-axis label")`` syntax.  

.. code-block:: s

	plot(brittle$TK104,  type="l", col="red", xlab="Sequence order of batches", 
	                                                 ylab="Brittleness values")
	lines(brittle$TK105, type="l", col="black")
	lines(brittle$TK107, type="l", col="darkgreen")

The result is shown in the next subsection.


Adjusting axis limits
----------------------

Axis limits may be specified manually, if you know what they are:

.. code-block:: s

	plot(brittle$TK104,  type="l", col="red", xlab="Sequence order of batches", 
		                            ylab="Brittleness values", ylim=c(180, 740))
	lines(brittle$TK105, type="l", col="black")
	lines(brittle$TK107, type="l", col="darkgreen")
	
or you can calculate them automatically, with a bit of extra code.  One of several possible ways is:

.. code-block:: s

	rng.104 <- range(brittle$TK104, na.rm=TRUE)  # calculate the ranges first
	rng.105 <- range(brittle$TK105, na.rm=TRUE)
	rng.107 <- range(brittle$TK107, na.rm=TRUE)
	
	# then take the extremes of each range
	ylim <- c(min(rng.104, rng.105, rng.107), max(rng.104, rng.105, rng.107))
	
	plot(brittle$TK104,  type="l", col="red", xlab="Sequence order of batches",
	                                          ylab="Brittleness values", ylim=ylim)
	lines(brittle$TK105, type="l", col="black")
	lines(brittle$TK107, type="l", col="darkgreen")
	
The result is:

.. figure:: images/brittleness-better.jpg
	:alt:	code/multiple-series-plot.R
	:scale: 100
	:width: 500px
	:align: center

.. _r-other-plot-options:

Other plot input options
-------------------------

You can see the full list of input options to the ``plot`` command by typing ``help(plot.default)``.  Other options of interest are:


``type``
  	A single character indicating the type of plot: "p" for points, "l" for lines, "o" for overplotted points and lines, "s" and "S" for stair steps and "h" for histogram-like vertical lines. 

	An interesting option is ``"n"`` which just creates an empty axis, but does not add any points or lines.

``xlim`` and ``ylim``
	Each a 2-entry list indicating the extent of the x- and y-axes.  If the entries are reversed, then the plot axis is reversed.

``log``
	A character string: ``"x"`` if the x axis is to be logarithmic, ``"y"`` if the y axis is to be logarithmic and ``"xy"`` if both axes are to be logarithmic.

``main``	
	The main title for the plot; also see ``help(title)``.

``xlab`` and ``ylab``
	 Labels for the x- and y-axes.
	
``ann = FALSE``
	Will turn off the default ANNotations: title and x and y axis labels.
	
``axes``, ``xaxt``, ``yaxt``
 	Set to ``TRUE`` or ``FALSE`` to suprress both axes or just one of the axes.

``asp``
	Set the plots y/x aspect ratio; see ``help(plot.window)`` for more information.

Adding a legend
----------------

A legend is added afterwards using the 

``legend(x=..., y=..., legend=c("Entry 1", "Entry 2", ...) )`` form of the ``legend`` function, where

``x`` and ``y``
	is the ``(x,y)`` location of the legend in the plot
	
``legend = c(...)``
	is a list of strings that contains the legend text
	
But we need to also tell the legend function what type of line and colour to show with the text.  A full example, with the resulting figure is shown below.

.. code-block:: s

	plot(brittle$TK104,  type="l", col="red", ylim=ylim, ylab="Brittleness values",
	                                                     xlab="Sequence order")
	lines(brittle$TK105, type="l", col="black")
	lines(brittle$TK107, type="l", col="darkgreen")
	legend(x=15, y=720, legend=c("TK104", "TK105", "TK107"), lwd=2,
	                    col=c("red", "black", "darkgreen"))
	
.. ucomment:: L74MEQ: nu, ex, kc,

Note that there should be a colour specification for each entry in the legend.  The ``lwd`` input argument is the line width used in the legend.  If you omit this, then you will only get legend labels.  Also notice that we only need to specify it once: R will cycle the value of ``2`` over and over for every legend entry.
	
.. figure:: images/brittleness-best.jpg
	:alt:	code/multiple-series-plot.R
	:scale: 100
	:width: 500px
	:align: center
	
Saving your plots 
------------------

Once you have drawn your plot, you can go to the menu on the top, and click ``File``, then ``Save as``.  For example, on Mac systems, this allows you to save the plot as a PDF that can be included into another document.

In many cases it is easier to write code to save the plot; that way, when you run your R-script, it saves the plot automatically to your hard drive.  Proceed as follows:

.. code-block:: s

	bmp(file='../images/name-of-file.bmp')
	
	# various plotting commands go here
	# Add all your labels, etc
		
	dev.off()

The above code shows that you must surround your plot with the ``bmp(...)`` function, and terminate it with ``dev.off()``.  Similar versions of this function exist for

*	``png`` files: use the ``png(...)`` function
*	``jpg`` files: use the ``jpeg(...)`` function


**Advanced users**

	Plots in this tutorial are saved using the ``bitmap(...)`` function.  This required *quite a bit more work* to set up, and the instructions below are for a Mac system.  The files can be saved to any format, and the figures often look clearer (in my opinion).

	*	Install Ghostscript.

	*	Edit your R settings file to tell it where you Ghostscript instance is:

		.. code-block:: python

			# For 32-bit systems
			nano /Library/Frameworks/R.framework/Versions/Current/Resources/etc/i386/Renviron
		
			# For 64-bit systems
			nano /Library/Frameworks/R.framework/Versions/Current/Resources/etc/x86_64/Renviron
	
			# and set the following line to point to Ghostscript
			R_GSCMD=${RGSCMD-'/sw/bin/gs'}
		
	*	Once these settings have been added, you can verify them in R by typing: ``Sys.getenv("R_GSCMD")``
	
	*	To save your plots: surround your plotting code with ``bitmap(...)`` and ``dev.off()`` commands.


Histograms
===========

Use the ``hist(...)`` command to both *calculate* and *plot* the histogram for a univariate data sequence.  This section demonstrates both aspects.

.. code-block:: s

	rm <- read.csv('http://datasets.connectmv.com/file/raw-material-properties.csv')

	# Plot the histogram for the "density2" variable in the data:
	hist(rm$density2)

You will get this plot:

.. figure:: images/default-histogram-density2.jpg
	:alt:	images/default-histogram-density2.R
	:scale: 100
	:width: 750px
	:align: center
	
You can change the axis labels and the main title by using the :ref:`usual plot arguments <r-other-plot-options>` described earlier.
	
The ``hist(...)`` command also returns a whole lot more information, in addition to drawing the plot, but only if you first create a variable:

.. code-block:: s

	density2.hist <- hist(rm$density2)
	density2.hist
	$breaks
	[1] 10 11 12 13 14 15 16 17 18

	$counts
	[1] 1 2 8 8 3 2 1 1

	$intensities
	[1] 0.03846153 0.07692308 0.30769231 0.30769231 0.11538462 0.07692308 0.03846154 0.03846154

	$density
	[1] 0.03846153 0.07692308 0.30769231 0.30769231 0.11538462 0.07692308 0.03846154 0.03846154

	$mids
	[1] 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5

	$xname
	[1] "rm$density2"

	$equidist
	[1] TRUE

	attr(,"class")
	[1] "histogram"

The above output shows where the bin edges (``breaks``) and bin midpoints (``mids``) were automatically calculated and the number of entries (``count``) in each bin.  The ``density`` value is just ``counts/N``, in other words, the relative frequency.  You could access the count data, for example, directly as:

.. code-block:: python

	density2.hist$counts
	[1] 1 2 8 8 3 2 1 1


.. rubric:: Summary

*	The frequency histogram: just use ``hist(...)``
*	The *relative* frequency histogram, which is normalized to unit area: ``hist(rm$density2, freq=FALSE)``


Annotating plots: grid lines, arrows, lines, and identifying interesting points
================================================================================

This part uses the `same dataset <http://datasets.connectmv.com/info/raw-material-properties>`_ from the previous section.

Grid lines
----------

If we plot the ``density2`` value in sequence order:

.. code-block:: python

	rm <- read.csv('http://datasets.connectmv.com/file/raw-material-properties.csv')
	plot(rm$density2)

	# We can add gridlines to the plot:
	grid()

Adding lines to a plot
---------------------------

Now, imagine we want to add a horizontal line at the sample *median*.

.. code-block:: s

	median(rm$density2)
	[1] NA

That isn't what we were expecting - why is the median given as "NA"?  In R, the NA stands for a missing value. The ``rm$density2`` data sequence has several missing values.  To force R to calculate the median, but ignoring missing values, use this:

.. code-block:: s

	density2.median <- median(rm$density2, na.rm=TRUE)
	density2.median
	[1] 13.21

	# Now to add a horizontal line at this value:
	plot(rm$density2)
	abline(h=density2.median)

	# You can add a vertical line using the "v" input option.
	# The "col" argument (option) gives the desired colour.
	abline(v=25, col="red")

So the ``abline`` function adds vertical and horizontal lines to a plot.  You can also add sloped lines, by specifying the slope and intercept: use the ``abline(a=..., b=...)`` syntax.

At this point you should have the following output:

	.. figure:: images/plot-annotations-1.jpg
		:alt:	code/plot-annotations.R
		:scale: 100
		:width: 450px
		:align: center

Arrows and text
---------------------------

You can also add arrows and text.  For example, these commands will draw an arrow from the median to the MAD and add some text next to the arrow:

.. code-block:: python

	density2.mad = mad(rm$density2, na.rm=TRUE)

	# What are the y-values that are 1 median absolute deviation away from the median?
	upper = density2.median + density2.mad  # 14.71484
	lower = density2.median - density2.mad  # 11.70516

	# Now add these as horizontal lines:
	abline(h=upper, col="gray80")
	abline(h=lower, col="gray80")

	# Now draw an arrow at x=10, that goes from y=median to y=median+mad
	# The (x0, y0) is the starting coordinate
	# The (x1, y1) is the ending coordinate
	# The code=3 indicates that arrows heads are drawn on both sides.  Also try codes 0, 1, and 2

	arrows(x0=10, y0=density2.median, x1=10, y1=density2.median+density2.mad, code=3)

	# Finally, let's add some text to the plot at the point (x=13, y=14)
	text(x=13, y=14, labels="One MAD")

This is the plot you should have after these steps:

	.. figure:: images/plot-annotations-2.jpg
		:alt:	code/plot-annotations.R
		:scale: 100
		:width: 450px
		:align: center

Identifying interesting points in a plot
-----------------------------------------

A plot should be like a paragraph of text: it should stand on its own and tell the reader something.  To help with this, it is often necessary to label  interesting points on a plot, not necessarily every point.

We will first plot some data, then add labels to interesting points using the ``identify(...)`` command in R:

.. code-block:: s
	
	# Read in some data
	rm <- read.csv('http://datasets.connectmv.com/file/raw-material-properties.csv')  

	# Plot the data as you normally would
	plot(rm$size2, ylab="Particle size: level 2", main="Powder raw material")

	# Now use the identify(...) command, with the same data as you plotted. 
	# Add the "labels" option to let R use label names from "Sample" column.

	identify(rm$size2, labels=rm$Sample)

	# After issuing the "identify(...)" command, click on any interesting points in the 
	# plot.  Right-click anywhere to stop selecting points.

For example, I selected these interesting points in the plot, then in my technical report to my manager and I can refer to those points.

	.. figure:: images/plot-identified-points.jpg
		:alt:	code/plot-identified-points.R
		:scale: 100
		:width: 450px
		:align: center

Dealing with factors (categorical variables)
==============================================

This section shows a bit about R's ability to deal with factors.  Factors are variables that are coded for categories: e.g. ``male`` and ``female``, or another example could be day of the week: ``Monday, Tuesday, ..., Sunday``.

When you loaded the website data, not all of the raw data (take a look inside the CSV file) is numeric.  The ``DayOfWeek`` is text, so R assumes this is a factor.  It automatically goes and finds all unique values in that column (the names of the 7 days in the week in this case), and codes that as factor variable.  But it sorts them alphabetically, ``Friday, Monday, ..., Wednesday``.  If you want them in a different order, use the ``levels`` input option to tell R your preferred order:

.. code-block:: s
	
	day.names <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday" )
	days <- factor(website$DayOfWeek, level=day.names)
	boxplot(website$Visits ~ days)

Now that boxplot will be ordered in a more useful way to see the weekly trends:

.. figure:: images/website-traffic-boxplot-ordered.jpg
	:alt:	code/website-traffic-example.R
	:scale: 100
	:width: 500px
	:align: center

The ``c()`` command creates a combination of items and the ``factor()`` command creates a factor variable.


Calculating statistics from a data sample
==================================================

Load a data set, for example the `Website traffic <http://datasets.connectmv.com/info/website-traffic>`_ data:


.. code-block:: s

	# Over the internet
	website <- read.csv('http://datasets.connectmv.com/file/website-traffic.csv')  
	
	# or from your hard drive
	website <- read.csv('C:/StatsCourse/Data/website-traffic.csv')                 
	
	
	# Take a quick look at the data to make sure it's what we expect ...
	summary(website)
	     DayOfWeek        MonthDay        Year          Visits     
	 Friday   :30    August 1 :  1   Min.   :2009   Min.   : 3.00  
	 Monday   :31    August 10:  1   1st Qu.:2009   1st Qu.:16.25  
	 Saturday :30    August 11:  1   Median :2009   Median :22.00  
	 Sunday   :30    August 12:  1   Mean   :2009   Mean   :22.23  
	 Thursday :31    August 13:  1   3rd Qu.:2009   3rd Qu.:27.75  
	 Tuesday  :31    August 14:  1   Max.   :2009   Max.   :48.00  
	 Wednesday:31   (Other)   :208

	# Calculate the mean of the "Visits" column:
	visits <- website$Visits
	visits.mean <- mean(visits)
	visits.mean
	[1] 22.23364

	# The standard deviation: use sd(...)
	visits.sd <- sd(visits)
	visits.sd
	[1] 8.331826

	# How do the robust equivalents compare?
	visits.median = median(visits)
	visits.mad = mad(visits)
	c(visits.median, visits.mad)
	[1] 22.0000  8.8956


You can use these additional R commands to compute other summaries of interest for a sequence of data:

.. code-block:: s

	# The sum
	sum(visits)
	[1] 4758

	# The minimum and maximum
	c(min(visits), max(visits))
	[1]  3 48

	# Or just use the range(...) command to get the same result
	range(visits)
	[1]  3 48

	# The summary(...) command we saw earlier gives all this, as well as the 
	# 1st and 3rd quartiles.  Here's another way to summarize a variable:
	quantile(visits)
	   0%   25%   50%   75%  100% 
	 3.00 16.25 22.00 27.75 48.00 

	# It gives the 0, 0.25, 0.50, 0.75 and 1.00 sample quantiles at those 
	# probabilities.  If you want to specify your own probability:
	quantile(visits, 0.32)
	32% 
	 18

	# So 32% of the observations in this data recored a value of 18 or 
	# fewer visits to the website.

	# Recall the interquartile range is the distance from the 3rd to the 1st quartile:
	visits.iqr <- quantile(visits, 0.75) - quantile(visits, 0.25)  # 11.5

	# or, you can calculate it more directly using the IQR(...) function:
	visits.iqr <- IQR(visits)  # 11.5

	# Type help(IQR) to see how to compare the IQR to the 2 other measures of spread: 
	# the standard deviation and the median absolute deviation (MAD)

Dealing with distributions
===========================

Values from various distribution functions are easily calculated in R. 

Direct probability from a distribution
----------------------------------------

To calculate the probability value directly from *any* distribution in R you use a function created by combining ``d`` with the name of the distribution, that is what is meant by ``dDIST`` in the illustration here:

.. figure:: images/show-dDIST.jpg
	:alt:	code/show-dDIST.R
	:scale: 100
	:width: 500px
	:align: center

For the *normal* distribution:
	``dnorm(x=...)``
	
For the :math:`t` distribution:
	``dt(x=..., df=...)`` where ``df`` are the degrees of freedom in the :math:`t`-distribution

For the :math:`F`-distribution:
	``df(x=..., df1=..., df2=...)`` given the ``df1`` (numerator) and ``df2`` (denominator) degrees of freedom.
	
For the chi-squared distribution:
	 ``dchisq(x=..., df=...)``


Values from the cumulative and inverse cumulative distribution
----------------------------------------------------------------

Similar to the above, we call the function by combining ``p`` (to get the cumulative percentage area under the distribution), and ``q`` (to get the quantile).

.. figure:: images/show-pDIST-and-qDIST.jpg
	:alt:	code/show-pDIST-and-qDIST.R
	:scale: 100
	:width: 500px
	:align: center

*	For the *normal* distribution: ``pnorm(...)`` and ``qnorm(...)``

*	For the :math:`t` distribution: ``pt(...)`` and ``qt(...)``

*	For the :math:`F`-distribution: ``pf(...)`` and ``qf(...)``
	
*	For the chi-squared distribution: ``pchisq(...)`` and ``qchisq(...)``



Obtaining random numbers from a particular distribution
---------------------------------------------------------

For example, to obtain 10 random, normally distributed values:

.. code-block:: s

	rnorm(10)
	[1]  0.4604076 -0.9670948 -0.2624246 -0.2223866  0.2492692
	[6]  0.7160273 -0.2734768  2.4437870  0.4269511 -0.4831478
	
where the ``r`` prefix indicates we want random numbers.

Notice that R has used a default value of ``mean=0`` and standard deviation ``sd=1``.  If you'd like your random numbers centred about a different mean, with a different level of spread, then:

.. code-block:: s

	rnorm(n=10, mean=30, sd=4)
	[1] 31.62686 37.83101 28.07470 20.95000 30.47500
	[6] 28.21797 35.81518 28.61481 30.59083 32.94051


*	For the :math:`t` distribution: ``rt(...)``

*	For the :math:`F`-distribution: ``rf(...)``

*	For the chi-squared distribution: ``rchisq(...)``


Extending R with packages
============================

The basic R installation is pretty comprehensive.  One of the advantages of R though is that it is constantly being updated with new packages.  A package is collection of functions and other information that expand R's capabilities.  

For example, the built-in ``qqnorm(...)`` can be used to test if a sequence of values came from a normal distribution.  However, there is, in my opinion, a better qq-plot function in the ``car`` library, called ``qqPlot(...)``, however the ``car`` library does *not* come pre-installed with R.

This section shows how to install extra packages and to keep your R installation up to date.

Keeping R up to date
-----------------------

Even if you don't want to install extra packages, you should keep the built-in packages up to date.  You require an internet connection for this step.

At the R command prompt, write:

.. code-block:: s

	update.packages()

.. rubric:: Mac users

*	Click on ``Packages & Data`` on the top menu
*	Choose ``Package Installer``
*	Click ``Get list``
*	If this is your first time updating, then you will have to select the closest update mirror (web site).  
*	Typically you would choose the mirror that is geographically closest to you: for example ``Canada (ON)``.  You can have R remember your choice for the future.
* Click on the ``Update All`` button to have R check that your built-in packages are up to date at the latest version. 

.. rubric:: Windows users


*	Click on ``Packages`` on the top menu
*	Choose ``Update packages``
*	If this is your first time updating, then you will have to select the closest update mirror (web site).  
*	Typically you would choose the mirror that is geographically closest to you: for example ``Canada (ON)``.  You can have R remember your choice for the future.
*	Click ``OK`` once it shows you the list of packages that will be updated.

R will fetch and install any updates it requires.

Installing a new package
--------------------------

Installing a new package is easy; finding the package to install that does what you want is a little tougher: there are over 2000 packages available.  Here are 2 ways I typically discover packages.

#	By browsing the hierarchy of packages at http://cran.r-project.org/web/views/
#	Googling: for example, the other day I needed to figure out how to plot time-series data nicely.  I came across a page that recommended the ``xts`` package.

.. rubric:: Mac users

*	Click on ``Packages & Data`` on the top menu
*	Choose ``Package Installer``
*	Click ``Get list``
*	Select the packages from the list (you can select more than one by holding down the ``Command`` key on a Mac).
*	Make sure you select the check box ``Install dependencies``
*	Then click "Install Selected"

.. rubric:: Windows users

*	Click on ``Packages`` on the top menu
*	Choose ``Install packages``
*	Select the package(s) you wish to install 
*	Click ``OK``

Once the library is installed, you first need to load it.  For example, to generate a nicer qq-plot using the ``car`` package:

.. code-block:: s

	data <- rnorm(100)  # a 100 normally distributed values
	library(car)
	qqPlot(data)
	
will generate:

.. figure:: images/plot-qq-plot.jpg
	:alt:	code//plot-qq-plot.R
	:scale: 100
	:width: 500px
	:align: center

To see a list of all functions that are provided by a package:

.. code-block:: s

	help(package="car")


Next steps (coming soon)
=========================

* Dealing with vectors and matrices 
* Linear models in R 
* Analysis of designed experiments using R 
* Principal component analysis using R

