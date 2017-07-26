# grades.sort.awk - 对学生成绩进行排序的脚本
# 输入：后面跟有一系列成绩的学生姓名
# 排序函数--按升序排序数字
function sort(ARRAY, ELEMENTS, temp, i, j) {
    for (i=2; i<=ELEMENTS; ++i) {
        for (j=i; ARRAY[j-1]>ARRAY[j]; --j)
        {
            temp=ARRAY[j]
            ARRAY[j]=ARRAY[j-1]
            ARRAY[j-1]=temp
        }
    }
    return
}
# 主例程
{
# 通过循环将第2到第NF字段的值赋给grades
    for (i=2; i<=NF; ++i)
        grades[i-1]=$i
# 调用排序函数来排序元素
    sort(grades, NF-1)
# 打印学生姓名
    printf("%s: ", $1)
# 输出循环
    for (j=1; j<=NF-1; ++j)
        printf("%d ", grades[j])
    printf("\n")
}
