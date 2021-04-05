import UIKit
import  RxSwift
import RxCocoa

/*
let observable = Observable.just(1)

let observable2 = Observable.of(1, 2, 3)

let observable3 = Observable.of([1, 2, 3])

let observable4 = Observable.from([1, 2, 3, 4, 5])

observable4.subscribe { event in
    //print(event)
    if let element = event.element {
        print(element)
        
    }
    print("")
}

observable3.subscribe { event in
    //print(event)
    if let element = event.element {
        print(element)
    }
}

let subscribe4 = observable4.subscribe(onNext : { element in
    print(element)
    
})*/
let disposeBag = DisposeBag()

/*Observable.of("A", "B", "C").subscribe {
    print($0)
}.disposed(by: disposeBag)

let subject = PublishSubject<String>()

subject.onNext("Issue 1")

subject.subscribe({ event in
    print(event)
    
})
subject.dispose()
subject.onNext("Issue 2")
//ubject.dispose()
subject.onCompleted()
subject.onNext("Issue 3")*/

/*let subject = ReplaySubject<String>.create(bufferSize: 2)

subject.onNext("Issue 1 ")
subject.onNext("Issue 2 ")
subject.onNext("Issue 3")

subject.subscribe {
    print($0)
}

subject.onNext("Issue 4")
subject.onNext("Issue 5")
subject.onNext("Issue 6")


print("[Subscription 2]")
subject.subscribe {
    print($0)
}*/

