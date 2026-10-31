package androidx.activity;

import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u001a0\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u001c\u0010\u0003\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004H\u0086H¢\u0006\u0002\u0010\u0007¨\u0006\b"}, m3159d2 = {"reportWhenComplete", "", "Landroidx/activity/FullyDrawnReporter;", "reporter", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "(Landroidx/activity/FullyDrawnReporter;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "activity_release"}, m3160k = 2, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class FullyDrawnReporterKt {

    /* JADX INFO: renamed from: androidx.activity.FullyDrawnReporterKt$reportWhenComplete$1 */
    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3160k = 3, m3161mv = {1, 8, 0}, m3163xi = 176)
    @DebugMetadata(m3255c = "androidx.activity.FullyDrawnReporterKt", m3256f = "FullyDrawnReporter.kt", m3257i = {0}, m3258l = {173}, m3259m = "reportWhenComplete", m3260n = {"$this$reportWhenComplete"}, m3261s = {"L$0"})
    public static final class C01101 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C01101(Continuation<? super C01101> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FullyDrawnReporterKt.reportWhenComplete(null, null, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.lang.Object, kotlin.Unit] */
    public static final Object reportWhenComplete(FullyDrawnReporter fullyDrawnReporter, Function1<? super Continuation<? super Unit>, ? extends Object> function1, Continuation<? super Unit> continuation) {
        C01101 c01101;
        FullyDrawnReporter fullyDrawnReporter2;
        if (continuation instanceof C01101) {
            c01101 = (C01101) continuation;
            int i10 = c01101.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                c01101.label = i10 - Integer.MIN_VALUE;
            } else {
                c01101 = new C01101(continuation);
            }
        } else {
            c01101 = new C01101(continuation);
        }
        Object obj = c01101.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = c01101.label;
        try {
            if (i11 == 0) {
                ResultKt.throwOnFailure(obj);
                fullyDrawnReporter.addReporter();
                if (fullyDrawnReporter.isFullyDrawnReported()) {
                    return Unit.INSTANCE;
                }
                c01101.L$0 = fullyDrawnReporter;
                c01101.label = 1;
                if (function1.invoke(c01101) == coroutine_suspended) {
                    fullyDrawnReporter2 = fullyDrawnReporter;
                    return coroutine_suspended;
                }
            } else {
                if (i11 != 1) {
                    C1929i.m3030l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                FullyDrawnReporter fullyDrawnReporter3 = (FullyDrawnReporter) c01101.L$0;
                ResultKt.throwOnFailure(obj);
                fullyDrawnReporter2 = fullyDrawnReporter3;
            }
            fullyDrawnReporter2 = fullyDrawnReporter;
            InlineMarker.finallyStart(1);
            fullyDrawnReporter2.removeReporter();
            InlineMarker.finallyEnd(1);
            fullyDrawnReporter = Unit.INSTANCE;
            return fullyDrawnReporter;
        } catch (Throwable th) {
            InlineMarker.finallyStart(1);
            fullyDrawnReporter.removeReporter();
            InlineMarker.finallyEnd(1);
            throw th;
        }
    }

    private static final Object reportWhenComplete$$forInline(FullyDrawnReporter fullyDrawnReporter, Function1<? super Continuation<? super Unit>, ? extends Object> function1, Continuation<? super Unit> continuation) {
        fullyDrawnReporter.addReporter();
        if (fullyDrawnReporter.isFullyDrawnReported()) {
            return Unit.INSTANCE;
        }
        try {
            function1.invoke(continuation);
            return Unit.INSTANCE;
        } finally {
            InlineMarker.finallyStart(1);
            fullyDrawnReporter.removeReporter();
            InlineMarker.finallyEnd(1);
        }
    }
}
