# Element Location Principles
## Idenify a unique locator
- Inspect the element to be located in the Browser (right click on element -> and choose `Inspect`)
- Take a look at the element's attributes and try to find a unique way to identify the element
-   The ID usually is unique, but developers avoid having IDs for elements these days, but in some cases the IDs are still used for marketing purposes (Google Tracking), so if you are in luck, just use the element ID in that instance
-   
- To check if the locator chosen previously is really unique, open the browser concole and execute the following command:
-   Type `document.querySelectorAll('css-selector')` and put your chosen selector as attribute to the function
-   Hit enter and inspect the result of the function, should be a list with all elements identified by the selector
-   If the list only contains one element, it means that you have chosen a unique way to select the element
-   If the list contains multiple elements, it means there are more elements on the page that can be identified by the chosen method
