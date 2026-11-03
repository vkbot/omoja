package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import com.android.launcher3.LauncherSettings;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: SafeCollector.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001f\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollectorKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "collect", "", "collector", "Lkotlinx/coroutines/flow/FlowCollector;", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15})
public final class FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4<T> implements Flow<T> {
    final /* synthetic */ Iterator $this_asFlow$inlined;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4$1, reason: invalid class name */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0004\b\u0000\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0096@¨\u0006\b"}, d2 = {"collect", "", ExifInterface.GPS_DIRECTION_TRUE, "collector", "Lkotlinx/coroutines/flow/FlowCollector;", "continuation", "Lkotlin/coroutines/Continuation;", "", "kotlinx/coroutines/flow/internal/SafeCollectorKt$unsafeFlow$1$collect$1"}, k = 3, mv = {1, 1, 15})
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4", f = "Builders.kt", i = {0, 0, 0, 0, 0, 0, 0}, l = {128}, m = "collect", n = {"this", "collector", "continuation", "$receiver", "$this$forEach$iv", "element$iv", LauncherSettings.Settings.EXTRA_VALUE}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$6", "L$7"})
    public static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        Object L$7;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4.this.collect(null, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.flow.Flow
    public Object collect(FlowCollector flowCollector, Continuation continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        Iterator it;
        Continuation continuation2;
        Object obj;
        FlowCollector flowCollector2;
        FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4<T> flowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4;
        Iterator it2;
        FlowCollector flowCollector3;
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
        Object obj2 = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj2);
            it = this.$this_asFlow$inlined;
            continuation2 = anonymousClass1;
            obj = coroutine_suspended;
            FlowCollector flowCollector4 = flowCollector;
            flowCollector2 = flowCollector4;
            flowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4 = this;
            it2 = it;
            flowCollector3 = flowCollector4;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Object obj3 = anonymousClass1.L$7;
            Object obj4 = anonymousClass1.L$6;
            it2 = (Iterator) anonymousClass1.L$5;
            Iterator it3 = (Iterator) anonymousClass1.L$4;
            FlowCollector flowCollector5 = (FlowCollector) anonymousClass1.L$3;
            Continuation continuation3 = (Continuation) anonymousClass1.L$2;
            FlowCollector flowCollector6 = (FlowCollector) anonymousClass1.L$1;
            FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4<T> flowKt__BuildersKt$asFlow$$inlined$unsafeFlow$5 = (FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4) anonymousClass1.L$0;
            ResultKt.throwOnFailure(obj2);
            flowCollector3 = flowCollector5;
            it = it3;
            flowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4 = flowKt__BuildersKt$asFlow$$inlined$unsafeFlow$5;
            flowCollector2 = flowCollector6;
            continuation2 = continuation3;
            obj = coroutine_suspended;
        }
        while (it2.hasNext()) {
            Object next = it2.next();
            anonymousClass1.L$0 = flowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4;
            anonymousClass1.L$1 = flowCollector2;
            anonymousClass1.L$2 = continuation2;
            anonymousClass1.L$3 = flowCollector3;
            anonymousClass1.L$4 = it;
            anonymousClass1.L$5 = it2;
            anonymousClass1.L$6 = next;
            anonymousClass1.L$7 = next;
            anonymousClass1.label = 1;
            if (flowCollector3.emit(next, anonymousClass1) == obj) {
                return obj;
            }
        }
        return Unit.INSTANCE;
    }

    public FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4(Iterator it) {
        this.$this_asFlow$inlined = it;
    }
}
