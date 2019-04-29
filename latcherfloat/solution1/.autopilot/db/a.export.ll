; ModuleID = '/root/repo/new/ECE1373_GhostSynth/modules/latcherfloat/latcherfloat/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tmp = internal unnamed_addr global float 0.000000e+00, align 4
@state = internal unnamed_addr global i2 0, align 1
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@latcherfloat_str = internal unnamed_addr constant [13 x i8] c"latcherfloat\00"
@p_str3 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str = private unnamed_addr constant [5 x i8] c"axis\00", align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @latcherfloat(float* %in_V, float* %out_V, i1 %latch_V) {
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap(float* %in_V), !map !45
  call void (...)* @_ssdm_op_SpecBitsMap(float* %out_V), !map !49
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %latch_V), !map !53
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @latcherfloat_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float* %out_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float* %in_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %latch_V_read = call i1 @_ssdm_op_Read.ap_auto.i1(i1 %latch_V)
  call fastcc void @Block__proc(i1 %latch_V_read, float* %in_V, float* %out_V)
  ret void
}

define weak void @_ssdm_op_Write.axis.volatile.floatP(float*, float) {
entry:
  store float %1, float* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak float @_ssdm_op_Read.axis.volatile.floatP(float*) {
entry:
  %empty = load float* %0
  ret float %empty
}

define weak i1 @_ssdm_op_Read.ap_auto.i1(i1) {
entry:
  ret i1 %0
}

define weak i1 @_ssdm_op_NbWriteReq.axis.floatP(float*, i32) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_NbReadReq.axis.floatP(float*, i32) {
entry:
  ret i1 true
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

define internal fastcc void @Block__proc(i1 %latch_V, float* %in_V, float* %out_V) {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecInterface(float* %in_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecInterface(float* %out_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2)
  %latch_V_read = call i1 @_ssdm_op_Read.ap_auto.i1(i1 %latch_V)
  %state_load = load i2* @state, align 1
  switch i2 %state_load, label %._crit_edge [
    i2 0, label %0
    i2 1, label %1
    i2 -2, label %2
  ]

._crit_edge:                                      ; preds = %._crit_edge10, %._crit_edge9, %._crit_edge8, %newFuncRoot
  ret void

; <label>:0                                       ; preds = %newFuncRoot
  br i1 %latch_V_read, label %3, label %._crit_edge8

; <label>:1                                       ; preds = %newFuncRoot
  %tmp_1_1 = call i1 @_ssdm_op_NbReadReq.axis.floatP(float* %in_V, i32 1)
  br i1 %tmp_1_1, label %4, label %._crit_edge9

; <label>:2                                       ; preds = %newFuncRoot
  %tmp_1 = call i1 @_ssdm_op_NbWriteReq.axis.floatP(float* %out_V, i32 1)
  br i1 %tmp_1, label %5, label %._crit_edge10

; <label>:3                                       ; preds = %0
  store i2 1, i2* @state, align 1
  br label %._crit_edge8

._crit_edge8:                                     ; preds = %3, %0
  br label %._crit_edge

; <label>:4                                       ; preds = %1
  %tmp_2 = call float @_ssdm_op_Read.axis.volatile.floatP(float* %in_V)
  store float %tmp_2, float* @tmp, align 4
  store i2 -2, i2* @state, align 1
  br label %._crit_edge9

._crit_edge9:                                     ; preds = %4, %1
  br label %._crit_edge

; <label>:5                                       ; preds = %2
  %tmp_3 = load float* @tmp, align 4
  call void @_ssdm_op_Write.axis.volatile.floatP(float* %out_V, float %tmp_3)
  store i2 0, i2* @state, align 1
  br label %._crit_edge10

._crit_edge10:                                    ; preds = %5, %2
  br label %._crit_edge
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
!45 = metadata !{metadata !46}
!46 = metadata !{i32 0, i32 31, metadata !47}
!47 = metadata !{metadata !48}
!48 = metadata !{metadata !"in.V", metadata !43, metadata !"float", i32 0, i32 31}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 0, i32 31, metadata !51}
!51 = metadata !{metadata !52}
!52 = metadata !{metadata !"out.V", metadata !43, metadata !"float", i32 0, i32 31}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 0, i32 0, metadata !55}
!55 = metadata !{metadata !56}
!56 = metadata !{metadata !"latch.V", metadata !57, metadata !"uint1", i32 0, i32 0}
!57 = metadata !{metadata !58}
!58 = metadata !{i32 0, i32 0, i32 0}
