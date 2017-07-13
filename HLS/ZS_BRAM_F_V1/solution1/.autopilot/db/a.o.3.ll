; ModuleID = '/home/ubuntu-admin/SharedFolder/EIT_Studies/TUB_Docs/Sem2/EmbProj/GitHub/AEP/HLS/ZS_BRAM_F_V1/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zs_func_str = internal unnamed_addr constant [8 x i8] c"zs_func\00" ; [#uses=1 type=[8 x i8]*]
@p_str4 = private unnamed_addr constant [12 x i8] c"RAM_1P_BRAM\00", align 1 ; [#uses=2 type=[12 x i8]*]
@p_str3 = private unnamed_addr constant [9 x i8] c"CRTL_BUS\00", align 1 ; [#uses=1 type=[9 x i8]*]
@p_str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=21 type=[1 x i8]*]
@p_str = private unnamed_addr constant [5 x i8] c"bram\00", align 1 ; [#uses=2 type=[5 x i8]*]

; [#uses=0]
define i32 @zs_func([2100 x i32]* %ImgIn, [2100 x i32]* %ImgOut) nounwind uwtable {
  %count = alloca i32                             ; [#uses=4 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %count}, metadata !0) ; [debug variable = count]
  call void (...)* @_ssdm_op_SpecBitsMap([2100 x i32]* %ImgIn) nounwind, !map !10
  call void (...)* @_ssdm_op_SpecBitsMap([2100 x i32]* %ImgOut) nounwind, !map !16
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !20
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @zs_func_str) nounwind
  call void @llvm.dbg.value(metadata !{[2100 x i32]* %ImgIn}, i64 0, metadata !26), !dbg !30 ; [debug line = 6:17] [debug variable = ImgIn]
  call void @llvm.dbg.value(metadata !{[2100 x i32]* %ImgOut}, i64 0, metadata !31), !dbg !32 ; [debug line = 6:34] [debug variable = ImgOut]
  call void (...)* @_ssdm_op_SpecInterface([2100 x i32]* %ImgIn, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([2100 x i32]* %ImgOut, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !33 ; [debug line = 10:1]
  call void (...)* @_ssdm_op_SpecMemCore([2100 x i32]* %ImgIn, [1 x i8]* @p_str1, [12 x i8]* @p_str4, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([2100 x i32]* %ImgOut, [1 x i8]* @p_str1, [12 x i8]* @p_str4, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  store i32 0, i32* %count
  br label %1, !dbg !34                           ; [debug line = 20:14]

; <label>:1                                       ; preds = %3, %0
  %i = phi i6 [ 1, %0 ], [ %i_1, %3 ]             ; [#uses=3 type=i6]
  %i_cast38_cast = zext i6 %i to i13, !dbg !34    ; [#uses=1 type=i13] [debug line = 20:14]
  %exitcond3 = icmp eq i6 %i, -22, !dbg !34       ; [#uses=1 type=i1] [debug line = 20:14]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 41, i64 41, i64 41) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond3, label %.preheader13, label %.preheader14.preheader, !dbg !34 ; [debug line = 20:14]

.preheader14.preheader:                           ; preds = %1
  %tmp = mul i13 50, %i_cast38_cast, !dbg !36     ; [#uses=2 type=i13] [debug line = 29:54]
  %tmp_2 = trunc i13 %tmp to i12, !dbg !40        ; [#uses=8 type=i12] [debug line = 34:52]
  %tmp_1 = or i12 %tmp_2, 1, !dbg !40             ; [#uses=1 type=i12] [debug line = 34:52]
  %tmp_1_cast = zext i12 %tmp_1 to i13, !dbg !40  ; [#uses=1 type=i13] [debug line = 34:52]
  br label %.preheader14, !dbg !41                ; [debug line = 22:14]

.preheader14:                                     ; preds = %.preheader14.backedge, %.preheader14.preheader
  %j = phi i6 [ 0, %.preheader14.preheader ], [ %j_1, %.preheader14.backedge ] ; [#uses=5 type=i6]
  %j_cast1 = zext i6 %j to i13, !dbg !41          ; [#uses=1 type=i13] [debug line = 22:14]
  %j_cast2 = zext i6 %j to i12, !dbg !41          ; [#uses=1 type=i12] [debug line = 22:14]
  %j_cast = zext i6 %j to i7, !dbg !41            ; [#uses=7 type=i7] [debug line = 22:14]
  %exitcond2 = icmp eq i6 %j, -14, !dbg !41       ; [#uses=1 type=i1] [debug line = 22:14]
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 50, i64 50, i64 50) nounwind ; [#uses=0 type=i32]
  %j_1 = add i6 %j, 1, !dbg !42                   ; [#uses=1 type=i6] [debug line = 22:20]
  call void @llvm.dbg.value(metadata !{i6 %j_1}, i64 0, metadata !43), !dbg !42 ; [debug line = 22:20] [debug variable = j]
  br i1 %exitcond2, label %3, label %_ifconv, !dbg !41 ; [debug line = 22:14]

_ifconv:                                          ; preds = %.preheader14
  %tmp1 = add i7 %j_cast, -51, !dbg !36           ; [#uses=1 type=i7] [debug line = 29:54]
  %tmp1_cast = sext i7 %tmp1 to i13, !dbg !36     ; [#uses=1 type=i13] [debug line = 29:54]
  %tmp_5 = add i13 %tmp1_cast, %tmp, !dbg !36     ; [#uses=1 type=i13] [debug line = 29:54]
  %tmp_6 = sext i13 %tmp_5 to i64, !dbg !36       ; [#uses=1 type=i64] [debug line = 29:54]
  %ImgIn_addr = getelementptr [2100 x i32]* %ImgIn, i64 0, i64 %tmp_6, !dbg !36 ; [#uses=1 type=i32*] [debug line = 29:54]
  %ImgIn_load = load i32* %ImgIn_addr, align 4, !dbg !36 ; [#uses=1 type=i32] [debug line = 29:54]
  %tmp_7 = icmp ne i32 %ImgIn_load, 0, !dbg !36   ; [#uses=3 type=i1] [debug line = 29:54]
  %p0_cast = zext i1 %tmp_7 to i2, !dbg !36       ; [#uses=1 type=i2] [debug line = 29:54]
  %tmp2 = add i7 %j_cast, -50, !dbg !44           ; [#uses=1 type=i7] [debug line = 30:52]
  %tmp2_cast = sext i7 %tmp2 to i12, !dbg !44     ; [#uses=1 type=i12] [debug line = 30:52]
  %tmp_9 = add i12 %tmp2_cast, %tmp_2, !dbg !44   ; [#uses=1 type=i12] [debug line = 30:52]
  %tmp_s = zext i12 %tmp_9 to i64, !dbg !44       ; [#uses=1 type=i64] [debug line = 30:52]
  %ImgIn_addr_1 = getelementptr [2100 x i32]* %ImgIn, i64 0, i64 %tmp_s, !dbg !44 ; [#uses=1 type=i32*] [debug line = 30:52]
  %ImgIn_load_1 = load i32* %ImgIn_addr_1, align 4, !dbg !44 ; [#uses=1 type=i32] [debug line = 30:52]
  %tmp_3 = icmp ne i32 %ImgIn_load_1, 0, !dbg !44 ; [#uses=5 type=i1] [debug line = 30:52]
  %tmp3 = add i7 %j_cast, -49, !dbg !45           ; [#uses=1 type=i7] [debug line = 31:54]
  %tmp3_cast = sext i7 %tmp3 to i12, !dbg !45     ; [#uses=1 type=i12] [debug line = 31:54]
  %tmp_4 = add i12 %tmp3_cast, %tmp_2, !dbg !45   ; [#uses=1 type=i12] [debug line = 31:54]
  %tmp_8 = zext i12 %tmp_4 to i64, !dbg !45       ; [#uses=1 type=i64] [debug line = 31:54]
  %ImgIn_addr_2 = getelementptr [2100 x i32]* %ImgIn, i64 0, i64 %tmp_8, !dbg !45 ; [#uses=1 type=i32*] [debug line = 31:54]
  %ImgIn_load_2 = load i32* %ImgIn_addr_2, align 4, !dbg !45 ; [#uses=1 type=i32] [debug line = 31:54]
  %tmp_10 = icmp ne i32 %ImgIn_load_2, 0, !dbg !45 ; [#uses=3 type=i1] [debug line = 31:54]
  %tmp4 = add i7 %j_cast, -1, !dbg !46            ; [#uses=1 type=i7] [debug line = 32:52]
  %tmp4_cast = sext i7 %tmp4 to i12, !dbg !46     ; [#uses=1 type=i12] [debug line = 32:52]
  %tmp_11 = add i12 %tmp4_cast, %tmp_2, !dbg !46  ; [#uses=1 type=i12] [debug line = 32:52]
  %tmp_12 = zext i12 %tmp_11 to i64, !dbg !46     ; [#uses=1 type=i64] [debug line = 32:52]
  %ImgIn_addr_3 = getelementptr [2100 x i32]* %ImgIn, i64 0, i64 %tmp_12, !dbg !46 ; [#uses=1 type=i32*] [debug line = 32:52]
  %ImgIn_load_3 = load i32* %ImgIn_addr_3, align 4, !dbg !46 ; [#uses=1 type=i32] [debug line = 32:52]
  %tmp_13 = icmp ne i32 %ImgIn_load_3, 0, !dbg !46 ; [#uses=5 type=i1] [debug line = 32:52]
  %p3_cast = zext i1 %tmp_13 to i2, !dbg !46      ; [#uses=1 type=i2] [debug line = 32:52]
  %tmp_14 = add i12 %j_cast2, %tmp_2, !dbg !47    ; [#uses=1 type=i12] [debug line = 33:50]
  %tmp_15 = zext i12 %tmp_14 to i64, !dbg !47     ; [#uses=2 type=i64] [debug line = 33:50]
  %ImgIn_addr_4 = getelementptr [2100 x i32]* %ImgIn, i64 0, i64 %tmp_15, !dbg !47 ; [#uses=1 type=i32*] [debug line = 33:50]
  %ImgIn_load_4 = load i32* %ImgIn_addr_4, align 4, !dbg !47 ; [#uses=1 type=i32] [debug line = 33:50]
  %tmp_16 = add i13 %j_cast1, %tmp_1_cast, !dbg !40 ; [#uses=1 type=i13] [debug line = 34:52]
  %tmp_17 = zext i13 %tmp_16 to i64, !dbg !40     ; [#uses=1 type=i64] [debug line = 34:52]
  %ImgIn_addr_5 = getelementptr [2100 x i32]* %ImgIn, i64 0, i64 %tmp_17, !dbg !40 ; [#uses=1 type=i32*] [debug line = 34:52]
  %ImgIn_load_5 = load i32* %ImgIn_addr_5, align 4, !dbg !40 ; [#uses=1 type=i32] [debug line = 34:52]
  %tmp_18 = icmp ne i32 %ImgIn_load_5, 0, !dbg !40 ; [#uses=5 type=i1] [debug line = 34:52]
  %tmp5 = add i7 %j_cast, 49, !dbg !48            ; [#uses=1 type=i7] [debug line = 35:54]
  %tmp5_cast = zext i7 %tmp5 to i12, !dbg !48     ; [#uses=1 type=i12] [debug line = 35:54]
  %tmp_19 = add i12 %tmp5_cast, %tmp_2, !dbg !48  ; [#uses=1 type=i12] [debug line = 35:54]
  %tmp_20 = zext i12 %tmp_19 to i64, !dbg !48     ; [#uses=1 type=i64] [debug line = 35:54]
  %ImgIn_addr_6 = getelementptr [2100 x i32]* %ImgIn, i64 0, i64 %tmp_20, !dbg !48 ; [#uses=1 type=i32*] [debug line = 35:54]
  %ImgIn_load_6 = load i32* %ImgIn_addr_6, align 4, !dbg !48 ; [#uses=1 type=i32] [debug line = 35:54]
  %tmp_21 = icmp ne i32 %ImgIn_load_6, 0, !dbg !48 ; [#uses=3 type=i1] [debug line = 35:54]
  %tmp6 = add i7 %j_cast, 50, !dbg !49            ; [#uses=1 type=i7] [debug line = 36:52]
  %tmp6_cast = zext i7 %tmp6 to i12, !dbg !49     ; [#uses=1 type=i12] [debug line = 36:52]
  %tmp_22 = add i12 %tmp6_cast, %tmp_2, !dbg !49  ; [#uses=1 type=i12] [debug line = 36:52]
  %tmp_23 = zext i12 %tmp_22 to i64, !dbg !49     ; [#uses=1 type=i64] [debug line = 36:52]
  %ImgIn_addr_7 = getelementptr [2100 x i32]* %ImgIn, i64 0, i64 %tmp_23, !dbg !49 ; [#uses=1 type=i32*] [debug line = 36:52]
  %ImgIn_load_7 = load i32* %ImgIn_addr_7, align 4, !dbg !49 ; [#uses=1 type=i32] [debug line = 36:52]
  %tmp_24 = icmp ne i32 %ImgIn_load_7, 0, !dbg !49 ; [#uses=6 type=i1] [debug line = 36:52]
  %p7_cast = zext i1 %tmp_24 to i2, !dbg !49      ; [#uses=1 type=i2] [debug line = 36:52]
  %tmp7 = add i7 %j_cast, 51, !dbg !50            ; [#uses=1 type=i7] [debug line = 37:54]
  %tmp7_cast = zext i7 %tmp7 to i12, !dbg !50     ; [#uses=1 type=i12] [debug line = 37:54]
  %tmp_25 = add i12 %tmp7_cast, %tmp_2, !dbg !50  ; [#uses=1 type=i12] [debug line = 37:54]
  %tmp_26 = zext i12 %tmp_25 to i64, !dbg !50     ; [#uses=1 type=i64] [debug line = 37:54]
  %ImgIn_addr_8 = getelementptr [2100 x i32]* %ImgIn, i64 0, i64 %tmp_26, !dbg !50 ; [#uses=1 type=i32*] [debug line = 37:54]
  %ImgIn_load_8 = load i32* %ImgIn_addr_8, align 4, !dbg !50 ; [#uses=1 type=i32] [debug line = 37:54]
  %tmp_27 = icmp ne i32 %ImgIn_load_8, 0, !dbg !50 ; [#uses=3 type=i1] [debug line = 37:54]
  %not_s = xor i1 %tmp_3, true, !dbg !51          ; [#uses=1 type=i1] [debug line = 39:128]
  %p_s = and i1 %tmp_10, %not_s, !dbg !51         ; [#uses=1 type=i1] [debug line = 39:128]
  %tmp_35_cast = zext i1 %p_s to i2               ; [#uses=1 type=i2]
  %not_1 = xor i1 %tmp_10, true                   ; [#uses=1 type=i1]
  %tmp_28 = and i1 %tmp_18, %not_1                ; [#uses=1 type=i1]
  %tmp_37_cast = zext i1 %tmp_28 to i2            ; [#uses=1 type=i2]
  %not_2 = xor i1 %tmp_18, true                   ; [#uses=1 type=i1]
  %p_4 = and i1 %tmp_27, %not_2                   ; [#uses=1 type=i1]
  %tmp_38_cast = zext i1 %p_4 to i2               ; [#uses=1 type=i2]
  %not_3 = xor i1 %tmp_27, true                   ; [#uses=1 type=i1]
  %tmp_29 = and i1 %tmp_24, %not_3                ; [#uses=1 type=i1]
  %tmp_40_cast = zext i1 %tmp_29 to i2            ; [#uses=1 type=i2]
  %not_4 = xor i1 %tmp_24, true                   ; [#uses=1 type=i1]
  %p_5 = and i1 %tmp_21, %not_4                   ; [#uses=1 type=i1]
  %tmp_41_cast = zext i1 %p_5 to i2               ; [#uses=1 type=i2]
  %not_5 = xor i1 %tmp_21, true                   ; [#uses=1 type=i1]
  %tmp_30 = and i1 %tmp_13, %not_5                ; [#uses=1 type=i1]
  %tmp_43_cast = zext i1 %tmp_30 to i2            ; [#uses=1 type=i2]
  %not_6 = xor i1 %tmp_13, true                   ; [#uses=1 type=i1]
  %p_6 = and i1 %tmp_7, %not_6                    ; [#uses=1 type=i1]
  %tmp_44_cast = zext i1 %p_6 to i2               ; [#uses=1 type=i2]
  %not_7 = xor i1 %tmp_7, true                    ; [#uses=1 type=i1]
  %tmp_31 = and i1 %tmp_3, %not_7                 ; [#uses=1 type=i1]
  %tmp_46_cast = zext i1 %tmp_31 to i2            ; [#uses=1 type=i2]
  %tmp9 = add i2 %tmp_35_cast, %tmp_46_cast       ; [#uses=1 type=i2]
  %tmp9_cast = zext i2 %tmp9 to i3                ; [#uses=1 type=i3]
  %tmp10 = add i2 %tmp_44_cast, %tmp_37_cast      ; [#uses=1 type=i2]
  %tmp10_cast = zext i2 %tmp10 to i3              ; [#uses=1 type=i3]
  %tmp8 = add i3 %tmp10_cast, %tmp9_cast          ; [#uses=1 type=i3]
  %tmp8_cast = zext i3 %tmp8 to i4                ; [#uses=1 type=i4]
  %tmp12 = add i2 %tmp_43_cast, %tmp_41_cast      ; [#uses=1 type=i2]
  %tmp12_cast = zext i2 %tmp12 to i3              ; [#uses=1 type=i3]
  %tmp13 = add i2 %tmp_40_cast, %tmp_38_cast      ; [#uses=1 type=i2]
  %tmp13_cast = zext i2 %tmp13 to i3              ; [#uses=1 type=i3]
  %tmp11 = add i3 %tmp13_cast, %tmp12_cast        ; [#uses=1 type=i3]
  %tmp11_cast = zext i3 %tmp11 to i4              ; [#uses=1 type=i4]
  %A = add i4 %tmp11_cast, %tmp8_cast             ; [#uses=1 type=i4]
  call void @llvm.dbg.value(metadata !{i4 %A}, i64 0, metadata !52), !dbg !54 ; [debug line = 39:18] [debug variable = A]
  %tmp_53_cast = zext i1 %tmp_3 to i2, !dbg !55   ; [#uses=1 type=i2] [debug line = 40:43]
  %tmp_54_cast = zext i1 %tmp_10 to i2, !dbg !55  ; [#uses=1 type=i2] [debug line = 40:43]
  %tmp_55_cast = zext i1 %tmp_18 to i2, !dbg !55  ; [#uses=1 type=i2] [debug line = 40:43]
  %tmp_56_cast = zext i1 %tmp_27 to i2, !dbg !55  ; [#uses=1 type=i2] [debug line = 40:43]
  %tmp_57_cast = zext i1 %tmp_21 to i2, !dbg !55  ; [#uses=1 type=i2] [debug line = 40:43]
  %tmp14 = add i2 %tmp_57_cast, %p7_cast, !dbg !55 ; [#uses=1 type=i2] [debug line = 40:43]
  %tmp20_cast = zext i2 %tmp14 to i3, !dbg !55    ; [#uses=1 type=i3] [debug line = 40:43]
  %tmp15 = add i2 %tmp_55_cast, %p3_cast, !dbg !55 ; [#uses=1 type=i2] [debug line = 40:43]
  %tmp21_cast = zext i2 %tmp15 to i3, !dbg !55    ; [#uses=1 type=i3] [debug line = 40:43]
  %tmp16 = add i3 %tmp21_cast, %tmp20_cast, !dbg !55 ; [#uses=1 type=i3] [debug line = 40:43]
  %tmp19_cast = zext i3 %tmp16 to i4, !dbg !55    ; [#uses=1 type=i4] [debug line = 40:43]
  %tmp17 = add i2 %tmp_53_cast, %tmp_54_cast, !dbg !55 ; [#uses=1 type=i2] [debug line = 40:43]
  %tmp23_cast = zext i2 %tmp17 to i3, !dbg !55    ; [#uses=1 type=i3] [debug line = 40:43]
  %tmp18 = add i2 %p0_cast, %tmp_56_cast, !dbg !55 ; [#uses=1 type=i2] [debug line = 40:43]
  %tmp24_cast = zext i2 %tmp18 to i3, !dbg !55    ; [#uses=1 type=i3] [debug line = 40:43]
  %tmp19 = add i3 %tmp24_cast, %tmp23_cast, !dbg !55 ; [#uses=1 type=i3] [debug line = 40:43]
  %tmp22_cast = zext i3 %tmp19 to i4, !dbg !55    ; [#uses=1 type=i4] [debug line = 40:43]
  %B = add i4 %tmp22_cast, %tmp19_cast, !dbg !55  ; [#uses=2 type=i4] [debug line = 40:43]
  call void @llvm.dbg.value(metadata !{i4 %B}, i64 0, metadata !56), !dbg !55 ; [debug line = 40:43] [debug variable = B]
  %tmp_32 = and i1 %tmp_18, %tmp_3, !dbg !57      ; [#uses=2 type=i1] [debug line = 42:4]
  %m1 = and i1 %tmp_24, %tmp_32, !dbg !57         ; [#uses=1 type=i1] [debug line = 42:4]
  call void @llvm.dbg.value(metadata !{i1 %m1}, i64 0, metadata !58), !dbg !57 ; [debug line = 42:4] [debug variable = m1]
  %tmp_33 = and i1 %tmp_24, %tmp_18, !dbg !59     ; [#uses=1 type=i1] [debug line = 43:4]
  %m2 = and i1 %tmp_13, %tmp_33, !dbg !59         ; [#uses=1 type=i1] [debug line = 43:4]
  call void @llvm.dbg.value(metadata !{i1 %m2}, i64 0, metadata !60), !dbg !59 ; [debug line = 43:4] [debug variable = m2]
  %tmp_34 = icmp eq i4 %A, 1, !dbg !61            ; [#uses=1 type=i1] [debug line = 44:4]
  %tmp_44 = call i3 @_ssdm_op_PartSelect.i3.i4.i32.i32(i4 %B, i32 1, i32 3), !dbg !61 ; [#uses=1 type=i3] [debug line = 44:4]
  %icmp = icmp ne i3 %tmp_44, 0, !dbg !61         ; [#uses=1 type=i1] [debug line = 44:4]
  %tmp_36 = icmp ult i4 %B, 7, !dbg !61           ; [#uses=1 type=i1] [debug line = 44:4]
  %tmp20 = and i1 %icmp, %tmp_36, !dbg !61        ; [#uses=1 type=i1] [debug line = 44:4]
  %or_cond7 = and i1 %tmp20, %tmp_34, !dbg !61    ; [#uses=1 type=i1] [debug line = 44:4]
  %tmp_37 = or i1 %m1, %m2                        ; [#uses=1 type=i1]
  %tmp_38 = and i1 %tmp_24, %tmp_3, !dbg !62      ; [#uses=1 type=i1] [debug line = 47:4]
  %tmp_39 = or i1 %tmp_32, %tmp_38                ; [#uses=1 type=i1]
  %tmp_40 = and i1 %tmp_13, %tmp_39               ; [#uses=1 type=i1]
  %tmp_7528_demorgan = and i1 %tmp_37, %tmp_40, !dbg !63 ; [#uses=1 type=i1] [debug line = 50:25]
  %tmp_41 = xor i1 %tmp_7528_demorgan, true, !dbg !63 ; [#uses=1 type=i1] [debug line = 50:25]
  %p_1 = and i1 %or_cond7, %tmp_41, !dbg !63      ; [#uses=1 type=i1] [debug line = 50:25]
  %tmp_42 = icmp eq i32 %ImgIn_load_4, 255, !dbg !64 ; [#uses=1 type=i1] [debug line = 52:4]
  %or_cond2 = and i1 %p_1, %tmp_42, !dbg !64      ; [#uses=1 type=i1] [debug line = 52:4]
  br i1 %or_cond2, label %2, label %.preheader14.backedge, !dbg !64 ; [debug line = 52:4]

; <label>:2                                       ; preds = %_ifconv
  %count_load_1 = load i32* %count, !dbg !65      ; [#uses=1 type=i32] [debug line = 53:5]
  %count_1 = add nsw i32 %count_load_1, 1, !dbg !65 ; [#uses=1 type=i32] [debug line = 53:5]
  call void @llvm.dbg.value(metadata !{i32 %count_1}, i64 0, metadata !0), !dbg !65 ; [debug line = 53:5] [debug variable = count]
  %ImgOut_addr_1 = getelementptr [2100 x i32]* %ImgOut, i64 0, i64 %tmp_15, !dbg !67 ; [#uses=1 type=i32*] [debug line = 54:5]
  store i32 0, i32* %ImgOut_addr_1, align 4, !dbg !67 ; [debug line = 54:5]
  store i32 %count_1, i32* %count, !dbg !65       ; [debug line = 53:5]
  br label %.preheader14.backedge, !dbg !68       ; [debug line = 55:4]

.preheader14.backedge:                            ; preds = %2, %_ifconv
  br label %.preheader14

; <label>:3                                       ; preds = %.preheader14
  %i_1 = add i6 %i, 1, !dbg !69                   ; [#uses=1 type=i6] [debug line = 20:20]
  call void @llvm.dbg.value(metadata !{i6 %i_1}, i64 0, metadata !70), !dbg !69 ; [debug line = 20:20] [debug variable = i]
  br label %1, !dbg !69                           ; [debug line = 20:20]

.preheader13:                                     ; preds = %.preheader, %1
  %k = phi i6 [ 0, %1 ], [ %k_1, %.preheader ]    ; [#uses=2 type=i6]
  %phi_mul = phi i12 [ 0, %1 ], [ %next_mul, %.preheader ] ; [#uses=2 type=i12]
  %next_mul = add i12 %phi_mul, 50                ; [#uses=1 type=i12]
  %exitcond1 = icmp eq i6 %k, -22, !dbg !71       ; [#uses=1 type=i1] [debug line = 59:14]
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 42, i64 42, i64 42) nounwind ; [#uses=0 type=i32]
  %k_1 = add i6 %k, 1, !dbg !73                   ; [#uses=1 type=i6] [debug line = 59:20]
  call void @llvm.dbg.value(metadata !{i6 %k_1}, i64 0, metadata !74), !dbg !73 ; [debug line = 59:20] [debug variable = k]
  br i1 %exitcond1, label %5, label %.preheader, !dbg !71 ; [debug line = 59:14]

.preheader:                                       ; preds = %4, %.preheader13
  %l = phi i6 [ %l_1, %4 ], [ 0, %.preheader13 ]  ; [#uses=3 type=i6]
  %l_cast = zext i6 %l to i12, !dbg !75           ; [#uses=1 type=i12] [debug line = 61:14]
  %exitcond = icmp eq i6 %l, -14, !dbg !75        ; [#uses=1 type=i1] [debug line = 61:14]
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 50, i64 50, i64 50) nounwind ; [#uses=0 type=i32]
  %l_1 = add i6 %l, 1, !dbg !78                   ; [#uses=1 type=i6] [debug line = 61:20]
  br i1 %exitcond, label %.preheader13, label %4, !dbg !75 ; [debug line = 61:14]

; <label>:4                                       ; preds = %.preheader
  %tmp_35 = add i12 %phi_mul, %l_cast, !dbg !79   ; [#uses=1 type=i12] [debug line = 63:4]
  %tmp_43 = zext i12 %tmp_35 to i64, !dbg !79     ; [#uses=2 type=i64] [debug line = 63:4]
  %ImgOut_addr = getelementptr [2100 x i32]* %ImgOut, i64 0, i64 %tmp_43, !dbg !79 ; [#uses=1 type=i32*] [debug line = 63:4]
  %ImgOut_load = load i32* %ImgOut_addr, align 4, !dbg !79 ; [#uses=1 type=i32] [debug line = 63:4]
  %ImgIn_addr_9 = getelementptr [2100 x i32]* %ImgIn, i64 0, i64 %tmp_43, !dbg !79 ; [#uses=1 type=i32*] [debug line = 63:4]
  store i32 %ImgOut_load, i32* %ImgIn_addr_9, align 4, !dbg !79 ; [debug line = 63:4]
  call void @llvm.dbg.value(metadata !{i6 %l_1}, i64 0, metadata !81), !dbg !78 ; [debug line = 61:20] [debug variable = l]
  br label %.preheader, !dbg !78                  ; [debug line = 61:20]

; <label>:5                                       ; preds = %.preheader13
  %count_load = load i32* %count, !dbg !82        ; [#uses=1 type=i32] [debug line = 67:2]
  ret i32 %count_load, !dbg !82                   ; [debug line = 67:2]
}

; [#uses=1]
declare i4 @llvm.part.select.i4(i4, i32, i32) nounwind readnone

; [#uses=11]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecMemCore(...) {
entry:
  ret void
}

; [#uses=4]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=3]
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
define weak i3 @_ssdm_op_PartSelect.i3.i4.i32.i32(i4, i32, i32) nounwind readnone {
entry:
  %empty = call i4 @llvm.part.select.i4(i4 %0, i32 %1, i32 %2) ; [#uses=1 type=i4]
  %empty_8 = trunc i4 %empty to i3                ; [#uses=1 type=i3]
  ret i3 %empty_8
}

; [#uses=0]
declare i12 @_ssdm_op_PartSelect.i12.i13.i32.i32(i13, i32, i32) nounwind readnone

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

!0 = metadata !{i32 786688, metadata !1, metadata !"count", metadata !3, i32 18, metadata !6, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1 = metadata !{i32 786443, metadata !2, i32 6, i32 49, metadata !3, i32 0} ; [ DW_TAG_lexical_block ]
!2 = metadata !{i32 786478, i32 0, metadata !3, metadata !"zs_func", metadata !"zs_func", metadata !"_Z7zs_funcPiS_", metadata !3, i32 6, metadata !4, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !8, i32 6} ; [ DW_TAG_subprogram ]
!3 = metadata !{i32 786473, metadata !"ZS_BRAM_F_V1/core.cpp", metadata !"/home/ubuntu-admin/SharedFolder/EIT_Studies/TUB_Docs/Sem2/EmbProj/GitHub/AEP/HLS", null} ; [ DW_TAG_file_type ]
!4 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!5 = metadata !{metadata !6, metadata !7, metadata !7}
!6 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!7 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !6} ; [ DW_TAG_pointer_type ]
!8 = metadata !{metadata !9}
!9 = metadata !{i32 786468}                       ; [ DW_TAG_base_type ]
!10 = metadata !{metadata !11}
!11 = metadata !{i32 0, i32 31, metadata !12}
!12 = metadata !{metadata !13}
!13 = metadata !{metadata !"ImgIn", metadata !14, metadata !"int", i32 0, i32 31}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 0, i32 2099, i32 1}
!16 = metadata !{metadata !17}
!17 = metadata !{i32 0, i32 31, metadata !18}
!18 = metadata !{metadata !19}
!19 = metadata !{metadata !"ImgOut", metadata !14, metadata !"int", i32 0, i32 31}
!20 = metadata !{metadata !21}
!21 = metadata !{i32 0, i32 31, metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{metadata !"return", metadata !24, metadata !"int", i32 0, i32 31}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 1, i32 0}
!26 = metadata !{i32 786689, metadata !2, metadata !"ImgIn", null, i32 6, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!27 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 67200, i64 32, i32 0, i32 0, metadata !6, metadata !28, i32 0, i32 0} ; [ DW_TAG_array_type ]
!28 = metadata !{metadata !29}
!29 = metadata !{i32 786465, i64 0, i64 2099}     ; [ DW_TAG_subrange_type ]
!30 = metadata !{i32 6, i32 17, metadata !2, null}
!31 = metadata !{i32 786689, metadata !2, metadata !"ImgOut", null, i32 6, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!32 = metadata !{i32 6, i32 34, metadata !2, null}
!33 = metadata !{i32 10, i32 1, metadata !1, null}
!34 = metadata !{i32 20, i32 14, metadata !35, null}
!35 = metadata !{i32 786443, metadata !1, i32 20, i32 2, metadata !3, i32 1} ; [ DW_TAG_lexical_block ]
!36 = metadata !{i32 29, i32 54, metadata !37, null}
!37 = metadata !{i32 786443, metadata !38, i32 23, i32 3, metadata !3, i32 4} ; [ DW_TAG_lexical_block ]
!38 = metadata !{i32 786443, metadata !39, i32 22, i32 3, metadata !3, i32 3} ; [ DW_TAG_lexical_block ]
!39 = metadata !{i32 786443, metadata !35, i32 21, i32 2, metadata !3, i32 2} ; [ DW_TAG_lexical_block ]
!40 = metadata !{i32 34, i32 52, metadata !37, null}
!41 = metadata !{i32 22, i32 14, metadata !38, null}
!42 = metadata !{i32 22, i32 20, metadata !38, null}
!43 = metadata !{i32 786688, metadata !38, metadata !"j", metadata !3, i32 22, metadata !6, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!44 = metadata !{i32 30, i32 52, metadata !37, null}
!45 = metadata !{i32 31, i32 54, metadata !37, null}
!46 = metadata !{i32 32, i32 52, metadata !37, null}
!47 = metadata !{i32 33, i32 50, metadata !37, null}
!48 = metadata !{i32 35, i32 54, metadata !37, null}
!49 = metadata !{i32 36, i32 52, metadata !37, null}
!50 = metadata !{i32 37, i32 54, metadata !37, null}
!51 = metadata !{i32 39, i32 128, metadata !37, null}
!52 = metadata !{i32 786688, metadata !37, metadata !"A", metadata !3, i32 39, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!53 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!54 = metadata !{i32 39, i32 18, metadata !37, null}
!55 = metadata !{i32 40, i32 43, metadata !37, null}
!56 = metadata !{i32 786688, metadata !37, metadata !"B", metadata !3, i32 40, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!57 = metadata !{i32 42, i32 4, metadata !37, null}
!58 = metadata !{i32 786688, metadata !37, metadata !"m1", metadata !3, i32 25, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!59 = metadata !{i32 43, i32 4, metadata !37, null}
!60 = metadata !{i32 786688, metadata !37, metadata !"m2", metadata !3, i32 26, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!61 = metadata !{i32 44, i32 4, metadata !37, null}
!62 = metadata !{i32 47, i32 4, metadata !37, null}
!63 = metadata !{i32 50, i32 25, metadata !37, null}
!64 = metadata !{i32 52, i32 4, metadata !37, null}
!65 = metadata !{i32 53, i32 5, metadata !66, null}
!66 = metadata !{i32 786443, metadata !37, i32 52, i32 40, metadata !3, i32 5} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 54, i32 5, metadata !66, null}
!68 = metadata !{i32 55, i32 4, metadata !66, null}
!69 = metadata !{i32 20, i32 20, metadata !35, null}
!70 = metadata !{i32 786688, metadata !35, metadata !"i", metadata !3, i32 20, metadata !6, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!71 = metadata !{i32 59, i32 14, metadata !72, null}
!72 = metadata !{i32 786443, metadata !1, i32 59, i32 2, metadata !3, i32 6} ; [ DW_TAG_lexical_block ]
!73 = metadata !{i32 59, i32 20, metadata !72, null}
!74 = metadata !{i32 786688, metadata !72, metadata !"k", metadata !3, i32 59, metadata !6, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!75 = metadata !{i32 61, i32 14, metadata !76, null}
!76 = metadata !{i32 786443, metadata !77, i32 61, i32 3, metadata !3, i32 8} ; [ DW_TAG_lexical_block ]
!77 = metadata !{i32 786443, metadata !72, i32 60, i32 2, metadata !3, i32 7} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 61, i32 20, metadata !76, null}
!79 = metadata !{i32 63, i32 4, metadata !80, null}
!80 = metadata !{i32 786443, metadata !76, i32 62, i32 3, metadata !3, i32 9} ; [ DW_TAG_lexical_block ]
!81 = metadata !{i32 786688, metadata !76, metadata !"l", metadata !3, i32 61, metadata !6, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!82 = metadata !{i32 67, i32 2, metadata !1, null}
