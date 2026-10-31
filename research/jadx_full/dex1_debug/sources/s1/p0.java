package s1;

import android.view.MotionEvent;
import android.view.View;
import android.view.View$OnTouchListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class p0 implements View$OnTouchListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final l0 f5166b;
    public float c;
    public float d;
    public float e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f5167f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ q0 f5168g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public p0(q0 q0Var, l0 l0Var) {
        this.f5168g = q0Var;
        this.f5166b = l0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        q0 q0Var = this.f5168g;
        o0 o0Var = q0Var.e;
        if (!q0Var.f5183s || o0Var.getWidth() <= 0 || o0Var.getHeight() <= 0) {
            return false;
        }
        l0 l0Var = this.f5166b;
        j0 j0Var = l0Var.f5123b;
        if (motionEvent.getActionMasked() == 0) {
            q0Var.f5185v = j0Var.f5099a;
            this.c = motionEvent.getRawX();
            this.d = motionEvent.getRawY();
            this.e = j0Var.e * o0Var.getWidth();
            this.f5167f = j0Var.f5101f * o0Var.getHeight();
            q0Var.e(l0Var);
            q0Var.U();
            view.getParent().requestDisallowInterceptTouchEvent(true);
            return true;
        }
        if (motionEvent.getActionMasked() == 2) {
            j0Var.e = q0.g(((motionEvent.getRawX() + this.e) - this.c) / o0Var.getWidth(), Math.min(1.0f - j0Var.c, Math.min(0.15f, q0Var.l(120) / o0Var.getWidth())), 1.0f - j0Var.c);
            j0Var.f5101f = q0.g(((motionEvent.getRawY() + this.f5167f) - this.d) / o0Var.getHeight(), Math.min(1.0f - j0Var.d, Math.min(0.15f, q0Var.l(100) / o0Var.getHeight())), 1.0f - j0Var.d);
            q0Var.s();
            return true;
        }
        if (motionEvent.getActionMasked() != 1 && motionEvent.getActionMasked() != 3) {
            return true;
        }
        q0Var.y();
        view.getParent().requestDisallowInterceptTouchEvent(false);
        return true;
    }
}
