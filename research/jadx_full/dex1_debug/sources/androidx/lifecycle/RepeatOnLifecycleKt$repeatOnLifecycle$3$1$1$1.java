package androidx.lifecycle;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.core.app.NotificationCompat;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Result$Companion;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import v8.a0;
import v8.d;
import v8.x;
import v8.z0;
import w8.c;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "<anonymous parameter 0>", "Landroidx/lifecycle/LifecycleOwner;", NotificationCompat.CATEGORY_EVENT, "Landroidx/lifecycle/Lifecycle$Event;", "onStateChanged"}, k = 3, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1 implements LifecycleEventObserver {
    final /* synthetic */ x $$this$coroutineScope;
    final /* synthetic */ Function2<x, Continuation<? super Unit>, Object> $block;
    final /* synthetic */ Lifecycle$Event $cancelWorkEvent;
    final /* synthetic */ d $cont;
    final /* synthetic */ Ref$ObjectRef<z0> $launchedJob;
    final /* synthetic */ d9.a $mutex;
    final /* synthetic */ Lifecycle$Event $startWorkEvent;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1(Lifecycle$Event lifecycle$Event, Ref$ObjectRef<z0> ref$ObjectRef, x xVar, Lifecycle$Event lifecycle$Event2, d dVar, d9.a aVar, Function2<? super x, ? super Continuation<? super Unit>, ? extends Object> function2) {
        this.$startWorkEvent = lifecycle$Event;
        this.$launchedJob = ref$ObjectRef;
        this.$$this$coroutineScope = xVar;
        this.$cancelWorkEvent = lifecycle$Event2;
        this.$cont = dVar;
        this.$mutex = aVar;
        this.$block = function2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Type inference failed for: r6v5, types: [T, v8.n1] */
    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle$Event lifecycle$Event) {
        lifecycleOwner.getClass();
        lifecycle$Event.getClass();
        if (lifecycle$Event == this.$startWorkEvent) {
            this.$launchedJob.element = a0.c(this.$$this$coroutineScope, (c) null, new RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1(this.$mutex, this.$block, null), 3);
            return;
        }
        if (lifecycle$Event == this.$cancelWorkEvent) {
            z0 z0Var = this.$launchedJob.element;
            if (z0Var != null) {
                z0Var.c((CancellationException) null);
            }
            this.$launchedJob.element = null;
        }
        if (lifecycle$Event == Lifecycle$Event.ON_DESTROY) {
            d dVar = this.$cont;
            Result$Companion result$Companion = Result.Companion;
            dVar.resumeWith(Result.m95constructorimpl(Unit.INSTANCE));
        }
    }
}
