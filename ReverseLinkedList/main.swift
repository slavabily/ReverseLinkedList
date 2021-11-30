//
//  main.swift
//  ReverseLinkedList
//
//  Created by slava bily on 30.11.2021.
//
// The single linked list example:
// 1->2->3->nil

import Foundation

// The data structure that supports such a list

class SinglyLinkedListNode {
    let data: Int
    var next: SinglyLinkedListNode?
    
    init(value: Int, next: SinglyLinkedListNode?) {
        self.data = value
        self.next = next
    }
}

let threeNode = SinglyLinkedListNode(value: 3, next: nil)
let twoNode = SinglyLinkedListNode(value: 2, next: threeNode)
let oneNode = SinglyLinkedListNode(value: 1, next: twoNode)

func printList(head: SinglyLinkedListNode?) {
    print("Printing out list of nodes")
    var currentNode = head
    while currentNode != nil {
        print(currentNode?.data ?? -1)
        currentNode = currentNode?.next
    }
}

printList(head: oneNode)
// 1->2->3->nil
// nil<-1->2->3->nil
// nil<-1<-2->3->nil
// nil<-1<-2<-3

// nil<-1<-2<-3
//3->2->1->nil

func reverse(llist: SinglyLinkedListNode?) -> SinglyLinkedListNode? {
    var currentNode = llist
    var prev: SinglyLinkedListNode?
    var next: SinglyLinkedListNode?
    
    while currentNode != nil {
        next = currentNode?.next
        currentNode?.next = prev
        print("Prev: \(prev?.data ?? -1), Curr:\(currentNode?.data ?? -1), Next: \(next?.data ?? -1)")
        prev = currentNode
        currentNode = next
    }
    return prev
}

let myReversedList = reverse(llist: oneNode)

printList(head: myReversedList) // needs to print out 3, 2, 1
 
