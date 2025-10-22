///
/// Copyright © 2020-2024 El Machine 🤖
/// https://el-machine.com/
///
/// Licensed under the Apache License, Version 2.0 (the "License");
/// you may not use this file except in compliance with the License.
/// You may obtain a copy of the License at
///
/// 1) LICENSE file
/// 2) https://apache.org/licenses/LICENSE-2.0
///
/// Unless required by applicable law or agreed to in writing, software
/// distributed under the License is distributed on an "AS IS" BASIS,
/// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
/// See the License for the specific language governing permissions and
/// limitations under the License.
///
/// Created by Alex Kozin
/// 2020 El Machine

#if canImport(Swift)

public
protocol BoundedAny: Any_ where Self: Comparable {

    static
    var min: Self { get }

    static
    var max: Self { get }

    static
    func any(in bounds: ClosedRange<Self>) -> Self

    static
    func any(in array: [Self]) -> Self

}

extension BoundedAny {

    @inline(__always)
    public
    static
    var any: Self {
        .any(in: (.min)...(.max))
    }

    @inline(__always)
    public
    static
    func any(in array: [Self]) -> Self {
        array.randomElement()!
    }

}

#endif
