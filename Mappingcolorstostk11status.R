mapstk11toColor <- function(annotations){ 
  colorsVector = ifelse (annotations["Subject_stk11"] ==  "WT",
      "blue", ifelse(annotations["Subject_stk11"]=="MUT",
       "green","red")) 
      return(colorsVector)
  }