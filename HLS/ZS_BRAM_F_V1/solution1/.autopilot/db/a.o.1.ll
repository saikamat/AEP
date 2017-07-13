; ModuleID = '/home/ubuntu-admin/SharedFolder/EIT_Studies/TUB_Docs/Sem2/EmbProj/GitHub/AEP/HLS/ZS_BRAM_F_V1/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zs_func.str = internal unnamed_addr constant [8 x i8] c"zs_func\00" ; [#uses=1 type=[8 x i8]*]
@.str4 = private unnamed_addr constant [12 x i8] c"RAM_1P_BRAM\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str3 = private unnamed_addr constant [9 x i8] c"CRTL_BUS\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [5 x i8] c"bram\00", align 1 ; [#uses=1 type=[5 x i8]*]

; [#uses=0]
define i32 @zs_func(i32* %ImgIn, i32* %ImgOut) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @zs_func.str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %ImgIn}, i64 0, metadata !19), !dbg !20 ; [debug line = 6:17] [debug variable = ImgIn]
  call void @llvm.dbg.value(metadata !{i32* %ImgOut}, i64 0, metadata !21), !dbg !22 ; [debug line = 6:34] [debug variable = ImgOut]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %ImgOut, i32 2100) nounwind, !dbg !23 ; [debug line = 6:50]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %ImgIn, i32 2100) nounwind, !dbg !25 ; [debug line = 6:87]
  call void (...)* @_ssdm_op_SpecInterface(i32* %ImgIn, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !26 ; [debug line = 8:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %ImgOut, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !27 ; [debug line = 9:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !28 ; [debug line = 10:1]
  call void (...)* @_ssdm_op_SpecResource(i32* %ImgIn, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !29 ; [debug line = 13:1]
  call void (...)* @_ssdm_op_SpecResource(i32* %ImgOut, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !30 ; [debug line = 14:1]
  br label %1, !dbg !31                           ; [debug line = 20:14]

; <label>:1                                       ; preds = %7, %0
  %i = phi i32 [ 1, %0 ], [ %i.1, %7 ]            ; [#uses=3 type=i32]
  %count = phi i32 [ 0, %0 ], [ %count.1.lcssa, %7 ] ; [#uses=2 type=i32]
  %exitcond3 = icmp eq i32 %i, 42, !dbg !31       ; [#uses=1 type=i1] [debug line = 20:14]
  br i1 %exitcond3, label %.preheader13.preheader, label %.preheader14.preheader, !dbg !31 ; [debug line = 20:14]

.preheader13.preheader:                           ; preds = %1
  %count.0.lcssa = phi i32 [ %count, %1 ]         ; [#uses=1 type=i32]
  br label %.preheader13, !dbg !33                ; [debug line = 59:14]

.preheader14.preheader:                           ; preds = %1
  %tmp = mul i32 %i, 50, !dbg !35                 ; [#uses=9 type=i32] [debug line = 29:54]
  %tmp.1 = or i32 %tmp, 1, !dbg !39               ; [#uses=1 type=i32] [debug line = 34:52]
  br label %.preheader14, !dbg !40                ; [debug line = 22:14]

.preheader14:                                     ; preds = %._crit_edge23, %.preheader14.preheader
  %j = phi i32 [ %j.1, %._crit_edge23 ], [ 0, %.preheader14.preheader ] ; [#uses=11 type=i32]
  %count.1 = phi i32 [ %count.2, %._crit_edge23 ], [ %count, %.preheader14.preheader ] ; [#uses=4 type=i32]
  %exitcond2 = icmp eq i32 %j, 50, !dbg !40       ; [#uses=1 type=i1] [debug line = 22:14]
  br i1 %exitcond2, label %7, label %2, !dbg !40  ; [debug line = 22:14]

; <label>:2                                       ; preds = %.preheader14
  %tmp.4 = add i32 %tmp, -51, !dbg !35            ; [#uses=1 type=i32] [debug line = 29:54]
  %tmp.5 = add i32 %tmp.4, %j, !dbg !35           ; [#uses=1 type=i32] [debug line = 29:54]
  %tmp.6 = sext i32 %tmp.5 to i64, !dbg !35       ; [#uses=1 type=i64] [debug line = 29:54]
  %ImgIn.addr = getelementptr inbounds i32* %ImgIn, i64 %tmp.6, !dbg !35 ; [#uses=1 type=i32*] [debug line = 29:54]
  %ImgIn.load = load i32* %ImgIn.addr, align 4, !dbg !35 ; [#uses=2 type=i32] [debug line = 29:54]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ImgIn.load) nounwind
  %tmp.7 = icmp ne i32 %ImgIn.load, 0, !dbg !35   ; [#uses=3 type=i1] [debug line = 29:54]
  %p0 = zext i1 %tmp.7 to i8, !dbg !35            ; [#uses=1 type=i8] [debug line = 29:54]
  call void @llvm.dbg.value(metadata !{i8 %p0}, i64 0, metadata !41), !dbg !35 ; [debug line = 29:54] [debug variable = p0]
  %tmp.8 = add i32 %tmp, -50, !dbg !43            ; [#uses=1 type=i32] [debug line = 30:52]
  %tmp.9 = add i32 %tmp.8, %j, !dbg !43           ; [#uses=1 type=i32] [debug line = 30:52]
  %tmp.10 = sext i32 %tmp.9 to i64, !dbg !43      ; [#uses=1 type=i64] [debug line = 30:52]
  %ImgIn.addr.1 = getelementptr inbounds i32* %ImgIn, i64 %tmp.10, !dbg !43 ; [#uses=1 type=i32*] [debug line = 30:52]
  %ImgIn.load.1 = load i32* %ImgIn.addr.1, align 4, !dbg !43 ; [#uses=2 type=i32] [debug line = 30:52]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ImgIn.load.1) nounwind
  %tmp.11 = icmp ne i32 %ImgIn.load.1, 0, !dbg !43 ; [#uses=4 type=i1] [debug line = 30:52]
  %tmp.12 = add i32 %tmp, -49, !dbg !44           ; [#uses=1 type=i32] [debug line = 31:54]
  %tmp.13 = add i32 %tmp.12, %j, !dbg !44         ; [#uses=1 type=i32] [debug line = 31:54]
  %tmp.14 = sext i32 %tmp.13 to i64, !dbg !44     ; [#uses=1 type=i64] [debug line = 31:54]
  %ImgIn.addr.2 = getelementptr inbounds i32* %ImgIn, i64 %tmp.14, !dbg !44 ; [#uses=1 type=i32*] [debug line = 31:54]
  %ImgIn.load.2 = load i32* %ImgIn.addr.2, align 4, !dbg !44 ; [#uses=2 type=i32] [debug line = 31:54]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ImgIn.load.2) nounwind
  %tmp.15 = icmp ne i32 %ImgIn.load.2, 0, !dbg !44 ; [#uses=3 type=i1] [debug line = 31:54]
  %tmp.16 = add i32 %tmp, -1, !dbg !45            ; [#uses=1 type=i32] [debug line = 32:52]
  %tmp.17 = add i32 %tmp.16, %j, !dbg !45         ; [#uses=1 type=i32] [debug line = 32:52]
  %tmp.18 = sext i32 %tmp.17 to i64, !dbg !45     ; [#uses=1 type=i64] [debug line = 32:52]
  %ImgIn.addr.3 = getelementptr inbounds i32* %ImgIn, i64 %tmp.18, !dbg !45 ; [#uses=1 type=i32*] [debug line = 32:52]
  %ImgIn.load.3 = load i32* %ImgIn.addr.3, align 4, !dbg !45 ; [#uses=2 type=i32] [debug line = 32:52]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ImgIn.load.3) nounwind
  %tmp.19 = icmp ne i32 %ImgIn.load.3, 0, !dbg !45 ; [#uses=3 type=i1] [debug line = 32:52]
  %p3 = zext i1 %tmp.19 to i8, !dbg !45           ; [#uses=4 type=i8] [debug line = 32:52]
  call void @llvm.dbg.value(metadata !{i8 %p3}, i64 0, metadata !46), !dbg !45 ; [debug line = 32:52] [debug variable = p3]
  %tmp.20 = add nsw i32 %j, %tmp, !dbg !47        ; [#uses=1 type=i32] [debug line = 33:50]
  %tmp.21 = sext i32 %tmp.20 to i64, !dbg !47     ; [#uses=2 type=i64] [debug line = 33:50]
  %ImgIn.addr.4 = getelementptr inbounds i32* %ImgIn, i64 %tmp.21, !dbg !47 ; [#uses=1 type=i32*] [debug line = 33:50]
  %ImgIn.load.4 = load i32* %ImgIn.addr.4, align 4, !dbg !47 ; [#uses=3 type=i32] [debug line = 33:50]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ImgIn.load.4) nounwind
  %tmp.22 = add i32 %j, %tmp.1, !dbg !39          ; [#uses=1 type=i32] [debug line = 34:52]
  %tmp.23 = sext i32 %tmp.22 to i64, !dbg !39     ; [#uses=1 type=i64] [debug line = 34:52]
  %ImgIn.addr.5 = getelementptr inbounds i32* %ImgIn, i64 %tmp.23, !dbg !39 ; [#uses=1 type=i32*] [debug line = 34:52]
  %ImgIn.load.5 = load i32* %ImgIn.addr.5, align 4, !dbg !39 ; [#uses=2 type=i32] [debug line = 34:52]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ImgIn.load.5) nounwind
  %tmp.24 = icmp ne i32 %ImgIn.load.5, 0, !dbg !39 ; [#uses=4 type=i1] [debug line = 34:52]
  %tmp.25 = add i32 %tmp, 49, !dbg !48            ; [#uses=1 type=i32] [debug line = 35:54]
  %tmp.26 = add i32 %tmp.25, %j, !dbg !48         ; [#uses=1 type=i32] [debug line = 35:54]
  %tmp.27 = sext i32 %tmp.26 to i64, !dbg !48     ; [#uses=1 type=i64] [debug line = 35:54]
  %ImgIn.addr.6 = getelementptr inbounds i32* %ImgIn, i64 %tmp.27, !dbg !48 ; [#uses=1 type=i32*] [debug line = 35:54]
  %ImgIn.load.6 = load i32* %ImgIn.addr.6, align 4, !dbg !48 ; [#uses=2 type=i32] [debug line = 35:54]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ImgIn.load.6) nounwind
  %tmp.28 = icmp ne i32 %ImgIn.load.6, 0, !dbg !48 ; [#uses=3 type=i1] [debug line = 35:54]
  %tmp.29 = add i32 %tmp, 50, !dbg !49            ; [#uses=1 type=i32] [debug line = 36:52]
  %tmp.30 = add i32 %tmp.29, %j, !dbg !49         ; [#uses=1 type=i32] [debug line = 36:52]
  %tmp.31 = sext i32 %tmp.30 to i64, !dbg !49     ; [#uses=1 type=i64] [debug line = 36:52]
  %ImgIn.addr.7 = getelementptr inbounds i32* %ImgIn, i64 %tmp.31, !dbg !49 ; [#uses=1 type=i32*] [debug line = 36:52]
  %ImgIn.load.7 = load i32* %ImgIn.addr.7, align 4, !dbg !49 ; [#uses=2 type=i32] [debug line = 36:52]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ImgIn.load.7) nounwind
  %tmp.32 = icmp ne i32 %ImgIn.load.7, 0, !dbg !49 ; [#uses=3 type=i1] [debug line = 36:52]
  %p7 = zext i1 %tmp.32 to i8, !dbg !49           ; [#uses=4 type=i8] [debug line = 36:52]
  call void @llvm.dbg.value(metadata !{i8 %p7}, i64 0, metadata !50), !dbg !49 ; [debug line = 36:52] [debug variable = p7]
  %tmp.33 = add i32 %tmp, 51, !dbg !51            ; [#uses=1 type=i32] [debug line = 37:54]
  %tmp.34 = add i32 %tmp.33, %j, !dbg !51         ; [#uses=1 type=i32] [debug line = 37:54]
  %tmp.35 = sext i32 %tmp.34 to i64, !dbg !51     ; [#uses=1 type=i64] [debug line = 37:54]
  %ImgIn.addr.8 = getelementptr inbounds i32* %ImgIn, i64 %tmp.35, !dbg !51 ; [#uses=1 type=i32*] [debug line = 37:54]
  %ImgIn.load.8 = load i32* %ImgIn.addr.8, align 4, !dbg !51 ; [#uses=2 type=i32] [debug line = 37:54]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ImgIn.load.8) nounwind
  %tmp.36 = icmp ne i32 %ImgIn.load.8, 0, !dbg !51 ; [#uses=3 type=i1] [debug line = 37:54]
  %not. = xor i1 %tmp.11, true, !dbg !52          ; [#uses=1 type=i1] [debug line = 39:128]
  %. = and i1 %tmp.15, %not., !dbg !52            ; [#uses=1 type=i1] [debug line = 39:128]
  %tmp.37 = zext i1 %. to i8                      ; [#uses=1 type=i8]
  %not.1 = xor i1 %tmp.15, true                   ; [#uses=1 type=i1]
  %tmp.38 = and i1 %tmp.24, %not.1                ; [#uses=1 type=i1]
  %tmp.39 = zext i1 %tmp.38 to i8                 ; [#uses=1 type=i8]
  %not.2 = xor i1 %tmp.24, true                   ; [#uses=1 type=i1]
  %.4 = and i1 %tmp.36, %not.2                    ; [#uses=1 type=i1]
  %tmp.40 = zext i1 %.4 to i8                     ; [#uses=1 type=i8]
  %not.3 = xor i1 %tmp.36, true                   ; [#uses=1 type=i1]
  %tmp.41 = and i1 %tmp.32, %not.3                ; [#uses=1 type=i1]
  %tmp.42 = zext i1 %tmp.41 to i8                 ; [#uses=1 type=i8]
  %not.4 = xor i1 %tmp.32, true                   ; [#uses=1 type=i1]
  %.5 = and i1 %tmp.28, %not.4                    ; [#uses=1 type=i1]
  %tmp.43 = zext i1 %.5 to i8                     ; [#uses=1 type=i8]
  %not.5 = xor i1 %tmp.28, true                   ; [#uses=1 type=i1]
  %tmp.44 = and i1 %tmp.19, %not.5                ; [#uses=1 type=i1]
  %tmp.45 = zext i1 %tmp.44 to i8                 ; [#uses=1 type=i8]
  %not.6 = xor i1 %tmp.19, true                   ; [#uses=1 type=i1]
  %.6 = and i1 %tmp.7, %not.6                     ; [#uses=1 type=i1]
  %tmp.46 = zext i1 %.6 to i8                     ; [#uses=1 type=i8]
  %not.7 = xor i1 %tmp.7, true                    ; [#uses=1 type=i1]
  %tmp.47 = and i1 %tmp.11, %not.7                ; [#uses=1 type=i1]
  %tmp.48 = zext i1 %tmp.47 to i8                 ; [#uses=1 type=i8]
  %tmp.49 = add i8 %tmp.37, %tmp.48               ; [#uses=1 type=i8]
  %tmp.50 = add i8 %tmp.49, %tmp.46               ; [#uses=1 type=i8]
  %tmp.51 = add i8 %tmp.50, %tmp.39               ; [#uses=1 type=i8]
  %tmp.52 = add i8 %tmp.51, %tmp.45               ; [#uses=1 type=i8]
  %tmp.53 = add i8 %tmp.52, %tmp.43               ; [#uses=1 type=i8]
  %tmp.54 = add i8 %tmp.53, %tmp.42               ; [#uses=1 type=i8]
  %A = add i8 %tmp.54, %tmp.40                    ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %A}, i64 0, metadata !53), !dbg !54 ; [debug line = 39:18] [debug variable = A]
  %tmp.56 = zext i1 %tmp.11 to i8, !dbg !55       ; [#uses=1 type=i8] [debug line = 40:43]
  %tmp.57 = zext i1 %tmp.15 to i8, !dbg !55       ; [#uses=1 type=i8] [debug line = 40:43]
  %tmp.58 = zext i1 %tmp.24 to i8, !dbg !55       ; [#uses=2 type=i8] [debug line = 40:43]
  %tmp.59 = zext i1 %tmp.36 to i8, !dbg !55       ; [#uses=1 type=i8] [debug line = 40:43]
  %tmp.60 = zext i1 %tmp.28 to i8, !dbg !55       ; [#uses=1 type=i8] [debug line = 40:43]
  %tmp.61 = add i8 %tmp.56, %p0, !dbg !55         ; [#uses=1 type=i8] [debug line = 40:43]
  %tmp.62 = add i8 %tmp.61, %tmp.57, !dbg !55     ; [#uses=1 type=i8] [debug line = 40:43]
  %tmp.63 = add i8 %tmp.62, %p3, !dbg !55         ; [#uses=1 type=i8] [debug line = 40:43]
  %tmp.64 = add i8 %tmp.63, %tmp.58, !dbg !55     ; [#uses=1 type=i8] [debug line = 40:43]
  %tmp.65 = add i8 %tmp.64, %tmp.60, !dbg !55     ; [#uses=1 type=i8] [debug line = 40:43]
  %tmp.66 = add i8 %tmp.65, %p7, !dbg !55         ; [#uses=1 type=i8] [debug line = 40:43]
  %B = add i8 %tmp.66, %tmp.59, !dbg !55          ; [#uses=2 type=i8] [debug line = 40:43]
  call void @llvm.dbg.value(metadata !{i8 %B}, i64 0, metadata !56), !dbg !55 ; [debug line = 40:43] [debug variable = B]
  %tmp.68 = sext i1 %tmp.11 to i8, !dbg !57       ; [#uses=2 type=i8] [debug line = 42:4]
  %tmp.69 = and i8 %tmp.58, %tmp.68, !dbg !57     ; [#uses=1 type=i8] [debug line = 42:4]
  %tmp.70 = sub i8 0, %tmp.69, !dbg !57           ; [#uses=2 type=i8] [debug line = 42:4]
  %m1 = and i8 %p7, %tmp.70, !dbg !57             ; [#uses=1 type=i8] [debug line = 42:4]
  call void @llvm.dbg.value(metadata !{i8 %m1}, i64 0, metadata !58), !dbg !57 ; [debug line = 42:4] [debug variable = m1]
  %tmp.72 = sext i1 %tmp.24 to i8, !dbg !59       ; [#uses=1 type=i8] [debug line = 43:4]
  %tmp.73 = and i8 %p7, %tmp.72, !dbg !59         ; [#uses=1 type=i8] [debug line = 43:4]
  %tmp.74 = sub i8 0, %tmp.73, !dbg !59           ; [#uses=1 type=i8] [debug line = 43:4]
  %m2 = and i8 %tmp.74, %p3, !dbg !59             ; [#uses=1 type=i8] [debug line = 43:4]
  call void @llvm.dbg.value(metadata !{i8 %m2}, i64 0, metadata !60), !dbg !59 ; [debug line = 43:4] [debug variable = m2]
  %tmp.76 = icmp eq i8 %A, 1, !dbg !61            ; [#uses=1 type=i1] [debug line = 44:4]
  %tmp.77 = icmp ugt i8 %B, 1, !dbg !61           ; [#uses=1 type=i1] [debug line = 44:4]
  %or.cond = and i1 %tmp.76, %tmp.77, !dbg !61    ; [#uses=1 type=i1] [debug line = 44:4]
  %tmp.78 = icmp ult i8 %B, 7, !dbg !61           ; [#uses=1 type=i1] [debug line = 44:4]
  %or.cond7 = and i1 %or.cond, %tmp.78, !dbg !61  ; [#uses=2 type=i1] [debug line = 44:4]
  %tmp.79 = icmp eq i8 %m1, 0, !dbg !61           ; [#uses=1 type=i1] [debug line = 44:4]
  %or.cond8 = and i1 %or.cond7, %tmp.79, !dbg !61 ; [#uses=1 type=i1] [debug line = 44:4]
  br i1 %or.cond8, label %3, label %._crit_edge, !dbg !61 ; [debug line = 44:4]

; <label>:3                                       ; preds = %2
  %tmp.80 = icmp eq i8 %m2, 0, !dbg !61           ; [#uses=1 type=i1] [debug line = 44:4]
  br label %._crit_edge

._crit_edge:                                      ; preds = %3, %2
  %tmp.81 = phi i1 [ %tmp.80, %3 ], [ false, %2 ] ; [#uses=1 type=i1]
  %m1.1 = and i8 %tmp.70, %p3, !dbg !62           ; [#uses=1 type=i8] [debug line = 46:4]
  call void @llvm.dbg.value(metadata !{i8 %m1.1}, i64 0, metadata !58), !dbg !62 ; [debug line = 46:4] [debug variable = m1]
  %tmp.83 = and i8 %p7, %tmp.68, !dbg !63         ; [#uses=1 type=i8] [debug line = 47:4]
  %tmp.84 = sub i8 0, %tmp.83, !dbg !63           ; [#uses=1 type=i8] [debug line = 47:4]
  %m2.1 = and i8 %tmp.84, %p3, !dbg !63           ; [#uses=1 type=i8] [debug line = 47:4]
  call void @llvm.dbg.value(metadata !{i8 %m2.1}, i64 0, metadata !60), !dbg !63 ; [debug line = 47:4] [debug variable = m2]
  %tmp.86 = icmp eq i8 %m1.1, 0, !dbg !64         ; [#uses=1 type=i1] [debug line = 48:4]
  %or.cond1 = and i1 %or.cond7, %tmp.86, !dbg !64 ; [#uses=1 type=i1] [debug line = 48:4]
  br i1 %or.cond1, label %4, label %._crit_edge22, !dbg !64 ; [debug line = 48:4]

; <label>:4                                       ; preds = %._crit_edge
  %tmp.91 = icmp eq i8 %m2.1, 0, !dbg !64         ; [#uses=1 type=i1] [debug line = 48:4]
  br label %._crit_edge22

._crit_edge22:                                    ; preds = %4, %._crit_edge
  %tmp.92 = phi i1 [ %tmp.91, %4 ], [ false, %._crit_edge ] ; [#uses=1 type=i1]
  %.1 = or i1 %tmp.81, %tmp.92, !dbg !65          ; [#uses=1 type=i1] [debug line = 50:25]
  br i1 %.1, label %5, label %._crit_edge23, !dbg !66 ; [debug line = 52:4]

; <label>:5                                       ; preds = %._crit_edge22
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ImgIn.load.4) nounwind
  %tmp.93 = icmp eq i32 %ImgIn.load.4, 255, !dbg !66 ; [#uses=1 type=i1] [debug line = 52:4]
  br i1 %tmp.93, label %6, label %._crit_edge23, !dbg !66 ; [debug line = 52:4]

; <label>:6                                       ; preds = %5
  %count.3 = add nsw i32 %count.1, 1, !dbg !67    ; [#uses=1 type=i32] [debug line = 53:5]
  call void @llvm.dbg.value(metadata !{i32 %count.3}, i64 0, metadata !69), !dbg !67 ; [debug line = 53:5] [debug variable = count]
  %ImgOut.addr.1 = getelementptr inbounds i32* %ImgOut, i64 %tmp.21, !dbg !70 ; [#uses=1 type=i32*] [debug line = 54:5]
  store i32 0, i32* %ImgOut.addr.1, align 4, !dbg !70 ; [debug line = 54:5]
  br label %._crit_edge23, !dbg !71               ; [debug line = 55:4]

._crit_edge23:                                    ; preds = %6, %5, %._crit_edge22
  %count.2 = phi i32 [ %count.3, %6 ], [ %count.1, %._crit_edge22 ], [ %count.1, %5 ] ; [#uses=1 type=i32]
  %j.1 = add nsw i32 %j, 1, !dbg !72              ; [#uses=1 type=i32] [debug line = 22:20]
  call void @llvm.dbg.value(metadata !{i32 %j.1}, i64 0, metadata !73), !dbg !72 ; [debug line = 22:20] [debug variable = j]
  br label %.preheader14, !dbg !72                ; [debug line = 22:20]

; <label>:7                                       ; preds = %.preheader14
  %count.1.lcssa = phi i32 [ %count.1, %.preheader14 ] ; [#uses=1 type=i32]
  %i.1 = add nsw i32 %i, 1, !dbg !74              ; [#uses=1 type=i32] [debug line = 20:20]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !75), !dbg !74 ; [debug line = 20:20] [debug variable = i]
  br label %1, !dbg !74                           ; [debug line = 20:20]

.preheader13:                                     ; preds = %9, %.preheader13.preheader
  %k = phi i32 [ %k.1, %9 ], [ 0, %.preheader13.preheader ] ; [#uses=3 type=i32]
  %exitcond1 = icmp eq i32 %k, 42, !dbg !33       ; [#uses=1 type=i1] [debug line = 59:14]
  br i1 %exitcond1, label %10, label %.preheader.preheader, !dbg !33 ; [debug line = 59:14]

.preheader.preheader:                             ; preds = %.preheader13
  %tmp.2 = mul nsw i32 %k, 50, !dbg !76           ; [#uses=1 type=i32] [debug line = 63:4]
  br label %.preheader, !dbg !80                  ; [debug line = 61:14]

.preheader:                                       ; preds = %8, %.preheader.preheader
  %l = phi i32 [ %l.1, %8 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %l, 50, !dbg !80        ; [#uses=1 type=i1] [debug line = 61:14]
  br i1 %exitcond, label %9, label %8, !dbg !80   ; [debug line = 61:14]

; <label>:8                                       ; preds = %.preheader
  %tmp.88 = add nsw i32 %l, %tmp.2, !dbg !76      ; [#uses=1 type=i32] [debug line = 63:4]
  %tmp.89 = sext i32 %tmp.88 to i64, !dbg !76     ; [#uses=2 type=i64] [debug line = 63:4]
  %ImgOut.addr = getelementptr inbounds i32* %ImgOut, i64 %tmp.89, !dbg !76 ; [#uses=1 type=i32*] [debug line = 63:4]
  %ImgOut.load = load i32* %ImgOut.addr, align 4, !dbg !76 ; [#uses=2 type=i32] [debug line = 63:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ImgOut.load) nounwind
  %ImgIn.addr.9 = getelementptr inbounds i32* %ImgIn, i64 %tmp.89, !dbg !76 ; [#uses=1 type=i32*] [debug line = 63:4]
  store i32 %ImgOut.load, i32* %ImgIn.addr.9, align 4, !dbg !76 ; [debug line = 63:4]
  %l.1 = add nsw i32 %l, 1, !dbg !81              ; [#uses=1 type=i32] [debug line = 61:20]
  call void @llvm.dbg.value(metadata !{i32 %l.1}, i64 0, metadata !82), !dbg !81 ; [debug line = 61:20] [debug variable = l]
  br label %.preheader, !dbg !81                  ; [debug line = 61:20]

; <label>:9                                       ; preds = %.preheader
  %k.1 = add nsw i32 %k, 1, !dbg !83              ; [#uses=1 type=i32] [debug line = 59:20]
  call void @llvm.dbg.value(metadata !{i32 %k.1}, i64 0, metadata !84), !dbg !83 ; [debug line = 59:20] [debug variable = k]
  br label %.preheader13, !dbg !83                ; [debug line = 59:20]

; <label>:10                                      ; preds = %.preheader13
  ret i32 %count.0.lcssa, !dbg !85                ; [debug line = 67:2]
}

; [#uses=16]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=2]
declare void @_ssdm_op_SpecResource(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=11]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/ubuntu-admin/SharedFolder/EIT_Studies/TUB_Docs/Sem2/EmbProj/GitHub/AEP/HLS/ZS_BRAM_F_V1/solution1/.autopilot/db/core.pragma.2.cpp", metadata !"/home/ubuntu-admin/SharedFolder/EIT_Studies/TUB_Docs/Sem2/EmbProj/GitHub/AEP/HLS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"zs_func", metadata !"zs_func", metadata !"_Z7zs_funcPiS_", metadata !6, i32 6, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32*, i32*)* @zs_func, null, null, metadata !11, i32 6} ; [ DW_TAG_subprogram ]
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
!16 = metadata !{metadata !"return", metadata !17, metadata !"int", i32 0, i32 31}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 1, i32 0}
!19 = metadata !{i32 786689, metadata !5, metadata !"ImgIn", metadata !6, i32 16777222, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!20 = metadata !{i32 6, i32 17, metadata !5, null}
!21 = metadata !{i32 786689, metadata !5, metadata !"ImgOut", metadata !6, i32 33554438, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!22 = metadata !{i32 6, i32 34, metadata !5, null}
!23 = metadata !{i32 6, i32 50, metadata !24, null}
!24 = metadata !{i32 786443, metadata !5, i32 6, i32 49, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!25 = metadata !{i32 6, i32 87, metadata !24, null}
!26 = metadata !{i32 8, i32 1, metadata !24, null}
!27 = metadata !{i32 9, i32 1, metadata !24, null}
!28 = metadata !{i32 10, i32 1, metadata !24, null}
!29 = metadata !{i32 13, i32 1, metadata !24, null}
!30 = metadata !{i32 14, i32 1, metadata !24, null}
!31 = metadata !{i32 20, i32 14, metadata !32, null}
!32 = metadata !{i32 786443, metadata !24, i32 20, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!33 = metadata !{i32 59, i32 14, metadata !34, null}
!34 = metadata !{i32 786443, metadata !24, i32 59, i32 2, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!35 = metadata !{i32 29, i32 54, metadata !36, null}
!36 = metadata !{i32 786443, metadata !37, i32 23, i32 3, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!37 = metadata !{i32 786443, metadata !38, i32 22, i32 3, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!38 = metadata !{i32 786443, metadata !32, i32 21, i32 2, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!39 = metadata !{i32 34, i32 52, metadata !36, null}
!40 = metadata !{i32 22, i32 14, metadata !37, null}
!41 = metadata !{i32 786688, metadata !36, metadata !"p0", metadata !6, i32 29, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!42 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!43 = metadata !{i32 30, i32 52, metadata !36, null}
!44 = metadata !{i32 31, i32 54, metadata !36, null}
!45 = metadata !{i32 32, i32 52, metadata !36, null}
!46 = metadata !{i32 786688, metadata !36, metadata !"p3", metadata !6, i32 32, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!47 = metadata !{i32 33, i32 50, metadata !36, null}
!48 = metadata !{i32 35, i32 54, metadata !36, null}
!49 = metadata !{i32 36, i32 52, metadata !36, null}
!50 = metadata !{i32 786688, metadata !36, metadata !"p7", metadata !6, i32 36, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!51 = metadata !{i32 37, i32 54, metadata !36, null}
!52 = metadata !{i32 39, i32 128, metadata !36, null}
!53 = metadata !{i32 786688, metadata !36, metadata !"A", metadata !6, i32 39, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!54 = metadata !{i32 39, i32 18, metadata !36, null}
!55 = metadata !{i32 40, i32 43, metadata !36, null}
!56 = metadata !{i32 786688, metadata !36, metadata !"B", metadata !6, i32 40, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!57 = metadata !{i32 42, i32 4, metadata !36, null}
!58 = metadata !{i32 786688, metadata !36, metadata !"m1", metadata !6, i32 25, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!59 = metadata !{i32 43, i32 4, metadata !36, null}
!60 = metadata !{i32 786688, metadata !36, metadata !"m2", metadata !6, i32 26, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!61 = metadata !{i32 44, i32 4, metadata !36, null}
!62 = metadata !{i32 46, i32 4, metadata !36, null}
!63 = metadata !{i32 47, i32 4, metadata !36, null}
!64 = metadata !{i32 48, i32 4, metadata !36, null}
!65 = metadata !{i32 50, i32 25, metadata !36, null}
!66 = metadata !{i32 52, i32 4, metadata !36, null}
!67 = metadata !{i32 53, i32 5, metadata !68, null}
!68 = metadata !{i32 786443, metadata !36, i32 52, i32 40, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!69 = metadata !{i32 786688, metadata !24, metadata !"count", metadata !6, i32 18, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!70 = metadata !{i32 54, i32 5, metadata !68, null}
!71 = metadata !{i32 55, i32 4, metadata !68, null}
!72 = metadata !{i32 22, i32 20, metadata !37, null}
!73 = metadata !{i32 786688, metadata !37, metadata !"j", metadata !6, i32 22, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!74 = metadata !{i32 20, i32 20, metadata !32, null}
!75 = metadata !{i32 786688, metadata !32, metadata !"i", metadata !6, i32 20, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!76 = metadata !{i32 63, i32 4, metadata !77, null}
!77 = metadata !{i32 786443, metadata !78, i32 62, i32 3, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 786443, metadata !79, i32 61, i32 3, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 786443, metadata !34, i32 60, i32 2, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 61, i32 14, metadata !78, null}
!81 = metadata !{i32 61, i32 20, metadata !78, null}
!82 = metadata !{i32 786688, metadata !78, metadata !"l", metadata !6, i32 61, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!83 = metadata !{i32 59, i32 20, metadata !34, null}
!84 = metadata !{i32 786688, metadata !34, metadata !"k", metadata !6, i32 59, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!85 = metadata !{i32 67, i32 2, metadata !24, null}
