; ModuleID = '/home/ubuntu-admin/SharedFolder/EIT_Studies/TUB_Docs/Sem2/EmbProj/GitHub/AEP/HLS/bram_interface/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zhan_suen_str = internal unnamed_addr constant [10 x i8] c"zhan_suen\00"
@p_str3 = private unnamed_addr constant [9 x i8] c"CRTL_BUS\00", align 1
@p_str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [5 x i8] c"bram\00", align 1

define void @zhan_suen([100 x i32]* %input_r, [100 x i32]* %result, i32 %y) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([100 x i32]* %input_r) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap([100 x i32]* %result) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %y) nounwind, !map !10
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @zhan_suen_str) nounwind
  %y_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %y) nounwind
  call void (...)* @_ssdm_op_SpecInterface([100 x i32]* %result, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([100 x i32]* %input_r, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %y, [10 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i7 [ 0, %0 ], [ %i_1, %2 ]
  %exitcond = icmp eq i7 %i, -28
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind
  %i_1 = add i7 %i, 1
  br i1 %exitcond, label %3, label %2

; <label>:2                                       ; preds = %1
  %tmp = zext i7 %i to i64
  %input_addr = getelementptr [100 x i32]* %input_r, i64 0, i64 %tmp
  %input_load = load i32* %input_addr, align 4
  %tmp_1 = mul nsw i32 %input_load, %y_read
  %result_addr = getelementptr [100 x i32]* %result, i64 0, i64 %tmp
  store i32 %tmp_1, i32* %result_addr, align 4
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

declare i16 @_ssdm_op_HSub(...)

declare i16 @_ssdm_op_HMul(...)

declare i16 @_ssdm_op_HDiv(...)

declare i16 @_ssdm_op_HAdd(...)

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 31, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"input", metadata !4, metadata !"int", i32 0, i32 31}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 99, i32 1}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 31, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"result", metadata !4, metadata !"int", i32 0, i32 31}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 0, i32 31, metadata !12}
!12 = metadata !{metadata !13}
!13 = metadata !{metadata !"y", metadata !14, metadata !"int", i32 0, i32 31}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 0, i32 0, i32 0}
