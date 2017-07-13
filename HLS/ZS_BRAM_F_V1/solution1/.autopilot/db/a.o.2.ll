; ModuleID = '/home/ubuntu-admin/SharedFolder/EIT_Studies/TUB_Docs/Sem2/EmbProj/GitHub/AEP/HLS/ZS_BRAM_F_V1/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zs_func.str = internal unnamed_addr constant [8 x i8] c"zs_func\00" ; [#uses=1 type=[8 x i8]*]
@.str4 = private unnamed_addr constant [12 x i8] c"RAM_1P_BRAM\00", align 1 ; [#uses=2 type=[12 x i8]*]
@.str3 = private unnamed_addr constant [9 x i8] c"CRTL_BUS\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=21 type=[1 x i8]*]
@.str = private unnamed_addr constant [5 x i8] c"bram\00", align 1 ; [#uses=2 type=[5 x i8]*]

; [#uses=0]
define i32 @zs_func([2100 x i32]* %ImgIn, [2100 x i32]* %ImgOut) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([2100 x i32]* %ImgIn) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap([2100 x i32]* %ImgOut) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !23
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @zs_func.str) nounwind
  call void @llvm.dbg.value(metadata !{[2100 x i32]* %ImgIn}, i64 0, metadata !29), !dbg !33 ; [debug line = 6:17] [debug variable = ImgIn]
  call void @llvm.dbg.value(metadata !{[2100 x i32]* %ImgOut}, i64 0, metadata !34), !dbg !35 ; [debug line = 6:34] [debug variable = ImgOut]
  call void (...)* @_ssdm_op_SpecInterface([2100 x i32]* %ImgIn, [5 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([2100 x i32]* %ImgOut, [5 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @.str2, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !36 ; [debug line = 10:1]
  call void (...)* @_ssdm_op_SpecMemCore([2100 x i32]* %ImgIn, [1 x i8]* @.str1, [12 x i8]* @.str4, [1 x i8]* @.str1, i32 -1, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([2100 x i32]* %ImgOut, [1 x i8]* @.str1, [12 x i8]* @.str4, [1 x i8]* @.str1, i32 -1, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  br label %1, !dbg !38                           ; [debug line = 20:14]

; <label>:1                                       ; preds = %5, %0
  %i = phi i6 [ 1, %0 ], [ %i.1, %5 ]             ; [#uses=3 type=i6]
  %count = phi i32 [ 0, %0 ], [ %count.1.lcssa, %5 ] ; [#uses=2 type=i32]
  %i.cast38.cast = zext i6 %i to i13, !dbg !38    ; [#uses=1 type=i13] [debug line = 20:14]
  %exitcond3 = icmp eq i6 %i, -22, !dbg !38       ; [#uses=1 type=i1] [debug line = 20:14]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 41, i64 41, i64 41) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond3, label %.preheader13.preheader, label %.preheader14.preheader, !dbg !38 ; [debug line = 20:14]

.preheader13.preheader:                           ; preds = %1
  %count.lcssa = phi i32 [ %count, %1 ]           ; [#uses=1 type=i32]
  br label %.preheader13, !dbg !40                ; [debug line = 63:4]

.preheader14.preheader:                           ; preds = %1
  %tmp = mul i13 %i.cast38.cast, 50, !dbg !45     ; [#uses=2 type=i13] [debug line = 29:54]
  %tmp.cast = trunc i13 %tmp to i12, !dbg !49     ; [#uses=8 type=i12] [debug line = 34:52]
  %tmp.1 = or i12 %tmp.cast, 1, !dbg !49          ; [#uses=1 type=i12] [debug line = 34:52]
  %tmp.1.cast = zext i12 %tmp.1 to i13, !dbg !49  ; [#uses=1 type=i13] [debug line = 34:52]
  br label %.preheader14, !dbg !50                ; [debug line = 22:14]

.preheader14:                                     ; preds = %._crit_edge23, %.preheader14.preheader
  %j = phi i6 [ %j.1, %._crit_edge23 ], [ 0, %.preheader14.preheader ] ; [#uses=5 type=i6]
  %count.1 = phi i32 [ %count.2, %._crit_edge23 ], [ %count, %.preheader14.preheader ] ; [#uses=3 type=i32]
  %j.cast1 = zext i6 %j to i13, !dbg !50          ; [#uses=1 type=i13] [debug line = 22:14]
  %j.cast2 = zext i6 %j to i12, !dbg !50          ; [#uses=1 type=i12] [debug line = 22:14]
  %j.cast = zext i6 %j to i7, !dbg !50            ; [#uses=7 type=i7] [debug line = 22:14]
  %exitcond2 = icmp eq i6 %j, -14, !dbg !50       ; [#uses=1 type=i1] [debug line = 22:14]
  %3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 50, i64 50, i64 50) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond2, label %5, label %_ifconv, !dbg !50 ; [debug line = 22:14]

_ifconv:                                          ; preds = %.preheader14
  %tmp1 = add i7 %j.cast, -51, !dbg !45           ; [#uses=1 type=i7] [debug line = 29:54]
  %tmp1.cast = sext i7 %tmp1 to i13, !dbg !45     ; [#uses=1 type=i13] [debug line = 29:54]
  %tmp.5 = add i13 %tmp, %tmp1.cast, !dbg !45     ; [#uses=1 type=i13] [debug line = 29:54]
  %tmp.6 = sext i13 %tmp.5 to i64, !dbg !45       ; [#uses=1 type=i64] [debug line = 29:54]
  %ImgIn.addr = getelementptr [2100 x i32]* %ImgIn, i64 0, i64 %tmp.6, !dbg !45 ; [#uses=1 type=i32*] [debug line = 29:54]
  %ImgIn.load = load i32* %ImgIn.addr, align 4, !dbg !45 ; [#uses=1 type=i32] [debug line = 29:54]
  %tmp.7 = icmp ne i32 %ImgIn.load, 0, !dbg !45   ; [#uses=3 type=i1] [debug line = 29:54]
  %p0.cast = zext i1 %tmp.7 to i2, !dbg !45       ; [#uses=1 type=i2] [debug line = 29:54]
  %tmp2 = add i7 %j.cast, -50, !dbg !51           ; [#uses=1 type=i7] [debug line = 30:52]
  %tmp2.cast = sext i7 %tmp2 to i12, !dbg !51     ; [#uses=1 type=i12] [debug line = 30:52]
  %tmp.9 = add i12 %tmp.cast, %tmp2.cast, !dbg !51 ; [#uses=1 type=i12] [debug line = 30:52]
  %tmp. = zext i12 %tmp.9 to i64, !dbg !51        ; [#uses=1 type=i64] [debug line = 30:52]
  %ImgIn.addr.1 = getelementptr [2100 x i32]* %ImgIn, i64 0, i64 %tmp., !dbg !51 ; [#uses=1 type=i32*] [debug line = 30:52]
  %ImgIn.load.1 = load i32* %ImgIn.addr.1, align 4, !dbg !51 ; [#uses=1 type=i32] [debug line = 30:52]
  %tmp.3 = icmp ne i32 %ImgIn.load.1, 0, !dbg !51 ; [#uses=5 type=i1] [debug line = 30:52]
  %tmp3 = add i7 %j.cast, -49, !dbg !52           ; [#uses=1 type=i7] [debug line = 31:54]
  %tmp3.cast = sext i7 %tmp3 to i12, !dbg !52     ; [#uses=1 type=i12] [debug line = 31:54]
  %tmp.4 = add i12 %tmp.cast, %tmp3.cast, !dbg !52 ; [#uses=1 type=i12] [debug line = 31:54]
  %tmp.8 = zext i12 %tmp.4 to i64, !dbg !52       ; [#uses=1 type=i64] [debug line = 31:54]
  %ImgIn.addr.2 = getelementptr [2100 x i32]* %ImgIn, i64 0, i64 %tmp.8, !dbg !52 ; [#uses=1 type=i32*] [debug line = 31:54]
  %ImgIn.load.2 = load i32* %ImgIn.addr.2, align 4, !dbg !52 ; [#uses=1 type=i32] [debug line = 31:54]
  %tmp.10 = icmp ne i32 %ImgIn.load.2, 0, !dbg !52 ; [#uses=3 type=i1] [debug line = 31:54]
  %tmp4 = add i7 %j.cast, -1, !dbg !53            ; [#uses=1 type=i7] [debug line = 32:52]
  %tmp4.cast = sext i7 %tmp4 to i12, !dbg !53     ; [#uses=1 type=i12] [debug line = 32:52]
  %tmp.11 = add i12 %tmp.cast, %tmp4.cast, !dbg !53 ; [#uses=1 type=i12] [debug line = 32:52]
  %tmp.12 = zext i12 %tmp.11 to i64, !dbg !53     ; [#uses=1 type=i64] [debug line = 32:52]
  %ImgIn.addr.3 = getelementptr [2100 x i32]* %ImgIn, i64 0, i64 %tmp.12, !dbg !53 ; [#uses=1 type=i32*] [debug line = 32:52]
  %ImgIn.load.3 = load i32* %ImgIn.addr.3, align 4, !dbg !53 ; [#uses=1 type=i32] [debug line = 32:52]
  %tmp.13 = icmp ne i32 %ImgIn.load.3, 0, !dbg !53 ; [#uses=5 type=i1] [debug line = 32:52]
  %p3.cast = zext i1 %tmp.13 to i2, !dbg !53      ; [#uses=1 type=i2] [debug line = 32:52]
  %tmp.14 = add i12 %tmp.cast, %j.cast2, !dbg !54 ; [#uses=1 type=i12] [debug line = 33:50]
  %tmp.15 = zext i12 %tmp.14 to i64, !dbg !54     ; [#uses=2 type=i64] [debug line = 33:50]
  %ImgIn.addr.4 = getelementptr [2100 x i32]* %ImgIn, i64 0, i64 %tmp.15, !dbg !54 ; [#uses=1 type=i32*] [debug line = 33:50]
  %ImgIn.load.4 = load i32* %ImgIn.addr.4, align 4, !dbg !54 ; [#uses=1 type=i32] [debug line = 33:50]
  %tmp.16 = add i13 %tmp.1.cast, %j.cast1, !dbg !49 ; [#uses=1 type=i13] [debug line = 34:52]
  %tmp.17 = zext i13 %tmp.16 to i64, !dbg !49     ; [#uses=1 type=i64] [debug line = 34:52]
  %ImgIn.addr.5 = getelementptr [2100 x i32]* %ImgIn, i64 0, i64 %tmp.17, !dbg !49 ; [#uses=1 type=i32*] [debug line = 34:52]
  %ImgIn.load.5 = load i32* %ImgIn.addr.5, align 4, !dbg !49 ; [#uses=1 type=i32] [debug line = 34:52]
  %tmp.18 = icmp ne i32 %ImgIn.load.5, 0, !dbg !49 ; [#uses=5 type=i1] [debug line = 34:52]
  %tmp5 = add i7 %j.cast, 49, !dbg !55            ; [#uses=1 type=i7] [debug line = 35:54]
  %tmp5.cast = zext i7 %tmp5 to i12, !dbg !55     ; [#uses=1 type=i12] [debug line = 35:54]
  %tmp.19 = add i12 %tmp.cast, %tmp5.cast, !dbg !55 ; [#uses=1 type=i12] [debug line = 35:54]
  %tmp.20 = zext i12 %tmp.19 to i64, !dbg !55     ; [#uses=1 type=i64] [debug line = 35:54]
  %ImgIn.addr.6 = getelementptr [2100 x i32]* %ImgIn, i64 0, i64 %tmp.20, !dbg !55 ; [#uses=1 type=i32*] [debug line = 35:54]
  %ImgIn.load.6 = load i32* %ImgIn.addr.6, align 4, !dbg !55 ; [#uses=1 type=i32] [debug line = 35:54]
  %tmp.21 = icmp ne i32 %ImgIn.load.6, 0, !dbg !55 ; [#uses=3 type=i1] [debug line = 35:54]
  %tmp6 = add i7 %j.cast, 50, !dbg !56            ; [#uses=1 type=i7] [debug line = 36:52]
  %tmp6.cast = zext i7 %tmp6 to i12, !dbg !56     ; [#uses=1 type=i12] [debug line = 36:52]
  %tmp.22 = add i12 %tmp.cast, %tmp6.cast, !dbg !56 ; [#uses=1 type=i12] [debug line = 36:52]
  %tmp.23 = zext i12 %tmp.22 to i64, !dbg !56     ; [#uses=1 type=i64] [debug line = 36:52]
  %ImgIn.addr.7 = getelementptr [2100 x i32]* %ImgIn, i64 0, i64 %tmp.23, !dbg !56 ; [#uses=1 type=i32*] [debug line = 36:52]
  %ImgIn.load.7 = load i32* %ImgIn.addr.7, align 4, !dbg !56 ; [#uses=1 type=i32] [debug line = 36:52]
  %tmp.24 = icmp ne i32 %ImgIn.load.7, 0, !dbg !56 ; [#uses=6 type=i1] [debug line = 36:52]
  %p7.cast = zext i1 %tmp.24 to i2, !dbg !56      ; [#uses=1 type=i2] [debug line = 36:52]
  %tmp7 = add i7 %j.cast, 51, !dbg !57            ; [#uses=1 type=i7] [debug line = 37:54]
  %tmp7.cast = zext i7 %tmp7 to i12, !dbg !57     ; [#uses=1 type=i12] [debug line = 37:54]
  %tmp.25 = add i12 %tmp.cast, %tmp7.cast, !dbg !57 ; [#uses=1 type=i12] [debug line = 37:54]
  %tmp.26 = zext i12 %tmp.25 to i64, !dbg !57     ; [#uses=1 type=i64] [debug line = 37:54]
  %ImgIn.addr.8 = getelementptr [2100 x i32]* %ImgIn, i64 0, i64 %tmp.26, !dbg !57 ; [#uses=1 type=i32*] [debug line = 37:54]
  %ImgIn.load.8 = load i32* %ImgIn.addr.8, align 4, !dbg !57 ; [#uses=1 type=i32] [debug line = 37:54]
  %tmp.27 = icmp ne i32 %ImgIn.load.8, 0, !dbg !57 ; [#uses=3 type=i1] [debug line = 37:54]
  %not. = xor i1 %tmp.3, true, !dbg !58           ; [#uses=1 type=i1] [debug line = 39:128]
  %. = and i1 %tmp.10, %not., !dbg !58            ; [#uses=1 type=i1] [debug line = 39:128]
  %tmp.35.cast = zext i1 %. to i2                 ; [#uses=1 type=i2]
  %not.1 = xor i1 %tmp.10, true                   ; [#uses=1 type=i1]
  %tmp.28 = and i1 %tmp.18, %not.1                ; [#uses=1 type=i1]
  %tmp.37.cast = zext i1 %tmp.28 to i2            ; [#uses=1 type=i2]
  %not.2 = xor i1 %tmp.18, true                   ; [#uses=1 type=i1]
  %.4 = and i1 %tmp.27, %not.2                    ; [#uses=1 type=i1]
  %tmp.38.cast = zext i1 %.4 to i2                ; [#uses=1 type=i2]
  %not.3 = xor i1 %tmp.27, true                   ; [#uses=1 type=i1]
  %tmp.29 = and i1 %tmp.24, %not.3                ; [#uses=1 type=i1]
  %tmp.40.cast = zext i1 %tmp.29 to i2            ; [#uses=1 type=i2]
  %not.4 = xor i1 %tmp.24, true                   ; [#uses=1 type=i1]
  %.5 = and i1 %tmp.21, %not.4                    ; [#uses=1 type=i1]
  %tmp.41.cast = zext i1 %.5 to i2                ; [#uses=1 type=i2]
  %not.5 = xor i1 %tmp.21, true                   ; [#uses=1 type=i1]
  %tmp.30 = and i1 %tmp.13, %not.5                ; [#uses=1 type=i1]
  %tmp.43.cast = zext i1 %tmp.30 to i2            ; [#uses=1 type=i2]
  %not.6 = xor i1 %tmp.13, true                   ; [#uses=1 type=i1]
  %.6 = and i1 %tmp.7, %not.6                     ; [#uses=1 type=i1]
  %tmp.44.cast = zext i1 %.6 to i2                ; [#uses=1 type=i2]
  %not.7 = xor i1 %tmp.7, true                    ; [#uses=1 type=i1]
  %tmp.31 = and i1 %tmp.3, %not.7                 ; [#uses=1 type=i1]
  %tmp.46.cast = zext i1 %tmp.31 to i2            ; [#uses=1 type=i2]
  %tmp9 = add i2 %tmp.46.cast, %tmp.35.cast       ; [#uses=1 type=i2]
  %tmp9.cast = zext i2 %tmp9 to i3                ; [#uses=1 type=i3]
  %tmp10 = add i2 %tmp.37.cast, %tmp.44.cast      ; [#uses=1 type=i2]
  %tmp10.cast = zext i2 %tmp10 to i3              ; [#uses=1 type=i3]
  %tmp8 = add i3 %tmp9.cast, %tmp10.cast          ; [#uses=1 type=i3]
  %tmp8.cast = zext i3 %tmp8 to i4                ; [#uses=1 type=i4]
  %tmp12 = add i2 %tmp.41.cast, %tmp.43.cast      ; [#uses=1 type=i2]
  %tmp12.cast = zext i2 %tmp12 to i3              ; [#uses=1 type=i3]
  %tmp13 = add i2 %tmp.38.cast, %tmp.40.cast      ; [#uses=1 type=i2]
  %tmp13.cast = zext i2 %tmp13 to i3              ; [#uses=1 type=i3]
  %tmp11 = add i3 %tmp12.cast, %tmp13.cast        ; [#uses=1 type=i3]
  %tmp11.cast = zext i3 %tmp11 to i4              ; [#uses=1 type=i4]
  %A = add i4 %tmp8.cast, %tmp11.cast             ; [#uses=1 type=i4]
  call void @llvm.dbg.value(metadata !{i4 %A}, i64 0, metadata !59), !dbg !61 ; [debug line = 39:18] [debug variable = A]
  %tmp.53.cast = zext i1 %tmp.3 to i2, !dbg !62   ; [#uses=1 type=i2] [debug line = 40:43]
  %tmp.54.cast = zext i1 %tmp.10 to i2, !dbg !62  ; [#uses=1 type=i2] [debug line = 40:43]
  %tmp.55.cast = zext i1 %tmp.18 to i2, !dbg !62  ; [#uses=1 type=i2] [debug line = 40:43]
  %tmp.56.cast = zext i1 %tmp.27 to i2, !dbg !62  ; [#uses=1 type=i2] [debug line = 40:43]
  %tmp.57.cast = zext i1 %tmp.21 to i2, !dbg !62  ; [#uses=1 type=i2] [debug line = 40:43]
  %tmp14 = add i2 %p7.cast, %tmp.57.cast, !dbg !62 ; [#uses=1 type=i2] [debug line = 40:43]
  %tmp20.cast = zext i2 %tmp14 to i3, !dbg !62    ; [#uses=1 type=i3] [debug line = 40:43]
  %tmp15 = add i2 %p3.cast, %tmp.55.cast, !dbg !62 ; [#uses=1 type=i2] [debug line = 40:43]
  %tmp21.cast = zext i2 %tmp15 to i3, !dbg !62    ; [#uses=1 type=i3] [debug line = 40:43]
  %tmp16 = add i3 %tmp20.cast, %tmp21.cast, !dbg !62 ; [#uses=1 type=i3] [debug line = 40:43]
  %tmp19.cast = zext i3 %tmp16 to i4, !dbg !62    ; [#uses=1 type=i4] [debug line = 40:43]
  %tmp17 = add i2 %tmp.54.cast, %tmp.53.cast, !dbg !62 ; [#uses=1 type=i2] [debug line = 40:43]
  %tmp23.cast = zext i2 %tmp17 to i3, !dbg !62    ; [#uses=1 type=i3] [debug line = 40:43]
  %tmp18 = add i2 %tmp.56.cast, %p0.cast, !dbg !62 ; [#uses=1 type=i2] [debug line = 40:43]
  %tmp24.cast = zext i2 %tmp18 to i3, !dbg !62    ; [#uses=1 type=i3] [debug line = 40:43]
  %tmp19 = add i3 %tmp23.cast, %tmp24.cast, !dbg !62 ; [#uses=1 type=i3] [debug line = 40:43]
  %tmp22.cast = zext i3 %tmp19 to i4, !dbg !62    ; [#uses=1 type=i4] [debug line = 40:43]
  %B = add i4 %tmp19.cast, %tmp22.cast, !dbg !62  ; [#uses=2 type=i4] [debug line = 40:43]
  call void @llvm.dbg.value(metadata !{i4 %B}, i64 0, metadata !63), !dbg !62 ; [debug line = 40:43] [debug variable = B]
  %tmp.32 = and i1 %tmp.18, %tmp.3, !dbg !64      ; [#uses=2 type=i1] [debug line = 42:4]
  %m1 = and i1 %tmp.24, %tmp.32, !dbg !64         ; [#uses=1 type=i1] [debug line = 42:4]
  call void @llvm.dbg.value(metadata !{i1 %m1}, i64 0, metadata !65), !dbg !64 ; [debug line = 42:4] [debug variable = m1]
  %tmp.33 = and i1 %tmp.24, %tmp.18, !dbg !66     ; [#uses=1 type=i1] [debug line = 43:4]
  %m2 = and i1 %tmp.13, %tmp.33, !dbg !66         ; [#uses=1 type=i1] [debug line = 43:4]
  call void @llvm.dbg.value(metadata !{i1 %m2}, i64 0, metadata !67), !dbg !66 ; [debug line = 43:4] [debug variable = m2]
  %tmp.34 = icmp eq i4 %A, 1, !dbg !68            ; [#uses=1 type=i1] [debug line = 44:4]
  %tmp.35 = icmp ugt i4 %B, 1, !dbg !68           ; [#uses=1 type=i1] [debug line = 44:4]
  %tmp.36 = icmp ult i4 %B, 7, !dbg !68           ; [#uses=1 type=i1] [debug line = 44:4]
  %tmp20 = and i1 %tmp.35, %tmp.36, !dbg !68      ; [#uses=1 type=i1] [debug line = 44:4]
  %or.cond7 = and i1 %tmp20, %tmp.34, !dbg !68    ; [#uses=1 type=i1] [debug line = 44:4]
  %tmp.37 = or i1 %m1, %m2                        ; [#uses=1 type=i1]
  %tmp.38 = and i1 %tmp.24, %tmp.3, !dbg !69      ; [#uses=1 type=i1] [debug line = 47:4]
  %tmp.39 = or i1 %tmp.32, %tmp.38                ; [#uses=1 type=i1]
  %tmp.40 = and i1 %tmp.13, %tmp.39               ; [#uses=1 type=i1]
  %tmp.7528.demorgan = and i1 %tmp.37, %tmp.40, !dbg !70 ; [#uses=1 type=i1] [debug line = 50:25]
  %tmp.41 = xor i1 %tmp.7528.demorgan, true, !dbg !70 ; [#uses=1 type=i1] [debug line = 50:25]
  %.1 = and i1 %or.cond7, %tmp.41, !dbg !70       ; [#uses=1 type=i1] [debug line = 50:25]
  %tmp.42 = icmp eq i32 %ImgIn.load.4, 255, !dbg !71 ; [#uses=1 type=i1] [debug line = 52:4]
  %or.cond2 = and i1 %.1, %tmp.42, !dbg !71       ; [#uses=1 type=i1] [debug line = 52:4]
  br i1 %or.cond2, label %4, label %._crit_edge23, !dbg !71 ; [debug line = 52:4]

; <label>:4                                       ; preds = %_ifconv
  %count.3 = add nsw i32 %count.1, 1, !dbg !72    ; [#uses=1 type=i32] [debug line = 53:5]
  call void @llvm.dbg.value(metadata !{i32 %count.3}, i64 0, metadata !74), !dbg !72 ; [debug line = 53:5] [debug variable = count]
  %ImgOut.addr.1 = getelementptr [2100 x i32]* %ImgOut, i64 0, i64 %tmp.15, !dbg !75 ; [#uses=1 type=i32*] [debug line = 54:5]
  store i32 0, i32* %ImgOut.addr.1, align 4, !dbg !75 ; [debug line = 54:5]
  br label %._crit_edge23, !dbg !76               ; [debug line = 55:4]

._crit_edge23:                                    ; preds = %4, %_ifconv
  %count.2 = phi i32 [ %count.3, %4 ], [ %count.1, %_ifconv ] ; [#uses=1 type=i32]
  %j.1 = add i6 %j, 1, !dbg !77                   ; [#uses=1 type=i6] [debug line = 22:20]
  call void @llvm.dbg.value(metadata !{i6 %j.1}, i64 0, metadata !78), !dbg !77 ; [debug line = 22:20] [debug variable = j]
  br label %.preheader14, !dbg !77                ; [debug line = 22:20]

; <label>:5                                       ; preds = %.preheader14
  %count.1.lcssa = phi i32 [ %count.1, %.preheader14 ] ; [#uses=1 type=i32]
  %i.1 = add i6 %i, 1, !dbg !79                   ; [#uses=1 type=i6] [debug line = 20:20]
  call void @llvm.dbg.value(metadata !{i6 %i.1}, i64 0, metadata !80), !dbg !79 ; [debug line = 20:20] [debug variable = i]
  br label %1, !dbg !79                           ; [debug line = 20:20]

.preheader13:                                     ; preds = %9, %.preheader13.preheader
  %k = phi i6 [ %k.1, %9 ], [ 0, %.preheader13.preheader ] ; [#uses=3 type=i6]
  %k.cast = zext i6 %k to i12, !dbg !40           ; [#uses=1 type=i12] [debug line = 63:4]
  %exitcond1 = icmp eq i6 %k, -22, !dbg !81       ; [#uses=1 type=i1] [debug line = 59:14]
  %6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 42, i64 42, i64 42) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1, label %10, label %.preheader.preheader, !dbg !81 ; [debug line = 59:14]

.preheader.preheader:                             ; preds = %.preheader13
  %tmp.2 = mul i12 %k.cast, 50, !dbg !40          ; [#uses=1 type=i12] [debug line = 63:4]
  br label %.preheader, !dbg !82                  ; [debug line = 61:14]

.preheader:                                       ; preds = %8, %.preheader.preheader
  %l = phi i6 [ %l.1, %8 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i6]
  %l.cast = zext i6 %l to i12, !dbg !82           ; [#uses=1 type=i12] [debug line = 61:14]
  %exitcond = icmp eq i6 %l, -14, !dbg !82        ; [#uses=1 type=i1] [debug line = 61:14]
  %7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 50, i64 50, i64 50) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %9, label %8, !dbg !82   ; [debug line = 61:14]

; <label>:8                                       ; preds = %.preheader
  %tmp.43 = add i12 %l.cast, %tmp.2, !dbg !40     ; [#uses=1 type=i12] [debug line = 63:4]
  %tmp.44 = zext i12 %tmp.43 to i64, !dbg !40     ; [#uses=2 type=i64] [debug line = 63:4]
  %ImgOut.addr = getelementptr [2100 x i32]* %ImgOut, i64 0, i64 %tmp.44, !dbg !40 ; [#uses=1 type=i32*] [debug line = 63:4]
  %ImgOut.load = load i32* %ImgOut.addr, align 4, !dbg !40 ; [#uses=1 type=i32] [debug line = 63:4]
  %ImgIn.addr.9 = getelementptr [2100 x i32]* %ImgIn, i64 0, i64 %tmp.44, !dbg !40 ; [#uses=1 type=i32*] [debug line = 63:4]
  store i32 %ImgOut.load, i32* %ImgIn.addr.9, align 4, !dbg !40 ; [debug line = 63:4]
  %l.1 = add i6 %l, 1, !dbg !83                   ; [#uses=1 type=i6] [debug line = 61:20]
  call void @llvm.dbg.value(metadata !{i6 %l.1}, i64 0, metadata !84), !dbg !83 ; [debug line = 61:20] [debug variable = l]
  br label %.preheader, !dbg !83                  ; [debug line = 61:20]

; <label>:9                                       ; preds = %.preheader
  %k.1 = add i6 %k, 1, !dbg !85                   ; [#uses=1 type=i6] [debug line = 59:20]
  call void @llvm.dbg.value(metadata !{i6 %k.1}, i64 0, metadata !86), !dbg !85 ; [debug line = 59:20] [debug variable = k]
  br label %.preheader13, !dbg !85                ; [debug line = 59:20]

; <label>:10                                      ; preds = %.preheader13
  ret i32 %count.lcssa, !dbg !87                  ; [debug line = 67:2]
}

; [#uses=11]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=2]
declare void @_ssdm_op_SpecMemCore(...)

; [#uses=4]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/ubuntu-admin/SharedFolder/EIT_Studies/TUB_Docs/Sem2/EmbProj/GitHub/AEP/HLS/ZS_BRAM_F_V1/solution1/.autopilot/db/core.pragma.2.cpp", metadata !"/home/ubuntu-admin/SharedFolder/EIT_Studies/TUB_Docs/Sem2/EmbProj/GitHub/AEP/HLS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"zs_func", metadata !"zs_func", metadata !"_Z7zs_funcPiS_", metadata !6, i32 6, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 6} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"ZS_BRAM_F_V1/core.cpp", metadata !"/home/ubuntu-admin/SharedFolder/EIT_Studies/TUB_Docs/Sem2/EmbProj/GitHub/AEP/HLS", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !10, metadata !10}
!9 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!10 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"ImgIn", metadata !17, metadata !"int", i32 0, i32 31}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 2099, i32 1}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 31, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"ImgOut", metadata !17, metadata !"int", i32 0, i32 31}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 31, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"return", metadata !27, metadata !"int", i32 0, i32 31}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 1, i32 0}
!29 = metadata !{i32 786689, metadata !5, metadata !"ImgIn", null, i32 6, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!30 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 67200, i64 32, i32 0, i32 0, metadata !9, metadata !31, i32 0, i32 0} ; [ DW_TAG_array_type ]
!31 = metadata !{metadata !32}
!32 = metadata !{i32 786465, i64 0, i64 2099}     ; [ DW_TAG_subrange_type ]
!33 = metadata !{i32 6, i32 17, metadata !5, null}
!34 = metadata !{i32 786689, metadata !5, metadata !"ImgOut", null, i32 6, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!35 = metadata !{i32 6, i32 34, metadata !5, null}
!36 = metadata !{i32 10, i32 1, metadata !37, null}
!37 = metadata !{i32 786443, metadata !5, i32 6, i32 49, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!38 = metadata !{i32 20, i32 14, metadata !39, null}
!39 = metadata !{i32 786443, metadata !37, i32 20, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!40 = metadata !{i32 63, i32 4, metadata !41, null}
!41 = metadata !{i32 786443, metadata !42, i32 62, i32 3, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!42 = metadata !{i32 786443, metadata !43, i32 61, i32 3, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!43 = metadata !{i32 786443, metadata !44, i32 60, i32 2, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!44 = metadata !{i32 786443, metadata !37, i32 59, i32 2, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!45 = metadata !{i32 29, i32 54, metadata !46, null}
!46 = metadata !{i32 786443, metadata !47, i32 23, i32 3, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 786443, metadata !48, i32 22, i32 3, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!48 = metadata !{i32 786443, metadata !39, i32 21, i32 2, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!49 = metadata !{i32 34, i32 52, metadata !46, null}
!50 = metadata !{i32 22, i32 14, metadata !47, null}
!51 = metadata !{i32 30, i32 52, metadata !46, null}
!52 = metadata !{i32 31, i32 54, metadata !46, null}
!53 = metadata !{i32 32, i32 52, metadata !46, null}
!54 = metadata !{i32 33, i32 50, metadata !46, null}
!55 = metadata !{i32 35, i32 54, metadata !46, null}
!56 = metadata !{i32 36, i32 52, metadata !46, null}
!57 = metadata !{i32 37, i32 54, metadata !46, null}
!58 = metadata !{i32 39, i32 128, metadata !46, null}
!59 = metadata !{i32 786688, metadata !46, metadata !"A", metadata !6, i32 39, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!60 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!61 = metadata !{i32 39, i32 18, metadata !46, null}
!62 = metadata !{i32 40, i32 43, metadata !46, null}
!63 = metadata !{i32 786688, metadata !46, metadata !"B", metadata !6, i32 40, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!64 = metadata !{i32 42, i32 4, metadata !46, null}
!65 = metadata !{i32 786688, metadata !46, metadata !"m1", metadata !6, i32 25, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!66 = metadata !{i32 43, i32 4, metadata !46, null}
!67 = metadata !{i32 786688, metadata !46, metadata !"m2", metadata !6, i32 26, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!68 = metadata !{i32 44, i32 4, metadata !46, null}
!69 = metadata !{i32 47, i32 4, metadata !46, null}
!70 = metadata !{i32 50, i32 25, metadata !46, null}
!71 = metadata !{i32 52, i32 4, metadata !46, null}
!72 = metadata !{i32 53, i32 5, metadata !73, null}
!73 = metadata !{i32 786443, metadata !46, i32 52, i32 40, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!74 = metadata !{i32 786688, metadata !37, metadata !"count", metadata !6, i32 18, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!75 = metadata !{i32 54, i32 5, metadata !73, null}
!76 = metadata !{i32 55, i32 4, metadata !73, null}
!77 = metadata !{i32 22, i32 20, metadata !47, null}
!78 = metadata !{i32 786688, metadata !47, metadata !"j", metadata !6, i32 22, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!79 = metadata !{i32 20, i32 20, metadata !39, null}
!80 = metadata !{i32 786688, metadata !39, metadata !"i", metadata !6, i32 20, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!81 = metadata !{i32 59, i32 14, metadata !44, null}
!82 = metadata !{i32 61, i32 14, metadata !42, null}
!83 = metadata !{i32 61, i32 20, metadata !42, null}
!84 = metadata !{i32 786688, metadata !42, metadata !"l", metadata !6, i32 61, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!85 = metadata !{i32 59, i32 20, metadata !44, null}
!86 = metadata !{i32 786688, metadata !44, metadata !"k", metadata !6, i32 59, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!87 = metadata !{i32 67, i32 2, metadata !37, null}
