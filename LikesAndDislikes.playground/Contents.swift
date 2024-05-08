import UIKit

var greeting = "Hello, playground"

enum StatusCounter {
    case like
    case dislike
    case nothing
}

struct LikeDislikeBadges {
    var like = false
    var dislike = false
}

private func validateBtns(_ likesDislikesArray: [LikeDislikeBadges]) -> StatusCounter {
    var finalCounter: StatusCounter = .nothing
    for btn in likesDislikesArray {
        switch finalCounter {
            case .nothing:
                if btn.like == true {
                    finalCounter = .like
                } else if btn.dislike == true {
                    finalCounter = .dislike
                }
            case .like:
                if btn.like == true {
                    finalCounter = .nothing
                } else if btn.dislike == true {
                    finalCounter = .dislike
                }
            case .dislike:
                if btn.like == true {
                    finalCounter = .like
                } else if btn.dislike == true {
                    finalCounter = .nothing
                }
        }
    }
    
    return finalCounter
}

//Case1
let likesDislikesArray1: [LikeDislikeBadges] = [
    LikeDislikeBadges(like: false, dislike: true)
]
print(validateBtns(likesDislikesArray1))


//Case2
let likesDislikesArray2: [LikeDislikeBadges] = [
    LikeDislikeBadges(like: true, dislike: false),
    LikeDislikeBadges(like: true, dislike: false)
]
print(validateBtns(likesDislikesArray2))


//Case3
let likesDislikesArray3: [LikeDislikeBadges] = [
    LikeDislikeBadges(like: false, dislike: true),
    LikeDislikeBadges(like: true, dislike: false)
]
print(validateBtns(likesDislikesArray3))


//Case4
let likesDislikesArray4: [LikeDislikeBadges] = [
    LikeDislikeBadges(like: true, dislike: false),
    LikeDislikeBadges(like: false, dislike: true),
    LikeDislikeBadges(like: false, dislike: true)
]
print(validateBtns(likesDislikesArray4))


//Case5
let likesDislikesArray5: [LikeDislikeBadges] = [
    LikeDislikeBadges(like: true, dislike: false),
    LikeDislikeBadges(like: true, dislike: false),
    LikeDislikeBadges(like: true, dislike: false)
]
print(validateBtns(likesDislikesArray5))


//Case6
let likesDislikesArray6: [LikeDislikeBadges] = [
    LikeDislikeBadges(like: true, dislike: false),
    LikeDislikeBadges(like: true, dislike: false),
    LikeDislikeBadges(like: true, dislike: false),
    LikeDislikeBadges(like: false, dislike: true),
    LikeDislikeBadges(like: false, dislike: true)
]
print(validateBtns(likesDislikesArray6))
