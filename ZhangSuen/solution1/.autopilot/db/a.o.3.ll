; ModuleID = '/home/saptarshi/Documents/AEP/ZhangSuen/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zhangsueng_str = internal unnamed_addr constant [11 x i8] c"zhangsueng\00" ; [#uses=1 type=[11 x i8]*]

; [#uses=0]
define i32 @zhangsueng(i32 %a, i32 %b) nounwind uwtable readnone {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %a) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %b) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !10
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @zhangsueng_str) nounwind
  %b_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %b) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %b_read}, i64 0, metadata !16), !dbg !24 ; [debug line = 1:27] [debug variable = b]
  %a_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %a) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %a_read}, i64 0, metadata !25), !dbg !26 ; [debug line = 1:20] [debug variable = a]
  call void @llvm.dbg.value(metadata !{i32 %a}, i64 0, metadata !25), !dbg !26 ; [debug line = 1:20] [debug variable = a]
  call void @llvm.dbg.value(metadata !{i32 %b}, i64 0, metadata !16), !dbg !24 ; [debug line = 1:27] [debug variable = b]
  %c = add nsw i32 %b_read, %a_read, !dbg !27     ; [#uses=1 type=i32] [debug line = 4:2]
  call void @llvm.dbg.value(metadata !{i32 %c}, i64 0, metadata !29), !dbg !27 ; [debug line = 4:2] [debug variable = c]
  ret i32 %c, !dbg !30                            ; [debug line = 5:2]
}

; [#uses=5]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=2]
define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
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
!3 = metadata !{metadata !"a", metadata !4, metadata !"int", i32 0, i32 31}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 0, i32 0}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 31, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"b", metadata !4, metadata !"int", i32 0, i32 31}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 0, i32 31, metadata !12}
!12 = metadata !{metadata !13}
!13 = metadata !{metadata !"return", metadata !14, metadata !"int", i32 0, i32 31}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 0, i32 1, i32 0}
!16 = metadata !{i32 786689, metadata !17, metadata !"b", metadata !18, i32 33554433, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!17 = metadata !{i32 786478, i32 0, metadata !18, metadata !"zhangsueng", metadata !"zhangsueng", metadata !"", metadata !18, i32 1, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @zhangsueng, null, null, metadata !22, i32 2} ; [ DW_TAG_subprogram ]
!18 = metadata !{i32 786473, metadata !"zhangsueng.c", metadata !"/home/saptarshi/Documents/AEP", null} ; [ DW_TAG_file_type ]
!19 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!20 = metadata !{metadata !21, metadata !21, metadata !21}
!21 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!24 = metadata !{i32 1, i32 27, metadata !17, null}
!25 = metadata !{i32 786689, metadata !17, metadata !"a", metadata !18, i32 16777217, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!26 = metadata !{i32 1, i32 20, metadata !17, null}
!27 = metadata !{i32 4, i32 2, metadata !28, null}
!28 = metadata !{i32 786443, metadata !17, i32 2, i32 1, metadata !18, i32 0} ; [ DW_TAG_lexical_block ]
!29 = metadata !{i32 786688, metadata !28, metadata !"c", metadata !18, i32 3, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!30 = metadata !{i32 5, i32 2, metadata !28, null}
