%dw 2.0
import * from dw::core::Dates

fun convertDate(date, format) = date as Date {format: format}
fun convertString(date, format) = date as String  {format: format}
fun format(d: DateTime) = d as String {format: "yyyy-MM-dd'T'HH:mm:ss.SSS"}
output application/json  
---
{
  "Date in dd-MM-yyyy format": convertDate(now(), "dd-MM-yyyy"),
  "Date in dd-MMM-yyyy format": convertDate(now(),"dd-MMM-yyyy"),
  "Date in dd/MM/yyyy format": convertDate(now(),"dd/MM/yyyy"),
  "Date in dd/MMM/yyyy format": convertDate(now(), "dd/MMM/yyyy"),
  "Date in dd E, MMM, yyyy format":convertDate(now(),"dd E, MMM, yyyy"),
  "Date in yyyy/MMM/dd format": convertDate(now(), "yyyy/MMM/dd"),
  "Date in dd/MMM/yyyy format": convertDate(now(), "dd/MMM/yyyy"),
  "Date in 24hr Format": convertString(now(), "dd-MM-yyyy HH:mm:ss"),
  "Date in 12hr Format": convertString(now(), "dd-MM-yyyy hh:mm:ss a"),
  "Type of Date in 24hr Format": typeOf(convertDate(now(), "dd-MM-yyyy HH:mm:ss")),
  "Type of Date in 24hr Format": typeOf(convertString(now(), "dd-MM-yyyy HH:mm:ss")),

  // change timezone  (even if the type is string when timezone changed, type becomes date time)
  // eg typeOf((now() as String {format: "yyyy-MM-dd'T'HH:mm:ss.SSS"}) >> "America/Chicago") = DateTime instead of String
   CreatedDateTime: format(now() >> "America/Chicago"),
   //Current DateTime to specific string format(
  "Convert to specific string":  now() as String {format: "yyyy-MM-dd"},
  "Compare dates": "2016-03-09" < (now() as Date {format:"yyyy-MM-dd"}),
  "Convert to local date time": "Mon Mar 14 15:34:47 NZDT 2022" as DateTime { format: "eee MMM dd HH:mm:ss zz yyyy" } as LocalDateTime,
  "Convert String(date) to dateTime": "10/17/2019" as Date {format:"MM/dd/yyyy"} as String {format: "yyyy-MM-dd'T'00:00:00"},
  "Another conversion example" : "2021/12/12 14.27.48" as LocalDateTime {format:"yyyy/MM/dd HH.mm.ss"} as String {format: "dd-MM-yyyy HH:mm:ss"}


}