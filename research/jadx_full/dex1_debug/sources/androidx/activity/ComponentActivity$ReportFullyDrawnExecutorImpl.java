package androidx.activity;

import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver$OnDrawListener;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0003H\u0016J\b\u0010\u0018\u001a\u00020\u0015H\u0016J\b\u0010\u0019\u001a\u00020\u0015H\u0016J\u0010\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001cH\u0016R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u001d"}, d2 = {"Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;", "Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutor;", "Landroid/view/ViewTreeObserver$OnDrawListener;", "Ljava/lang/Runnable;", "(Landroidx/activity/ComponentActivity;)V", "currentRunnable", "getCurrentRunnable", "()Ljava/lang/Runnable;", "setCurrentRunnable", "(Ljava/lang/Runnable;)V", "endWatchTimeMillis", "", "getEndWatchTimeMillis", "()J", "onDrawScheduled", "", "getOnDrawScheduled", "()Z", "setOnDrawScheduled", "(Z)V", "activityDestroyed", "", "execute", "runnable", "onDraw", "run", "viewCreated", "view", "Landroid/view/View;", "activity_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class ComponentActivity$ReportFullyDrawnExecutorImpl implements ComponentActivity$ReportFullyDrawnExecutor, ViewTreeObserver$OnDrawListener, Runnable {
    private Runnable currentRunnable;
    private final long endWatchTimeMillis = SystemClock.uptimeMillis() + ((long) 10000);
    private boolean onDrawScheduled;
    final /* synthetic */ ComponentActivity this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public ComponentActivity$ReportFullyDrawnExecutorImpl(ComponentActivity componentActivity) {
        this.this$0 = componentActivity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a(ComponentActivity$ReportFullyDrawnExecutorImpl componentActivity$ReportFullyDrawnExecutorImpl) {
        execute$lambda$0(componentActivity$ReportFullyDrawnExecutorImpl);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final void execute$lambda$0(ComponentActivity$ReportFullyDrawnExecutorImpl componentActivity$ReportFullyDrawnExecutorImpl) {
        Runnable runnable = componentActivity$ReportFullyDrawnExecutorImpl.currentRunnable;
        if (runnable != null) {
            runnable.getClass();
            runnable.run();
            componentActivity$ReportFullyDrawnExecutorImpl.currentRunnable = null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.activity.ComponentActivity$ReportFullyDrawnExecutor
    public void activityDestroyed() {
        this.this$0.getWindow().getDecorView().removeCallbacks(this);
        this.this$0.getWindow().getDecorView().getViewTreeObserver().removeOnDrawListener(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        runnable.getClass();
        this.currentRunnable = runnable;
        View decorView = this.this$0.getWindow().getDecorView();
        decorView.getClass();
        if (!this.onDrawScheduled) {
            decorView.postOnAnimation(new e(0, this));
        } else if (Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper())) {
            decorView.invalidate();
        } else {
            decorView.postInvalidate();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Runnable getCurrentRunnable() {
        return this.currentRunnable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final long getEndWatchTimeMillis() {
        return this.endWatchTimeMillis;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean getOnDrawScheduled() {
        return this.onDrawScheduled;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewTreeObserver$OnDrawListener
    public void onDraw() {
        Runnable runnable = this.currentRunnable;
        if (runnable == null) {
            if (SystemClock.uptimeMillis() > this.endWatchTimeMillis) {
                this.onDrawScheduled = false;
                this.this$0.getWindow().getDecorView().post(this);
                return;
            }
            return;
        }
        runnable.run();
        this.currentRunnable = null;
        if (this.this$0.getFullyDrawnReporter().isFullyDrawnReported()) {
            this.onDrawScheduled = false;
            this.this$0.getWindow().getDecorView().post(this);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        this.this$0.getWindow().getDecorView().getViewTreeObserver().removeOnDrawListener(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setCurrentRunnable(Runnable runnable) {
        this.currentRunnable = runnable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setOnDrawScheduled(boolean z8) {
        this.onDrawScheduled = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.activity.ComponentActivity$ReportFullyDrawnExecutor
    public void viewCreated(View view) {
        view.getClass();
        if (this.onDrawScheduled) {
            return;
        }
        this.onDrawScheduled = true;
        view.getViewTreeObserver().addOnDrawListener(this);
    }
}
