; ModuleID = '/home/hildeb47/proj/ECE1373_GhostSynth/mods/latcherfloat/latcherfloat/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tmp = internal unnamed_addr global float 0.000000e+00, align 4 ; [#uses=2 type=float*]
@state = internal unnamed_addr global i2 0, align 1 ; [#uses=4 type=i2*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@latcherfloat_str = internal unnamed_addr constant [13 x i8] c"latcherfloat\00" ; [#uses=1 type=[13 x i8]*]
@p_str3 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=27 type=[1 x i8]*]
@p_str1 = private unnamed_addr constant [5 x i8] c"both\00", align 1 ; [#uses=4 type=[5 x i8]*]
@p_str = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=4 type=[5 x i8]*]

; [#uses=12]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @latcherfloat(float* %in_V, float* %out_V, i1 %latch_V) {
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str2) nounwind, !dbg !45 ; [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecBitsMap(float* %in_V), !map !456
  call void (...)* @_ssdm_op_SpecBitsMap(float* %out_V), !map !460
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %latch_V), !map !464
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @latcherfloat_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float* %out_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !470 ; [debug line = 29:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %in_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !471 ; [debug line = 30:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind, !dbg !472 ; [debug line = 31:1]
  %latch_V_read = call i1 @_ssdm_op_Read.ap_auto.i1(i1 %latch_V) ; [#uses=1 type=i1]
  call void @llvm.dbg.value(metadata !{float* %in_V}, i64 0, metadata !473), !dbg !478 ; [debug line = 25:14] [debug variable = in.V]
  call void @llvm.dbg.value(metadata !{float* %out_V}, i64 0, metadata !479), !dbg !481 ; [debug line = 26:14] [debug variable = out.V]
  call fastcc void @Block__proc(i1 %latch_V_read, float* %in_V, float* %out_V)
  ret void, !dbg !482                             ; [debug line = 61:1]
}

; [#uses=1]
define weak void @_ssdm_op_Write.axis.volatile.floatP(float*, float) {
entry:
  store float %1, float* %0
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=5]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak float @_ssdm_op_Read.axis.volatile.floatP(float*) {
entry:
  %empty = load float* %0                         ; [#uses=1 type=float]
  ret float %empty
}

; [#uses=2]
define weak i1 @_ssdm_op_Read.ap_auto.i1(i1) {
entry:
  ret i1 %0
}

; [#uses=1]
define weak i1 @_ssdm_op_NbWriteReq.axis.floatP(float*, i32) {
entry:
  ret i1 true
}

; [#uses=1]
define weak i1 @_ssdm_op_NbReadReq.axis.floatP(float*, i32) {
entry:
  ret i1 true
}

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind section ".text.startup"

; [#uses=1]
define internal fastcc void @Block__proc(i1 %latch_V, float* %in_V, float* %out_V) {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecInterface(float* %in_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecInterface(float* %out_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2)
  %latch_V_read = call i1 @_ssdm_op_Read.ap_auto.i1(i1 %latch_V) ; [#uses=1 type=i1]
  %state_load = load i2* @state, align 1, !dbg !483 ; [#uses=1 type=i2] [debug line = 41:2]
  switch i2 %state_load, label %._crit_edge [
    i2 0, label %0
    i2 1, label %1
    i2 -2, label %2
  ], !dbg !483                                    ; [debug line = 41:2]

._crit_edge:                                      ; preds = %._crit_edge10, %._crit_edge9, %._crit_edge8, %newFuncRoot
  ret void

; <label>:0                                       ; preds = %newFuncRoot
  br i1 %latch_V_read, label %3, label %._crit_edge8, !dbg !484 ; [debug line = 43:8]

; <label>:1                                       ; preds = %newFuncRoot
  call void @llvm.dbg.value(metadata !{float* %in_V}, i64 0, metadata !486), !dbg !491 ; [debug line = 112:48@46:9] [debug variable = stream<float>.V]
  %tmp_1_1 = call i1 @_ssdm_op_NbReadReq.axis.floatP(float* %in_V, i32 1), !dbg !493 ; [#uses=1 type=i1] [debug line = 113:20@46:9]
  call void @llvm.dbg.value(metadata !{i1 %tmp_1_1}, i64 0, metadata !495), !dbg !493 ; [debug line = 113:20@46:9] [debug variable = tmp]
  br i1 %tmp_1_1, label %4, label %._crit_edge9, !dbg !492 ; [debug line = 46:9]

; <label>:2                                       ; preds = %newFuncRoot
  call void @llvm.dbg.value(metadata !{float* %out_V}, i64 0, metadata !496), !dbg !499 ; [debug line = 117:48@52:9] [debug variable = stream<float>.V]
  %tmp_1 = call i1 @_ssdm_op_NbWriteReq.axis.floatP(float* %out_V, i32 1), !dbg !501 ; [#uses=1 type=i1] [debug line = 118:20@52:9]
  call void @llvm.dbg.value(metadata !{i1 %tmp_1}, i64 0, metadata !503), !dbg !501 ; [debug line = 118:20@52:9] [debug variable = tmp]
  br i1 %tmp_1, label %5, label %._crit_edge10, !dbg !500 ; [debug line = 52:9]

; <label>:3                                       ; preds = %0
  store i2 1, i2* @state, align 1, !dbg !504      ; [debug line = 43:20]
  br label %._crit_edge8, !dbg !504               ; [debug line = 43:20]

._crit_edge8:                                     ; preds = %3, %0
  br label %._crit_edge, !dbg !505                ; [debug line = 44:4]

; <label>:4                                       ; preds = %1
  call void @llvm.dbg.value(metadata !{float* %in_V}, i64 0, metadata !506), !dbg !510 ; [debug line = 101:48@47:5] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %in_V}, i64 0, metadata !513), !dbg !516 ; [debug line = 123:48@102:9@47:5] [debug variable = stream<float>.V]
  %tmp_2 = call float @_ssdm_op_Read.axis.volatile.floatP(float* %in_V), !dbg !519 ; [#uses=1 type=float] [debug line = 125:9@102:9@47:5]
  call void @llvm.dbg.value(metadata !{float %tmp_2}, i64 0, metadata !521), !dbg !519 ; [debug line = 125:9@102:9@47:5] [debug variable = tmp]
  store float %tmp_2, float* @tmp, align 4, !dbg !522 ; [debug line = 126:9@102:9@47:5]
  store i2 -2, i2* @state, align 1, !dbg !523     ; [debug line = 48:5]
  br label %._crit_edge9, !dbg !524               ; [debug line = 49:4]

._crit_edge9:                                     ; preds = %4, %1
  br label %._crit_edge, !dbg !525                ; [debug line = 50:4]

; <label>:5                                       ; preds = %2
  call void @llvm.dbg.value(metadata !{float* %out_V}, i64 0, metadata !526), !dbg !529 ; [debug line = 105:48@53:5] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %out_V}, i64 0, metadata !532), !dbg !535 ; [debug line = 144:48@106:9@53:5] [debug variable = stream<float>.V]
  %tmp_3 = load float* @tmp, align 4, !dbg !538   ; [#uses=1 type=float] [debug line = 145:31@106:9@53:5]
  call void @llvm.dbg.value(metadata !{float %tmp_3}, i64 0, metadata !540), !dbg !538 ; [debug line = 145:31@106:9@53:5] [debug variable = tmp]
  call void @_ssdm_op_Write.axis.volatile.floatP(float* %out_V, float %tmp_3), !dbg !541 ; [debug line = 146:9@106:9@53:5]
  store i2 0, i2* @state, align 1, !dbg !542      ; [debug line = 54:5]
  br label %._crit_edge10, !dbg !543              ; [debug line = 55:4]

._crit_edge10:                                    ; preds = %5, %2
  br label %._crit_edge, !dbg !544                ; [debug line = 56:4]
}

!opencl.kernels = !{!0, !7, !13, !15, !21, !24, !15, !26, !32, !32, !15, !35}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!38}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"stream<dt> &", metadata !"stream<dt> &", metadata !"ap_uint<1>"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"in", metadata !"out", metadata !"latch"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const float &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"wdata"}
!13 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !14, metadata !6}
!14 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!15 = metadata !{null, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !6}
!16 = metadata !{metadata !"kernel_arg_addr_space"}
!17 = metadata !{metadata !"kernel_arg_access_qual"}
!18 = metadata !{metadata !"kernel_arg_type"}
!19 = metadata !{metadata !"kernel_arg_type_qual"}
!20 = metadata !{metadata !"kernel_arg_name"}
!21 = metadata !{null, metadata !8, metadata !9, metadata !22, metadata !11, metadata !23, metadata !6}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"float &"}
!23 = metadata !{metadata !"kernel_arg_name", metadata !"rdata"}
!24 = metadata !{null, metadata !8, metadata !9, metadata !22, metadata !11, metadata !25, metadata !6}
!25 = metadata !{metadata !"kernel_arg_name", metadata !"dout"}
!26 = metadata !{null, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !6}
!27 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!28 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"int"}
!30 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!31 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!32 = metadata !{null, metadata !8, metadata !9, metadata !33, metadata !11, metadata !34, metadata !6}
!33 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!34 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!35 = metadata !{null, metadata !8, metadata !9, metadata !36, metadata !11, metadata !37, metadata !6}
!36 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!37 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!38 = metadata !{metadata !39, [1 x i32]* @llvm_global_ctors_0}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 31, metadata !41}
!41 = metadata !{metadata !42}
!42 = metadata !{metadata !"llvm.global_ctors.0", metadata !43, metadata !"", i32 0, i32 31}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 0, i32 1}
!45 = metadata !{i32 32, i32 1, metadata !46, null}
!46 = metadata !{i32 786443, metadata !47, i32 28, i32 4, metadata !48, i32 0} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 786478, i32 0, metadata !48, metadata !"latcherfloat", metadata !"latcherfloat", metadata !"_Z12latcherfloatRN3hls6streamIfEES2_7ap_uintILi1EE", metadata !48, i32 24, metadata !49, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !62, i32 28} ; [ DW_TAG_subprogram ]
!48 = metadata !{i32 786473, metadata !"latcherfloat.cpp", metadata !"/home/hildeb47/proj/ECE1373_GhostSynth/mods/latcherfloat", null} ; [ DW_TAG_file_type ]
!49 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !50, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!50 = metadata !{null, metadata !51, metadata !51, metadata !110}
!51 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !52} ; [ DW_TAG_reference_type ]
!52 = metadata !{i32 786434, metadata !53, metadata !"stream<float>", metadata !54, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !55, i32 0, null, metadata !108} ; [ DW_TAG_class_type ]
!53 = metadata !{i32 786489, null, metadata !"hls", metadata !54, i32 69} ; [ DW_TAG_namespace ]
!54 = metadata !{i32 786473, metadata !"/opt/Xilinx_2017_2/Vivado_HLS/2017.2/common/technology/autopilot/hls_stream.h", metadata !"/home/hildeb47/proj/ECE1373_GhostSynth/mods/latcherfloat", null} ; [ DW_TAG_file_type ]
!55 = metadata !{metadata !56, metadata !58, metadata !64, metadata !70, metadata !75, metadata !78, metadata !82, metadata !87, metadata !92, metadata !93, metadata !94, metadata !97, metadata !100, metadata !101, metadata !104}
!56 = metadata !{i32 786445, metadata !52, metadata !"V", metadata !54, i32 163, i64 32, i64 32, i64 0, i32 0, metadata !57} ; [ DW_TAG_member ]
!57 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!58 = metadata !{i32 786478, i32 0, metadata !52, metadata !"stream", metadata !"stream", metadata !"", metadata !54, i32 83, metadata !59, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 83} ; [ DW_TAG_subprogram ]
!59 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !60, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!60 = metadata !{null, metadata !61}
!61 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !52} ; [ DW_TAG_pointer_type ]
!62 = metadata !{metadata !63}
!63 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!64 = metadata !{i32 786478, i32 0, metadata !52, metadata !"stream", metadata !"stream", metadata !"", metadata !54, i32 86, metadata !65, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 86} ; [ DW_TAG_subprogram ]
!65 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!66 = metadata !{null, metadata !61, metadata !67}
!67 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !68} ; [ DW_TAG_pointer_type ]
!68 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !69} ; [ DW_TAG_const_type ]
!69 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!70 = metadata !{i32 786478, i32 0, metadata !52, metadata !"stream", metadata !"stream", metadata !"", metadata !54, i32 91, metadata !71, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !62, i32 91} ; [ DW_TAG_subprogram ]
!71 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !72, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!72 = metadata !{null, metadata !61, metadata !73}
!73 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_reference_type ]
!74 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !52} ; [ DW_TAG_const_type ]
!75 = metadata !{i32 786478, i32 0, metadata !52, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIfEaSERKS1_", metadata !54, i32 94, metadata !76, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !62, i32 94} ; [ DW_TAG_subprogram ]
!76 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !77, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!77 = metadata !{metadata !51, metadata !61, metadata !73}
!78 = metadata !{i32 786478, i32 0, metadata !52, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !54, i32 101, metadata !79, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 101} ; [ DW_TAG_subprogram ]
!79 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !80, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!80 = metadata !{null, metadata !61, metadata !81}
!81 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_reference_type ]
!82 = metadata !{i32 786478, i32 0, metadata !52, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !54, i32 105, metadata !83, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 105} ; [ DW_TAG_subprogram ]
!83 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !84, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!84 = metadata !{null, metadata !61, metadata !85}
!85 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_reference_type ]
!86 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_const_type ]
!87 = metadata !{i32 786478, i32 0, metadata !52, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIfE5emptyEv", metadata !54, i32 112, metadata !88, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 112} ; [ DW_TAG_subprogram ]
!88 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !89, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!89 = metadata !{metadata !90, metadata !91}
!90 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!91 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !74} ; [ DW_TAG_pointer_type ]
!92 = metadata !{i32 786478, i32 0, metadata !52, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIfE4fullEv", metadata !54, i32 117, metadata !88, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 117} ; [ DW_TAG_subprogram ]
!93 = metadata !{i32 786478, i32 0, metadata !52, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !54, i32 123, metadata !79, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 123} ; [ DW_TAG_subprogram ]
!94 = metadata !{i32 786478, i32 0, metadata !52, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !54, i32 129, metadata !95, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 129} ; [ DW_TAG_subprogram ]
!95 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !96, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!96 = metadata !{metadata !57, metadata !61}
!97 = metadata !{i32 786478, i32 0, metadata !52, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIfE7read_nbERf", metadata !54, i32 136, metadata !98, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 136} ; [ DW_TAG_subprogram ]
!98 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !99, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!99 = metadata !{metadata !90, metadata !61, metadata !81}
!100 = metadata !{i32 786478, i32 0, metadata !52, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !54, i32 144, metadata !83, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 144} ; [ DW_TAG_subprogram ]
!101 = metadata !{i32 786478, i32 0, metadata !52, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIfE8write_nbERKf", metadata !54, i32 150, metadata !102, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 150} ; [ DW_TAG_subprogram ]
!102 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !103, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!103 = metadata !{metadata !90, metadata !61, metadata !85}
!104 = metadata !{i32 786478, i32 0, metadata !52, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIfE4sizeEv", metadata !54, i32 157, metadata !105, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 157} ; [ DW_TAG_subprogram ]
!105 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !106, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!106 = metadata !{metadata !107, metadata !61}
!107 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!108 = metadata !{metadata !109}
!109 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !57, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!110 = metadata !{i32 786434, null, metadata !"ap_uint<1>", metadata !111, i32 182, i64 8, i64 8, i32 0, i32 0, null, metadata !112, i32 0, null, metadata !455} ; [ DW_TAG_class_type ]
!111 = metadata !{i32 786473, metadata !"/opt/Xilinx_2017_2/Vivado_HLS/2017.2/common/technology/autopilot/ap_int.h", metadata !"/home/hildeb47/proj/ECE1373_GhostSynth/mods/latcherfloat", null} ; [ DW_TAG_file_type ]
!112 = metadata !{metadata !113, metadata !384, metadata !388, metadata !391, metadata !394, metadata !397, metadata !400, metadata !403, metadata !406, metadata !409, metadata !412, metadata !415, metadata !418, metadata !421, metadata !424, metadata !427, metadata !430, metadata !433, metadata !436, metadata !443, metadata !448, metadata !452}
!113 = metadata !{i32 786460, metadata !110, null, metadata !111, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !114} ; [ DW_TAG_inheritance ]
!114 = metadata !{i32 786434, null, metadata !"ap_int_base<1, false, true>", metadata !115, i32 1398, i64 8, i64 8, i32 0, i32 0, null, metadata !116, i32 0, null, metadata !381} ; [ DW_TAG_class_type ]
!115 = metadata !{i32 786473, metadata !"/opt/Xilinx_2017_2/Vivado_HLS/2017.2/common/technology/autopilot/ap_int_syn.h", metadata !"/home/hildeb47/proj/ECE1373_GhostSynth/mods/latcherfloat", null} ; [ DW_TAG_file_type ]
!116 = metadata !{metadata !117, metadata !131, metadata !135, metadata !138, metadata !142, metadata !146, metadata !150, metadata !154, metadata !157, metadata !160, metadata !164, metadata !168, metadata !173, metadata !178, metadata !183, metadata !186, metadata !190, metadata !193, metadata !196, metadata !201, metadata !206, metadata !211, metadata !212, metadata !216, metadata !219, metadata !222, metadata !225, metadata !228, metadata !231, metadata !234, metadata !237, metadata !240, metadata !243, metadata !246, metadata !249, metadata !257, metadata !260, metadata !263, metadata !266, metadata !269, metadata !272, metadata !275, metadata !278, metadata !281, metadata !284, metadata !287, metadata !290, metadata !293, metadata !294, metadata !298, metadata !301, metadata !302, metadata !303, metadata !304, metadata !305, metadata !306, metadata !309, metadata !310, metadata !313, metadata !314, metadata !315, metadata !316, metadata !317, metadata !318, metadata !321, metadata !322, metadata !323, metadata !326, metadata !327, metadata !330, metadata !331, metadata !335, metadata !339, metadata !340, metadata !343, metadata !344, metadata !348, metadata !349, metadata !350, metadata !351, metadata !354, metadata !355, metadata !356, metadata !357, metadata !358, metadata !359, metadata !360, metadata !361, metadata !362, metadata !363, metadata !364, metadata !365, metadata !375, metadata !378}
!117 = metadata !{i32 786460, metadata !114, null, metadata !115, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !118} ; [ DW_TAG_inheritance ]
!118 = metadata !{i32 786434, null, metadata !"ssdm_int<1 + 1024 * 0, false>", metadata !119, i32 3, i64 8, i64 8, i32 0, i32 0, null, metadata !120, i32 0, null, metadata !127} ; [ DW_TAG_class_type ]
!119 = metadata !{i32 786473, metadata !"/opt/Xilinx_2017_2/Vivado_HLS/2017.2/common/technology/autopilot/etc/autopilot_dt.def", metadata !"/home/hildeb47/proj/ECE1373_GhostSynth/mods/latcherfloat", null} ; [ DW_TAG_file_type ]
!120 = metadata !{metadata !121, metadata !123}
!121 = metadata !{i32 786445, metadata !118, metadata !"V", metadata !119, i32 3, i64 1, i64 1, i64 0, i32 0, metadata !122} ; [ DW_TAG_member ]
!122 = metadata !{i32 786468, null, metadata !"uint1", null, i32 0, i64 1, i64 1, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!123 = metadata !{i32 786478, i32 0, metadata !118, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !119, i32 3, metadata !124, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 3} ; [ DW_TAG_subprogram ]
!124 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !125, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!125 = metadata !{null, metadata !126}
!126 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !118} ; [ DW_TAG_pointer_type ]
!127 = metadata !{metadata !128, metadata !130}
!128 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !129, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!129 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!130 = metadata !{i32 786480, null, metadata !"_AP_S", metadata !90, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!131 = metadata !{i32 786478, i32 0, metadata !114, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !115, i32 1439, metadata !132, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1439} ; [ DW_TAG_subprogram ]
!132 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !133, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!133 = metadata !{null, metadata !134}
!134 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !114} ; [ DW_TAG_pointer_type ]
!135 = metadata !{i32 786478, i32 0, metadata !114, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !115, i32 1461, metadata !136, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !62, i32 1461} ; [ DW_TAG_subprogram ]
!136 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !137, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!137 = metadata !{null, metadata !134, metadata !90}
!138 = metadata !{i32 786478, i32 0, metadata !114, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !115, i32 1462, metadata !139, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !62, i32 1462} ; [ DW_TAG_subprogram ]
!139 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !140, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!140 = metadata !{null, metadata !134, metadata !141}
!141 = metadata !{i32 786468, null, metadata !"signed char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!142 = metadata !{i32 786478, i32 0, metadata !114, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !115, i32 1463, metadata !143, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !62, i32 1463} ; [ DW_TAG_subprogram ]
!143 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !144, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!144 = metadata !{null, metadata !134, metadata !145}
!145 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!146 = metadata !{i32 786478, i32 0, metadata !114, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !115, i32 1464, metadata !147, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !62, i32 1464} ; [ DW_TAG_subprogram ]
!147 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !148, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!148 = metadata !{null, metadata !134, metadata !149}
!149 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!150 = metadata !{i32 786478, i32 0, metadata !114, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !115, i32 1465, metadata !151, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !62, i32 1465} ; [ DW_TAG_subprogram ]
!151 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !152, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!152 = metadata !{null, metadata !134, metadata !153}
!153 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!154 = metadata !{i32 786478, i32 0, metadata !114, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !115, i32 1466, metadata !155, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !62, i32 1466} ; [ DW_TAG_subprogram ]
!155 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !156, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!156 = metadata !{null, metadata !134, metadata !129}
!157 = metadata !{i32 786478, i32 0, metadata !114, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !115, i32 1467, metadata !158, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !62, i32 1467} ; [ DW_TAG_subprogram ]
!158 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !159, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!159 = metadata !{null, metadata !134, metadata !107}
!160 = metadata !{i32 786478, i32 0, metadata !114, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !115, i32 1468, metadata !161, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !62, i32 1468} ; [ DW_TAG_subprogram ]
!161 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !162, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!162 = metadata !{null, metadata !134, metadata !163}
!163 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!164 = metadata !{i32 786478, i32 0, metadata !114, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !115, i32 1469, metadata !165, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !62, i32 1469} ; [ DW_TAG_subprogram ]
!165 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !166, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!166 = metadata !{null, metadata !134, metadata !167}
!167 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!168 = metadata !{i32 786478, i32 0, metadata !114, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !115, i32 1470, metadata !169, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !62, i32 1470} ; [ DW_TAG_subprogram ]
!169 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !170, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!170 = metadata !{null, metadata !134, metadata !171}
!171 = metadata !{i32 786454, null, metadata !"ap_slong", metadata !115, i32 112, i64 0, i64 0, i64 0, i32 0, metadata !172} ; [ DW_TAG_typedef ]
!172 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!173 = metadata !{i32 786478, i32 0, metadata !114, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !115, i32 1471, metadata !174, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !62, i32 1471} ; [ DW_TAG_subprogram ]
!174 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !175, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!175 = metadata !{null, metadata !134, metadata !176}
!176 = metadata !{i32 786454, null, metadata !"ap_ulong", metadata !115, i32 111, i64 0, i64 0, i64 0, i32 0, metadata !177} ; [ DW_TAG_typedef ]
!177 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!178 = metadata !{i32 786478, i32 0, metadata !114, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !115, i32 1472, metadata !179, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !62, i32 1472} ; [ DW_TAG_subprogram ]
!179 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !180, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!180 = metadata !{null, metadata !134, metadata !181}
!181 = metadata !{i32 786454, null, metadata !"half", metadata !115, i32 54, i64 0, i64 0, i64 0, i32 0, metadata !182} ; [ DW_TAG_typedef ]
!182 = metadata !{i32 786468, null, metadata !"half", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!183 = metadata !{i32 786478, i32 0, metadata !114, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !115, i32 1473, metadata !184, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !62, i32 1473} ; [ DW_TAG_subprogram ]
!184 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !185, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!185 = metadata !{null, metadata !134, metadata !57}
!186 = metadata !{i32 786478, i32 0, metadata !114, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !115, i32 1474, metadata !187, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !62, i32 1474} ; [ DW_TAG_subprogram ]
!187 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !188, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!188 = metadata !{null, metadata !134, metadata !189}
!189 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!190 = metadata !{i32 786478, i32 0, metadata !114, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !115, i32 1501, metadata !191, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1501} ; [ DW_TAG_subprogram ]
!191 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !192, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!192 = metadata !{null, metadata !134, metadata !67}
!193 = metadata !{i32 786478, i32 0, metadata !114, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !115, i32 1508, metadata !194, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1508} ; [ DW_TAG_subprogram ]
!194 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !195, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!195 = metadata !{null, metadata !134, metadata !67, metadata !141}
!196 = metadata !{i32 786478, i32 0, metadata !114, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi1ELb0ELb1EE4readEv", metadata !115, i32 1529, metadata !197, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1529} ; [ DW_TAG_subprogram ]
!197 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !198, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!198 = metadata !{metadata !114, metadata !199}
!199 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !200} ; [ DW_TAG_pointer_type ]
!200 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !114} ; [ DW_TAG_volatile_type ]
!201 = metadata !{i32 786478, i32 0, metadata !114, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi1ELb0ELb1EE5writeERKS0_", metadata !115, i32 1535, metadata !202, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1535} ; [ DW_TAG_subprogram ]
!202 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !203, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!203 = metadata !{null, metadata !199, metadata !204}
!204 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !205} ; [ DW_TAG_reference_type ]
!205 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !114} ; [ DW_TAG_const_type ]
!206 = metadata !{i32 786478, i32 0, metadata !114, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi1ELb0ELb1EEaSERVKS0_", metadata !115, i32 1547, metadata !207, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1547} ; [ DW_TAG_subprogram ]
!207 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !208, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!208 = metadata !{null, metadata !199, metadata !209}
!209 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !210} ; [ DW_TAG_reference_type ]
!210 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !200} ; [ DW_TAG_const_type ]
!211 = metadata !{i32 786478, i32 0, metadata !114, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi1ELb0ELb1EEaSERKS0_", metadata !115, i32 1556, metadata !202, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1556} ; [ DW_TAG_subprogram ]
!212 = metadata !{i32 786478, i32 0, metadata !114, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSERVKS0_", metadata !115, i32 1579, metadata !213, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1579} ; [ DW_TAG_subprogram ]
!213 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !214, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!214 = metadata !{metadata !215, metadata !134, metadata !209}
!215 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !114} ; [ DW_TAG_reference_type ]
!216 = metadata !{i32 786478, i32 0, metadata !114, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSERKS0_", metadata !115, i32 1584, metadata !217, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1584} ; [ DW_TAG_subprogram ]
!217 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !218, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!218 = metadata !{metadata !215, metadata !134, metadata !204}
!219 = metadata !{i32 786478, i32 0, metadata !114, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEPKc", metadata !115, i32 1588, metadata !220, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1588} ; [ DW_TAG_subprogram ]
!220 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !221, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!221 = metadata !{metadata !215, metadata !134, metadata !67}
!222 = metadata !{i32 786478, i32 0, metadata !114, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE3setEPKca", metadata !115, i32 1596, metadata !223, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1596} ; [ DW_TAG_subprogram ]
!223 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !224, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!224 = metadata !{metadata !215, metadata !134, metadata !67, metadata !141}
!225 = metadata !{i32 786478, i32 0, metadata !114, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEa", metadata !115, i32 1610, metadata !226, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1610} ; [ DW_TAG_subprogram ]
!226 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !227, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!227 = metadata !{metadata !215, metadata !134, metadata !141}
!228 = metadata !{i32 786478, i32 0, metadata !114, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEh", metadata !115, i32 1611, metadata !229, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1611} ; [ DW_TAG_subprogram ]
!229 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !230, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!230 = metadata !{metadata !215, metadata !134, metadata !145}
!231 = metadata !{i32 786478, i32 0, metadata !114, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEs", metadata !115, i32 1612, metadata !232, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1612} ; [ DW_TAG_subprogram ]
!232 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !233, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!233 = metadata !{metadata !215, metadata !134, metadata !149}
!234 = metadata !{i32 786478, i32 0, metadata !114, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEt", metadata !115, i32 1613, metadata !235, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1613} ; [ DW_TAG_subprogram ]
!235 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !236, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!236 = metadata !{metadata !215, metadata !134, metadata !153}
!237 = metadata !{i32 786478, i32 0, metadata !114, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEi", metadata !115, i32 1614, metadata !238, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1614} ; [ DW_TAG_subprogram ]
!238 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !239, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!239 = metadata !{metadata !215, metadata !134, metadata !129}
!240 = metadata !{i32 786478, i32 0, metadata !114, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEj", metadata !115, i32 1615, metadata !241, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1615} ; [ DW_TAG_subprogram ]
!241 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !242, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!242 = metadata !{metadata !215, metadata !134, metadata !107}
!243 = metadata !{i32 786478, i32 0, metadata !114, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEx", metadata !115, i32 1616, metadata !244, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1616} ; [ DW_TAG_subprogram ]
!244 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !245, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!245 = metadata !{metadata !215, metadata !134, metadata !171}
!246 = metadata !{i32 786478, i32 0, metadata !114, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEy", metadata !115, i32 1617, metadata !247, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1617} ; [ DW_TAG_subprogram ]
!247 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !248, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!248 = metadata !{metadata !215, metadata !134, metadata !176}
!249 = metadata !{i32 786478, i32 0, metadata !114, metadata !"operator unsigned char", metadata !"operator unsigned char", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EEcvhEv", metadata !115, i32 1655, metadata !250, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1655} ; [ DW_TAG_subprogram ]
!250 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !251, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!251 = metadata !{metadata !252, metadata !256}
!252 = metadata !{i32 786454, metadata !114, metadata !"RetType", metadata !115, i32 1403, i64 0, i64 0, i64 0, i32 0, metadata !253} ; [ DW_TAG_typedef ]
!253 = metadata !{i32 786454, metadata !254, metadata !"Type", metadata !115, i32 1371, i64 0, i64 0, i64 0, i32 0, metadata !145} ; [ DW_TAG_typedef ]
!254 = metadata !{i32 786434, null, metadata !"retval<1, false>", metadata !115, i32 1370, i64 8, i64 8, i32 0, i32 0, null, metadata !255, i32 0, null, metadata !127} ; [ DW_TAG_class_type ]
!255 = metadata !{i32 0}
!256 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !205} ; [ DW_TAG_pointer_type ]
!257 = metadata !{i32 786478, i32 0, metadata !114, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE7to_boolEv", metadata !115, i32 1661, metadata !258, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1661} ; [ DW_TAG_subprogram ]
!258 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !259, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!259 = metadata !{metadata !90, metadata !256}
!260 = metadata !{i32 786478, i32 0, metadata !114, metadata !"to_uchar", metadata !"to_uchar", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE8to_ucharEv", metadata !115, i32 1662, metadata !261, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1662} ; [ DW_TAG_subprogram ]
!261 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !262, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!262 = metadata !{metadata !145, metadata !256}
!263 = metadata !{i32 786478, i32 0, metadata !114, metadata !"to_char", metadata !"to_char", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE7to_charEv", metadata !115, i32 1663, metadata !264, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1663} ; [ DW_TAG_subprogram ]
!264 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !265, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!265 = metadata !{metadata !141, metadata !256}
!266 = metadata !{i32 786478, i32 0, metadata !114, metadata !"to_ushort", metadata !"to_ushort", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE9to_ushortEv", metadata !115, i32 1664, metadata !267, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1664} ; [ DW_TAG_subprogram ]
!267 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !268, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!268 = metadata !{metadata !153, metadata !256}
!269 = metadata !{i32 786478, i32 0, metadata !114, metadata !"to_short", metadata !"to_short", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE8to_shortEv", metadata !115, i32 1665, metadata !270, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1665} ; [ DW_TAG_subprogram ]
!270 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !271, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!271 = metadata !{metadata !149, metadata !256}
!272 = metadata !{i32 786478, i32 0, metadata !114, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE6to_intEv", metadata !115, i32 1666, metadata !273, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1666} ; [ DW_TAG_subprogram ]
!273 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !274, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!274 = metadata !{metadata !129, metadata !256}
!275 = metadata !{i32 786478, i32 0, metadata !114, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE7to_uintEv", metadata !115, i32 1667, metadata !276, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1667} ; [ DW_TAG_subprogram ]
!276 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !277, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!277 = metadata !{metadata !107, metadata !256}
!278 = metadata !{i32 786478, i32 0, metadata !114, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE7to_longEv", metadata !115, i32 1668, metadata !279, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1668} ; [ DW_TAG_subprogram ]
!279 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !280, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!280 = metadata !{metadata !163, metadata !256}
!281 = metadata !{i32 786478, i32 0, metadata !114, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE8to_ulongEv", metadata !115, i32 1669, metadata !282, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1669} ; [ DW_TAG_subprogram ]
!282 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !283, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!283 = metadata !{metadata !167, metadata !256}
!284 = metadata !{i32 786478, i32 0, metadata !114, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE8to_int64Ev", metadata !115, i32 1670, metadata !285, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1670} ; [ DW_TAG_subprogram ]
!285 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !286, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!286 = metadata !{metadata !171, metadata !256}
!287 = metadata !{i32 786478, i32 0, metadata !114, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE9to_uint64Ev", metadata !115, i32 1671, metadata !288, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1671} ; [ DW_TAG_subprogram ]
!288 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !289, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!289 = metadata !{metadata !176, metadata !256}
!290 = metadata !{i32 786478, i32 0, metadata !114, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE9to_doubleEv", metadata !115, i32 1672, metadata !291, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1672} ; [ DW_TAG_subprogram ]
!291 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !292, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!292 = metadata !{metadata !189, metadata !256}
!293 = metadata !{i32 786478, i32 0, metadata !114, metadata !"length", metadata !"length", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE6lengthEv", metadata !115, i32 1686, metadata !273, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1686} ; [ DW_TAG_subprogram ]
!294 = metadata !{i32 786478, i32 0, metadata !114, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi1ELb0ELb1EE6lengthEv", metadata !115, i32 1687, metadata !295, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1687} ; [ DW_TAG_subprogram ]
!295 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !296, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!296 = metadata !{metadata !129, metadata !297}
!297 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !210} ; [ DW_TAG_pointer_type ]
!298 = metadata !{i32 786478, i32 0, metadata !114, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE7reverseEv", metadata !115, i32 1692, metadata !299, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1692} ; [ DW_TAG_subprogram ]
!299 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !300, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!300 = metadata !{metadata !215, metadata !134}
!301 = metadata !{i32 786478, i32 0, metadata !114, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE6iszeroEv", metadata !115, i32 1698, metadata !258, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1698} ; [ DW_TAG_subprogram ]
!302 = metadata !{i32 786478, i32 0, metadata !114, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE7is_zeroEv", metadata !115, i32 1703, metadata !258, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1703} ; [ DW_TAG_subprogram ]
!303 = metadata !{i32 786478, i32 0, metadata !114, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE4signEv", metadata !115, i32 1708, metadata !258, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1708} ; [ DW_TAG_subprogram ]
!304 = metadata !{i32 786478, i32 0, metadata !114, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE5clearEi", metadata !115, i32 1716, metadata !155, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1716} ; [ DW_TAG_subprogram ]
!305 = metadata !{i32 786478, i32 0, metadata !114, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE6invertEi", metadata !115, i32 1722, metadata !155, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1722} ; [ DW_TAG_subprogram ]
!306 = metadata !{i32 786478, i32 0, metadata !114, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE4testEi", metadata !115, i32 1730, metadata !307, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1730} ; [ DW_TAG_subprogram ]
!307 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !308, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!308 = metadata !{metadata !90, metadata !256, metadata !129}
!309 = metadata !{i32 786478, i32 0, metadata !114, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE3setEi", metadata !115, i32 1736, metadata !155, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1736} ; [ DW_TAG_subprogram ]
!310 = metadata !{i32 786478, i32 0, metadata !114, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE3setEib", metadata !115, i32 1742, metadata !311, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1742} ; [ DW_TAG_subprogram ]
!311 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !312, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!312 = metadata !{null, metadata !134, metadata !129, metadata !90}
!313 = metadata !{i32 786478, i32 0, metadata !114, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE7lrotateEi", metadata !115, i32 1749, metadata !155, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1749} ; [ DW_TAG_subprogram ]
!314 = metadata !{i32 786478, i32 0, metadata !114, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE7rrotateEi", metadata !115, i32 1758, metadata !155, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1758} ; [ DW_TAG_subprogram ]
!315 = metadata !{i32 786478, i32 0, metadata !114, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE7set_bitEib", metadata !115, i32 1766, metadata !311, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1766} ; [ DW_TAG_subprogram ]
!316 = metadata !{i32 786478, i32 0, metadata !114, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE7get_bitEi", metadata !115, i32 1771, metadata !307, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1771} ; [ DW_TAG_subprogram ]
!317 = metadata !{i32 786478, i32 0, metadata !114, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE5b_notEv", metadata !115, i32 1776, metadata !132, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1776} ; [ DW_TAG_subprogram ]
!318 = metadata !{i32 786478, i32 0, metadata !114, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE17countLeadingZerosEv", metadata !115, i32 1783, metadata !319, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1783} ; [ DW_TAG_subprogram ]
!319 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !320, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!320 = metadata !{metadata !129, metadata !134}
!321 = metadata !{i32 786478, i32 0, metadata !114, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEppEv", metadata !115, i32 1840, metadata !299, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1840} ; [ DW_TAG_subprogram ]
!322 = metadata !{i32 786478, i32 0, metadata !114, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEmmEv", metadata !115, i32 1844, metadata !299, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1844} ; [ DW_TAG_subprogram ]
!323 = metadata !{i32 786478, i32 0, metadata !114, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEppEi", metadata !115, i32 1852, metadata !324, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1852} ; [ DW_TAG_subprogram ]
!324 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !325, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!325 = metadata !{metadata !205, metadata !134, metadata !129}
!326 = metadata !{i32 786478, i32 0, metadata !114, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEmmEi", metadata !115, i32 1857, metadata !324, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1857} ; [ DW_TAG_subprogram ]
!327 = metadata !{i32 786478, i32 0, metadata !114, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EEpsEv", metadata !115, i32 1866, metadata !328, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1866} ; [ DW_TAG_subprogram ]
!328 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !329, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!329 = metadata !{metadata !114, metadata !256}
!330 = metadata !{i32 786478, i32 0, metadata !114, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EEntEv", metadata !115, i32 1872, metadata !258, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1872} ; [ DW_TAG_subprogram ]
!331 = metadata !{i32 786478, i32 0, metadata !114, metadata !"operator-", metadata !"operator-", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EEngEv", metadata !115, i32 1877, metadata !332, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 1877} ; [ DW_TAG_subprogram ]
!332 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !333, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!333 = metadata !{metadata !334, metadata !256}
!334 = metadata !{i32 786434, null, metadata !"ap_int_base<2, true, true>", metadata !115, i32 651, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!335 = metadata !{i32 786478, i32 0, metadata !114, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE5rangeEii", metadata !115, i32 2007, metadata !336, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 2007} ; [ DW_TAG_subprogram ]
!336 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !337, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!337 = metadata !{metadata !338, metadata !134, metadata !129, metadata !129}
!338 = metadata !{i32 786434, null, metadata !"ap_range_ref<1, false>", metadata !115, i32 924, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!339 = metadata !{i32 786478, i32 0, metadata !114, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEclEii", metadata !115, i32 2013, metadata !336, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 2013} ; [ DW_TAG_subprogram ]
!340 = metadata !{i32 786478, i32 0, metadata !114, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE5rangeEii", metadata !115, i32 2019, metadata !341, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 2019} ; [ DW_TAG_subprogram ]
!341 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !342, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!342 = metadata !{metadata !338, metadata !256, metadata !129, metadata !129}
!343 = metadata !{i32 786478, i32 0, metadata !114, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EEclEii", metadata !115, i32 2025, metadata !341, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 2025} ; [ DW_TAG_subprogram ]
!344 = metadata !{i32 786478, i32 0, metadata !114, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEixEi", metadata !115, i32 2044, metadata !345, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 2044} ; [ DW_TAG_subprogram ]
!345 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !346, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!346 = metadata !{metadata !347, metadata !134, metadata !129}
!347 = metadata !{i32 786434, null, metadata !"ap_bit_ref<1, false>", metadata !115, i32 1194, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!348 = metadata !{i32 786478, i32 0, metadata !114, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EEixEi", metadata !115, i32 2058, metadata !307, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 2058} ; [ DW_TAG_subprogram ]
!349 = metadata !{i32 786478, i32 0, metadata !114, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE3bitEi", metadata !115, i32 2072, metadata !345, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 2072} ; [ DW_TAG_subprogram ]
!350 = metadata !{i32 786478, i32 0, metadata !114, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE3bitEi", metadata !115, i32 2086, metadata !307, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 2086} ; [ DW_TAG_subprogram ]
!351 = metadata !{i32 786478, i32 0, metadata !114, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE10and_reduceEv", metadata !115, i32 2266, metadata !352, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 2266} ; [ DW_TAG_subprogram ]
!352 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !353, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!353 = metadata !{metadata !90, metadata !134}
!354 = metadata !{i32 786478, i32 0, metadata !114, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE11nand_reduceEv", metadata !115, i32 2269, metadata !352, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 2269} ; [ DW_TAG_subprogram ]
!355 = metadata !{i32 786478, i32 0, metadata !114, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE9or_reduceEv", metadata !115, i32 2272, metadata !352, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 2272} ; [ DW_TAG_subprogram ]
!356 = metadata !{i32 786478, i32 0, metadata !114, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE10nor_reduceEv", metadata !115, i32 2275, metadata !352, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 2275} ; [ DW_TAG_subprogram ]
!357 = metadata !{i32 786478, i32 0, metadata !114, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE10xor_reduceEv", metadata !115, i32 2278, metadata !352, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 2278} ; [ DW_TAG_subprogram ]
!358 = metadata !{i32 786478, i32 0, metadata !114, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE11xnor_reduceEv", metadata !115, i32 2281, metadata !352, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 2281} ; [ DW_TAG_subprogram ]
!359 = metadata !{i32 786478, i32 0, metadata !114, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE10and_reduceEv", metadata !115, i32 2285, metadata !258, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 2285} ; [ DW_TAG_subprogram ]
!360 = metadata !{i32 786478, i32 0, metadata !114, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE11nand_reduceEv", metadata !115, i32 2288, metadata !258, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 2288} ; [ DW_TAG_subprogram ]
!361 = metadata !{i32 786478, i32 0, metadata !114, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE9or_reduceEv", metadata !115, i32 2291, metadata !258, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 2291} ; [ DW_TAG_subprogram ]
!362 = metadata !{i32 786478, i32 0, metadata !114, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE10nor_reduceEv", metadata !115, i32 2294, metadata !258, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 2294} ; [ DW_TAG_subprogram ]
!363 = metadata !{i32 786478, i32 0, metadata !114, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE10xor_reduceEv", metadata !115, i32 2297, metadata !258, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 2297} ; [ DW_TAG_subprogram ]
!364 = metadata !{i32 786478, i32 0, metadata !114, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE11xnor_reduceEv", metadata !115, i32 2300, metadata !258, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 2300} ; [ DW_TAG_subprogram ]
!365 = metadata !{i32 786478, i32 0, metadata !114, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE9to_stringEPci8BaseModeb", metadata !115, i32 2307, metadata !366, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 2307} ; [ DW_TAG_subprogram ]
!366 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !367, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!367 = metadata !{null, metadata !256, metadata !368, metadata !129, metadata !369, metadata !90}
!368 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !69} ; [ DW_TAG_pointer_type ]
!369 = metadata !{i32 786436, null, metadata !"BaseMode", metadata !115, i32 603, i64 5, i64 8, i32 0, i32 0, null, metadata !370, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!370 = metadata !{metadata !371, metadata !372, metadata !373, metadata !374}
!371 = metadata !{i32 786472, metadata !"SC_BIN", i64 2} ; [ DW_TAG_enumerator ]
!372 = metadata !{i32 786472, metadata !"SC_OCT", i64 8} ; [ DW_TAG_enumerator ]
!373 = metadata !{i32 786472, metadata !"SC_DEC", i64 10} ; [ DW_TAG_enumerator ]
!374 = metadata !{i32 786472, metadata !"SC_HEX", i64 16} ; [ DW_TAG_enumerator ]
!375 = metadata !{i32 786478, i32 0, metadata !114, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE9to_stringE8BaseModeb", metadata !115, i32 2334, metadata !376, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 2334} ; [ DW_TAG_subprogram ]
!376 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !377, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!377 = metadata !{metadata !368, metadata !256, metadata !369, metadata !90}
!378 = metadata !{i32 786478, i32 0, metadata !114, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE9to_stringEab", metadata !115, i32 2338, metadata !379, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 2338} ; [ DW_TAG_subprogram ]
!379 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !380, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!380 = metadata !{metadata !368, metadata !256, metadata !141, metadata !90}
!381 = metadata !{metadata !382, metadata !130, metadata !383}
!382 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !129, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!383 = metadata !{i32 786480, null, metadata !"_AP_C", metadata !90, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!384 = metadata !{i32 786478, i32 0, metadata !110, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !111, i32 185, metadata !385, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 185} ; [ DW_TAG_subprogram ]
!385 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !386, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!386 = metadata !{null, metadata !387}
!387 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !110} ; [ DW_TAG_pointer_type ]
!388 = metadata !{i32 786478, i32 0, metadata !110, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !111, i32 247, metadata !389, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 247} ; [ DW_TAG_subprogram ]
!389 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !390, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!390 = metadata !{null, metadata !387, metadata !90}
!391 = metadata !{i32 786478, i32 0, metadata !110, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !111, i32 248, metadata !392, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 248} ; [ DW_TAG_subprogram ]
!392 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !393, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!393 = metadata !{null, metadata !387, metadata !141}
!394 = metadata !{i32 786478, i32 0, metadata !110, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !111, i32 249, metadata !395, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 249} ; [ DW_TAG_subprogram ]
!395 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !396, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!396 = metadata !{null, metadata !387, metadata !145}
!397 = metadata !{i32 786478, i32 0, metadata !110, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !111, i32 250, metadata !398, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 250} ; [ DW_TAG_subprogram ]
!398 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !399, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!399 = metadata !{null, metadata !387, metadata !149}
!400 = metadata !{i32 786478, i32 0, metadata !110, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !111, i32 251, metadata !401, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 251} ; [ DW_TAG_subprogram ]
!401 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !402, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!402 = metadata !{null, metadata !387, metadata !153}
!403 = metadata !{i32 786478, i32 0, metadata !110, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !111, i32 252, metadata !404, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 252} ; [ DW_TAG_subprogram ]
!404 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !405, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!405 = metadata !{null, metadata !387, metadata !129}
!406 = metadata !{i32 786478, i32 0, metadata !110, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !111, i32 253, metadata !407, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 253} ; [ DW_TAG_subprogram ]
!407 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !408, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!408 = metadata !{null, metadata !387, metadata !107}
!409 = metadata !{i32 786478, i32 0, metadata !110, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !111, i32 254, metadata !410, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 254} ; [ DW_TAG_subprogram ]
!410 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !411, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!411 = metadata !{null, metadata !387, metadata !163}
!412 = metadata !{i32 786478, i32 0, metadata !110, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !111, i32 255, metadata !413, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 255} ; [ DW_TAG_subprogram ]
!413 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !414, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!414 = metadata !{null, metadata !387, metadata !167}
!415 = metadata !{i32 786478, i32 0, metadata !110, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !111, i32 256, metadata !416, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 256} ; [ DW_TAG_subprogram ]
!416 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !417, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!417 = metadata !{null, metadata !387, metadata !177}
!418 = metadata !{i32 786478, i32 0, metadata !110, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !111, i32 257, metadata !419, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 257} ; [ DW_TAG_subprogram ]
!419 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !420, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!420 = metadata !{null, metadata !387, metadata !172}
!421 = metadata !{i32 786478, i32 0, metadata !110, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !111, i32 258, metadata !422, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 258} ; [ DW_TAG_subprogram ]
!422 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !423, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!423 = metadata !{null, metadata !387, metadata !181}
!424 = metadata !{i32 786478, i32 0, metadata !110, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !111, i32 259, metadata !425, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 259} ; [ DW_TAG_subprogram ]
!425 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !426, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!426 = metadata !{null, metadata !387, metadata !57}
!427 = metadata !{i32 786478, i32 0, metadata !110, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !111, i32 260, metadata !428, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 260} ; [ DW_TAG_subprogram ]
!428 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !429, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!429 = metadata !{null, metadata !387, metadata !189}
!430 = metadata !{i32 786478, i32 0, metadata !110, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !111, i32 262, metadata !431, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 262} ; [ DW_TAG_subprogram ]
!431 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !432, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!432 = metadata !{null, metadata !387, metadata !67}
!433 = metadata !{i32 786478, i32 0, metadata !110, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !111, i32 263, metadata !434, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 263} ; [ DW_TAG_subprogram ]
!434 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !435, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!435 = metadata !{null, metadata !387, metadata !67, metadata !141}
!436 = metadata !{i32 786478, i32 0, metadata !110, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi1EEaSERKS0_", metadata !111, i32 266, metadata !437, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 266} ; [ DW_TAG_subprogram ]
!437 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !438, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!438 = metadata !{null, metadata !439, metadata !441}
!439 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !440} ; [ DW_TAG_pointer_type ]
!440 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !110} ; [ DW_TAG_volatile_type ]
!441 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !442} ; [ DW_TAG_reference_type ]
!442 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !110} ; [ DW_TAG_const_type ]
!443 = metadata !{i32 786478, i32 0, metadata !110, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi1EEaSERVKS0_", metadata !111, i32 270, metadata !444, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 270} ; [ DW_TAG_subprogram ]
!444 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !445, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!445 = metadata !{null, metadata !439, metadata !446}
!446 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !447} ; [ DW_TAG_reference_type ]
!447 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !440} ; [ DW_TAG_const_type ]
!448 = metadata !{i32 786478, i32 0, metadata !110, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi1EEaSERVKS0_", metadata !111, i32 274, metadata !449, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 274} ; [ DW_TAG_subprogram ]
!449 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !450, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!450 = metadata !{metadata !451, metadata !387, metadata !446}
!451 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !110} ; [ DW_TAG_reference_type ]
!452 = metadata !{i32 786478, i32 0, metadata !110, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi1EEaSERKS0_", metadata !111, i32 279, metadata !453, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 279} ; [ DW_TAG_subprogram ]
!453 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !454, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!454 = metadata !{metadata !451, metadata !387, metadata !441}
!455 = metadata !{metadata !382}
!456 = metadata !{metadata !457}
!457 = metadata !{i32 0, i32 31, metadata !458}
!458 = metadata !{metadata !459}
!459 = metadata !{metadata !"in.V", metadata !43, metadata !"float", i32 0, i32 31}
!460 = metadata !{metadata !461}
!461 = metadata !{i32 0, i32 31, metadata !462}
!462 = metadata !{metadata !463}
!463 = metadata !{metadata !"out.V", metadata !43, metadata !"float", i32 0, i32 31}
!464 = metadata !{metadata !465}
!465 = metadata !{i32 0, i32 0, metadata !466}
!466 = metadata !{metadata !467}
!467 = metadata !{metadata !"latch.V", metadata !468, metadata !"uint1", i32 0, i32 0}
!468 = metadata !{metadata !469}
!469 = metadata !{i32 0, i32 0, i32 0}
!470 = metadata !{i32 29, i32 1, metadata !46, null}
!471 = metadata !{i32 30, i32 1, metadata !46, null}
!472 = metadata !{i32 31, i32 1, metadata !46, null}
!473 = metadata !{i32 790531, metadata !474, metadata !"in.V", null, i32 25, metadata !475, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!474 = metadata !{i32 786689, metadata !47, metadata !"in", metadata !48, i32 16777241, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!475 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !476} ; [ DW_TAG_pointer_type ]
!476 = metadata !{i32 786438, metadata !53, metadata !"stream<float>", metadata !54, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !477, i32 0, null, metadata !108} ; [ DW_TAG_class_field_type ]
!477 = metadata !{metadata !56}
!478 = metadata !{i32 25, i32 14, metadata !47, null}
!479 = metadata !{i32 790531, metadata !480, metadata !"out.V", null, i32 26, metadata !475, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!480 = metadata !{i32 786689, metadata !47, metadata !"out", metadata !48, i32 33554458, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!481 = metadata !{i32 26, i32 14, metadata !47, null}
!482 = metadata !{i32 61, i32 1, metadata !46, null}
!483 = metadata !{i32 41, i32 2, metadata !46, null}
!484 = metadata !{i32 43, i32 8, metadata !485, null}
!485 = metadata !{i32 786443, metadata !46, i32 41, i32 16, metadata !48, i32 1} ; [ DW_TAG_lexical_block ]
!486 = metadata !{i32 790531, metadata !487, metadata !"stream<float>.V", null, i32 112, metadata !490, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!487 = metadata !{i32 786689, metadata !488, metadata !"this", metadata !54, i32 16777328, metadata !489, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!488 = metadata !{i32 786478, i32 0, metadata !53, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIfE5emptyEv", metadata !54, i32 112, metadata !88, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !87, metadata !62, i32 112} ; [ DW_TAG_subprogram ]
!489 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !74} ; [ DW_TAG_pointer_type ]
!490 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !476} ; [ DW_TAG_pointer_type ]
!491 = metadata !{i32 112, i32 48, metadata !488, metadata !492}
!492 = metadata !{i32 46, i32 9, metadata !485, null}
!493 = metadata !{i32 113, i32 20, metadata !494, metadata !492}
!494 = metadata !{i32 786443, metadata !488, i32 112, i32 62, metadata !54, i32 9} ; [ DW_TAG_lexical_block ]
!495 = metadata !{i32 786688, metadata !494, metadata !"tmp", metadata !54, i32 113, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!496 = metadata !{i32 790531, metadata !497, metadata !"stream<float>.V", null, i32 117, metadata !490, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!497 = metadata !{i32 786689, metadata !498, metadata !"this", metadata !54, i32 16777333, metadata !489, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!498 = metadata !{i32 786478, i32 0, metadata !53, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIfE4fullEv", metadata !54, i32 117, metadata !88, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !92, metadata !62, i32 117} ; [ DW_TAG_subprogram ]
!499 = metadata !{i32 117, i32 48, metadata !498, metadata !500}
!500 = metadata !{i32 52, i32 9, metadata !485, null}
!501 = metadata !{i32 118, i32 20, metadata !502, metadata !500}
!502 = metadata !{i32 786443, metadata !498, i32 117, i32 61, metadata !54, i32 6} ; [ DW_TAG_lexical_block ]
!503 = metadata !{i32 786688, metadata !502, metadata !"tmp", metadata !54, i32 118, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!504 = metadata !{i32 43, i32 20, metadata !485, null}
!505 = metadata !{i32 44, i32 4, metadata !485, null}
!506 = metadata !{i32 790531, metadata !507, metadata !"stream<float>.V", null, i32 101, metadata !490, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!507 = metadata !{i32 786689, metadata !508, metadata !"this", metadata !54, i32 16777317, metadata !509, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!508 = metadata !{i32 786478, i32 0, metadata !53, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !54, i32 101, metadata !79, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !78, metadata !62, i32 101} ; [ DW_TAG_subprogram ]
!509 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !52} ; [ DW_TAG_pointer_type ]
!510 = metadata !{i32 101, i32 48, metadata !508, metadata !511}
!511 = metadata !{i32 47, i32 5, metadata !512, null}
!512 = metadata !{i32 786443, metadata !485, i32 46, i32 21, metadata !48, i32 2} ; [ DW_TAG_lexical_block ]
!513 = metadata !{i32 790531, metadata !514, metadata !"stream<float>.V", null, i32 123, metadata !490, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!514 = metadata !{i32 786689, metadata !515, metadata !"this", metadata !54, i32 16777339, metadata !509, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!515 = metadata !{i32 786478, i32 0, metadata !53, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !54, i32 123, metadata !79, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !93, metadata !62, i32 123} ; [ DW_TAG_subprogram ]
!516 = metadata !{i32 123, i32 48, metadata !515, metadata !517}
!517 = metadata !{i32 102, i32 9, metadata !518, metadata !511}
!518 = metadata !{i32 786443, metadata !508, i32 101, i32 82, metadata !54, i32 7} ; [ DW_TAG_lexical_block ]
!519 = metadata !{i32 125, i32 9, metadata !520, metadata !517}
!520 = metadata !{i32 786443, metadata !515, i32 123, i32 73, metadata !54, i32 8} ; [ DW_TAG_lexical_block ]
!521 = metadata !{i32 786688, metadata !520, metadata !"tmp", metadata !54, i32 124, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!522 = metadata !{i32 126, i32 9, metadata !520, metadata !517}
!523 = metadata !{i32 48, i32 5, metadata !512, null}
!524 = metadata !{i32 49, i32 4, metadata !512, null}
!525 = metadata !{i32 50, i32 4, metadata !485, null}
!526 = metadata !{i32 790531, metadata !527, metadata !"stream<float>.V", null, i32 105, metadata !490, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!527 = metadata !{i32 786689, metadata !528, metadata !"this", metadata !54, i32 16777321, metadata !509, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!528 = metadata !{i32 786478, i32 0, metadata !53, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !54, i32 105, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !82, metadata !62, i32 105} ; [ DW_TAG_subprogram ]
!529 = metadata !{i32 105, i32 48, metadata !528, metadata !530}
!530 = metadata !{i32 53, i32 5, metadata !531, null}
!531 = metadata !{i32 786443, metadata !485, i32 52, i32 21, metadata !48, i32 3} ; [ DW_TAG_lexical_block ]
!532 = metadata !{i32 790531, metadata !533, metadata !"stream<float>.V", null, i32 144, metadata !490, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!533 = metadata !{i32 786689, metadata !534, metadata !"this", metadata !54, i32 16777360, metadata !509, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!534 = metadata !{i32 786478, i32 0, metadata !53, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !54, i32 144, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !100, metadata !62, i32 144} ; [ DW_TAG_subprogram ]
!535 = metadata !{i32 144, i32 48, metadata !534, metadata !536}
!536 = metadata !{i32 106, i32 9, metadata !537, metadata !530}
!537 = metadata !{i32 786443, metadata !528, i32 105, i32 88, metadata !54, i32 4} ; [ DW_TAG_lexical_block ]
!538 = metadata !{i32 145, i32 31, metadata !539, metadata !536}
!539 = metadata !{i32 786443, metadata !534, i32 144, i32 79, metadata !54, i32 5} ; [ DW_TAG_lexical_block ]
!540 = metadata !{i32 786688, metadata !539, metadata !"tmp", metadata !54, i32 145, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!541 = metadata !{i32 146, i32 9, metadata !539, metadata !536}
!542 = metadata !{i32 54, i32 5, metadata !531, null}
!543 = metadata !{i32 55, i32 4, metadata !531, null}
!544 = metadata !{i32 56, i32 4, metadata !485, null}
