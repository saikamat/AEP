; ModuleID = '/home/ubuntu-admin/SharedFolder/EIT_Studies/TUB_Docs/Sem2/EmbProj/GitHub/AEP/HLS/bram_interface/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zhan_suen.str = internal unnamed_addr constant [10 x i8] c"zhan_suen\00" ; [#uses=1 type=[10 x i8]*]
@.str3 = private unnamed_addr constant [9 x i8] c"CRTL_BUS\00", align 1 ; [#uses=2 type=[9 x i8]*]
@.str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=2 type=[10 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=14 type=[1 x i8]*]
@.str = private unnamed_addr constant [5 x i8] c"bram\00", align 1 ; [#uses=2 type=[5 x i8]*]

; [#uses=0]
define void @zhan_suen([100 x i32]* %input, [100 x i32]* %result, i32 %y) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([100 x i32]* %input) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap([100 x i32]* %result) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %y) nounwind, !map !23
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @zhan_suen.str) nounwind
  call void @llvm.dbg.value(metadata !{[100 x i32]* %input}, i64 0, metadata !29), !dbg !33 ; [debug line = 3:20] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[100 x i32]* %result}, i64 0, metadata !34), !dbg !35 ; [debug line = 3:36] [debug variable = result]
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !36), !dbg !37 ; [debug line = 3:53] [debug variable = y]
  call void (...)* @_ssdm_op_SpecInterface([100 x i32]* %result, [5 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([100 x i32]* %input, [5 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @.str2, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !38 ; [debug line = 6:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %y, [10 x i8]* @.str2, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !40 ; [debug line = 7:1]
  br label %1, !dbg !41                           ; [debug line = 9:16]

; <label>:1                                       ; preds = %3, %0
  %i = phi i7 [ 0, %0 ], [ %i.1, %3 ]             ; [#uses=3 type=i7]
  %exitcond = icmp eq i7 %i, -28, !dbg !41        ; [#uses=1 type=i1] [debug line = 9:16]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %4, label %3, !dbg !41   ; [debug line = 9:16]

; <label>:3                                       ; preds = %1
  %tmp = zext i7 %i to i64, !dbg !43              ; [#uses=2 type=i64] [debug line = 10:3]
  %input.addr = getelementptr [100 x i32]* %input, i64 0, i64 %tmp, !dbg !43 ; [#uses=1 type=i32*] [debug line = 10:3]
  %input.load = load i32* %input.addr, align 4, !dbg !43 ; [#uses=1 type=i32] [debug line = 10:3]
  %tmp.1 = mul nsw i32 %input.load, %y, !dbg !43  ; [#uses=1 type=i32] [debug line = 10:3]
  %result.addr = getelementptr [100 x i32]* %result, i64 0, i64 %tmp, !dbg !43 ; [#uses=1 type=i32*] [debug line = 10:3]
  store i32 %tmp.1, i32* %result.addr, align 4, !dbg !43 ; [debug line = 10:3]
  %i.1 = add i7 %i, 1, !dbg !45                   ; [#uses=1 type=i7] [debug line = 9:28]
  call void @llvm.dbg.value(metadata !{i7 %i.1}, i64 0, metadata !46), !dbg !45 ; [debug line = 9:28] [debug variable = i]
  br label %1, !dbg !45                           ; [debug line = 9:28]

; <label>:4                                       ; preds = %1
  ret void, !dbg !47                              ; [debug line = 14:1]
}

; [#uses=4]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=4]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/ubuntu-admin/SharedFolder/EIT_Studies/TUB_Docs/Sem2/EmbProj/GitHub/AEP/HLS/bram_interface/solution1/.autopilot/db/core.pragma.2.cpp", metadata !"/home/ubuntu-admin/SharedFolder/EIT_Studies/TUB_Docs/Sem2/EmbProj/GitHub/AEP/HLS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"zhan_suen", metadata !"zhan_suen", metadata !"_Z9zhan_suenPiS_i", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 3} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"bram_interface/core.cpp", metadata !"/home/ubuntu-admin/SharedFolder/EIT_Studies/TUB_Docs/Sem2/EmbProj/GitHub/AEP/HLS", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !10}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"input", metadata !17, metadata !"int", i32 0, i32 31}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 99, i32 1}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 31, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"result", metadata !17, metadata !"int", i32 0, i32 31}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 31, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"y", metadata !27, metadata !"int", i32 0, i32 31}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 0, i32 0}
!29 = metadata !{i32 786689, metadata !5, metadata !"input", null, i32 3, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!30 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 3200, i64 32, i32 0, i32 0, metadata !10, metadata !31, i32 0, i32 0} ; [ DW_TAG_array_type ]
!31 = metadata !{metadata !32}
!32 = metadata !{i32 786465, i64 0, i64 99}       ; [ DW_TAG_subrange_type ]
!33 = metadata !{i32 3, i32 20, metadata !5, null}
!34 = metadata !{i32 786689, metadata !5, metadata !"result", null, i32 3, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!35 = metadata !{i32 3, i32 36, metadata !5, null}
!36 = metadata !{i32 786689, metadata !5, metadata !"y", metadata !6, i32 50331651, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!37 = metadata !{i32 3, i32 53, metadata !5, null}
!38 = metadata !{i32 6, i32 1, metadata !39, null}
!39 = metadata !{i32 786443, metadata !5, i32 3, i32 56, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!40 = metadata !{i32 7, i32 1, metadata !39, null}
!41 = metadata !{i32 9, i32 16, metadata !42, null}
!42 = metadata !{i32 786443, metadata !39, i32 9, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!43 = metadata !{i32 10, i32 3, metadata !44, null}
!44 = metadata !{i32 786443, metadata !42, i32 9, i32 33, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!45 = metadata !{i32 9, i32 28, metadata !42, null}
!46 = metadata !{i32 786688, metadata !42, metadata !"i", metadata !6, i32 9, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!47 = metadata !{i32 14, i32 1, metadata !39, null}
