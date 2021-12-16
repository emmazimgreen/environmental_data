this should be a markdown document

output: html_document

Can do this:
```{r load_penguin_data, echo=TRUE, eval=TRUE}
require(palmerpenguins)
head(penguins)
````

you should giuve your chunks a names {r my chunk 1}, {r setup}
  
  
you shoud show or hide your code what its rendererd (echo=TRUE or echo=FALSE)

show or hide the chunk output in the rendered doicumebt (eval=TRUE or false)

set plotting options
  figure height and width: fig.width - 5
  figure aspect ration: fig.asp=1
  figure allighment: fig.align='center'
  
tabsets
  regular tabs and pilled tabs