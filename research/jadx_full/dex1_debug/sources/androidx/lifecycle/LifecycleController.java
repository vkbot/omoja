package androidx.lifecycle;

import androidx.annotation.MainThread;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import v8.z0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0018\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\bH\u0082\b¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0007¢\u0006\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0011R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0012R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0013R\u0014\u0010\u0015\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Landroidx/lifecycle/LifecycleController;", "", "Landroidx/lifecycle/Lifecycle;", "lifecycle", "Landroidx/lifecycle/Lifecycle$State;", "minState", "Landroidx/lifecycle/DispatchQueue;", "dispatchQueue", "Lv8/z0;", "parentJob", "<init>", "(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Landroidx/lifecycle/DispatchQueue;Lv8/z0;)V", "", "handleDestroy", "(Lv8/z0;)V", "finish", "()V", "Landroidx/lifecycle/Lifecycle;", "Landroidx/lifecycle/Lifecycle$State;", "Landroidx/lifecycle/DispatchQueue;", "Landroidx/lifecycle/LifecycleEventObserver;", "observer", "Landroidx/lifecycle/LifecycleEventObserver;", "lifecycle-common"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@MainThread
@SourceDebugExtension({"SMAP\nLifecycleController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LifecycleController.kt\nandroidx/lifecycle/LifecycleController\n*L\n1#1,70:1\n57#1,3:71\n57#1,3:74\n*S KotlinDebug\n*F\n+ 1 LifecycleController.kt\nandroidx/lifecycle/LifecycleController\n*L\n49#1:71,3\n36#1:74,3\n*E\n"})
public final class LifecycleController {
    private final DispatchQueue dispatchQueue;
    private final Lifecycle lifecycle;
    private final Lifecycle$State minState;
    private final LifecycleEventObserver observer;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public LifecycleController(Lifecycle lifecycle, Lifecycle$State lifecycle$State, DispatchQueue dispatchQueue, z0 z0Var) {
        lifecycle.getClass();
        lifecycle$State.getClass();
        dispatchQueue.getClass();
        z0Var.getClass();
        this.lifecycle = lifecycle;
        this.minState = lifecycle$State;
        this.dispatchQueue = dispatchQueue;
        b bVar = new b(this, z0Var);
        this.observer = bVar;
        if (lifecycle.getState() != Lifecycle$State.DESTROYED) {
            lifecycle.addObserver(bVar);
        } else {
            z0Var.c((CancellationException) null);
            finish();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a(LifecycleController lifecycleController, z0 z0Var, LifecycleOwner lifecycleOwner, Lifecycle$Event lifecycle$Event) {
        observer$lambda$0(lifecycleController, z0Var, lifecycleOwner, lifecycle$Event);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void handleDestroy(z0 parentJob) {
        parentJob.c((CancellationException) null);
        finish();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final void observer$lambda$0(LifecycleController lifecycleController, z0 z0Var, LifecycleOwner lifecycleOwner, Lifecycle$Event lifecycle$Event) {
        lifecycleController.getClass();
        z0Var.getClass();
        lifecycleOwner.getClass();
        lifecycle$Event.getClass();
        if (lifecycleOwner.getLifecycle().getState() == Lifecycle$State.DESTROYED) {
            z0Var.c((CancellationException) null);
            lifecycleController.finish();
            return;
        }
        int iCompareTo = lifecycleOwner.getLifecycle().getState().compareTo(lifecycleController.minState);
        DispatchQueue dispatchQueue = lifecycleController.dispatchQueue;
        if (iCompareTo < 0) {
            dispatchQueue.pause();
        } else {
            dispatchQueue.resume();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @MainThread
    public final void finish() {
        this.lifecycle.removeObserver(this.observer);
        this.dispatchQueue.finish();
    }
}
