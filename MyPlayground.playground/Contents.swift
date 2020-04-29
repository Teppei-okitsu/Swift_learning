print(1 + 1)
print(2 * 2)
print(3 - 3)
print(4 / 4)
print(5 % 2)

//コメントはこんな感じ
/*
 こんな感じでもできまっせ
 */
var hoge = "-------------"
print(hoge)

var x = 10
for y in 1...10 {
    print(x * y)
}

print(hoge)

//練習問題
var output = 0
for x in 1...100 {
    output = output + x
}
print(output)


//九九プログラミング
for x in 1...9{
    for y in 1...9{
     print(x * y)
    }
}

for loop in 1...4 {
    let x = loop
    print("これで\(x)ループ目だぜ")
}

var life = 100
for num in 1...100 {
    var leftNum = life - num
    
    switch leftNum <= 25 {
    case true:
        print("充電せい")
        break
        
    default:
        print("まあええわ")
        break
    }
    
    print(leftNum)
}


var timerBox: [String]
timerBox = ["60"]
print(timerBox)
timerBox = ["60","20"]
print(timerBox)
print(timerBox[1])
timerBox.append("30")
print(timerBox[2])
timerBox.remove(at: 1)
print(timerBox)
for time in timerBox {
    print("start" + time)
}


var testResult: [Int]
testResult = [95,70,80]
var sum = 0
for n in testResult {
    sum = sum + n
}
print(sum)

import UIKit
var slider = UISlider()
//slider.value = 1.0
slider.setValue(0.5, animated: true)

//playgroundSupportというフレームワークを使うとアニメーションを確認できる





class Takoyaki {
    var guzai = "たこ"
    func sayGuzai() {
        print("具材は"+guzai+"です")
    }
}

var takoyaki = Takoyaki()
takoyaki.guzai = "いか"
takoyaki.sayGuzai()
