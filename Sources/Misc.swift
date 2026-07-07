///
/// Copyright 2020 Aleksander Kozin
///
/// Licensed under the Apache License, Version 2.0 (the "License");
/// you may not use this file except in compliance with the License.
/// You may obtain a copy of the License at
///
///     http://www.apache.org/licenses/LICENSE-2.0
///
/// Unless required by applicable law or agreed to in writing, software
/// distributed under the License is distributed on an "AS IS" BASIS,
/// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
/// See the License for the specific language governing permissions and
/// limitations under the License.
///
/// Created by Aleksander Kozin
/// .some

#if canImport(Swift)

public
protocol BoundedAny: Some where Self: Comparable {

    static
    var min: Self { get }

    static
    var max: Self { get }

    static
    func some(in bounds: ClosedRange<Self>) -> Self

    static
    func some(in array: [Self]) -> Self

}

extension BoundedAny {

    @inline(__always)
    public
    static
    var some: Self {
        .some(in: (.min)...(.max))
    }

    @inline(__always)
    public
    static
    func some(in array: [Self]) -> Self {
        array.randomElement()!
    }

}

#endif
