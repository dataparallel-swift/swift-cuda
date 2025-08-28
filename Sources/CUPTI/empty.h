/*
 * Interoperability layer to call CUDA functions from Swift
 *
 * Bindings for CUPTI, the CUDA Profiling Tools Interface.
 *
 * This dummy module is required to stop SwiftPM from complaining. In contrast
 * to the .systemLibrary targets (CUDA, CUDART), we don't need a local header
 * file to then include the system header file; the modulemap.module file will
 * already direct the compiler to pick that up.
 */

