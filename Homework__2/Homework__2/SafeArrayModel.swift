//
//  SafeArrayModel.swift
//  Homework__2
//
//  Created by Максим Солнцев on 10/27/20.
//

import Foundation

final class ThreadSafeArray<T> {
    private var array: [T] = []
    private let queue = DispatchQueue(label: "ThreadSafeArray", attributes: .concurrent)
     
    func append(_ item: T) {
        self.queue.async(flags: .barrier) {
            self.array.append(item)
        }
    }
    
     func removeItem(index: Int) {
        self.queue.async(flags: .barrier) {
            self.array.remove(at: index)
        }
    }
    
    func contains(where item: (T) -> Bool) -> Bool {
            var result = false
            queue.sync { result = self.array.contains(where: item) }
            return result
        }
    
     var count: Int {
        self.queue.sync(flags: .barrier) {
            return self.array.count
        }
    }
    
     var isEmpty: Bool {
        self.queue.sync {
            return self.array.isEmpty
        }
    }
    
     subscript(i: Int) -> T {
        self.queue.sync(flags: .barrier) {
            return self.array[i]
        }
    }
}
