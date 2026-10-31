package s1;

import android.view.MotionEvent;
import android.view.View;
import android.view.View$OnTouchListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class k0 implements View$OnTouchListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f5119b;
    public float c;
    public float d;
    public float e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f5120f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ q0 f5121g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public k0(q0 q0Var) {
        this.f5121g = q0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        q0 q0Var = this.f5121g;
        o0 o0Var = q0Var.e;
        if (q0Var.f5183s) {
            if (!(view instanceof l0) && (view.getParent() instanceof l0)) {
                view = (View) view.getParent();
            }
            j0 j0Var = ((l0) view).f5123b;
            if (motionEvent.getActionMasked() == 0) {
                q0Var.f5185v = j0Var.f5099a;
                q0Var.U();
                for (int i9 = 0; i9 < o0Var.getChildCount(); i9++) {
                    View childAt = o0Var.getChildAt(i9);
                    if (childAt instanceof l0) {
                        q0Var.e((l0) childAt);
                    }
                }
                this.f5119b = motionEvent.getRawX();
                this.c = motionEvent.getRawY();
                this.d = view.getX();
                this.e = view.getY();
                this.f5120f = false;
                return true;
            }
            if (motionEvent.getActionMasked() == 2) {
                float rawX = motionEvent.getRawX() - this.f5119b;
                float rawY = motionEvent.getRawY() - this.c;
                if (Math.abs(rawX) > q0Var.l(4) || Math.abs(rawY) > q0Var.l(4)) {
                    this.f5120f = true;
                }
                view.setX(q0.g(this.d + rawX, 0.0f, o0Var.getWidth() - view.getWidth()));
                view.setY(q0.g(this.e + rawY, 0.0f, o0Var.getHeight() - view.getHeight()));
                return true;
            }
            if (motionEvent.getActionMasked() == 1 || motionEvent.getActionMasked() == 3) {
                if (o0Var.getWidth() > 0 && o0Var.getHeight() > 0) {
                    j0Var.c = view.getX() / o0Var.getWidth();
                    j0Var.d = view.getY() / o0Var.getHeight();
                    if (q0Var.t) {
                        q0.O(j0Var);
                    }
                }
                q0Var.y();
                if (this.f5120f) {
                    q0Var.s();
                    return true;
                }
                q0Var.A();
                return true;
            }
        }
        return false;
    }
}
