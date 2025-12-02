// Copyright (c) 2025 The swift-cuda authors. All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// Interoperability layer to call CUDA functions from Swift
//
// We use the CUDA driver API, rather than the runtime API that is typically
// demonstrated in the documentation/examples, as that relies more on C++
// features and magic built into nvcc, such as  the <<< >>> syntax to launch
// kernels.

#include <cuda.h>
