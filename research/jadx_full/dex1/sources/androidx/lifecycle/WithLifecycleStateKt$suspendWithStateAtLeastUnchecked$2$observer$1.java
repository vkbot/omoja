package androidx.lifecycle;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.core.app.NotificationCompat;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Result$Companion;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function0;
import v8.d;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"androidx/lifecycle/WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1", "Landroidx/lifecycle/LifecycleEventObserver;", "onStateChanged", "", "source", "Landroidx/lifecycle/LifecycleOwner;", NotificationCompat.CATEGORY_EVENT, "Landroidx/lifecycle/Lifecycle$Event;", "lifecycle-runtime-ktx_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1 implements LifecycleEventObserver {
    final /* synthetic */ Function0<R> $block;
    final /* synthetic */ d $co;
    final /* synthetic */ Lifecycle$State $state;
    final /* synthetic */ Lifecycle $this_suspendWithStateAtLeastUnchecked;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r4v0, resolved type: kotlin.jvm.functions.Function0<? extends R> */
    /* JADX WARN: Multi-variable type inference failed */
    public WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1(Lifecycle$State lifecycle$State, Lifecycle lifecycle, d dVar, Function0<? extends R> function0) {
        this.$state = lifecycle$State;
        this.$this_suspendWithStateAtLeastUnchecked = lifecycle;
        this.$co = dVar;
        this.$block = function0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(LifecycleOwner source, Lifecycle$Event event) {
        Object objM95constructorimpl;
        source.getClass();
        event.getClass();
        if (event != Lifecycle$Event.Companion.upTo(this.$state)) {
            if (event == Lifecycle$Event.ON_DESTROY) {
                this.$this_suspendWithStateAtLeastUnchecked.removeObserver(this);
                d dVar = this.$co;
                Result$Companion result$Companion = Result.Companion;
                dVar.resumeWith(Result.m95constructorimpl(ResultKt.createFailure(new LifecycleDestroyedException())));
                return;
            }
            return;
        }
        this.$this_suspendWithStateAtLeastUnchecked.removeObserver(this);
        d dVar2 = this.$co;
        Function0<R> function0 = this.$block;
        try {
            Result$Companion result$Companion2 = Result.Companion;
            objM95constructorimpl = Result.m95constructorimpl(function0.invoke());
        } catch (Throwable th) {
            Result$Companion result$Companion3 = Result.Companion;
            objM95constructorimpl = Result.m95constructorimpl(ResultKt.createFailure(th));
        }
        dVar2.resumeWith(objM95constructorimpl);
    }
}
