package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.internal.SafeCollector;
import mega.car.config.Power;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: SafeCollector.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001f\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollectorKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "collect", "", "collector", "Lkotlinx/coroutines/flow/FlowCollector;", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15})
public final class FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1<T> implements Flow<T> {
    final /* synthetic */ Function3 $action$inlined;
    final /* synthetic */ Flow $this_onCompletion$inlined;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1, reason: invalid class name */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0004\b\u0000\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0096@¨\u0006\b"}, d2 = {"collect", "", ExifInterface.GPS_DIRECTION_TRUE, "collector", "Lkotlinx/coroutines/flow/FlowCollector;", "continuation", "Lkotlin/coroutines/Continuation;", "", "kotlinx/coroutines/flow/internal/SafeCollectorKt$unsafeFlow$1$collect$1"}, k = 3, mv = {1, 1, 15})
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1", f = "Emitters.kt", i = {0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2}, l = {128, 131, 131}, m = "collect", n = {"this", "collector", "continuation", "$receiver", Power.PowerEFSM.EXCEPTION, "this", "collector", "continuation", "$receiver", Power.PowerEFSM.EXCEPTION, "this", "collector", "continuation", "$receiver", Power.PowerEFSM.EXCEPTION}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$0", "L$1", "L$2", "L$3", "L$4", "L$0", "L$1", "L$2", "L$3", "L$4"})
    public static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1.this.collect(null, this);
        }
    }

    public FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1(Flow flow, Function3 function3) {
        this.$this_onCompletion$inlined = flow;
        this.$action$inlined = function3;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00cf A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:31:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:33:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:35:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:42:0x0102 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:43:0x0103  */
    /* JADX WARN: Code duplicated, block: B:45:0x0106  */
    /* JADX WARN: Code duplicated, block: B:46:0x0107  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // kotlinx.coroutines.flow.Flow
    public Object collect(FlowCollector flowCollector, Continuation continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        AnonymousClass1 anonymousClass2;
        Throwable th;
        FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1<T> flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;
        FlowCollector flowCollector2;
        Throwable th2;
        Object obj;
        Object obj2;
        SafeCollector safeCollector;
        Function3 function3;
        Throwable th3;
        Throwable th4;
        SafeCollector safeCollector2;
        Function3 function4;
        Throwable th5;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        Object obj3 = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj3);
            anonymousClass2 = anonymousClass1;
            th = null;
            try {
                Flow flow = this.$this_onCompletion$inlined;
                anonymousClass1.L$0 = this;
                anonymousClass1.L$1 = flowCollector;
                anonymousClass1.L$2 = anonymousClass2;
                anonymousClass1.L$3 = flowCollector;
                anonymousClass1.L$4 = null;
                anonymousClass1.label = 1;
                Object objCatchImpl = FlowKt.catchImpl(flow, flowCollector, anonymousClass1);
                if (objCatchImpl == coroutine_suspended) {
                    return coroutine_suspended;
                }
                obj = anonymousClass2;
                obj2 = objCatchImpl;
                flowCollector2 = flowCollector;
                th4 = (Throwable) obj2;
                safeCollector2 = new SafeCollector(flowCollector, anonymousClass1.get$context());
                function4 = this.$action$inlined;
                anonymousClass1.L$0 = this;
                anonymousClass1.L$1 = flowCollector2;
                anonymousClass1.L$2 = obj;
                anonymousClass1.L$3 = flowCollector;
                anonymousClass1.L$4 = th4;
                anonymousClass1.label = 2;
                if (FlowKt__EmittersKt.invokeSafely$FlowKt__EmittersKt(safeCollector2, function4, th4, anonymousClass1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                th5 = th4;
                if (th5 == null) {
                    return Unit.INSTANCE;
                }
                throw th5;
            } catch (Throwable th6) {
                flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1 = this;
                flowCollector2 = flowCollector;
                th2 = th6;
                safeCollector = new SafeCollector(flowCollector, anonymousClass1.get$context());
                function3 = flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1.$action$inlined;
                anonymousClass1.L$0 = flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;
                anonymousClass1.L$1 = flowCollector2;
                anonymousClass1.L$2 = anonymousClass2;
                anonymousClass1.L$3 = flowCollector;
                anonymousClass1.L$4 = th;
                anonymousClass1.L$5 = th2;
                anonymousClass1.label = 3;
                if (FlowKt__EmittersKt.invokeSafely$FlowKt__EmittersKt(safeCollector, function3, th, anonymousClass1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                th3 = th;
                if (th3 != null) {
                    throw th3;
                }
                throw th2;
            }
        }
        if (i == 1) {
            Throwable th7 = (Throwable) anonymousClass1.L$4;
            flowCollector = (FlowCollector) anonymousClass1.L$3;
            anonymousClass2 = (Continuation) anonymousClass1.L$2;
            flowCollector2 = (FlowCollector) anonymousClass1.L$1;
            flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1 = (FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1) anonymousClass1.L$0;
            try {
                ResultKt.throwOnFailure(obj3);
                th = th7;
                this = flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;
                obj = anonymousClass2;
                obj2 = obj3;
                try {
                    th4 = (Throwable) obj2;
                    safeCollector2 = new SafeCollector(flowCollector, anonymousClass1.get$context());
                    function4 = this.$action$inlined;
                    anonymousClass1.L$0 = this;
                    anonymousClass1.L$1 = flowCollector2;
                    anonymousClass1.L$2 = obj;
                    anonymousClass1.L$3 = flowCollector;
                    anonymousClass1.L$4 = th4;
                    anonymousClass1.label = 2;
                    if (FlowKt__EmittersKt.invokeSafely$FlowKt__EmittersKt(safeCollector2, function4, th4, anonymousClass1) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    th5 = th4;
                } catch (Throwable th8) {
                    Object obj4 = obj;
                    flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1 = this;
                    th2 = th8;
                    anonymousClass2 = obj4;
                    safeCollector = new SafeCollector(flowCollector, anonymousClass1.get$context());
                    function3 = flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1.$action$inlined;
                    anonymousClass1.L$0 = flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;
                    anonymousClass1.L$1 = flowCollector2;
                    anonymousClass1.L$2 = anonymousClass2;
                    anonymousClass1.L$3 = flowCollector;
                    anonymousClass1.L$4 = th;
                    anonymousClass1.L$5 = th2;
                    anonymousClass1.label = 3;
                    if (FlowKt__EmittersKt.invokeSafely$FlowKt__EmittersKt(safeCollector, function3, th, anonymousClass1) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    th3 = th;
                    if (th3 != null) {
                        throw th3;
                    }
                    throw th2;
                }
            } catch (Throwable th9) {
                th = th7;
                th2 = th9;
                safeCollector = new SafeCollector(flowCollector, anonymousClass1.get$context());
                function3 = flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1.$action$inlined;
                anonymousClass1.L$0 = flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;
                anonymousClass1.L$1 = flowCollector2;
                anonymousClass1.L$2 = anonymousClass2;
                anonymousClass1.L$3 = flowCollector;
                anonymousClass1.L$4 = th;
                anonymousClass1.L$5 = th2;
                anonymousClass1.label = 3;
                if (FlowKt__EmittersKt.invokeSafely$FlowKt__EmittersKt(safeCollector, function3, th, anonymousClass1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                th3 = th;
                if (th3 != null) {
                    throw th3;
                }
                throw th2;
            }
        } else if (i == 2) {
            th5 = (Throwable) anonymousClass1.L$4;
            ResultKt.throwOnFailure(obj3);
        } else {
            if (i != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            th2 = (Throwable) anonymousClass1.L$5;
            th3 = (Throwable) anonymousClass1.L$4;
            ResultKt.throwOnFailure(obj3);
        }
        if (th5 == null) {
            return Unit.INSTANCE;
        }
        throw th5;
        if (th3 != null) {
            throw th3;
        }
        throw th2;
    }
}
