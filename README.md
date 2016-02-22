#Swedish - fluent in 90 days
##About
These are the sources for a little ebook I wrote in 2015 that documents my journey from zero to fluency in Swedish within 90 days back in 2014. You can read more about it and download the compiled book in both `.pdf` and `.epub` [here][mleueprojects].

Putting the sources on github is intended both as a way of making it easier for other people to publish their own ebooks with a simple `markdown` layout, as well as to enable you to contribute in the form of e.g. spelling corrections.

##Build
You can build the `.pdf` and `.epub` by simply running `build.sh`. The build depends on several pieces of software that should be available via command line:

* [pandoc][pandocweb] to compile `markdown` to `.epub` and `.pdf`
* [pdftk][pdftkweb] to add the front page to the `.pdf` file
* [7z][7zweb] to build the combined container 

##Contribute
If you find any spelling mistakes or weird expressions (English is not my mothertongue), fix it and open a pull request.

If you find that I could explain something better or more thoroughly, open an issue.

##License
This work is licensed under the _Creative Commons Attribution-NonCommercial-ShareAlike 4.0 License_. To view a copy of this license, visit [cc-by-nc-sa-4.0][cc] or send a letter to Creative Commons, PO Box 1866, Mountain View, CA 94042, USA.

[mleueprojects]: https://mleue.com/projects/
[pdftkweb]: https://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/
[pandocweb]: http://pandoc.org/
[7zweb]: http://www.7-zip.org/
[cc]: https://creativecommons.org/licenses/by-nc-sa/4.0/
