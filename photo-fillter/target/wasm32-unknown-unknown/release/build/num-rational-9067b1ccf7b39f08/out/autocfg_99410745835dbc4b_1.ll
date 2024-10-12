; ModuleID = 'autocfg_99410745835dbc4b_1.fa3a3d18521a6002-cgu.0'
source_filename = "autocfg_99410745835dbc4b_1.fa3a3d18521a6002-cgu.0"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-unknown"

%"core::fmt::rt::Argument<'_>" = type { %"core::fmt::rt::ArgumentType<'_>" }
%"core::fmt::rt::ArgumentType<'_>" = type { [1 x i32], ptr }

@alloc_8df0580a595a87d56789d20c7318e185 = private unnamed_addr constant <{ [166 x i8] }> <{ [166 x i8] c"unsafe precondition(s) violated: ptr::copy_nonoverlapping requires that both pointer arguments are aligned and non-null and the specified memory ranges do not overlap" }>, align 1
@alloc_fad0cd83b7d1858a846a172eb260e593 = private unnamed_addr constant <{ [42 x i8] }> <{ [42 x i8] c"is_aligned_to: align is not a power-of-two" }>, align 1
@alloc_b498cf0a06cafe1ad822ab5dde97c8c0 = private unnamed_addr constant <{ ptr, [4 x i8] }> <{ ptr @alloc_fad0cd83b7d1858a846a172eb260e593, [4 x i8] c"*\00\00\00" }>, align 4
@0 = private unnamed_addr constant <{ [4 x i8], [4 x i8] }> <{ [4 x i8] zeroinitializer, [4 x i8] undef }>, align 4
@alloc_dcea4d076e609fac019ca43d159d497d = private unnamed_addr constant <{ [81 x i8] }> <{ [81 x i8] c"/rustc/eeb90cda1969383f56a2637cbd3037bdf598841c/library/core/src/ptr/const_ptr.rs" }>, align 1
@alloc_6ef538ec19a543805cb50e57fc8ec813 = private unnamed_addr constant <{ ptr, [12 x i8] }> <{ ptr @alloc_dcea4d076e609fac019ca43d159d497d, [12 x i8] c"Q\00\00\00\19\06\00\00\0D\00\00\00" }>, align 4
@alloc_ffc44ed1670ebf78d81555edceff65f6 = private unnamed_addr constant <{ [69 x i8] }> <{ [69 x i8] c"unsafe precondition(s) violated: usize::unchecked_mul cannot overflow" }>, align 1
@alloc_d4d2a2a8539eafc62756407d946babb3 = private unnamed_addr constant <{ [110 x i8] }> <{ [110 x i8] c"unsafe precondition(s) violated: ptr::read_volatile requires that the pointer argument is aligned and non-null" }>, align 1
@alloc_20b3d155afd5c58c42e598b7e6d186ef = private unnamed_addr constant <{ [93 x i8] }> <{ [93 x i8] c"unsafe precondition(s) violated: NonNull::new_unchecked requires that the pointer is non-null" }>, align 1
@alloc_18a8f95af3a1fec932e1be3549258bac = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/eeb90cda1969383f56a2637cbd3037bdf598841c/library/core/src/alloc/layout.rs" }>, align 1
@alloc_2248d66bb0689b63fbe8756458a1613e = private unnamed_addr constant <{ ptr, [12 x i8] }> <{ ptr @alloc_18a8f95af3a1fec932e1be3549258bac, [12 x i8] c"P\00\00\00\C3\01\00\00)\00\00\00" }>, align 4
@alloc_763310d78c99c2c1ad3f8a9821e942f3 = private unnamed_addr constant <{ [61 x i8] }> <{ [61 x i8] c"is_nonoverlapping: `size_of::<T>() * count` overflows a usize" }>, align 1
@__rust_no_alloc_shim_is_unstable = external dso_local global i8
@alloc_68ac15728a1e6ba4743b718936db7fdf = private unnamed_addr constant <{ ptr, [4 x i8] }> <{ ptr inttoptr (i32 1 to ptr), [4 x i8] zeroinitializer }>, align 4
@alloc_83ea17bf0c4f4a5a5a13d3ae7955acd0 = private unnamed_addr constant <{ [4 x i8] }> zeroinitializer, align 4

; core::intrinsics::copy_nonoverlapping::precondition_check
; Function Attrs: inlinehint nounwind
define internal void @_ZN4core10intrinsics19copy_nonoverlapping18precondition_check17h09c5f4c3e85904d5E(ptr %src, ptr %dst, i32 %size, i32 %align, i32 %count) unnamed_addr #0 {
start:
  %0 = alloca [4 x i8], align 4
  %1 = alloca [4 x i8], align 4
  %_23 = alloca [24 x i8], align 4
  %_14 = alloca [24 x i8], align 4
  %_12 = ptrtoint ptr %src to i32
  %2 = icmp eq i32 %_12, 0
  br i1 %2, label %bb8, label %bb9

bb8:                                              ; preds = %start
  br label %bb6

bb9:                                              ; preds = %start
  %3 = call i32 @llvm.ctpop.i32(i32 %align)
  store i32 %3, ptr %1, align 4
  %_15 = load i32, ptr %1, align 4
  %4 = icmp eq i32 %_15, 1
  br i1 %4, label %bb10, label %bb11

bb6:                                              ; preds = %bb10, %bb8
  br label %bb7

bb10:                                             ; preds = %bb9
  %_19 = sub i32 %align, 1
  %_18 = and i32 %_12, %_19
  %_6 = icmp eq i32 %_18, 0
  br i1 %_6, label %bb1, label %bb6

bb11:                                             ; preds = %bb9
  store ptr @alloc_b498cf0a06cafe1ad822ab5dde97c8c0, ptr %_14, align 4
  %5 = getelementptr inbounds i8, ptr %_14, i32 4
  store i32 1, ptr %5, align 4
  %6 = load ptr, ptr @0, align 4
  %7 = load i32, ptr getelementptr inbounds (i8, ptr @0, i32 4), align 4
  %8 = getelementptr inbounds i8, ptr %_14, i32 16
  store ptr %6, ptr %8, align 4
  %9 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 %7, ptr %9, align 4
  %10 = getelementptr inbounds i8, ptr %_14, i32 8
  store ptr inttoptr (i32 4 to ptr), ptr %10, align 4
  %11 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 0, ptr %11, align 4
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17hde8b7aa66e2831e1E(ptr align 4 %_14, ptr align 4 @alloc_6ef538ec19a543805cb50e57fc8ec813) #10
  unreachable

bb1:                                              ; preds = %bb10
  %_21 = ptrtoint ptr %dst to i32
  %12 = icmp eq i32 %_21, 0
  br i1 %12, label %bb13, label %bb14

bb7:                                              ; preds = %bb4, %bb5, %bb6
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17h1c2f45581e84758fE(ptr align 1 @alloc_8df0580a595a87d56789d20c7318e185, i32 166) #10
  unreachable

bb13:                                             ; preds = %bb1
  br label %bb5

bb14:                                             ; preds = %bb1
  %13 = call i32 @llvm.ctpop.i32(i32 %align)
  store i32 %13, ptr %0, align 4
  %_24 = load i32, ptr %0, align 4
  %14 = icmp eq i32 %_24, 1
  br i1 %14, label %bb15, label %bb16

bb5:                                              ; preds = %bb15, %bb13
  br label %bb7

bb15:                                             ; preds = %bb14
  %_28 = sub i32 %align, 1
  %_27 = and i32 %_21, %_28
  %_7 = icmp eq i32 %_27, 0
  br i1 %_7, label %bb2, label %bb5

bb16:                                             ; preds = %bb14
  store ptr @alloc_b498cf0a06cafe1ad822ab5dde97c8c0, ptr %_23, align 4
  %15 = getelementptr inbounds i8, ptr %_23, i32 4
  store i32 1, ptr %15, align 4
  %16 = load ptr, ptr @0, align 4
  %17 = load i32, ptr getelementptr inbounds (i8, ptr @0, i32 4), align 4
  %18 = getelementptr inbounds i8, ptr %_23, i32 16
  store ptr %16, ptr %18, align 4
  %19 = getelementptr inbounds i8, ptr %18, i32 4
  store i32 %17, ptr %19, align 4
  %20 = getelementptr inbounds i8, ptr %_23, i32 8
  store ptr inttoptr (i32 4 to ptr), ptr %20, align 4
  %21 = getelementptr inbounds i8, ptr %20, i32 4
  store i32 0, ptr %21, align 4
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17hde8b7aa66e2831e1E(ptr align 4 %_23, ptr align 4 @alloc_6ef538ec19a543805cb50e57fc8ec813) #10
  unreachable

bb2:                                              ; preds = %bb15
; call core::ub_checks::is_nonoverlapping::runtime
  %_9 = call zeroext i1 @_ZN4core9ub_checks17is_nonoverlapping7runtime17h5322f58fd5761339E(ptr %src, ptr %dst, i32 %size, i32 %count) #11
  br i1 %_9, label %bb3, label %bb4

bb4:                                              ; preds = %bb2
  br label %bb7

bb3:                                              ; preds = %bb2
  ret void
}

; core::intrinsics::unlikely
; Function Attrs: nounwind
define internal zeroext i1 @_ZN4core10intrinsics8unlikely17h5a782f9cf9843de3E(i1 zeroext %b) unnamed_addr #1 {
start:
  ret i1 %b
}

; core::fmt::Arguments::new_v1
; Function Attrs: inlinehint nounwind
define dso_local void @_ZN4core3fmt9Arguments6new_v117hd7581f2365863a04E(ptr sret([24 x i8]) align 4 %_0, ptr align 4 %pieces, ptr align 4 %args) unnamed_addr #0 {
start:
  store ptr %pieces, ptr %_0, align 4
  %0 = getelementptr inbounds i8, ptr %_0, i32 4
  store i32 1, ptr %0, align 4
  %1 = load ptr, ptr @0, align 4
  %2 = load i32, ptr getelementptr inbounds (i8, ptr @0, i32 4), align 4
  %3 = getelementptr inbounds i8, ptr %_0, i32 16
  store ptr %1, ptr %3, align 4
  %4 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 %2, ptr %4, align 4
  %5 = getelementptr inbounds i8, ptr %_0, i32 8
  store ptr %args, ptr %5, align 4
  %6 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 1, ptr %6, align 4
  ret void
}

; core::num::<impl usize>::unchecked_mul::precondition_check
; Function Attrs: inlinehint nounwind
define internal void @"_ZN4core3num23_$LT$impl$u20$usize$GT$13unchecked_mul18precondition_check17h8524f51222be3333E"(i32 %lhs, i32 %rhs) unnamed_addr #0 {
start:
  %0 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %lhs, i32 %rhs)
  %_6.0 = extractvalue { i32, i1 } %0, 0
  %_6.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_6.1, label %bb1, label %bb2

bb2:                                              ; preds = %start
  ret void

bb1:                                              ; preds = %start
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17h1c2f45581e84758fE(ptr align 1 @alloc_ffc44ed1670ebf78d81555edceff65f6, i32 69) #10
  unreachable
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint nounwind
define internal void @_ZN4core3ops8function6FnOnce9call_once17h2d023bb821864cd0E(ptr sret([12 x i8]) align 4 %_0, ptr align 1 %0, i32 %1) unnamed_addr #0 {
start:
  %_2 = alloca [8 x i8], align 4
  store ptr %0, ptr %_2, align 4
  %2 = getelementptr inbounds i8, ptr %_2, i32 4
  store i32 %1, ptr %2, align 4
  %3 = load ptr, ptr %_2, align 4
  %4 = getelementptr inbounds i8, ptr %_2, i32 4
  %5 = load i32, ptr %4, align 4
; call alloc::str::<impl alloc::borrow::ToOwned for str>::to_owned
  call void @"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h20731a87e6e92fb0E"(ptr sret([12 x i8]) align 4 %_0, ptr align 1 %3, i32 %5) #11
  ret void
}

; core::ptr::read_volatile::precondition_check
; Function Attrs: inlinehint nounwind
define internal void @_ZN4core3ptr13read_volatile18precondition_check17ha1d887c2a0621b3bE(ptr %addr, i32 %align) unnamed_addr #0 {
start:
  %0 = alloca [4 x i8], align 4
  %_8 = alloca [24 x i8], align 4
  %_6 = ptrtoint ptr %addr to i32
  %1 = icmp eq i32 %_6, 0
  br i1 %1, label %bb3, label %bb4

bb3:                                              ; preds = %start
  br label %bb2

bb4:                                              ; preds = %start
  %2 = call i32 @llvm.ctpop.i32(i32 %align)
  store i32 %2, ptr %0, align 4
  %_9 = load i32, ptr %0, align 4
  %3 = icmp eq i32 %_9, 1
  br i1 %3, label %bb5, label %bb6

bb2:                                              ; preds = %bb5, %bb3
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17h1c2f45581e84758fE(ptr align 1 @alloc_d4d2a2a8539eafc62756407d946babb3, i32 110) #10
  unreachable

bb5:                                              ; preds = %bb4
  %_13 = sub i32 %align, 1
  %_12 = and i32 %_6, %_13
  %_3 = icmp eq i32 %_12, 0
  br i1 %_3, label %bb1, label %bb2

bb6:                                              ; preds = %bb4
  store ptr @alloc_b498cf0a06cafe1ad822ab5dde97c8c0, ptr %_8, align 4
  %4 = getelementptr inbounds i8, ptr %_8, i32 4
  store i32 1, ptr %4, align 4
  %5 = load ptr, ptr @0, align 4
  %6 = load i32, ptr getelementptr inbounds (i8, ptr @0, i32 4), align 4
  %7 = getelementptr inbounds i8, ptr %_8, i32 16
  store ptr %5, ptr %7, align 4
  %8 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 %6, ptr %8, align 4
  %9 = getelementptr inbounds i8, ptr %_8, i32 8
  store ptr inttoptr (i32 4 to ptr), ptr %9, align 4
  %10 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 0, ptr %10, align 4
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17hde8b7aa66e2831e1E(ptr align 4 %_8, ptr align 4 @alloc_6ef538ec19a543805cb50e57fc8ec813) #10
  unreachable

bb1:                                              ; preds = %bb5
  ret void
}

; core::ptr::drop_in_place<alloc::string::String>
; Function Attrs: nounwind
define dso_local void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4e81cd4958054a87E"(ptr align 4 %_1) unnamed_addr #1 {
start:
; call core::ptr::drop_in_place<alloc::vec::Vec<u8>>
  call void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4b9525d40b53d16bE"(ptr align 4 %_1) #11
  ret void
}

; core::ptr::drop_in_place<alloc::vec::Vec<u8>>
; Function Attrs: nounwind
define dso_local void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4b9525d40b53d16bE"(ptr align 4 %_1) unnamed_addr #1 {
start:
; call <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8e7a339f91e18629E"(ptr align 4 %_1) #11
; call core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
  call void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hda57f7ea78e54c7cE"(ptr align 4 %_1) #11
  ret void
}

; core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
; Function Attrs: nounwind
define dso_local void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hda57f7ea78e54c7cE"(ptr align 4 %_1) unnamed_addr #1 {
start:
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3b6e97cd24d00c6fE"(ptr align 4 %_1) #11
  ret void
}

; core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
; Function Attrs: inlinehint nounwind
define internal void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h88accd104ffd0b54E"(ptr %ptr) unnamed_addr #0 {
start:
  %_4 = ptrtoint ptr %ptr to i32
  %0 = icmp eq i32 %_4, 0
  br i1 %0, label %bb1, label %bb2

bb1:                                              ; preds = %start
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17h1c2f45581e84758fE(ptr align 1 @alloc_20b3d155afd5c58c42e598b7e6d186ef, i32 93) #10
  unreachable

bb2:                                              ; preds = %start
  ret void
}

; core::alloc::layout::Layout::array::inner
; Function Attrs: inlinehint nounwind
define internal { i32, i32 } @_ZN4core5alloc6layout6Layout5array5inner17hf985aa3bb1d44a7fE(i32 %element_size, i32 %align, i32 %n) unnamed_addr #0 {
start:
  %_20 = alloca [4 x i8], align 4
  %_13 = alloca [4 x i8], align 4
  %_0 = alloca [8 x i8], align 4
  %0 = icmp eq i32 %element_size, 0
  br i1 %0, label %bb5, label %bb1

bb5:                                              ; preds = %bb4, %start
  br label %bb7

bb1:                                              ; preds = %start
  store i32 %align, ptr %_13, align 4
  %_14 = load i32, ptr %_13, align 4
  %_15 = icmp uge i32 %_14, 1
  %_16 = icmp ule i32 %_14, -2147483648
  %_17 = and i1 %_15, %_16
  %_11 = sub i32 %_14, 1
  %_6 = sub i32 2147483647, %_11
  %_7 = icmp eq i32 %element_size, 0
  br i1 %_7, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  %_5 = udiv i32 %_6, %element_size
  %_4 = icmp ugt i32 %n, %_5
  br i1 %_4, label %bb3, label %bb4

panic:                                            ; preds = %bb1
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17he931327ad9ba09d8E(ptr align 4 @alloc_2248d66bb0689b63fbe8756458a1613e) #10
  unreachable

bb4:                                              ; preds = %bb2
  br label %bb5

bb3:                                              ; preds = %bb2
  %1 = load i32, ptr @0, align 4
  %2 = load i32, ptr getelementptr inbounds (i8, ptr @0, i32 4), align 4
  store i32 %1, ptr %_0, align 4
  %3 = getelementptr inbounds i8, ptr %_0, i32 4
  store i32 %2, ptr %3, align 4
  br label %bb6

bb7:                                              ; preds = %bb5
; call core::num::<impl usize>::unchecked_mul::precondition_check
  call void @"_ZN4core3num23_$LT$impl$u20$usize$GT$13unchecked_mul18precondition_check17h8524f51222be3333E"(i32 %element_size, i32 %n) #11
  br label %bb8

bb8:                                              ; preds = %bb7
  %array_size = mul nuw i32 %element_size, %n
  store i32 %align, ptr %_20, align 4
  %_21 = load i32, ptr %_20, align 4
  %_22 = icmp uge i32 %_21, 1
  %_23 = icmp ule i32 %_21, -2147483648
  %_24 = and i1 %_22, %_23
  store i32 %_21, ptr %_0, align 4
  %4 = getelementptr inbounds i8, ptr %_0, i32 4
  store i32 %array_size, ptr %4, align 4
  br label %bb6

bb6:                                              ; preds = %bb3, %bb8
  %5 = load i32, ptr %_0, align 4
  %6 = getelementptr inbounds i8, ptr %_0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = insertvalue { i32, i32 } poison, i32 %5, 0
  %9 = insertvalue { i32, i32 } %8, i32 %7, 1
  ret { i32, i32 } %9
}

; core::ub_checks::is_nonoverlapping::runtime
; Function Attrs: inlinehint nounwind
define internal zeroext i1 @_ZN4core9ub_checks17is_nonoverlapping7runtime17h5322f58fd5761339E(ptr %src, ptr %dst, i32 %size, i32 %count) unnamed_addr #0 {
start:
  %0 = alloca [1 x i8], align 1
  %diff = alloca [4 x i8], align 4
  %_9 = alloca [8 x i8], align 4
  %src_usize = ptrtoint ptr %src to i32
  %dst_usize = ptrtoint ptr %dst to i32
  %1 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %size, i32 %count)
  %_15.0 = extractvalue { i32, i1 } %1, 0
  %_15.1 = extractvalue { i32, i1 } %1, 1
  %2 = call i1 @llvm.expect.i1(i1 %_15.1, i1 false)
  %3 = zext i1 %2 to i8
  store i8 %3, ptr %0, align 1
  %4 = load i8, ptr %0, align 1
  %_12 = trunc i8 %4 to i1
  br i1 %_12, label %bb2, label %bb3

bb3:                                              ; preds = %start
  %5 = getelementptr inbounds i8, ptr %_9, i32 4
  store i32 %_15.0, ptr %5, align 4
  store i32 1, ptr %_9, align 4
  %6 = getelementptr inbounds i8, ptr %_9, i32 4
  %size1 = load i32, ptr %6, align 4
  %_22 = icmp ult i32 %src_usize, %dst_usize
  br i1 %_22, label %bb4, label %bb5

bb2:                                              ; preds = %start
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17h1c2f45581e84758fE(ptr align 1 @alloc_763310d78c99c2c1ad3f8a9821e942f3, i32 61) #10
  unreachable

bb5:                                              ; preds = %bb3
  %7 = sub i32 %src_usize, %dst_usize
  store i32 %7, ptr %diff, align 4
  br label %bb6

bb4:                                              ; preds = %bb3
  %8 = sub i32 %dst_usize, %src_usize
  store i32 %8, ptr %diff, align 4
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  %_11 = load i32, ptr %diff, align 4
  %_0 = icmp uge i32 %_11, %size1
  ret i1 %_0
}

; <T as alloc::slice::hack::ConvertVec>::to_vec
; Function Attrs: inlinehint nounwind
define dso_local void @"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17hccb1aaf2a2981d0fE"(ptr sret([12 x i8]) align 4 %_0, ptr align 1 %s.0, i32 %s.1) unnamed_addr #0 {
start:
  %_10 = alloca [12 x i8], align 4
  %v = alloca [12 x i8], align 4
; call alloc::raw_vec::RawVec<T,A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15try_allocate_in17h0c695396964e7423E"(ptr sret([12 x i8]) align 4 %_10, i32 %s.1, i1 zeroext false) #11
  %_11 = load i32, ptr %_10, align 4
  %0 = icmp eq i32 %_11, 0
  br i1 %0, label %bb4, label %bb3

bb4:                                              ; preds = %start
  %1 = getelementptr inbounds i8, ptr %_10, i32 4
  %res.0 = load i32, ptr %1, align 4
  %2 = getelementptr inbounds i8, ptr %1, i32 4
  %res.1 = load ptr, ptr %2, align 4
  store i32 %res.0, ptr %v, align 4
  %3 = getelementptr inbounds i8, ptr %v, i32 4
  store ptr %res.1, ptr %3, align 4
  %4 = getelementptr inbounds i8, ptr %v, i32 8
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds i8, ptr %v, i32 4
  %self = load ptr, ptr %5, align 4
  br label %bb5

bb3:                                              ; preds = %start
  %6 = getelementptr inbounds i8, ptr %_10, i32 4
  %err.0 = load i32, ptr %6, align 4
  %7 = getelementptr inbounds i8, ptr %6, i32 4
  %err.1 = load i32, ptr %7, align 4
; call alloc::raw_vec::handle_error
  call void @_ZN5alloc7raw_vec12handle_error17h76131d670f53a5eeE(i32 %err.0, i32 %err.1) #10
  unreachable

bb5:                                              ; preds = %bb4
; call core::intrinsics::copy_nonoverlapping::precondition_check
  call void @_ZN4core10intrinsics19copy_nonoverlapping18precondition_check17h09c5f4c3e85904d5E(ptr %s.0, ptr %self, i32 1, i32 1, i32 %s.1) #11
  br label %bb7

bb7:                                              ; preds = %bb5
  %8 = mul i32 %s.1, 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %self, ptr align 1 %s.0, i32 %8, i1 false)
  %9 = getelementptr inbounds i8, ptr %v, i32 8
  store i32 %s.1, ptr %9, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %_0, ptr align 4 %v, i32 12, i1 false)
  ret void

bb2:                                              ; No predecessors!
  unreachable
}

; alloc::fmt::format
; Function Attrs: inlinehint nounwind
define internal void @_ZN5alloc3fmt6format17h8831b7f5f45a3d09E(ptr sret([12 x i8]) align 4 %_0, ptr align 4 %args) unnamed_addr #0 {
start:
  %0 = alloca [24 x i8], align 4
  %default = alloca [4 x i8], align 4
  %_4 = alloca [4 x i8], align 4
  %self = alloca [8 x i8], align 4
  %_5.0 = load ptr, ptr %args, align 4
  %1 = getelementptr inbounds i8, ptr %args, i32 4
  %_5.1 = load i32, ptr %1, align 4
  %2 = getelementptr inbounds i8, ptr %args, i32 8
  %_6.0 = load ptr, ptr %2, align 4
  %3 = getelementptr inbounds i8, ptr %2, i32 4
  %_6.1 = load i32, ptr %3, align 4
  %4 = icmp eq i32 %_5.1, 0
  br i1 %4, label %bb2, label %bb3

bb2:                                              ; preds = %start
  %5 = icmp eq i32 %_6.1, 0
  br i1 %5, label %bb5, label %bb1

bb3:                                              ; preds = %start
  %6 = icmp eq i32 %_5.1, 1
  br i1 %6, label %bb4, label %bb1

bb5:                                              ; preds = %bb2
  store ptr inttoptr (i32 1 to ptr), ptr %self, align 4
  %7 = getelementptr inbounds i8, ptr %self, i32 4
  store i32 0, ptr %7, align 4
  store ptr %args, ptr %_4, align 4
  %8 = load ptr, ptr %_4, align 4
  store ptr %8, ptr %default, align 4
  br label %bb8

bb1:                                              ; preds = %bb4, %bb3, %bb2
  %9 = load ptr, ptr @0, align 4
  %10 = load i32, ptr getelementptr inbounds (i8, ptr @0, i32 4), align 4
  store ptr %9, ptr %self, align 4
  %11 = getelementptr inbounds i8, ptr %self, i32 4
  store i32 %10, ptr %11, align 4
  store ptr %args, ptr %_4, align 4
  %12 = load ptr, ptr %_4, align 4
  store ptr %12, ptr %default, align 4
  %_14 = load ptr, ptr %_4, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %0, ptr align 4 %args, i32 24, i1 false)
; call alloc::fmt::format::format_inner
  call void @_ZN5alloc3fmt6format12format_inner17h3641588a932c5637E(ptr sret([12 x i8]) align 4 %_0, ptr align 4 %0) #11
  br label %bb7

bb8:                                              ; preds = %bb6, %bb5
  %t.0 = load ptr, ptr %self, align 4
  %13 = getelementptr inbounds i8, ptr %self, i32 4
  %t.1 = load i32, ptr %13, align 4
; call core::ops::function::FnOnce::call_once
  call void @_ZN4core3ops8function6FnOnce9call_once17h2d023bb821864cd0E(ptr sret([12 x i8]) align 4 %_0, ptr align 1 %t.0, i32 %t.1) #11
  br label %bb7

bb4:                                              ; preds = %bb3
  %14 = icmp eq i32 %_6.1, 0
  br i1 %14, label %bb6, label %bb1

bb6:                                              ; preds = %bb4
  %s = getelementptr inbounds [0 x { ptr, i32 }], ptr %_5.0, i32 0, i32 0
  %15 = getelementptr inbounds [0 x { ptr, i32 }], ptr %_5.0, i32 0, i32 0
  %_11.0 = load ptr, ptr %15, align 4
  %16 = getelementptr inbounds i8, ptr %15, i32 4
  %_11.1 = load i32, ptr %16, align 4
  store ptr %_11.0, ptr %self, align 4
  %17 = getelementptr inbounds i8, ptr %self, i32 4
  store i32 %_11.1, ptr %17, align 4
  store ptr %args, ptr %_4, align 4
  %18 = load ptr, ptr %_4, align 4
  store ptr %18, ptr %default, align 4
  br label %bb8

bb7:                                              ; preds = %bb1, %bb8
  ret void
}

; alloc::str::<impl alloc::borrow::ToOwned for str>::to_owned
; Function Attrs: inlinehint nounwind
define internal void @"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h20731a87e6e92fb0E"(ptr sret([12 x i8]) align 4 %_0, ptr align 1 %self.0, i32 %self.1) unnamed_addr #0 {
start:
  %bytes = alloca [12 x i8], align 4
; call <T as alloc::slice::hack::ConvertVec>::to_vec
  call void @"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17hccb1aaf2a2981d0fE"(ptr sret([12 x i8]) align 4 %bytes, ptr align 1 %self.0, i32 %self.1) #11
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %_0, ptr align 4 %bytes, i32 12, i1 false)
  ret void
}

; alloc::alloc::alloc
; Function Attrs: inlinehint nounwind
define internal ptr @_ZN5alloc5alloc5alloc17h616d23cd94a7478cE(i32 %0, i32 %1) unnamed_addr #0 {
start:
  %2 = alloca [1 x i8], align 1
  %_11 = alloca [4 x i8], align 4
  %layout = alloca [8 x i8], align 4
  store i32 %0, ptr %layout, align 4
  %3 = getelementptr inbounds i8, ptr %layout, i32 4
  store i32 %1, ptr %3, align 4
  br label %bb3

bb3:                                              ; preds = %start
; call core::ptr::read_volatile::precondition_check
  call void @_ZN4core3ptr13read_volatile18precondition_check17ha1d887c2a0621b3bE(ptr @__rust_no_alloc_shim_is_unstable, i32 1) #11
  br label %bb5

bb5:                                              ; preds = %bb3
  %4 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1
  store i8 %4, ptr %2, align 1
  %_2 = load i8, ptr %2, align 1
  %5 = getelementptr inbounds i8, ptr %layout, i32 4
  %_3 = load i32, ptr %5, align 4
  %self = load i32, ptr %layout, align 4
  store i32 %self, ptr %_11, align 4
  %_12 = load i32, ptr %_11, align 4
  %_13 = icmp uge i32 %_12, 1
  %_14 = icmp ule i32 %_12, -2147483648
  %_15 = and i1 %_13, %_14
  %_0 = call ptr @__rust_alloc(i32 %_3, i32 %_12) #11
  ret ptr %_0
}

; alloc::alloc::Global::alloc_impl
; Function Attrs: inlinehint nounwind
define internal { ptr, i32 } @_ZN5alloc5alloc6Global10alloc_impl17h99d2510c04e2908eE(ptr align 1 %self, i32 %0, i32 %1, i1 zeroext %zeroed) unnamed_addr #0 {
start:
  %_38 = alloca [4 x i8], align 4
  %data4 = alloca [4 x i8], align 4
  %ptr = alloca [8 x i8], align 4
  %_28 = alloca [4 x i8], align 4
  %_20 = alloca [4 x i8], align 4
  %self3 = alloca [4 x i8], align 4
  %self2 = alloca [4 x i8], align 4
  %_11 = alloca [4 x i8], align 4
  %layout1 = alloca [8 x i8], align 4
  %raw_ptr = alloca [4 x i8], align 4
  %data = alloca [4 x i8], align 4
  %_0 = alloca [8 x i8], align 4
  %layout = alloca [8 x i8], align 4
  store i32 %0, ptr %layout, align 4
  %2 = getelementptr inbounds i8, ptr %layout, i32 4
  store i32 %1, ptr %2, align 4
  %3 = getelementptr inbounds i8, ptr %layout, i32 4
  %size = load i32, ptr %3, align 4
  %4 = icmp eq i32 %size, 0
  br i1 %4, label %bb2, label %bb1

bb2:                                              ; preds = %start
  %self5 = load i32, ptr %layout, align 4
  store i32 %self5, ptr %_20, align 4
  %_21 = load i32, ptr %_20, align 4
  %_22 = icmp uge i32 %_21, 1
  %_23 = icmp ule i32 %_21, -2147483648
  %_24 = and i1 %_22, %_23
  %ptr6 = getelementptr i8, ptr null, i32 %_21
  br label %bb7

bb1:                                              ; preds = %start
  br i1 %zeroed, label %bb3, label %bb4

bb7:                                              ; preds = %bb2
; call core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h88accd104ffd0b54E"(ptr %ptr6) #11
  store ptr %ptr6, ptr %_28, align 4
  %5 = load ptr, ptr %_28, align 4
  store ptr %5, ptr %data, align 4
  store ptr %ptr6, ptr %data4, align 4
  store ptr %ptr6, ptr %ptr, align 4
  %6 = getelementptr inbounds i8, ptr %ptr, i32 4
  store i32 0, ptr %6, align 4
  br label %bb10

bb9:                                              ; No predecessors!
  unreachable

bb10:                                             ; preds = %bb7
; call core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h88accd104ffd0b54E"(ptr %ptr6) #11
  br label %bb12

bb12:                                             ; preds = %bb10
  %_33.0 = load ptr, ptr %ptr, align 4
  %7 = getelementptr inbounds i8, ptr %ptr, i32 4
  %_33.1 = load i32, ptr %7, align 4
  store ptr %_33.0, ptr %_0, align 4
  %8 = getelementptr inbounds i8, ptr %_0, i32 4
  store i32 %_33.1, ptr %8, align 4
  br label %bb6

bb6:                                              ; preds = %bb21, %bb14, %bb12
  %9 = load ptr, ptr %_0, align 4
  %10 = getelementptr inbounds i8, ptr %_0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = insertvalue { ptr, i32 } poison, ptr %9, 0
  %13 = insertvalue { ptr, i32 } %12, i32 %11, 1
  ret { ptr, i32 } %13

bb4:                                              ; preds = %bb1
  %14 = load i32, ptr %layout, align 4
  %15 = getelementptr inbounds i8, ptr %layout, i32 4
  %16 = load i32, ptr %15, align 4
; call alloc::alloc::alloc
  %17 = call ptr @_ZN5alloc5alloc5alloc17h616d23cd94a7478cE(i32 %14, i32 %16) #11
  store ptr %17, ptr %raw_ptr, align 4
  br label %bb5

bb3:                                              ; preds = %bb1
  %18 = load i32, ptr %layout, align 4
  %19 = getelementptr inbounds i8, ptr %layout, i32 4
  %20 = load i32, ptr %19, align 4
  store i32 %18, ptr %layout1, align 4
  %21 = getelementptr inbounds i8, ptr %layout1, i32 4
  store i32 %20, ptr %21, align 4
  %self7 = load i32, ptr %layout, align 4
  store i32 %self7, ptr %_38, align 4
  %_39 = load i32, ptr %_38, align 4
  %_40 = icmp uge i32 %_39, 1
  %_41 = icmp ule i32 %_39, -2147483648
  %_42 = and i1 %_40, %_41
  %22 = call ptr @__rust_alloc_zeroed(i32 %size, i32 %_39) #11
  store ptr %22, ptr %raw_ptr, align 4
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %ptr8 = load ptr, ptr %raw_ptr, align 4
  %_44 = ptrtoint ptr %ptr8 to i32
  %23 = icmp eq i32 %_44, 0
  br i1 %23, label %bb14, label %bb15

bb14:                                             ; preds = %bb5
  store ptr null, ptr %self3, align 4
  store ptr null, ptr %self2, align 4
  %24 = load ptr, ptr @0, align 4
  %25 = load i32, ptr getelementptr inbounds (i8, ptr @0, i32 4), align 4
  store ptr %24, ptr %_0, align 4
  %26 = getelementptr inbounds i8, ptr %_0, i32 4
  store i32 %25, ptr %26, align 4
  br label %bb6

bb15:                                             ; preds = %bb5
  br label %bb16

bb16:                                             ; preds = %bb15
; call core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h88accd104ffd0b54E"(ptr %ptr8) #11
  br label %bb18

bb18:                                             ; preds = %bb16
  store ptr %ptr8, ptr %self3, align 4
  %v = load ptr, ptr %self3, align 4
  store ptr %v, ptr %self2, align 4
  %v9 = load ptr, ptr %self2, align 4
  store ptr %v9, ptr %_11, align 4
  %ptr10 = load ptr, ptr %_11, align 4
  br label %bb19

bb19:                                             ; preds = %bb18
; call core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h88accd104ffd0b54E"(ptr %ptr10) #11
  br label %bb21

bb21:                                             ; preds = %bb19
  store ptr %ptr10, ptr %_0, align 4
  %27 = getelementptr inbounds i8, ptr %_0, i32 4
  store i32 %size, ptr %27, align 4
  br label %bb6
}

; alloc::raw_vec::RawVec<T,A>::current_memory
; Function Attrs: nounwind
define dso_local void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h4f12a4bb713deb34E"(ptr sret([12 x i8]) align 4 %_0, ptr align 4 %self) unnamed_addr #1 {
start:
  %_8 = alloca [12 x i8], align 4
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = load i32, ptr %self, align 4
  %0 = icmp eq i32 %_2, 0
  br i1 %0, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
  br label %bb3

bb4:                                              ; preds = %bb1
  %rhs = load i32, ptr %self, align 4
  br label %bb6

bb3:                                              ; preds = %bb2
  %1 = getelementptr inbounds i8, ptr %_0, i32 4
  store i32 0, ptr %1, align 4
  br label %bb5

bb6:                                              ; preds = %bb4
; call core::num::<impl usize>::unchecked_mul::precondition_check
  call void @"_ZN4core3num23_$LT$impl$u20$usize$GT$13unchecked_mul18precondition_check17h8524f51222be3333E"(i32 1, i32 %rhs) #11
  br label %bb7

bb7:                                              ; preds = %bb6
  %size = mul nuw i32 1, %rhs
  %2 = getelementptr inbounds i8, ptr %self, i32 4
  %self1 = load ptr, ptr %2, align 4
  store ptr %self1, ptr %_8, align 4
  %3 = getelementptr inbounds i8, ptr %_8, i32 4
  store i32 1, ptr %3, align 4
  %4 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 %size, ptr %4, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %_0, ptr align 4 %_8, i32 12, i1 false)
  br label %bb5

bb5:                                              ; preds = %bb3, %bb7
  ret void
}

; alloc::raw_vec::RawVec<T,A>::try_allocate_in
; Function Attrs: nounwind
define dso_local void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15try_allocate_in17h0c695396964e7423E"(ptr sret([12 x i8]) align 4 %_0, i32 %capacity, i1 zeroext %0) unnamed_addr #1 {
start:
  %self = alloca [8 x i8], align 4
  %result = alloca [8 x i8], align 4
  %_10 = alloca [8 x i8], align 4
  %_7 = alloca [8 x i8], align 4
  %layout = alloca [8 x i8], align 4
  %alloc = alloca [0 x i8], align 1
  %init = alloca [1 x i8], align 1
  %1 = zext i1 %0 to i8
  store i8 %1, ptr %init, align 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = icmp eq i32 %capacity, 0
  br i1 %2, label %bb2, label %bb3

bb2:                                              ; preds = %bb1
  br label %bb17

bb3:                                              ; preds = %bb1
; call core::alloc::layout::Layout::array::inner
  %3 = call { i32, i32 } @_ZN4core5alloc6layout6Layout5array5inner17hf985aa3bb1d44a7fE(i32 1, i32 1, i32 %capacity) #11
  %4 = extractvalue { i32, i32 } %3, 0
  %5 = extractvalue { i32, i32 } %3, 1
  store i32 %4, ptr %_7, align 4
  %6 = getelementptr inbounds i8, ptr %_7, i32 4
  store i32 %5, ptr %6, align 4
  %7 = load i32, ptr %_7, align 4
  %8 = icmp eq i32 %7, 0
  %_8 = select i1 %8, i32 1, i32 0
  %9 = icmp eq i32 %_8, 0
  br i1 %9, label %bb6, label %bb5

bb6:                                              ; preds = %bb3
  %layout.0 = load i32, ptr %_7, align 4
  %10 = getelementptr inbounds i8, ptr %_7, i32 4
  %layout.1 = load i32, ptr %10, align 4
  store i32 %layout.0, ptr %layout, align 4
  %11 = getelementptr inbounds i8, ptr %layout, i32 4
  store i32 %layout.1, ptr %11, align 4
  %_38 = icmp ugt i32 %layout.1, 2147483647
  br i1 %_38, label %bb21, label %bb22

bb5:                                              ; preds = %bb3
  %12 = load i32, ptr @0, align 4
  %13 = load i32, ptr getelementptr inbounds (i8, ptr @0, i32 4), align 4
  %14 = getelementptr inbounds i8, ptr %_0, i32 4
  store i32 %12, ptr %14, align 4
  %15 = getelementptr inbounds i8, ptr %14, i32 4
  store i32 %13, ptr %15, align 4
  store i32 1, ptr %_0, align 4
  br label %bb15

bb22:                                             ; preds = %bb6
  %16 = load i8, ptr %init, align 1
  %17 = trunc i8 %16 to i1
  %_15 = zext i1 %17 to i32
  %18 = icmp eq i32 %_15, 0
  br i1 %18, label %bb8, label %bb7

bb21:                                             ; preds = %bb6
  %19 = load i32, ptr @0, align 4
  %20 = load i32, ptr getelementptr inbounds (i8, ptr @0, i32 4), align 4
  store i32 %19, ptr %_10, align 4
  %21 = getelementptr inbounds i8, ptr %_10, i32 4
  store i32 %20, ptr %21, align 4
  %err.0 = load i32, ptr %_10, align 4
  %22 = getelementptr inbounds i8, ptr %_10, i32 4
  %err.1 = load i32, ptr %22, align 4
  %23 = getelementptr inbounds i8, ptr %_0, i32 4
  store i32 %err.0, ptr %23, align 4
  %24 = getelementptr inbounds i8, ptr %23, i32 4
  store i32 %err.1, ptr %24, align 4
  store i32 1, ptr %_0, align 4
  br label %bb15

bb8:                                              ; preds = %bb22
; call <alloc::alloc::Global as core::alloc::Allocator>::allocate
  %25 = call { ptr, i32 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hdcba69f98d2db935E"(ptr align 1 %alloc, i32 %layout.0, i32 %layout.1) #11
  %26 = extractvalue { ptr, i32 } %25, 0
  %27 = extractvalue { ptr, i32 } %25, 1
  store ptr %26, ptr %result, align 4
  %28 = getelementptr inbounds i8, ptr %result, i32 4
  store i32 %27, ptr %28, align 4
  br label %bb11

bb7:                                              ; preds = %bb22
; call <alloc::alloc::Global as core::alloc::Allocator>::allocate_zeroed
  %29 = call { ptr, i32 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17haea36c9b294272dbE"(ptr align 1 %alloc, i32 %layout.0, i32 %layout.1) #11
  %30 = extractvalue { ptr, i32 } %29, 0
  %31 = extractvalue { ptr, i32 } %29, 1
  store ptr %30, ptr %result, align 4
  %32 = getelementptr inbounds i8, ptr %result, i32 4
  store i32 %31, ptr %32, align 4
  br label %bb11

bb11:                                             ; preds = %bb7, %bb8
  %33 = load ptr, ptr %result, align 4
  %34 = ptrtoint ptr %33 to i32
  %35 = icmp eq i32 %34, 0
  %_18 = select i1 %35, i32 1, i32 0
  %36 = icmp eq i32 %_18, 0
  br i1 %36, label %bb13, label %bb12

bb13:                                             ; preds = %bb11
  %ptr.0 = load ptr, ptr %result, align 4
  %37 = getelementptr inbounds i8, ptr %result, i32 4
  %ptr.1 = load i32, ptr %37, align 4
  %38 = getelementptr inbounds i8, ptr %_0, i32 4
  store i32 %capacity, ptr %38, align 4
  %39 = getelementptr inbounds i8, ptr %38, i32 4
  store ptr %ptr.0, ptr %39, align 4
  store i32 0, ptr %_0, align 4
  br label %bb14

bb12:                                             ; preds = %bb11
  store i32 %layout.0, ptr %self, align 4
  %40 = getelementptr inbounds i8, ptr %self, i32 4
  store i32 %layout.1, ptr %40, align 4
  %_20.0 = load i32, ptr %self, align 4
  %41 = getelementptr inbounds i8, ptr %self, i32 4
  %_20.1 = load i32, ptr %41, align 4
  %42 = getelementptr inbounds i8, ptr %_0, i32 4
  store i32 %_20.0, ptr %42, align 4
  %43 = getelementptr inbounds i8, ptr %42, i32 4
  store i32 %_20.1, ptr %43, align 4
  store i32 1, ptr %_0, align 4
  br label %bb15

bb14:                                             ; preds = %bb19, %bb13
  br label %bb16

bb15:                                             ; preds = %bb5, %bb21, %bb12
  br label %bb16

bb16:                                             ; preds = %bb14, %bb15
  ret void

bb4:                                              ; No predecessors!
  unreachable

bb17:                                             ; preds = %bb2
; call core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h88accd104ffd0b54E"(ptr getelementptr (i8, ptr null, i32 1)) #11
  br label %bb19

bb19:                                             ; preds = %bb17
  %44 = getelementptr inbounds i8, ptr %_0, i32 4
  store i32 0, ptr %44, align 4
  %45 = getelementptr inbounds i8, ptr %44, i32 4
  store ptr getelementptr (i8, ptr null, i32 1), ptr %45, align 4
  store i32 0, ptr %_0, align 4
  br label %bb14
}

; <alloc::alloc::Global as core::alloc::Allocator>::deallocate
; Function Attrs: inlinehint nounwind
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he048e39f7a0b524dE"(ptr align 1 %self, ptr %ptr, i32 %0, i32 %1) unnamed_addr #0 {
start:
  %_13 = alloca [4 x i8], align 4
  %layout1 = alloca [8 x i8], align 4
  %layout = alloca [8 x i8], align 4
  store i32 %0, ptr %layout, align 4
  %2 = getelementptr inbounds i8, ptr %layout, i32 4
  store i32 %1, ptr %2, align 4
  %3 = getelementptr inbounds i8, ptr %layout, i32 4
  %_4 = load i32, ptr %3, align 4
  %4 = icmp eq i32 %_4, 0
  br i1 %4, label %bb2, label %bb1

bb2:                                              ; preds = %bb1, %start
  ret void

bb1:                                              ; preds = %start
  %5 = load i32, ptr %layout, align 4
  %6 = getelementptr inbounds i8, ptr %layout, i32 4
  %7 = load i32, ptr %6, align 4
  store i32 %5, ptr %layout1, align 4
  %8 = getelementptr inbounds i8, ptr %layout1, i32 4
  store i32 %7, ptr %8, align 4
  %self2 = load i32, ptr %layout, align 4
  store i32 %self2, ptr %_13, align 4
  %_14 = load i32, ptr %_13, align 4
  %_15 = icmp uge i32 %_14, 1
  %_16 = icmp ule i32 %_14, -2147483648
  %_17 = and i1 %_15, %_16
  call void @__rust_dealloc(ptr %ptr, i32 %_4, i32 %_14) #11
  br label %bb2
}

; <alloc::alloc::Global as core::alloc::Allocator>::allocate_zeroed
; Function Attrs: inlinehint nounwind
define internal { ptr, i32 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17haea36c9b294272dbE"(ptr align 1 %self, i32 %layout.0, i32 %layout.1) unnamed_addr #0 {
start:
; call alloc::alloc::Global::alloc_impl
  %0 = call { ptr, i32 } @_ZN5alloc5alloc6Global10alloc_impl17h99d2510c04e2908eE(ptr align 1 %self, i32 %layout.0, i32 %layout.1, i1 zeroext true) #11
  %_0.0 = extractvalue { ptr, i32 } %0, 0
  %_0.1 = extractvalue { ptr, i32 } %0, 1
  %1 = insertvalue { ptr, i32 } poison, ptr %_0.0, 0
  %2 = insertvalue { ptr, i32 } %1, i32 %_0.1, 1
  ret { ptr, i32 } %2
}

; <alloc::alloc::Global as core::alloc::Allocator>::allocate
; Function Attrs: inlinehint nounwind
define internal { ptr, i32 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hdcba69f98d2db935E"(ptr align 1 %self, i32 %layout.0, i32 %layout.1) unnamed_addr #0 {
start:
; call alloc::alloc::Global::alloc_impl
  %0 = call { ptr, i32 } @_ZN5alloc5alloc6Global10alloc_impl17h99d2510c04e2908eE(ptr align 1 %self, i32 %layout.0, i32 %layout.1, i1 zeroext false) #11
  %_0.0 = extractvalue { ptr, i32 } %0, 0
  %_0.1 = extractvalue { ptr, i32 } %0, 1
  %1 = insertvalue { ptr, i32 } poison, ptr %_0.0, 0
  %2 = insertvalue { ptr, i32 } %1, i32 %_0.1, 1
  ret { ptr, i32 } %2
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nounwind
define dso_local void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8e7a339f91e18629E"(ptr align 4 %self) unnamed_addr #1 {
start:
  %_9 = alloca [4 x i8], align 4
  %0 = getelementptr inbounds i8, ptr %self, i32 4
  %self1 = load ptr, ptr %0, align 4
  %1 = getelementptr inbounds i8, ptr %self, i32 8
  %len = load i32, ptr %1, align 4
  store i32 0, ptr %_9, align 4
  br label %bb3

bb3:                                              ; preds = %bb2, %start
  %2 = load i32, ptr %_9, align 4
  %_11 = icmp eq i32 %2, %len
  br i1 %_11, label %bb1, label %bb2

bb2:                                              ; preds = %bb3
  %3 = load i32, ptr %_9, align 4
  %_10 = getelementptr inbounds [0 x i8], ptr %self1, i32 0, i32 %3
  %4 = load i32, ptr %_9, align 4
  %5 = add i32 %4, 1
  store i32 %5, ptr %_9, align 4
  br label %bb3

bb1:                                              ; preds = %bb3
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nounwind
define dso_local void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3b6e97cd24d00c6fE"(ptr align 4 %self) unnamed_addr #1 {
start:
  %_2 = alloca [12 x i8], align 4
; call alloc::raw_vec::RawVec<T,A>::current_memory
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h4f12a4bb713deb34E"(ptr sret([12 x i8]) align 4 %_2, ptr align 4 %self) #11
  %0 = getelementptr inbounds i8, ptr %_2, i32 4
  %1 = load i32, ptr %0, align 4
  %2 = icmp eq i32 %1, 0
  %_4 = select i1 %2, i32 0, i32 1
  %3 = icmp eq i32 %_4, 1
  br i1 %3, label %bb2, label %bb4

bb2:                                              ; preds = %start
  %ptr = load ptr, ptr %_2, align 4
  %4 = getelementptr inbounds i8, ptr %_2, i32 4
  %layout.0 = load i32, ptr %4, align 4
  %5 = getelementptr inbounds i8, ptr %4, i32 4
  %layout.1 = load i32, ptr %5, align 4
  %_7 = getelementptr inbounds i8, ptr %self, i32 8
; call <alloc::alloc::Global as core::alloc::Allocator>::deallocate
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he048e39f7a0b524dE"(ptr align 1 %_7, ptr %ptr, i32 %layout.0, i32 %layout.1) #11
  br label %bb4

bb4:                                              ; preds = %bb2, %start
  ret void

bb5:                                              ; No predecessors!
  unreachable
}

; autocfg_99410745835dbc4b_1::probe
; Function Attrs: nounwind
define dso_local void @_ZN26autocfg_99410745835dbc4b_15probe17h6eaa818fdc9dd152E() unnamed_addr #1 {
start:
  %_3.i = alloca [8 x i8], align 4
  %_7 = alloca [8 x i8], align 4
  %_6 = alloca [8 x i8], align 4
  %_3 = alloca [24 x i8], align 4
  %res = alloca [12 x i8], align 4
  %_1 = alloca [12 x i8], align 4
  store ptr @alloc_83ea17bf0c4f4a5a5a13d3ae7955acd0, ptr %_3.i, align 4
  %0 = getelementptr inbounds i8, ptr %_3.i, i32 4
  store ptr @"_ZN4core3fmt3num3imp55_$LT$impl$u20$core..fmt..LowerExp$u20$for$u20$isize$GT$3fmt17he950d46184ec15baE", ptr %0, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %_7, ptr align 4 %_3.i, i32 8, i1 false)
  %1 = getelementptr inbounds [1 x %"core::fmt::rt::Argument<'_>"], ptr %_6, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %1, ptr align 4 %_7, i32 8, i1 false)
; call core::fmt::Arguments::new_v1
  call void @_ZN4core3fmt9Arguments6new_v117hd7581f2365863a04E(ptr sret([24 x i8]) align 4 %_3, ptr align 4 @alloc_68ac15728a1e6ba4743b718936db7fdf, ptr align 4 %_6) #11
; call alloc::fmt::format
  call void @_ZN5alloc3fmt6format17h8831b7f5f45a3d09E(ptr sret([12 x i8]) align 4 %res, ptr align 4 %_3) #11
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %_1, ptr align 4 %res, i32 12, i1 false)
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4e81cd4958054a87E"(ptr align 4 %_1) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #2

; core::panicking::panic_nounwind
; Function Attrs: cold noinline noreturn nounwind
declare dso_local void @_ZN4core9panicking14panic_nounwind17h1c2f45581e84758fE(ptr align 1, i32) unnamed_addr #3

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nounwind
declare dso_local void @_ZN4core9panicking9panic_fmt17hde8b7aa66e2831e1E(ptr align 4, ptr align 4) unnamed_addr #3

; core::fmt::num::imp::<impl core::fmt::LowerExp for isize>::fmt
; Function Attrs: nounwind
declare dso_local zeroext i1 @"_ZN4core3fmt3num3imp55_$LT$impl$u20$core..fmt..LowerExp$u20$for$u20$isize$GT$3fmt17he950d46184ec15baE"(ptr align 4, ptr align 4) unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; core::panicking::panic_const::panic_const_div_by_zero
; Function Attrs: cold noinline noreturn nounwind
declare dso_local void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17he931327ad9ba09d8E(ptr align 4) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #5

; alloc::raw_vec::handle_error
; Function Attrs: cold noreturn nounwind
declare dso_local void @_ZN5alloc7raw_vec12handle_error17h76131d670f53a5eeE(i32, i32) unnamed_addr #6

; alloc::fmt::format::format_inner
; Function Attrs: nounwind
declare dso_local void @_ZN5alloc3fmt6format12format_inner17h3641588a932c5637E(ptr sret([12 x i8]) align 4, ptr align 4) unnamed_addr #1

; Function Attrs: nounwind allockind("alloc,uninitialized,aligned") allocsize(0)
declare dso_local noalias ptr @__rust_alloc(i32, i32 allocalign) unnamed_addr #7

; Function Attrs: nounwind allockind("alloc,zeroed,aligned") allocsize(0)
declare dso_local noalias ptr @__rust_alloc_zeroed(i32, i32 allocalign) unnamed_addr #8

; Function Attrs: nounwind allockind("free")
declare dso_local void @__rust_dealloc(ptr allocptr, i32, i32) unnamed_addr #9

attributes #0 = { inlinehint nounwind "target-cpu"="generic" }
attributes #1 = { nounwind "target-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { cold noinline noreturn nounwind "target-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { cold noreturn nounwind "target-cpu"="generic" }
attributes #7 = { nounwind allockind("alloc,uninitialized,aligned") allocsize(0) "alloc-family"="__rust_alloc" "target-cpu"="generic" }
attributes #8 = { nounwind allockind("alloc,zeroed,aligned") allocsize(0) "alloc-family"="__rust_alloc" "target-cpu"="generic" }
attributes #9 = { nounwind allockind("free") "alloc-family"="__rust_alloc" "target-cpu"="generic" }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"rustc version 1.81.0 (eeb90cda1 2024-09-04)"}
