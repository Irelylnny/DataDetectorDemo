# DataDetectorDemo

This is a test demo for data detector in iOS.

### DESCRIPTION OF PROBLEM 

When WKWebview loaded a website written by React, the data detector is not work after HTML loaded.
Then I tried to load a normal html file which included JS script, the data detector also failed to detect the dynamic updated HTML DOM part.
I guess the data detector executed only once when html file loaded, thus it won't detect the dynamic updated DOM part.


In this demo **(not contain any React code)** , webview will load a normal html file included JS script, you will see after 4 seconds, we update a new number and email address, and data detector will not work on new HMTL DOM part.
