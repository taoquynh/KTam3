//
//  main.swift
//  KTam3
//
//  Created by Taof on 31/05/2021.
//

import Foundation
// vong lap while
var x = 10
while x >= 0 {
//    print(x)
    x -= 1
}

// vong lap repeat while
var y = 10
repeat {
//    print(y)
    y += 1
} while y <= 20


// MARK: Array - mảng
// Mảng là tập hợp các giá trị có cùng kiểu dữ liệu
// Mảng là một collection types.

var array: [String] = []
var numbers: [Int] = [1, 2, 3, 4, 5]
var bools: [Bool] = [true, true, false, false, true, true, false]

// Thao tac voi mang

// in mang
print(numbers)
print(bools)


// truy cap phan tu mang
print(numbers[2])
print(bools[4])
// print(bools[8]) -> index phai nam trong khoang tu 0 den mang.count - 1

// dem so phan tu trong mang
print(numbers.count)
print(array.count)
print(bools.count)

// lay ra phan tu dau tien trong mang
print(numbers.first!)

// lay ra phan tu cuoi cung trong mang
print(numbers.last!)
print(numbers[numbers.count-1]) // numbers.count-1 la index cuoi cung trong mang

// lap qua mot mang
for i in bools { // lap qua mang de lay gia tri
    print(i)
}

for (index, value) in numbers.enumerated() { // lap qua mang de lay ra ca index va value
    print("Phan tu thu \(index) co gia tri la \(value)")
}

// lap mang theo index
for i in 0...bools.count-1 {
    print("Phan tu thu \(i) co gia tri la \(bools[i])")
}


// update gia tri trong mang
numbers[2] = 10
numbers[0] = -40

print(numbers)

// kiem tra mang rong
print(array.isEmpty)
print(numbers.isEmpty)

// them gia tri vao mang
array.append("Anh") // them moi 1 phan tu trong mang
array.append(contentsOf: ["China", "Nga", "Canada"])

print(array)

array.insert("USA", at: 3)
print(array)

// xoa phan tu
array.removeFirst() // xoa phan tu dau tien
array.removeLast() // xoa phan tu cuoi cung
array.remove(at: 2) // xoa phan tu theo index
array.removeAll() // xoa toan bo phan tu

// MARK: - Cho 1 mảng có 5 phần tử: "An", "Long", "Trang", "Nam", "Linh"
// - Chèn tên mới "Quang" vào vị trí index thứ 2
// - Xoá tên ở cuối mảng
// - Khai báo biến t có giá trị là "Nhung", kiểm tra xem biến t có trong mảng hay không?

var arrayHello = ["An", "Long", "Trang", "Nam", "Linh"]
arrayHello.insert("Quang", at: 2)
print(arrayHello)
arrayHello.removeLast()
print(arrayHello)

let t = "Nhung"
// cach1
var isCheck = false
for i in arrayHello {
    if i == t {
        isCheck = true
        break
    }
}

if isCheck {
    print("CO Nhung")
} else {
    print("Khong co Nhung")
}

// cach 2
if arrayHello.contains(t) {
    print("Co Nhung")
} else {
    print("Khong co Nhung")
}
