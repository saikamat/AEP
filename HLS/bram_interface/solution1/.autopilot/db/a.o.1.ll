; ModuleID = '/home/ubuntu-admin/SharedFolder/EIT_Studies/TUB_Docs/Sem2/EmbProj/GitHub/AEP/HLS/bram_interface/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zhan_suen.str = internal unnamed_addr constant [10 x i8] c"zhan_suen\00" ; [#uses=1 type=[10 x i8]*]
@.str3 = private unnamed_addr constant [9 x i8] c"CRTL_BUS\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [5 x i8] c"bram\00", align 1 ; [#uses=1 type=[5 x i8]*]

; [#uses=0]
define void @zhan_suen(i32* %input, i32* %result, i32 %y) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @zhan_suen.str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %input}, i64 0, metadata !13), !dbg !14 ; [debug line = 3:20] [debug variable = input]
  call void @llvm.dbg.value(metadata !{i32* %result}, i64 0, metadata !15), !dbg !16 ; [debug line = 3:36] [debug variable = result]
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !17), !dbg !18 ; [debug line = 3:53] [debug variable = y]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %result, i32 100) nounwind, !dbg !19 ; [debug line = 3:57]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %input, i32 100) nounwind, !dbg !21 ; [debug line = 3:92]
  call void (...)* @_ssdm_op_SpecInterface(i32* %result, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !22 ; [debug line = 4:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %input, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !23 ; [debug line = 5:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !24 ; [debug line = 6:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %y, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !25 ; [debug line = 7:1]
  br label %1, !dbg !26                           ; [debug line = 9:16]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %2 ]            ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i, 100, !dbg !26       ; [#uses=1 type=i1] [debug line = 9:16]
  br i1 %exitcond, label %3, label %2, !dbg !26   ; [debug line = 9:16]

; <label>:2                                       ; preds = %1
  %tmp = sext i32 %i to i64, !dbg !28             ; [#uses=2 type=i64] [debug line = 10:3]
  %input.addr = getelementptr inbounds i32* %input, i64 %tmp, !dbg !28 ; [#uses=1 type=i32*] [debug line = 10:3]
  %input.load = load i32* %input.addr, align 4, !dbg !28 ; [#uses=2 type=i32] [debug line = 10:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %input.load) nounwind
  %tmp.1 = mul nsw i32 %input.load, %y, !dbg !28  ; [#uses=1 type=i32] [debug line = 10:3]
  %result.addr = getelementptr inbounds i32* %result, i64 %tmp, !dbg !28 ; [#uses=1 type=i32*] [debug line = 10:3]
  store i32 %tmp.1, i32* %result.addr, align 4, !dbg !28 ; [debug line = 10:3]
  %i.1 = add nsw i32 %i, 1, !dbg !30              ; [#uses=1 type=i32] [debug line = 9:28]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !31), !dbg !30 ; [debug line = 9:28] [debug variable = i]
  br label %1, !dbg !30                           ; [debug line = 9:28]

; <label>:3                                       ; preds = %1
  ret void, !dbg !32                              ; [debug line = 14:1]
}

; [#uses=4]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=4]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/ubuntu-admin/SharedFolder/EIT_Studies/TUB_Docs/Sem2/EmbProj/GitHub/AEP/HLS/bram_interface/solution1/.autopilot/db/core.pragma.2.cpp", metadata !"/home/ubuntu-admin/SharedFolder/EIT_Studies/TUB_Docs/Sem2/EmbProj/GitHub/AEP/HLS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"zhan_suen", metadata !"zhan_suen", metadata !"_Z9zhan_suenPiS_i", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i32*, i32)* @zhan_suen, null, null, metadata !11, i32 3} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"bram_interface/core.cpp", metadata !"/home/ubuntu-admin/SharedFolder/EIT_Studies/TUB_Docs/Sem2/EmbProj/GitHub/AEP/HLS", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !10}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786689, metadata !5, metadata !"input", metadata !6, i32 16777219, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!14 = metadata !{i32 3, i32 20, metadata !5, null}
!15 = metadata !{i32 786689, metadata !5, metadata !"result", metadata !6, i32 33554435, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!16 = metadata !{i32 3, i32 36, metadata !5, null}
!17 = metadata !{i32 786689, metadata !5, metadata !"y", metadata !6, i32 50331651, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!18 = metadata !{i32 3, i32 53, metadata !5, null}
!19 = metadata !{i32 3, i32 57, metadata !20, null}
!20 = metadata !{i32 786443, metadata !5, i32 3, i32 56, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!21 = metadata !{i32 3, i32 92, metadata !20, null}
!22 = metadata !{i32 4, i32 1, metadata !20, null}
!23 = metadata !{i32 5, i32 1, metadata !20, null}
!24 = metadata !{i32 6, i32 1, metadata !20, null}
!25 = metadata !{i32 7, i32 1, metadata !20, null}
!26 = metadata !{i32 9, i32 16, metadata !27, null}
!27 = metadata !{i32 786443, metadata !20, i32 9, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!28 = metadata !{i32 10, i32 3, metadata !29, null}
!29 = metadata !{i32 786443, metadata !27, i32 9, i32 33, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!30 = metadata !{i32 9, i32 28, metadata !27, null}
!31 = metadata !{i32 786688, metadata !27, metadata !"i", metadata !6, i32 9, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!32 = metadata !{i32 14, i32 1, metadata !20, null}
