// Layout.swift
//
// Copyright (c) 2016 Auth0 (http://auth0.com)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import Foundation

func constraintEqual<C: NSLayoutAnchor>(anchor anchor: C, toAnchor anotherAnchor: C, constant: CGFloat? = nil, priority: UILayoutPriority = UILayoutPriorityRequired) -> NSLayoutConstraint {
    let constraint: NSLayoutConstraint
    if let value = constant {
        constraint = anchor.constraintEqualToAnchor(anotherAnchor, constant: value)
    } else {
        constraint = anchor.constraintEqualToAnchor(anotherAnchor)
    }
    constraint.priority = priority
    constraint.active = true
    return constraint
}


func dimension(dimension: NSLayoutDimension, withValue value: CGFloat) -> NSLayoutConstraint {
    let constraint = dimension.constraintEqualToConstant(value)
    constraint.active = true
    return constraint
}