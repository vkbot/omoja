package c3;

import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.AppBarLayout$BaseBehavior;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class f extends h {
    public e c;
    public OverScroller d;
    public boolean e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f480f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f481g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f482h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public VelocityTracker f483i;

    public abstract int c();

    public abstract int d(CoordinatorLayout coordinatorLayout, View view, int i9, int i10, int i11);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e(CoordinatorLayout coordinatorLayout, View view, int i9) {
        d(coordinatorLayout, view, i9, Integer.MIN_VALUE, Integer.MAX_VALUE);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        View view2;
        int iFindPointerIndex;
        if (this.f482h < 0) {
            this.f482h = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getActionMasked() == 2 && this.e) {
            int i9 = this.f480f;
            if (i9 == -1 || (iFindPointerIndex = motionEvent.findPointerIndex(i9)) == -1) {
                return false;
            }
            int y8 = (int) motionEvent.getY(iFindPointerIndex);
            if (Math.abs(y8 - this.f481g) > this.f482h) {
                this.f481g = y8;
                return true;
            }
        }
        if (motionEvent.getActionMasked() == 0) {
            this.f480f = -1;
            int x8 = (int) motionEvent.getX();
            int y9 = (int) motionEvent.getY();
            WeakReference weakReference = ((AppBarLayout$BaseBehavior) this).f1125n;
            boolean z8 = (weakReference == null || !((view2 = (View) weakReference.get()) == null || !view2.isShown() || view2.canScrollVertically(-1))) && coordinatorLayout.isPointInChildBounds(view, x8, y9);
            this.e = z8;
            if (z8) {
                this.f481g = y9;
                this.f480f = motionEvent.getPointerId(0);
                if (this.f483i == null) {
                    this.f483i = VelocityTracker.obtain();
                }
                OverScroller overScroller = this.d;
                if (overScroller != null && !overScroller.isFinished()) {
                    this.d.abortAnimation();
                    return true;
                }
            }
        }
        VelocityTracker velocityTracker = this.f483i;
        if (velocityTracker != null) {
            velocityTracker.addMovement(motionEvent);
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:39:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:42:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:45:0x00fb A[ADDED_TO_REGION] */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior
    public final boolean onTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        boolean z8;
        VelocityTracker velocityTracker;
        VelocityTracker velocityTracker2;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.f480f);
                if (iFindPointerIndex != -1) {
                    int y8 = (int) motionEvent.getY(iFindPointerIndex);
                    int i9 = this.f481g - y8;
                    this.f481g = y8;
                    AppBarLayout appBarLayout = (AppBarLayout) view;
                    d(coordinatorLayout, view, c() - i9, appBarLayout.getTopInset() + (-appBarLayout.getDownNestedScrollRange()), 0);
                }
            }
            if (actionMasked != 3) {
                if (actionMasked == 6) {
                    int i10 = motionEvent.getActionIndex() == 0 ? 1 : 0;
                    this.f480f = motionEvent.getPointerId(i10);
                    this.f481g = (int) (motionEvent.getY(i10) + 0.5f);
                }
            }
            z8 = false;
            velocityTracker2 = this.f483i;
            if (velocityTracker2 != null) {
                velocityTracker2.addMovement(motionEvent);
            }
            return !this.e || z8;
        }
        VelocityTracker velocityTracker3 = this.f483i;
        if (velocityTracker3 != null) {
            velocityTracker3.addMovement(motionEvent);
            this.f483i.computeCurrentVelocity(1000);
            float yVelocity = this.f483i.getYVelocity(this.f480f);
            AppBarLayout appBarLayout2 = (AppBarLayout) view;
            int i11 = -appBarLayout2.getTotalScrollRange();
            Runnable runnable = this.c;
            if (runnable != null) {
                view.removeCallbacks(runnable);
                this.c = null;
            }
            if (this.d == null) {
                this.d = new OverScroller(view.getContext());
            }
            this.d.fling(0, a(), 0, Math.round(yVelocity), 0, 0, i11, 0);
            if (this.d.computeScrollOffset()) {
                e eVar = new e(this, coordinatorLayout, view, 0);
                this.c = eVar;
                view.postOnAnimation(eVar);
            } else {
                ((AppBarLayout$BaseBehavior) this).k(coordinatorLayout, appBarLayout2);
                if (appBarLayout2.f1109l) {
                    appBarLayout2.e(appBarLayout2.f(AppBarLayout$BaseBehavior.h(coordinatorLayout)));
                }
            }
            z8 = true;
        }
        this.e = false;
        this.f480f = -1;
        velocityTracker = this.f483i;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f483i = null;
        }
        velocityTracker2 = this.f483i;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(motionEvent);
        }
        if (this.e) {
        }
        z8 = false;
        this.e = false;
        this.f480f = -1;
        velocityTracker = this.f483i;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f483i = null;
        }
        velocityTracker2 = this.f483i;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(motionEvent);
        }
        if (this.e) {
        }
    }
}
