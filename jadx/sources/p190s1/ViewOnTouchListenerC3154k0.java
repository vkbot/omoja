package p190s1;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: renamed from: s1.k0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnTouchListenerC3154k0 implements View.OnTouchListener {

    /* JADX INFO: renamed from: b */
    public float f9070b;

    /* JADX INFO: renamed from: c */
    public float f9071c;

    /* JADX INFO: renamed from: d */
    public float f9072d;

    /* JADX INFO: renamed from: e */
    public float f9073e;

    /* JADX INFO: renamed from: f */
    public boolean f9074f;

    /* JADX INFO: renamed from: g */
    public final /* synthetic */ C3166q0 f9075g;

    public ViewOnTouchListenerC3154k0(C3166q0 c3166q0) {
        this.f9075g = c3166q0;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        C3166q0 c3166q0 = this.f9075g;
        C3162o0 c3162o0 = c3166q0.f9169e;
        if (c3166q0.f9183s) {
            if (!(view instanceof C3156l0) && (view.getParent() instanceof C3156l0)) {
                view = (View) view.getParent();
            }
            C3152j0 c3152j0 = ((C3156l0) view).f9080b;
            if (motionEvent.getActionMasked() == 0) {
                c3166q0.f9186v = c3152j0.f9043a;
                c3166q0.m5056U();
                for (int i10 = 0; i10 < c3162o0.getChildCount(); i10++) {
                    View childAt = c3162o0.getChildAt(i10);
                    if (childAt instanceof C3156l0) {
                        c3166q0.m5062e((C3156l0) childAt);
                    }
                }
                this.f9070b = motionEvent.getRawX();
                this.f9071c = motionEvent.getRawY();
                this.f9072d = view.getX();
                this.f9073e = view.getY();
                this.f9074f = false;
                return true;
            }
            if (motionEvent.getActionMasked() == 2) {
                float rawX = motionEvent.getRawX() - this.f9070b;
                float rawY = motionEvent.getRawY() - this.f9071c;
                if (Math.abs(rawX) > c3166q0.m5067l(4) || Math.abs(rawY) > c3166q0.m5067l(4)) {
                    this.f9074f = true;
                }
                view.setX(C3166q0.m5031g(this.f9072d + rawX, 0.0f, c3162o0.getWidth() - view.getWidth()));
                view.setY(C3166q0.m5031g(this.f9073e + rawY, 0.0f, c3162o0.getHeight() - view.getHeight()));
                return true;
            }
            if (motionEvent.getActionMasked() == 1 || motionEvent.getActionMasked() == 3) {
                if (c3162o0.getWidth() > 0 && c3162o0.getHeight() > 0) {
                    c3152j0.f9045c = view.getX() / c3162o0.getWidth();
                    c3152j0.f9046d = view.getY() / c3162o0.getHeight();
                    if (c3166q0.f9184t) {
                        C3166q0.m5029O(c3152j0);
                    }
                }
                c3166q0.m5076y();
                if (this.f9074f) {
                    c3166q0.m5072s();
                    return true;
                }
                c3166q0.m5037A();
                return true;
            }
        }
        return false;
    }
}
