# checkbook.awk
BEGIN { FS="\t" }
#1 期望第一条记录为初始余额。
NR==1 { print "Beginning Balance:\t" $1
balance=$1
next # 取得下一条记录并结束
}
#2 应用于每个支票记录，将余额与数量相加。
{ print $1, $2, $3
print balance+=$3 # 支票数额有负数
}
