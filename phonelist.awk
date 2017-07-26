# phonelist.awk - 打印姓名和电话号码
# 输入文件 —— 名字、公司、街道、城市、州和邮编、电话
BEGIN { FS="," } # 用逗号分隔字段
{ print $1 ", " $6 }
END { print ""
print NR, "records processed." }
