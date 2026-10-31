package androidx.activity;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u001a0\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u001c\u0010\u0003\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004H\u0086H¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"reportWhenComplete", "", "Landroidx/activity/FullyDrawnReporter;", "reporter", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "(Landroidx/activity/FullyDrawnReporter;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "activity_release"}, k = 2, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class FullyDrawnReporterKt {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:29:0x0021 */
    /* JADX DEBUG: Multi-variable search result rejected for r4v0, resolved type: androidx.activity.FullyDrawnReporter */
    /* JADX DEBUG: Multi-variable search result rejected for r4v1, resolved type: androidx.activity.FullyDrawnReporter */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.lang.Object, kotlin.Unit] */
    public static final Object reportWhenComplete(FullyDrawnReporter fullyDrawnReporter, Function1<? super Continuation<? super Unit>, ? extends Object> function1, Continuation<? super Unit> continuation) {
        FullyDrawnReporterKt$reportWhenComplete$1 fullyDrawnReporterKt$reportWhenComplete$1;
        FullyDrawnReporter fullyDrawnReporter2;
        if (continuation instanceof FullyDrawnReporterKt$reportWhenComplete$1) {
            fullyDrawnReporterKt$reportWhenComplete$1 = (FullyDrawnReporterKt$reportWhenComplete$1) continuation;
            int i9 = fullyDrawnReporterKt$reportWhenComplete$1.label;
            if ((i9 & Integer.MIN_VALUE) != 0) {
                fullyDrawnReporterKt$reportWhenComplete$1.label = i9 - Integer.MIN_VALUE;
            } else {
                fullyDrawnReporterKt$reportWhenComplete$1 = new FullyDrawnReporterKt$reportWhenComplete$1(continuation);
            }
        } else {
            fullyDrawnReporterKt$reportWhenComplete$1 = new FullyDrawnReporterKt$reportWhenComplete$1(continuation);
        }
        Object obj = fullyDrawnReporterKt$reportWhenComplete$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i10 = fullyDrawnReporterKt$reportWhenComplete$1.label;
        try {
            if (i10 == 0) {
                ResultKt.throwOnFailure(obj);
                fullyDrawnReporter.addReporter();
                if (fullyDrawnReporter.isFullyDrawnReported()) {
                    return Unit.INSTANCE;
                }
                fullyDrawnReporterKt$reportWhenComplete$1.L$0 = fullyDrawnReporter;
                fullyDrawnReporterKt$reportWhenComplete$1.label = 1;
                if (function1.invoke(fullyDrawnReporterKt$reportWhenComplete$1) == coroutine_suspended) {
                    fullyDrawnReporter2 = fullyDrawnReporter;
                    return coroutine_suspended;
                }
            } else {
                if (i10 != 1) {
                    j1.i.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                FullyDrawnReporter fullyDrawnReporter3 = (FullyDrawnReporter) fullyDrawnReporterKt$reportWhenComplete$1.L$0;
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
