%dw 2.0
import dwl::common::commonFunctions as common
output application/json
---
{
  name: "api-name-two-v1",
  timestamp: common::removeNumbers("2021-03-18T12:12:12Z"),
  status: "OK"
}