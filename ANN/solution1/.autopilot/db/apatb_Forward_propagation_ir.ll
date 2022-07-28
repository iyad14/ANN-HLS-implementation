; ModuleID = 'C:/Users/iyadb/Desktop/ANN_HLS/ANN/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<8, 2, AP_RND, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<8, 2, true, AP_RND, AP_WRAP, 0>" }
%"struct.ap_fixed_base<8, 2, true, AP_RND, AP_WRAP, 0>" = type { %"class.std::ios_base::Init" }
%"class.std::ios_base::Init" = type { i8 }
%"struct.ap_fixed<10, 5, AP_RND, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<10, 5, true, AP_RND, AP_WRAP, 0>" }
%"struct.ap_fixed_base<10, 5, true, AP_RND, AP_WRAP, 0>" = type { %"struct.ssdm_int<10, true>" }
%"struct.ssdm_int<10, true>" = type { i10 }

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([9 x %"struct.ap_fixed<8, 2, AP_RND, AP_WRAP, 0>"]* noalias readonly, [9 x i8]* noalias align 512) unnamed_addr #0 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a9struct.ap_fixed<8, 2, AP_RND, AP_WRAP, 0>"([9 x i8]* align 512 %1, [9 x %"struct.ap_fixed<8, 2, AP_RND, AP_WRAP, 0>"]* %0)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a9struct.ap_fixed<8, 2, AP_RND, AP_WRAP, 0>"([9 x i8]* noalias align 512, [9 x %"struct.ap_fixed<8, 2, AP_RND, AP_WRAP, 0>"]* noalias readonly) unnamed_addr #1 {
entry:
  %2 = icmp eq [9 x i8]* %0, null
  %3 = icmp eq [9 x %"struct.ap_fixed<8, 2, AP_RND, AP_WRAP, 0>"]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [9 x %"struct.ap_fixed<8, 2, AP_RND, AP_WRAP, 0>"], [9 x %"struct.ap_fixed<8, 2, AP_RND, AP_WRAP, 0>"]* %1, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %5 = getelementptr [9 x i8], [9 x i8]* %0, i64 0, i64 %for.loop.idx7
  %6 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %6, i8* %5, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 9
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([9 x %"struct.ap_fixed<8, 2, AP_RND, AP_WRAP, 0>"]* noalias, [9 x i8]* noalias readonly align 512) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a9struct.ap_fixed<8, 2, AP_RND, AP_WRAP, 0>.38"([9 x %"struct.ap_fixed<8, 2, AP_RND, AP_WRAP, 0>"]* %0, [9 x i8]* align 512 %1)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a9struct.ap_fixed<8, 2, AP_RND, AP_WRAP, 0>.38"([9 x %"struct.ap_fixed<8, 2, AP_RND, AP_WRAP, 0>"]* noalias, [9 x i8]* noalias readonly align 512) unnamed_addr #1 {
entry:
  %2 = icmp eq [9 x %"struct.ap_fixed<8, 2, AP_RND, AP_WRAP, 0>"]* %0, null
  %3 = icmp eq [9 x i8]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %5 = getelementptr [9 x i8], [9 x i8]* %1, i64 0, i64 %for.loop.idx7
  %dst.addr.0.0.06 = getelementptr [9 x %"struct.ap_fixed<8, 2, AP_RND, AP_WRAP, 0>"], [9 x %"struct.ap_fixed<8, 2, AP_RND, AP_WRAP, 0>"]* %0, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %6 = load i8, i8* %5, align 1
  store i8 %6, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 9
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

declare void @apatb_Forward_propagation_hw(%"struct.ap_fixed<10, 5, AP_RND, AP_WRAP, 0>"*, i8*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([9 x %"struct.ap_fixed<8, 2, AP_RND, AP_WRAP, 0>"]* noalias, [9 x i8]* noalias readonly align 512) unnamed_addr #2 {
entry:
  ret void
}

define void @Forward_propagation_hw_stub_wrapper(%"struct.ap_fixed<10, 5, AP_RND, AP_WRAP, 0>"*, i8*) #3 {
entry:
  %2 = alloca [9 x %"struct.ap_fixed<8, 2, AP_RND, AP_WRAP, 0>"]
  %3 = bitcast i8* %1 to [9 x i8]*
  call void @copy_out([9 x %"struct.ap_fixed<8, 2, AP_RND, AP_WRAP, 0>"]* %2, [9 x i8]* %3)
  %4 = bitcast [9 x %"struct.ap_fixed<8, 2, AP_RND, AP_WRAP, 0>"]* %2 to %"struct.ap_fixed<8, 2, AP_RND, AP_WRAP, 0>"*
  call void @Forward_propagation_hw_stub(%"struct.ap_fixed<10, 5, AP_RND, AP_WRAP, 0>"* %0, %"struct.ap_fixed<8, 2, AP_RND, AP_WRAP, 0>"* %4)
  call void @copy_in([9 x %"struct.ap_fixed<8, 2, AP_RND, AP_WRAP, 0>"]* %2, [9 x i8]* %3)
  ret void
}

declare void @Forward_propagation_hw_stub(%"struct.ap_fixed<10, 5, AP_RND, AP_WRAP, 0>"*, %"struct.ap_fixed<8, 2, AP_RND, AP_WRAP, 0>"*)

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_Forward_propagation_ir(i16* %ret, %"struct.ap_fixed<8, 2, AP_RND, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="9" %X) #4 {
entry:
  %X_copy = alloca [9 x i8], align 512
  %0 = bitcast %"struct.ap_fixed<8, 2, AP_RND, AP_WRAP, 0>"* %X to [9 x %"struct.ap_fixed<8, 2, AP_RND, AP_WRAP, 0>"]*
  call fastcc void @copy_in([9 x %"struct.ap_fixed<8, 2, AP_RND, AP_WRAP, 0>"]* nonnull %0, [9 x i8]* nonnull align 512 %X_copy)
  %1 = getelementptr [9 x i8], [9 x i8]* %X_copy, i32 0, i32 0
  %2 = alloca %"struct.ap_fixed<10, 5, AP_RND, AP_WRAP, 0>"
  call void @apatb_Forward_propagation_hw(%"struct.ap_fixed<10, 5, AP_RND, AP_WRAP, 0>"* %2, i8* %1)
  %3 = load volatile %"struct.ap_fixed<10, 5, AP_RND, AP_WRAP, 0>", %"struct.ap_fixed<10, 5, AP_RND, AP_WRAP, 0>"* %2
  call void @copy_back([9 x %"struct.ap_fixed<8, 2, AP_RND, AP_WRAP, 0>"]* %0, [9 x i8]* %X_copy)
  %4 = bitcast %"struct.ap_fixed<10, 5, AP_RND, AP_WRAP, 0>"* %2 to i16*
  %5 = load volatile i16, i16* %4
  store i16 %5, i16* %ret
  ret void
}

attributes #0 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #3 = { "fpga.wrapper.func"="stub" }
attributes #4 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="wrapper" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
