; ModuleID = '/home/ubuntu-admin/SharedFolder/EIT_Studies/TUB_Docs/Sem2/EmbProj/GitHub/AEP/HLS/ZS_BRAM_F_V1/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zs_func_str = internal unnamed_addr constant [8 x i8] c"zs_func\00"
@p_str4 = private unnamed_addr constant [12 x i8] c"RAM_1P_BRAM\00", align 1
@p_str3 = private unnamed_addr constant [9 x i8] c"CRTL_BUS\00", align 1
@p_str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [5 x i8] c"bram\00", align 1

define i32 @zs_func([2100 x i32]* %ImgIn, [2100 x i32]* %ImgOut) nounwind uwtable {
  %count = alloca i32
  call void (...)* @_ssdm_op_SpecBitsMap([2100 x i32]* %ImgIn) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap([2100 x i32]* %ImgOut) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !10
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @zs_func_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface([2100 x i32]* %ImgIn, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([2100 x i32]* %ImgOut, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([2100 x i32]* %ImgIn, [1 x i8]* @p_str1, [12 x i8]* @p_str4, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([2100 x i32]* %ImgOut, [1 x i8]* @p_str1, [12 x i8]* @p_str4, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  store i32 0, i32* %count
  br label %1

; <label>:1                                       ; preds = %3, %0
  %i = phi i6 [ 1, %0 ], [ %i_1, %3 ]
  %i_cast38_cast = zext i6 %i to i13
  %exitcond3 = icmp eq i6 %i, -22
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 41, i64 41, i64 41) nounwind
  br i1 %exitcond3, label %.preheader13, label %.preheader14.preheader

.preheader14.preheader:                           ; preds = %1
  %tmp = mul i13 50, %i_cast38_cast
  %tmp_2 = trunc i13 %tmp to i12
  %tmp_1 = or i12 %tmp_2, 1
  %tmp_1_cast = zext i12 %tmp_1 to i13
  br label %.preheader14

.preheader14:                                     ; preds = %.preheader14.backedge, %.preheader14.preheader
  %j = phi i6 [ 0, %.preheader14.preheader ], [ %j_1, %.preheader14.backedge ]
  %j_cast1 = zext i6 %j to i13
  %j_cast2 = zext i6 %j to i12
  %j_cast = zext i6 %j to i7
  %exitcond2 = icmp eq i6 %j, -14
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 50, i64 50, i64 50) nounwind
  %j_1 = add i6 %j, 1
  br i1 %exitcond2, label %3, label %_ifconv

_ifconv:                                          ; preds = %.preheader14
  %tmp1 = add i7 %j_cast, -51
  %tmp1_cast = sext i7 %tmp1 to i13
  %tmp_5 = add i13 %tmp1_cast, %tmp
  %tmp_6 = sext i13 %tmp_5 to i64
  %ImgIn_addr = getelementptr [2100 x i32]* %ImgIn, i64 0, i64 %tmp_6
  %ImgIn_load = load i32* %ImgIn_addr, align 4
  %tmp_7 = icmp ne i32 %ImgIn_load, 0
  %p0_cast = zext i1 %tmp_7 to i2
  %tmp2 = add i7 %j_cast, -50
  %tmp2_cast = sext i7 %tmp2 to i12
  %tmp_9 = add i12 %tmp2_cast, %tmp_2
  %tmp_s = zext i12 %tmp_9 to i64
  %ImgIn_addr_1 = getelementptr [2100 x i32]* %ImgIn, i64 0, i64 %tmp_s
  %ImgIn_load_1 = load i32* %ImgIn_addr_1, align 4
  %tmp_3 = icmp ne i32 %ImgIn_load_1, 0
  %tmp3 = add i7 %j_cast, -49
  %tmp3_cast = sext i7 %tmp3 to i12
  %tmp_4 = add i12 %tmp3_cast, %tmp_2
  %tmp_8 = zext i12 %tmp_4 to i64
  %ImgIn_addr_2 = getelementptr [2100 x i32]* %ImgIn, i64 0, i64 %tmp_8
  %ImgIn_load_2 = load i32* %ImgIn_addr_2, align 4
  %tmp_10 = icmp ne i32 %ImgIn_load_2, 0
  %tmp4 = add i7 %j_cast, -1
  %tmp4_cast = sext i7 %tmp4 to i12
  %tmp_11 = add i12 %tmp4_cast, %tmp_2
  %tmp_12 = zext i12 %tmp_11 to i64
  %ImgIn_addr_3 = getelementptr [2100 x i32]* %ImgIn, i64 0, i64 %tmp_12
  %ImgIn_load_3 = load i32* %ImgIn_addr_3, align 4
  %tmp_13 = icmp ne i32 %ImgIn_load_3, 0
  %p3_cast = zext i1 %tmp_13 to i2
  %tmp_14 = add i12 %j_cast2, %tmp_2
  %tmp_15 = zext i12 %tmp_14 to i64
  %ImgIn_addr_4 = getelementptr [2100 x i32]* %ImgIn, i64 0, i64 %tmp_15
  %ImgIn_load_4 = load i32* %ImgIn_addr_4, align 4
  %tmp_16 = add i13 %j_cast1, %tmp_1_cast
  %tmp_17 = zext i13 %tmp_16 to i64
  %ImgIn_addr_5 = getelementptr [2100 x i32]* %ImgIn, i64 0, i64 %tmp_17
  %ImgIn_load_5 = load i32* %ImgIn_addr_5, align 4
  %tmp_18 = icmp ne i32 %ImgIn_load_5, 0
  %tmp5 = add i7 %j_cast, 49
  %tmp5_cast = zext i7 %tmp5 to i12
  %tmp_19 = add i12 %tmp5_cast, %tmp_2
  %tmp_20 = zext i12 %tmp_19 to i64
  %ImgIn_addr_6 = getelementptr [2100 x i32]* %ImgIn, i64 0, i64 %tmp_20
  %ImgIn_load_6 = load i32* %ImgIn_addr_6, align 4
  %tmp_21 = icmp ne i32 %ImgIn_load_6, 0
  %tmp6 = add i7 %j_cast, 50
  %tmp6_cast = zext i7 %tmp6 to i12
  %tmp_22 = add i12 %tmp6_cast, %tmp_2
  %tmp_23 = zext i12 %tmp_22 to i64
  %ImgIn_addr_7 = getelementptr [2100 x i32]* %ImgIn, i64 0, i64 %tmp_23
  %ImgIn_load_7 = load i32* %ImgIn_addr_7, align 4
  %tmp_24 = icmp ne i32 %ImgIn_load_7, 0
  %p7_cast = zext i1 %tmp_24 to i2
  %tmp7 = add i7 %j_cast, 51
  %tmp7_cast = zext i7 %tmp7 to i12
  %tmp_25 = add i12 %tmp7_cast, %tmp_2
  %tmp_26 = zext i12 %tmp_25 to i64
  %ImgIn_addr_8 = getelementptr [2100 x i32]* %ImgIn, i64 0, i64 %tmp_26
  %ImgIn_load_8 = load i32* %ImgIn_addr_8, align 4
  %tmp_27 = icmp ne i32 %ImgIn_load_8, 0
  %not_s = xor i1 %tmp_3, true
  %p_s = and i1 %tmp_10, %not_s
  %tmp_35_cast = zext i1 %p_s to i2
  %not_1 = xor i1 %tmp_10, true
  %tmp_28 = and i1 %tmp_18, %not_1
  %tmp_37_cast = zext i1 %tmp_28 to i2
  %not_2 = xor i1 %tmp_18, true
  %p_4 = and i1 %tmp_27, %not_2
  %tmp_38_cast = zext i1 %p_4 to i2
  %not_3 = xor i1 %tmp_27, true
  %tmp_29 = and i1 %tmp_24, %not_3
  %tmp_40_cast = zext i1 %tmp_29 to i2
  %not_4 = xor i1 %tmp_24, true
  %p_5 = and i1 %tmp_21, %not_4
  %tmp_41_cast = zext i1 %p_5 to i2
  %not_5 = xor i1 %tmp_21, true
  %tmp_30 = and i1 %tmp_13, %not_5
  %tmp_43_cast = zext i1 %tmp_30 to i2
  %not_6 = xor i1 %tmp_13, true
  %p_6 = and i1 %tmp_7, %not_6
  %tmp_44_cast = zext i1 %p_6 to i2
  %not_7 = xor i1 %tmp_7, true
  %tmp_31 = and i1 %tmp_3, %not_7
  %tmp_46_cast = zext i1 %tmp_31 to i2
  %tmp9 = add i2 %tmp_35_cast, %tmp_46_cast
  %tmp9_cast = zext i2 %tmp9 to i3
  %tmp10 = add i2 %tmp_44_cast, %tmp_37_cast
  %tmp10_cast = zext i2 %tmp10 to i3
  %tmp8 = add i3 %tmp10_cast, %tmp9_cast
  %tmp8_cast = zext i3 %tmp8 to i4
  %tmp12 = add i2 %tmp_43_cast, %tmp_41_cast
  %tmp12_cast = zext i2 %tmp12 to i3
  %tmp13 = add i2 %tmp_40_cast, %tmp_38_cast
  %tmp13_cast = zext i2 %tmp13 to i3
  %tmp11 = add i3 %tmp13_cast, %tmp12_cast
  %tmp11_cast = zext i3 %tmp11 to i4
  %A = add i4 %tmp11_cast, %tmp8_cast
  %tmp_53_cast = zext i1 %tmp_3 to i2
  %tmp_54_cast = zext i1 %tmp_10 to i2
  %tmp_55_cast = zext i1 %tmp_18 to i2
  %tmp_56_cast = zext i1 %tmp_27 to i2
  %tmp_57_cast = zext i1 %tmp_21 to i2
  %tmp14 = add i2 %tmp_57_cast, %p7_cast
  %tmp20_cast = zext i2 %tmp14 to i3
  %tmp15 = add i2 %tmp_55_cast, %p3_cast
  %tmp21_cast = zext i2 %tmp15 to i3
  %tmp16 = add i3 %tmp21_cast, %tmp20_cast
  %tmp19_cast = zext i3 %tmp16 to i4
  %tmp17 = add i2 %tmp_53_cast, %tmp_54_cast
  %tmp23_cast = zext i2 %tmp17 to i3
  %tmp18 = add i2 %p0_cast, %tmp_56_cast
  %tmp24_cast = zext i2 %tmp18 to i3
  %tmp19 = add i3 %tmp24_cast, %tmp23_cast
  %tmp22_cast = zext i3 %tmp19 to i4
  %B = add i4 %tmp22_cast, %tmp19_cast
  %tmp_32 = and i1 %tmp_18, %tmp_3
  %m1 = and i1 %tmp_24, %tmp_32
  %tmp_33 = and i1 %tmp_24, %tmp_18
  %m2 = and i1 %tmp_13, %tmp_33
  %tmp_34 = icmp eq i4 %A, 1
  %tmp_44 = call i3 @_ssdm_op_PartSelect.i3.i4.i32.i32(i4 %B, i32 1, i32 3)
  %icmp = icmp ne i3 %tmp_44, 0
  %tmp_36 = icmp ult i4 %B, 7
  %tmp20 = and i1 %icmp, %tmp_36
  %or_cond7 = and i1 %tmp20, %tmp_34
  %tmp_37 = or i1 %m1, %m2
  %tmp_38 = and i1 %tmp_24, %tmp_3
  %tmp_39 = or i1 %tmp_32, %tmp_38
  %tmp_40 = and i1 %tmp_13, %tmp_39
  %tmp_7528_demorgan = and i1 %tmp_37, %tmp_40
  %tmp_41 = xor i1 %tmp_7528_demorgan, true
  %p_1 = and i1 %or_cond7, %tmp_41
  %tmp_42 = icmp eq i32 %ImgIn_load_4, 255
  %or_cond2 = and i1 %p_1, %tmp_42
  br i1 %or_cond2, label %2, label %.preheader14.backedge

; <label>:2                                       ; preds = %_ifconv
  %count_load_1 = load i32* %count
  %count_1 = add nsw i32 %count_load_1, 1
  %ImgOut_addr_1 = getelementptr [2100 x i32]* %ImgOut, i64 0, i64 %tmp_15
  store i32 0, i32* %ImgOut_addr_1, align 4
  store i32 %count_1, i32* %count
  br label %.preheader14.backedge

.preheader14.backedge:                            ; preds = %2, %_ifconv
  br label %.preheader14

; <label>:3                                       ; preds = %.preheader14
  %i_1 = add i6 %i, 1
  br label %1

.preheader13:                                     ; preds = %.preheader, %1
  %k = phi i6 [ 0, %1 ], [ %k_1, %.preheader ]
  %phi_mul = phi i12 [ 0, %1 ], [ %next_mul, %.preheader ]
  %next_mul = add i12 %phi_mul, 50
  %exitcond1 = icmp eq i6 %k, -22
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 42, i64 42, i64 42) nounwind
  %k_1 = add i6 %k, 1
  br i1 %exitcond1, label %5, label %.preheader

.preheader:                                       ; preds = %.preheader13, %4
  %l = phi i6 [ %l_1, %4 ], [ 0, %.preheader13 ]
  %l_cast = zext i6 %l to i12
  %exitcond = icmp eq i6 %l, -14
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 50, i64 50, i64 50) nounwind
  %l_1 = add i6 %l, 1
  br i1 %exitcond, label %.preheader13, label %4

; <label>:4                                       ; preds = %.preheader
  %tmp_35 = add i12 %phi_mul, %l_cast
  %tmp_43 = zext i12 %tmp_35 to i64
  %ImgOut_addr = getelementptr [2100 x i32]* %ImgOut, i64 0, i64 %tmp_43
  %ImgOut_load = load i32* %ImgOut_addr, align 4
  %ImgIn_addr_9 = getelementptr [2100 x i32]* %ImgIn, i64 0, i64 %tmp_43
  store i32 %ImgOut_load, i32* %ImgIn_addr_9, align 4
  br label %.preheader

; <label>:5                                       ; preds = %.preheader13
  %count_load = load i32* %count
  ret i32 %count_load
}

declare i4 @llvm.part.select.i4(i4, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecMemCore(...) {
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

define weak i3 @_ssdm_op_PartSelect.i3.i4.i32.i32(i4, i32, i32) nounwind readnone {
entry:
  %empty = call i4 @llvm.part.select.i4(i4 %0, i32 %1, i32 %2)
  %empty_8 = trunc i4 %empty to i3
  ret i3 %empty_8
}

declare i12 @_ssdm_op_PartSelect.i12.i13.i32.i32(i13, i32, i32) nounwind readnone

declare i16 @_ssdm_op_HSub(...)

declare i16 @_ssdm_op_HMul(...)

declare i16 @_ssdm_op_HDiv(...)

declare i16 @_ssdm_op_HAdd(...)

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 31, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"ImgIn", metadata !4, metadata !"int", i32 0, i32 31}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 2099, i32 1}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 31, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"ImgOut", metadata !4, metadata !"int", i32 0, i32 31}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 0, i32 31, metadata !12}
!12 = metadata !{metadata !13}
!13 = metadata !{metadata !"return", metadata !14, metadata !"int", i32 0, i32 31}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 0, i32 1, i32 0}
