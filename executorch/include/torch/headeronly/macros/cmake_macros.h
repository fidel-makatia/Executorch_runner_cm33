#pragma once

// Minimal cmake_macros.h for embedded builds
// This file is typically auto-generated but we're creating a minimal version

#ifndef TORCH_API
#define TORCH_API
#endif

#ifndef C10_API
#define C10_API
#endif

#ifndef C10_EXPORT
#define C10_EXPORT
#endif

#ifndef C10_IMPORT
#define C10_IMPORT
#endif

#ifndef C10_HIDDEN
#define C10_HIDDEN
#endif

// Common build configuration macros
#define C10_MOBILE 1
#define EXECUTORCH_BUILD 1

