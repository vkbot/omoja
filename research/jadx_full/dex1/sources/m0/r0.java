package m0;

import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import o7.q4;
import o7.r4;
import o7.s4;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class r0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3578b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f3579f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ r0(int i9, Object obj, Object obj2, Object obj3, Object obj4) {
        this.f3578b = i9;
        this.f3579f = obj;
        this.c = obj2;
        this.d = obj3;
        this.e = obj4;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3578b) {
            case 0:
                LinearLayout linearLayout = (LinearLayout) this.e;
                Button button = (Button) this.d;
                View view = (View) this.c;
                s0 s0Var = (s0) this.f3579f;
                if (s0Var.isAdded() && s0Var.getView() == view) {
                    boolean zF = p0.b.f(s0Var.requireContext());
                    boolean z8 = !zF;
                    button.setEnabled(z8);
                    button.setText(zF ? 2131952110 : 2131952111);
                    for (int i9 = 0; i9 < linearLayout.getChildCount(); i9++) {
                        linearLayout.getChildAt(i9).setEnabled(z8);
                    }
                    view.postDelayed(this, 250L);
                    return;
                }
                return;
            case 1:
                ((o7.b1) this.f3579f).b((n7.f1) this.c, (o7.v) this.d, (n7.v0) this.e);
                return;
            case 2:
                ((o7.o0) this.f3579f).f4358b.b((n7.f1) this.c, (o7.v) this.d, (n7.v0) this.e);
                return;
            case 3:
                o7.v1 v1Var = (o7.v1) this.f3579f;
                v1Var.A = true;
                v1Var.f4479v.b((n7.f1) this.c, (o7.v) this.d, (n7.v0) this.e);
                return;
            default:
                synchronized (((s4) this.f3579f)) {
                    try {
                        if (((q4) this.c).f4415b == 0) {
                            try {
                                ((r4) this.d).p(this.e);
                                ((s4) this.f3579f).f4427a.remove((r4) this.d);
                                if (((s4) this.f3579f).f4427a.isEmpty()) {
                                    ((s4) this.f3579f).c.shutdown();
                                    ((s4) this.f3579f).c = null;
                                }
                            } catch (Throwable th) {
                                ((s4) this.f3579f).f4427a.remove((r4) this.d);
                                if (((s4) this.f3579f).f4427a.isEmpty()) {
                                    ((s4) this.f3579f).c.shutdown();
                                    ((s4) this.f3579f).c = null;
                                }
                                throw th;
                            }
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                return;
        }
    }
}
