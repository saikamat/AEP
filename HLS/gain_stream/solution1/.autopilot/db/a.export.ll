; ModuleID = '/home/ubuntu-admin/SharedFolder/EIT_Studies/TUB_Docs/Sem2/EmbProj/Xilinx_Workspace/gain_stream/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@doGain_str = internal unnamed_addr constant [7 x i8] c"doGain\00"
@p_str3 = private unnamed_addr constant [9 x i8] c"CRTL_BUS\00", align 1
@p_str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [5 x i8] c"axis\00", align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @doGain(i32* %inStream_V_data_V, i4* %inStream_V_keep_V, i4* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V, i32* %outStream_V_data_V, i4* %outStream_V_keep_V, i4* %outStream_V_strb_V, i2* %outStream_V_user_V, i1* %outStream_V_last_V, i5* %outStream_V_id_V, i6* %outStream_V_dest_V, i32 %gain) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %inStream_V_data_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %inStream_V_keep_V), !map !11
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %inStream_V_strb_V), !map !15
  call void (...)* @_ssdm_op_SpecBitsMap(i2* %inStream_V_user_V), !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %inStream_V_last_V), !map !23
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %inStream_V_id_V), !map !27
  call void (...)* @_ssdm_op_SpecBitsMap(i6* %inStream_V_dest_V), !map !31
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %outStream_V_data_V), !map !35
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %outStream_V_keep_V), !map !39
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %outStream_V_strb_V), !map !43
  call void (...)* @_ssdm_op_SpecBitsMap(i2* %outStream_V_user_V), !map !47
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %outStream_V_last_V), !map !51
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %outStream_V_id_V), !map !55
  call void (...)* @_ssdm_op_SpecBitsMap(i6* %outStream_V_dest_V), !map !59
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %gain), !map !63
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @doGain_str) nounwind
  %gain_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %gain)
  call void (...)* @_ssdm_op_SpecInterface(i32* %outStream_V_data_V, i4* %outStream_V_keep_V, i4* %outStream_V_strb_V, i2* %outStream_V_user_V, i1* %outStream_V_last_V, i5* %outStream_V_id_V, i6* %outStream_V_dest_V, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %inStream_V_data_V, i4* %inStream_V_keep_V, i4* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %gain, [10 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i7 [ 0, %0 ], [ %i_1, %2 ]
  %exitcond = icmp eq i7 %i, -28
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100)
  %i_1 = add i7 %i, 1
  br i1 %exitcond, label %3, label %2

; <label>:2                                       ; preds = %1
  %empty_2 = call { i32, i4, i4, i2, i1, i5, i6 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i2P.i1P.i5P.i6P(i32* %inStream_V_data_V, i4* %inStream_V_keep_V, i4* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V)
  %tmp_data_V = extractvalue { i32, i4, i4, i2, i1, i5, i6 } %empty_2, 0
  %tmp_keep_V = extractvalue { i32, i4, i4, i2, i1, i5, i6 } %empty_2, 1
  %tmp_strb_V = extractvalue { i32, i4, i4, i2, i1, i5, i6 } %empty_2, 2
  %tmp_user_V = extractvalue { i32, i4, i4, i2, i1, i5, i6 } %empty_2, 3
  %tmp_last_V = extractvalue { i32, i4, i4, i2, i1, i5, i6 } %empty_2, 4
  %tmp_id_V = extractvalue { i32, i4, i4, i2, i1, i5, i6 } %empty_2, 5
  %tmp_dest_V = extractvalue { i32, i4, i4, i2, i1, i5, i6 } %empty_2, 6
  %tmp_data_V_1 = mul i32 %tmp_data_V, %gain_read
  call void @_ssdm_op_Write.axis.volatile.i32P.i4P.i4P.i2P.i1P.i5P.i6P(i32* %outStream_V_data_V, i4* %outStream_V_keep_V, i4* %outStream_V_strb_V, i2* %outStream_V_user_V, i1* %outStream_V_last_V, i5* %outStream_V_id_V, i6* %outStream_V_dest_V, i32 %tmp_data_V_1, i4 %tmp_keep_V, i4 %tmp_strb_V, i2 %tmp_user_V, i1 %tmp_last_V, i5 %tmp_id_V, i6 %tmp_dest_V)
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

define weak void @_ssdm_op_Write.axis.volatile.i32P.i4P.i4P.i2P.i1P.i5P.i6P(i32*, i4*, i4*, i2*, i1*, i5*, i6*, i32, i4, i4, i2, i1, i5, i6) {
entry:
  store i32 %7, i32* %0
  store i4 %8, i4* %1
  store i4 %9, i4* %2
  store i2 %10, i2* %3
  store i1 %11, i1* %4
  store i5 %12, i5* %5
  store i6 %13, i6* %6
  ret void
}

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

define weak { i32, i4, i4, i2, i1, i5, i6 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i2P.i1P.i5P.i6P(i32*, i4*, i4*, i2*, i1*, i5*, i6*) {
entry:
  %empty = load i32* %0
  %empty_3 = load i4* %1
  %empty_4 = load i4* %2
  %empty_5 = load i2* %3
  %empty_6 = load i1* %4
  %empty_7 = load i5* %5
  %empty_8 = load i6* %6
  %mrv_0 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } undef, i32 %empty, 0
  %mrv1 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv_0, i4 %empty_3, 1
  %mrv2 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv1, i4 %empty_4, 2
  %mrv3 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv2, i2 %empty_5, 3
  %mrv4 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv3, i1 %empty_6, 4
  %mrv5 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv4, i5 %empty_7, 5
  %mrv6 = insertvalue { i32, i4, i4, i2, i1, i5, i6 } %mrv5, i6 %empty_8, 6
  ret { i32, i4, i4, i2, i1, i5, i6 } %mrv6
}

declare i16 @_ssdm_op_HSub(...)

declare i16 @_ssdm_op_HMul(...)

declare i16 @_ssdm_op_HDiv(...)

declare i16 @_ssdm_op_HAdd(...)

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 31, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"inStream.V.data.V", metadata !5, metadata !"int32", i32 0, i32 31}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 3, metadata !13}
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !"inStream.V.keep.V", metadata !5, metadata !"uint4", i32 0, i32 3}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 0, i32 3, metadata !17}
!17 = metadata !{metadata !18}
!18 = metadata !{metadata !"inStream.V.strb.V", metadata !5, metadata !"uint4", i32 0, i32 3}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 1, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"inStream.V.user.V", metadata !5, metadata !"uint2", i32 0, i32 1}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 0, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"inStream.V.last.V", metadata !5, metadata !"uint1", i32 0, i32 0}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 4, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"inStream.V.id.V", metadata !5, metadata !"uint5", i32 0, i32 4}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 5, metadata !33}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !"inStream.V.dest.V", metadata !5, metadata !"uint6", i32 0, i32 5}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 31, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"outStream.V.data.V", metadata !5, metadata !"int32", i32 0, i32 31}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 3, metadata !41}
!41 = metadata !{metadata !42}
!42 = metadata !{metadata !"outStream.V.keep.V", metadata !5, metadata !"uint4", i32 0, i32 3}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 3, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"outStream.V.strb.V", metadata !5, metadata !"uint4", i32 0, i32 3}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 1, metadata !49}
!49 = metadata !{metadata !50}
!50 = metadata !{metadata !"outStream.V.user.V", metadata !5, metadata !"uint2", i32 0, i32 1}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 0, metadata !53}
!53 = metadata !{metadata !54}
!54 = metadata !{metadata !"outStream.V.last.V", metadata !5, metadata !"uint1", i32 0, i32 0}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 4, metadata !57}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !"outStream.V.id.V", metadata !5, metadata !"uint5", i32 0, i32 4}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 5, metadata !61}
!61 = metadata !{metadata !62}
!62 = metadata !{metadata !"outStream.V.dest.V", metadata !5, metadata !"uint6", i32 0, i32 5}
!63 = metadata !{metadata !64}
!64 = metadata !{i32 0, i32 31, metadata !65}
!65 = metadata !{metadata !66}
!66 = metadata !{metadata !"gain", metadata !67, metadata !"int", i32 0, i32 31}
!67 = metadata !{metadata !68}
!68 = metadata !{i32 0, i32 0, i32 0}
