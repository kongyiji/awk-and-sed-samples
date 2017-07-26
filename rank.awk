# rank.awk - 测试随机数的生成
BEGIN {
    print rand()
    print rand()
    srand()
    print rand()
    print rand()
}
