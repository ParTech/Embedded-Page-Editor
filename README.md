Embedded Page Editor
====================

This script provides a solution for embedding the Sitecore Page Editor in the Content Editor as an editor tab.

Installation
----------------
Add the *PageEditor.aspx* file to your webroot in the folder */sitecore/shell/Custom*

Create a new Editor in Sitecore using the following steps:

* Open the Content Editor
* Switch to the *Core* database
* Select the item */sitecore/content/Applications/Content Editor/Editors*
* Insert a new folder called *Custom*
* In that folder, insert a new item called *Page Editor* from the template *Sitecore Client/Content editor/Editor*
* In the Url field, enter this URL: */sitecore/shell/custom/pageeditor.aspx*
* Choose an appropiate icon
* Check the *Refresh On Show* checkbox

Now you have added a new Editor, let's configure some templates to use it:

* Open the *Standard Values* item for the template for which you want the embedded Page Editor to be enabled. 
Side note: I adviced you to use proper inheritance so that all page templates inherit from one base template. Then you only have to configure the editor for that one template.
* Make sure that the *Standard Fields* checkbox in the *View* ribbon is enabled
* Locate the *Editors* field in the *Appearance* section and add the newly created *Page Editor* editor there
* Save the *Standard Values* and you're good to go!

The Page Editor is now embedded in the Content Editor for all the items that were made using the templates for which you just configured it.

Enjoy!

---
Brought to you by Ruud van Falier, ParTech IT

Twitter: @BrruuD / @ParTechIT   
E-mail: ruud@partechit.nl   
Web: http://www.partechit.nl
