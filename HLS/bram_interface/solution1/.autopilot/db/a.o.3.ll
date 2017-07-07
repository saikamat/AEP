; ModuleID = '/home/ubuntu-admin/SharedFolder/EIT_Studies/TUB_Docs/Sem2/EmbProj/GitHub/AEP/HLS/bram_interface/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zhan_suen_str = internal unnamed_addr constant [10 x i8] c"zhan_suen\00" ; [#uses=1 type=[10 x i8]*]
@p_str3 = private unnamed_addr constant [9 x i8] c"CRTL_BUS\00", align 1 ; [#uses=2 type=[9 x i8]*]
@p_str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=2 type=[10 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=14 type=[1 x i8]*]
@p_str = private unnamed_addr constant [5 x i8] c"bram\00", align 1 ; [#uses=2 type=[5 x i8]*]

; [#uses=0]
define void @zhan_suen([100 x i32]* %input, [100 x i32]* %result, i32 %y) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([100 x i32]* %input) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap([100 x i32]* %result) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %y) nounwind, !map !10
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @zhan_suen_str) nounwind
  %y_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %y) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %y_read}, i64 0, metadata !16), !dbg !25 ; [debug line = 3:53] [debug variable = y]
  call void @llvm.dbg.value(metadata !{[100 x i32]* %input}, i64 0, metadata !26), !dbg !30 ; [debug line = 3:20] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[100 x i32]* %result}, i64 0, metadata !31), !dbg !32 ; [debug line = 3:36] [debug variable = result]
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !16), !dbg !25 ; [debug line = 3:53] [debug variable = y]
  call void (...)* @_ssdm_op_SpecInterface([100 x i32]* %result, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([100 x i32]* %input, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !33 ; [debug line = 6:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %y, [10 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !35 ; [debug line = 7:1]
  br label %1, !dbg !36                           ; [debug line = 9:16]

; <label>:1                                       ; preds = %2, %0
  %i = phi i7 [ 0, %0 ], [ %i_1, %2 ]             ; [#uses=3 type=i7]
  %exitcond = icmp eq i7 %i, -28, !dbg !36        ; [#uses=1 type=i1] [debug line = 9:16]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind ; [#uses=0 type=i32]
  %i_1 = add i7 %i, 1, !dbg !38                   ; [#uses=1 type=i7] [debug line = 9:28]
  br i1 %exitcond, label %3, label %2, !dbg !36   ; [debug line = 9:16]

; <label>:2                                       ; preds = %1
  %tmp = zext i7 %i to i64, !dbg !39              ; [#uses=2 type=i64] [debug line = 10:3]
  %input_addr = getelementptr [100 x i32]* %input, i64 0, i64 %tmp, !dbg !39 ; [#uses=1 type=i32*] [debug line = 10:3]
  %input_load = load i32* %input_addr, align 4, !dbg !39 ; [#uses=1 type=i32] [debug line = 10:3]
  %tmp_1 = mul nsw i32 %input_load, %y_read, !dbg !39 ; [#uses=1 type=i32] [debug line = 10:3]
  %result_addr = getelementptr [100 x i32]* %result, i64 0, i64 %tmp, !dbg !39 ; [#uses=1 type=i32*] [debug line = 10:3]
  store i32 %tmp_1, i32* %result_addr, align 4, !dbg !39 ; [debug line = 10:3]
  call void @llvm.dbg.value(metadata !{i7 %i_1}, i64 0, metadata !41), !dbg !38 ; [debug line = 9:28] [debug variable = i]
  br label %1, !dbg !38                           ; [debug line = 9:28]

; <label>:3                                       ; preds = %1
  ret void, !dbg !42                              ; [debug line = 14:1]
}

; [#uses=5]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=4]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=0]
declare i16 @_ssdm_op_HSub(...)

; [#uses=0]
declare i16 @_ssdm_op_HMul(...)

; [#uses=0]
declare i16 @_ssdm_op_HDiv(...)

; [#uses=0]
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
!16 = metadata !{i32 786689, metadata !17, metadata !"y", metadata !18, i32 50331651, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!17 = metadata !{i32 786478, i32 0, metadata !18, metadata !"zhan_suen", metadata !"zhan_suen", metadata !"_Z9zhan_suenPiS_i", metadata !18, i32 3, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !23, i32 3} ; [ DW_TAG_subprogram ]
!18 = metadata !{i32 786473, metadata !"bram_interface/core.cpp", metadata !"/home/ubuntu-admin/SharedFolder/EIT_Studies/TUB_Docs/Sem2/EmbProj/GitHub/AEP/HLS", null} ; [ DW_TAG_file_type ]
!19 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!20 = metadata !{null, metadata !21, metadata !21, metadata !22}
!21 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ]
!22 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!25 = metadata !{i32 3, i32 53, metadata !17, null}
!26 = metadata !{i32 786689, metadata !17, metadata !"input", null, i32 3, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!27 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 3200, i64 32, i32 0, i32 0, metadata !22, metadata !28, i32 0, i32 0} ; [ DW_TAG_array_type ]
!28 = metadata !{metadata !29}
!29 = metadata !{i32 786465, i64 0, i64 99}       ; [ DW_TAG_subrange_type ]
!30 = metadata !{i32 3, i32 20, metadata !17, null}
!31 = metadata !{i32 786689, metadata !17, metadata !"result", null, i32 3, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!32 = metadata !{i32 3, i32 36, metadata !17, null}
!33 = metadata !{i32 6, i32 1, metadata !34, null}
!34 = metadata !{i32 786443, metadata !17, i32 3, i32 56, metadata !18, i32 0} ; [ DW_TAG_lexical_block ]
!35 = metadata !{i32 7, i32 1, metadata !34, null}
!36 = metadata !{i32 9, i32 16, metadata !37, null}
!37 = metadata !{i32 786443, metadata !34, i32 9, i32 2, metadata !18, i32 1} ; [ DW_TAG_lexical_block ]
!38 = metadata !{i32 9, i32 28, metadata !37, null}
!39 = metadata !{i32 10, i32 3, metadata !40, null}
!40 = metadata !{i32 786443, metadata !37, i32 9, i32 33, metadata !18, i32 2} ; [ DW_TAG_lexical_block ]
!41 = metadata !{i32 786688, metadata !37, metadata !"i", metadata !18, i32 9, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!42 = metadata !{i32 14, i32 1, metadata !34, null}
