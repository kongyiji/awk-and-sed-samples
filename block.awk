# block.awk - 打印第一个和最后一个字段
# $1 = name; $NF = phone number
BEGIN { FS="\n"; RS=""}
{ print $1, $NF }
