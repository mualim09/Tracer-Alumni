# Tracer Study  
Tracer system helps the instructor to manage students, manage a batch of graduates, create a report of surveys, and forum to discuss some topics about academic things.

This version is not stable and also this is not the final version of the research which is much more stable with working samples.

Please use this for educational purposes only and don't forget to cite.
For more information on these repository you can browse the book on cvsu library call number: [331.114](http://library.cvsu.edu.ph/cgi-bin/koha/opac-detail.pl?biblionumber=11864&shelfbrowse_itemnumber=11847#holdings)

 

Installation
----------------
You can choose one from multiple ways for installation.

**GitHub Fork/Clone**
- Fork the repository ([here is the guide](https://help.github.com/articles/fork-a-repo/)).
- Clone to your machine
```
git clone https://github.com/rhalp10/TracerStudy-System.git
```
 - Download the [repository](https://github.com/rhalp10/TracerStudy-System/archive/refs/heads/master.zip) 
 
**Note**
 - windows 11 will require you to indicate port on your db configuration. Change port number on these files.
 ```DIR 
 //3306 or 3307
 db.php 
 ```
 - You can find your mysql port in `my.ini` file.
## Requirements 
- Maria 10.4.10+ / MySQL 8.0.18+   
- phpMyAdmin 4.9.2 
- Apache 2.4.41 
- PHP 5.6.x to PHP 7.1.33
- Login used `mcrypt_encrypt()` function and it has been DEPRECATED as of PHP 7.1.0 and REMOVED as of PHP 7.2.0. Relying on this function is highly discouraged.
 

## Demo credentials
| Username       | Password       |
|----------------|----------------|
| 201310656	 | student        |
| teacher        | teacher        |
| admin 	 | admin 	  | 

----------
# What's Included? 
- [Metis](https://colorlib.com/polygon/metis/) [[MIT](https://github.com/twbs/bootstrap/blob/main/LICENSE)]  - Free Admin Template Based On Twitter Bootstrap 3.x
- [Bootstrap 3.3.6](https://getbootstrap.com) [[MIT](https://github.com/twbs/bootstrap/blob/main/LICENSE)]  - An open source design system for HTML, CSS, and JS.
- [FPDF](http://www.fpdf.org/) [[MIT](http://www.fpdf.org/en/FAQ.php#q1)] - An open source PHP class which allows to generate PDF files with pure PHP.
- [chart.js](https://www.chartjs.org/) [[MIT](https://github.com/chartjs/Chart.js/blob/master/LICENSE.md)] - Chart.js is a free open-source JavaScript library for data visualization, which supports 8 chart types: bar, line, area, pie, bubble, radar, polar, and scatter.
- [CKEditor 4.7.1](http://ckeditor.com) [[GPL](https://github.com/ckeditor/ckeditor4/blob/master/LICENSE.md)] - is a WYSIWYG rich text editor which enables writing content directly inside of web pages or online applications. 
- [DataTables](https://datatables.net) [[MIT](https://datatables.net/license/mit)] - DataTables is a plug-in for the jQuery Javascript library. It is a highly flexible tool, built upon the foundations of progressive enhancement, that adds all of these advanced features to any HTML table.
- [Jquery](https://jquery.com) [[MIT](https://tldrlegal.com/license/mit-license)] - jQuery is a fast, small, and feature-rich JavaScript library. It makes things like HTML document traversal and manipulation, event handling, animation, and Ajax much simpler with an easy-to-use API that works across a multitude of browsers. With a combination of versatility and extensibility, jQuery has changed the way that millions of people write JavaScript.


# License
Tracer System licensed as [MIT](https://github.com/rhalp10/TracerStudy-System/blob/master/LICENSE)
