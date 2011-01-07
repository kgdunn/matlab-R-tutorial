About MATLAB and Python
========================

..rubric:: MATLAB


`From Wikipedia <http://en.wikipedia.org/wiki/MATLAB>`_:  MATLAB (MATrix LABoratory) is a high level computer language/interactive software package developed and distributed by MathWorks. MATLAB was first developed in the 1970s by Cleve Molar. Cleve was later joined by John N. Little and Steve Bangert and the three went on to found MathWorks. MATLAB excels at performing matrix operations and can handle large data sets (stored as matrices) very easily. MATLAB was originally designed as a user friendly interface for `LINPACK <http://en.wikipedia.org/wiki/LINPACK>`_ and `EISPACK <http://en.wikipedia.org/wiki/EISPACK>`_ and so was intended for linear algebra application. Since then MATLAB has greatly expanded it's core abilities to encompass a large array of graphic and numeric applications. These core abilities are expanded through the addition of specialized "tool boxes".

..rubric:: Python


`From Wikipedia <http://en.wikipedia.org/wiki/Python_(programming_language)>`_: Python is a high-level programming language whose design philosophy emphasizes code readability. Python aims to combine "remarkable power with very clear syntax", and its standard library of built-in functions is large and comprehensive.  

We will use the `NumPy and SciPy <http://numpy.scipy.org/>`_ modules (the equivalent of a MATLAB toolbox), to provide scientific computing capabilities to Python.  These modules, like MATLAB, allow you to handle large data arrays with little effort.  

We will also use the `matplotlib <http://matplotlib.sourceforge.net/index.html>`_ module, which provides Python with plotting capabilities similar to MATLAB.

You might not be familiar with Python.  Here is a comparison with MATLAB:

* Many companies already use it as a standard package now.
* It can run on Windows, Linux and Mac computers
* Commercial software support is available from 3rd parties.
* The software can be installed on a local desktop, or in a networked environment and run remotely.
* It is free (both for academic and commercial use), so it can readily be deployed and used anywhere.
* Installation is straightforward.
* The license is not restrictive: you can legally modify and improve the software.
* There are excellent add-on libraries for almost anything you need.
* It promotes good practice of writing a code file, and then running it (like MATLAB and R).  The code documents what you have done, and you can always repeat your analysis on a new data set, or share the code with colleagues.  Other software packages tend to promote a more point-and-click approach, so you can't always retrace your steps.
* There are multicore and 64-bit versions of Python available to process large data sets, and do parallel data processing.


Installing MATLAB or Python
=============================

..rubric:: MATLAB

MATLAB may be purchased from `The Mathworks <http://mathworks.com>`_ either as the commercial version or student version.  You will also require the Statistics Toolbox for this tutorial.

..rubric:: Python

Python is freely available. The latest stable version that we recommend for this tutorial is version 2.6, because it is compatible with the external libraries that we will use.

Windows users
^^^^^^^^^^^^^^^

Python is an open source software. Because of this, various groups have "packaged" the official Python distribution to meet certain needs. For example:

* The official (reference) Python distribution: http://python.org
* Enthought Python distribution: http://www.enthought.com/epd 
* IronPython: http://ironpython.net/
* JPython: http://www.jython.org/

For this tutorial we recommend you use the version distributed from http://www.pythonxy.com/, and called Python(X,Y).   If you are an experienced programmer, comfortable with the command prompt, then we actually recommend you use `Enthought's Python distribution <http://www.enthought.com/epd>`_: see the :ref:`Mac/Linux instructions <matpy-mac-linux-install>` below.

**Python(X,Y) installation**

* Official website: http://code.google.com/p/pythonxy/
* Latest version (January 2011): 2.6.5.6
* Official download page: http://code.google.com/p/pythonxy/wiki/Downloads

#.	Run the software installation after downloading the installation file from the above link, run the program.

#.	The default installation options are perfect for this tutorial.

#.	It can take quite a while to install.

#.	Continue with the :ref:`rest of this tutorial <matpy-getting-started>` to learn how to use Python.

.. _matpy-mac-linux-install:

Mac and Linux users
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Python is already installed on all Mac computers and most (all?) Linux computers. If you go to your command prompt (the program is called "Terminal" on Macs), you can type ``python`` and it will start a bare-bones Python session.

However, we highly recommend you use the Enthought Python distribution, which is better suited to our requirements. It contains all the tools that we require. Please follow these instructions to install it.

#.	Visit the academic download section of Enthought's website if you are a student, or download the 30-day trial, or purchase a regular license.

	.. figure:: images/enthought-download.png
		:scale: 100
		:align: center

	.. ucomment:: bJJ9Jd: Ut*,

#.	Download and install the software.
#.	It will take some time, because it installs Python and a large collection of libraries (modules).

.. _matpy-getting-started:

Getting started
==============================

..rubric:: MATLAB

When you launch MATLAB the following window will open:

.. figure:: images/MATLAB_start.png
	:scale: 100
	:width: 400px
	:align: center


If MATLAB does not open exactly like this you can easily modify which regions are visible through the **Desktop** drop down menu. You can select the windows you want either by toggling them individually, Region A (red), or by selecting a template, Region B (blue). Selecting the *default* template should give you the window layout you saw above.

.. figure:: images/MATLAB_Desktop_Dropdown.png
	:scale: 100
	:width: 400px
	:align: center

The core MATLAB setup has 6 main sections of interest:

.. figure:: images/MATLAB_Windows_Labeled.png
	:scale: 100
	:width: 400px
	:align: center


**1. Command Window**

	The command window (or "command line") provides your main means of interacting with the MATLAB software. The command line allows you to enter simple codes that are processed immediately. All program outputs also appear in the command window. While it is technically possible to write an entire program at the command line, this is not recommended. For true programs, scripts and functions will be used.

**2. Current Directory**	

	The "current directory" panel lists all of the files (MATLAB or other) that are located in the directory MATLAB is currently accessing. This directory may be changed via the drop down address bar at the top of the main program window. For a program to run properly, generally all code files required must be in the same directory (for example, if you write a main script file that calls a separate function file, both files must be in the same directory).

**3. Command History**

	The command history records all commands entered in the command window (for possible future reference).

**4. Workspace**

	The workspace lists all variables, matrices, and function handles currently being stored by MATLAB. The workspace also provides basic information on the values being stored, such as size, max, min, etc. Perhaps most useful is the ability to double click variables and matrices in the workspace to open up the **Variable Editor** window. The variable editor is essentially a spread sheet representation of your variables that allows for easy manipulation (especially useful for large matrices). 

**5. Editor Window**

	The editor window(s) does not immediately open when you launch MATLAB. The editor window is where you write scripts and function files that can be compiled and run in the command window (to be discussed in detail later). To open a new editor window you can either go to ``File -> New -> Blank M-File``, hit ``Ctrl+N``, type ``edit`` at the command line, or hit the *New M-File* icon at the top left of the main screen (it looks like the little piece of paper with the explosion in the top left corner). To open a pre-existing M-File you need to switch the current directory to the location of the file (as mentioned above) and simply double click on the M-File name in the "current directory" sidebar.

**6. Plot Window**

	When the MATLAB plot tools are used the resulting graphics are displayed in separate plot windows.

..rubric:: Python

Windows users
^^^^^^^^^^^^^^^^^

When starting Python(x,y) you will be presented with the following window.

.. figure:: images/start-pythonxy.jpg
	:scale: 100
	:width: 200px	
	:align: center

Spyder (Scientific PYthon Development EnviRonment) is the name of the development environment we will be using.

#.	Select the ``--pylab`` option
#.	Then launch the Spyder environment.

* Python(x,y) has a layout similar to that shown below 

	.. figure:: images/layout-pythonxy-low.jpg
		:scale: 100
		:width: 500
		:align: center
	
	
**1. Command Window**

	The command window is where you interact with Python. Commands entered here are processed immediately. While it is technically possible to write an entire program at the command line, this is not recommended. For true programs, you should write a script in region 5 of the software.

**Current Directory**

	The "current directory" panel lists all of the files that are located in the directory Python is currently accessing. This directory may be changed by navigating to a new directory and clicking on its name.

**3. Command History**
	
	The command history records all commands entered in the command window (for possible future reference).

**4. Workspace**

	The workspace lists all variables (e.g. vectors and matrices) currently available to you. The workspace also provides the size and "type" of variable.  You can double click on a variable and change its value: e.g. edit a specific entry in a vector, in a spreadsheet-like interface.

**5. Editor Window**
	
	The editor window is where you write scripts and function files.  After saving the file to disk, you can run it by pressing ``F9`` (or click on ``Source`` in the top menu and select ``Run in interactive console``)

	You can have one or multiple files open at any time.

**6. Plot Window**

	Python plots are opened in new separate windows, but can be "docked" (placed) anywhere inside the main Python(x,y) window.
	

Mac users
^^^^^^^^^^^

This tutorial step assumes that you have :ref:`already installed <matpy-mac-linux-install>` Enthought's Python distribution.

#.	Start the **Terminal** program, which will bring up a command window.
 	
	.. figure:: images/Mac-starting-the-terminal.jpg
		:scale: 100
		:align: center

	
#.	Then type the following command to start::

		ipython --pylab

	and you should get something similar to this window
	
		.. figure:: images/Ipython-mac-screenshot.jpg	
			:scale: 100
			:width: 400px
			:align: center
			
Linux users
^^^^^^^^^^^^

This tutorial step assumes that you have :ref:`already installed <matpy-mac-linux-install>` Enthought's Python distribution.

I expect you know how to start your shell, e.g. the ``bash`` shell.  Once you are in the shell, just type::

	ipython --pylab

and you should get something similar to this window (screen shot from Ubuntu Linux):

	.. figure:: images/Ipython-ubuntu-screenshot.jpg
		:scale: 100
		:width: 400px
		:align: center

where you can type in Python commands.

My first program: creating a plot
===================================

In this part of the tutorial you are required to create a plot with 10 points (a vector), consisting of the numbers :math:`x = [0, 2, 4, ... 18]`. Then we will also create a corresponding vector :math:`y = (x-8)^2 - 40` and plot these :math:`(x,y)` points, pairwise, on a plot.

.. rubric:: MATLAB

There are several ways we can create our vector :math:`x` in MATLAB.

.. code-block:: matlab

	>> x = [0 2 4 6 8 10 12 14 16 18];
	>> x = [0, 2, 4, 6, 8, 10, 12, 14, 16, 18];
	>> x = linspace(0, 18, 10); % easiest method
	>> x
	x =
	     0     2     4     6     8    10    12    14    16    18

Now create the corresponding :math:`y`-vector using MATLAB's ability to do vector operations.  We can write

.. code-block:: matlab

	>> y = (x-8).^2 - 40;
	>> y
	y =
	    24    -4   -24   -36   -40   -36   -24    -4    24    60

**Note**: that we must use ``.^`` to calculate the exponent.  If you just write ``^`` by itself, MATLAB will assume you want to calculate the matrix exponent, which is defined quite differently.  In fact, any *element-by-element* calculation must use the "." notation to tell MATLAB *not* to use its default **matrix** calculations. For example, use ``.*`` for element-by-element matrix multiplication.  

.. rubric:: Python

There are several ways we can create our vector :math:`x` in Python. 

.. code-block:: python

	import numpy as np

	>>> x = np.array([0, 2, 4, 6, 8, 10, 12, 14, 16, 18])
	>>> x = np.linspace(0, 18, 10)   # easiest method
	>>> x
	array([ 0,  2,  4,  6,  8, 10, 12, 14, 16, 18])

Now create the corresponding :math:`y`-vector:

.. code-block:: python

	>>> y = (x-8) ** 2 - 40  
	>>> y
	array([ 24.,  -4., -24., -36., -40., -36., -24.,  -4.,  24.,  60.])


We raise a variable to a power using the ``**`` notation; the ``^`` operator means something else in Python.

.. note:: Key difference 

	* In MATLAB, everything is a matrix calculation, by default. 
	* In Python's NumPy library (``numpy``), everything is an element-by-element calculation, by default.

Finally, we are ready to plot these :math:`(x,y)` points.  Notice that the code is *nearly* identical between MATLAB and Python

.. code-block:: matlab

	plot(x, y, '.-')
	grid on
	xlabel('x')
	ylabel('y')
	title('A plot of y = (x-8)^2 - 40')

.. figure:: images/Matlab-first-plot.jpg
	:scale: 100
	:width: 400px
	:align: center

.. code-block:: python

	from matplotlib.pylab import *
	plot(x, y, '.-')
	grid('on')  # <--- it is a function in Python, so add ()
	xlabel('x')
	ylabel('y')
	title('A plot of y = (x-8)^2 - 40')

.. figure:: images/Python-first-plot.jpg
	:scale: 100
	:width: 400px
	:align: center

.. note:: Python users

	Nearly every Python script in this tutorial will start with the following two lines:
	
	.. code-block:: python
	
		import numpy as np
		from matplotlib.pylab import *

	The reason for ``import`` is due to a technical issue related to `Python namespaces <http://bytebaker.com/2008/07/30/python-namespaces/>`_.

Saving a plot
================

This section looks at saving a plot programatically, i.e. saving the plot using a source code command, rather than saving it manually.

The function for saving plots in MATLAB is: ``print(...)``

We will save the plot in the `PNG file format <http://en.wikipedia.org/wiki/Portable_Network_Graphics>`_:

.. code-block:: matlab

	% ...	
	% Various commands to generate the plot
	% ...
	print('-dpng', 'name_of_plot.png')


The only other file format that MATLAB can usefully save a plot to is the `JPEG file format <http://en.wikipedia.org/wiki/JPEG>`_: ``print('-djpeg', 'name_of_file.jpg')``

.. rubric:: Python

The function for saving plots in Python is: ``fig.savefig(...)``

Save the plot in the `PNG file format <http://en.wikipedia.org/wiki/Portable_Network_Graphics>`_:

.. code-block:: python

	from matplotlib.pylab import *
	fig = figure()
	# ...
	# Various commands to generate the plot
	# ...
	fig.savefig('name_of_plot.png') 

``matplotlib`` can save figures to a variety of formats.  It detects the file format from the file extension:

* ``'name_of_plot.jpg'``:  `JPEG file <http://en.wikipedia.org/wiki/JPEG>`_
* ``'name_of_plot.svg'``:  `SVG file  <http://en.wikipedia.org/wiki/SVG>`_
* ``'name_of_plot.bmp'``:  `BMP file  <http://en.wikipedia.org/wiki/BMP_file_format>`_
* ``'name_of_plot.pdf'``:  `PDF file  <http://en.wikipedia.org/wiki/PDF>`_

``matplotlib`` can customize how the figures is saved.  For example, this command will save the figure as a PDF file:

* using 300 DPI resolution (a higher number has greater resolution: DPI = dots per inch)
* use a white background (``w``)  for the figure face colour
* on portrait orientation
* using a letter size page

.. code-block:: python

	fig.savefig('name_of_plot.pdf', 
	             dpi=300, facecolor='w', 
	             edgecolor='w', orientation='portrait', 
	             papertype='letter')

If you plan to use Python more frequently, then you will benefit from this book: `Beginning Python Visualization <http://www.springerlink.com/content/978-1-4302-1843-2>`_ - many universities have free access to the PDF version from campus computers.


Read data into MATLAB or Python
=================================

..  Web-based reading in MATLAB

	website_raw = urlread('http://datasets.connectmv.com/file/website-traffic.csv')
	readData = textscan(website_raw, ‘%s %s %d %d’, ‘delimiter’, ',');

The most interesting data to analyze is always your own.  How do we read your own data files into MATLAB or Python?    We will look at the case when the data file is on your computer

.. note:: 

	We only consider comma separated values (CSV) files in this section. 
	
MATLAB and Python are very capable at reading other files formats, such as XML files, directly from databases, and other sources, such as Excel. 

* MATLAB: `see documentation for all formats <http://www.mathworks.com/help/techdoc/ref/f16-5702.html>`_.
* Python: separate pages for `XML <http://docs.python.org/library/xml.sax.html>`_ files, `CSV <http://docs.python.org/library/csv.html>`_ files, `arbitrary databases <http://www.sqlalchemy.org/>`_, and `Excel files <http://www.python-excel.org/>`_.

