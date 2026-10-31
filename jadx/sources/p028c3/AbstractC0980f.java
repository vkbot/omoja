package p028c3;

import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import java.lang.ref.WeakReference;

/* JADX INFO: renamed from: c3.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0980f extends AbstractC0982h {

    /* JADX INFO: renamed from: c */
    public RunnableC0979e f916c;

    /* JADX INFO: renamed from: d */
    public OverScroller f917d;

    /* JADX INFO: renamed from: e */
    public boolean f918e;

    /* JADX INFO: renamed from: f */
    public int f919f;

    /* JADX INFO: renamed from: g */
    public int f920g;

    /* JADX INFO: renamed from: h */
    public int f921h;

    /* JADX INFO: renamed from: i */
    public VelocityTracker f922i;

    /* JADX INFO: renamed from: c */
    public abstract int mo1097c();

    /* JADX INFO: renamed from: d */
    public abstract int mo1098d(CoordinatorLayout coordinatorLayout, View view, int i10, int i11, int i12);

    /* JADX INFO: renamed from: e */
    public final void m1099e(CoordinatorLayout coordinatorLayout, View view, int i10) {
        mo1098d(coordinatorLayout, view, i10, Integer.MIN_VALUE, Integer.MAX_VALUE);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        View view2;
        int iFindPointerIndex;
        if (this.f921h < 0) {
            this.f921h = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getActionMasked() == 2 && this.f918e) {
            int i10 = this.f919f;
            if (i10 == -1 || (iFindPointerIndex = motionEvent.findPointerIndex(i10)) == -1) {
                return false;
            }
            int y9 = (int) motionEvent.getY(iFindPointerIndex);
            if (Math.abs(y9 - this.f920g) > this.f921h) {
                this.f920g = y9;
                return true;
            }
        }
        if (motionEvent.getActionMasked() == 0) {
            this.f919f = -1;
            int x9 = (int) motionEvent.getX();
            int y10 = (int) motionEvent.getY();
            WeakReference weakReference = ((AppBarLayout.BaseBehavior) this).f2072n;
            boolean z9 = (weakReference == null || !((view2 = (View) weakReference.get()) == null || !view2.isShown() || view2.canScrollVertically(-1))) && coordinatorLayout.isPointInChildBounds(view, x9, y10);
            this.f918e = z9;
            if (z9) {
                this.f920g = y10;
                this.f919f = motionEvent.getPointerId(0);
                if (this.f922i == null) {
                    this.f922i = VelocityTracker.obtain();
                }
                OverScroller overScroller = this.f917d;
                if (overScroller != null && !overScroller.isFinished()) {
                    this.f917d.abortAnimation();
                    return true;
                }
            }
        }
        VelocityTracker velocityTracker = this.f922i;
        if (velocityTracker != null) {
            velocityTracker.addMovement(motionEvent);
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:42:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:45:0x00fb A[ADDED_TO_REGION] */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        boolean z9;
        VelocityTracker velocityTracker;
        VelocityTracker velocityTracker2;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.f919f);
                if (iFindPointerIndex != -1) {
                    int y9 = (int) motionEvent.getY(iFindPointerIndex);
                    int i10 = this.f920g - y9;
                    this.f920g = y9;
                    AppBarLayout appBarLayout = (AppBarLayout) view;
                    mo1098d(coordinatorLayout, view, mo1097c() - i10, appBarLayout.getTopInset() + (-appBarLayout.getDownNestedScrollRange()), 0);
                }
            }
            if (actionMasked != 3) {
                if (actionMasked == 6) {
                    int i11 = motionEvent.getActionIndex() == 0 ? 1 : 0;
                    this.f919f = motionEvent.getPointerId(i11);
                    this.f920g = (int) (motionEvent.getY(i11) + 0.5f);
                }
            }
            z9 = false;
            velocityTracker2 = this.f922i;
            if (velocityTracker2 != null) {
                velocityTracker2.addMovement(motionEvent);
            }
            return !this.f918e || z9;
        }
        VelocityTracker velocityTracker3 = this.f922i;
        if (velocityTracker3 != null) {
            velocityTracker3.addMovement(motionEvent);
            this.f922i.computeCurrentVelocity(1000);
            float yVelocity = this.f922i.getYVelocity(this.f919f);
            AppBarLayout appBarLayout2 = (AppBarLayout) view;
            int i12 = -appBarLayout2.getTotalScrollRange();
            Runnable runnable = this.f916c;
            if (runnable != null) {
                view.removeCallbacks(runnable);
                this.f916c = null;
            }
            if (this.f917d == null) {
                this.f917d = new OverScroller(view.getContext());
            }
            this.f917d.fling(0, m1102a(), 0, Math.round(yVelocity), 0, 0, i12, 0);
            if (this.f917d.computeScrollOffset()) {
                RunnableC0979e runnableC0979e = new RunnableC0979e(this, coordinatorLayout, view, 0);
                this.f916c = runnableC0979e;
                view.postOnAnimation(runnableC0979e);
            } else {
                ((AppBarLayout.BaseBehavior) this).m1747k(coordinatorLayout, appBarLayout2);
                if (appBarLayout2.f2053l) {
                    appBarLayout2.m1738e(appBarLayout2.m1739f(AppBarLayout.BaseBehavior.m1742h(coordinatorLayout)));
                }
            }
            z9 = true;
        }
        this.f918e = false;
        this.f919f = -1;
        velocityTracker = this.f922i;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f922i = null;
        }
        velocityTracker2 = this.f922i;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(motionEvent);
        }
        if (this.f918e) {
        }
        z9 = false;
        this.f918e = false;
        this.f919f = -1;
        velocityTracker = this.f922i;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f922i = null;
        }
        velocityTracker2 = this.f922i;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(motionEvent);
        }
        if (this.f918e) {
        }
    }
}
