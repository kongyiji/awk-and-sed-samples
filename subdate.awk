# subdate.awk - 用当天的日期替换@date
/@date/ {
    "date +'%a., %h%d, %Y'" | getline today
    gsub(/@date/, today)
}
{ print }
