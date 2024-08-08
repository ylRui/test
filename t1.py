import math

def calculate_circle_area(radius):
    """
    计算园的面积
    :param radius: 园的半径
    :return: 园的面积
    """
    return math.pi * radius * radius

radius = int(input("请输入园的半径："))
area = calculate_circle_area(radius)
print("园的面积为：", area)