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

extension Bool: Any_ {

    public
    static
    var any: Bool {
        .random()
    }

}

extension FixedWidthInteger {

    public
    static
    var any: Self {
        .random(in: (.min)...(.max))
    }

    public
    static
    func any(in bounds: ClosedRange<Self>) -> Self {
        .random(in: bounds)
    }

}

extension Float: BoundedAny {

    public
    static
    var min: Self {
        .leastNormalMagnitude
    }

    public
    static
    var max: Self {
        .greatestFiniteMagnitude
    }
    
    public
    static
    func any(in bounds: ClosedRange<Self>) -> Self {
        .random(in: bounds)
    }

}

extension Double: BoundedAny {

    public
    static
    var min: Self {
        .leastNormalMagnitude
    }

    public
    static
    var max: Self {
        .greatestFiniteMagnitude
    }

    public
    static
    func any(in bounds: ClosedRange<Self>) -> Self {
        .random(in: bounds)
    }

}

#endif
