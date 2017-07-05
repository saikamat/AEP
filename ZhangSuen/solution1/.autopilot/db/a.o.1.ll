; ModuleID = '/home/saptarshi/Documents/AEP/ZhangSuen/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zhangsueng.str = internal unnamed_addr constant [11 x i8] c"zhangsueng\00" ; [#uses=1 type=[11 x i8]*]

; [#uses=0]
define i32 @zhangsueng(i32 %a, i32 %b) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !12
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @zhangsueng.str) nounwind
  call void @llvm.dbg.value(metadata !{i32 %a}, i64 0, metadata !18), !dbg !19 ; [debug line = 1:20] [debug variable = a]
  call void @llvm.dbg.value(metadata !{i32 %b}, i64 0, metadata !20), !dbg !21 ; [debug line = 1:27] [debug variable = b]
  %c = add nsw i32 %b, %a, !dbg !22               ; [#uses=1 type=i32] [debug line = 4:2]
  call void @llvm.dbg.value(metadata !{i32 %c}, i64 0, metadata !24), !dbg !22 ; [debug line = 4:2] [debug variable = c]
  ret i32 %c, !dbg !25                            ; [debug line = 5:2]
}

; [#uses=3]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/saptarshi/Documents/AEP/ZhangSuen/solution1/.autopilot/db/zhangsueng.pragma.2.c", metadata !"/home/saptarshi/Documents/AEP", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"zhangsueng", metadata !"zhangsueng", metadata !"", metadata !6, i32 1, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @zhangsueng, null, null, metadata !10, i32 2} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"zhangsueng.c", metadata !"/home/saptarshi/Documents/AEP", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !9, metadata !9}
!9 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!10 = metadata !{metadata !11}
!11 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 0, i32 31, metadata !14}
!14 = metadata !{metadata !15}
!15 = metadata !{metadata !"return", metadata !16, metadata !"int", i32 0, i32 31}
!16 = metadata !{metadata !17}
!17 = metadata !{i32 0, i32 1, i32 0}
!18 = metadata !{i32 786689, metadata !5, metadata !"a", metadata !6, i32 16777217, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!19 = metadata !{i32 1, i32 20, metadata !5, null}
!20 = metadata !{i32 786689, metadata !5, metadata !"b", metadata !6, i32 33554433, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!21 = metadata !{i32 1, i32 27, metadata !5, null}
!22 = metadata !{i32 4, i32 2, metadata !23, null}
!23 = metadata !{i32 786443, metadata !5, i32 2, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!24 = metadata !{i32 786688, metadata !23, metadata !"c", metadata !6, i32 3, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!25 = metadata !{i32 5, i32 2, metadata !23, null}
