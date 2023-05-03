%dw 2.0
output application/json
---
// payload.HeaderContNum flatMap ((item, index) -> item) map {
//     HeaderContNum: $
// }

flatten(payload.HeaderContNum map ((item, index) ->item )) map (HeaderContNum: $)
//Here we use flatten function for to remove array of arrays into single array and then using map operator iterate an array and then again we can iterate array to get array of objects