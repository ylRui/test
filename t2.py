def square_area(side_length):
    return side_length * side_length

side_length = float(input("请输入正方形的边长："))
area = square_area(side_length)
print("正方形的面积为：", area)