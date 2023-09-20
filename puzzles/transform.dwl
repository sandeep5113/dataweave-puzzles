%dw 2.0
output application/json
import * from dw::core::Arrays
/*
Adjusting pagination offset based on input size and total count.
​*/
---
/* 
[
  {
    "offset": 0
  },
  {
    "offset": 100
  },
  {
    "offset": 200
  },
  {
    "offset": 300
  },
  {
    "offset": 400
  },
  {
    "offset": 500
  }
]
*/
(payload.offset to payload.totalCount) divideBy payload.size map {
    "offset": $$ * payload.size
  }
