package p190s1;

import android.view.MotionEvent;
import android.view.View;
import org.apache.commons.net.ftp.FTPReply;

/* JADX INFO: renamed from: s1.p0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnTouchListenerC3164p0 implements View.OnTouchListener {

    /* JADX INFO: renamed from: b */
    public final C3156l0 f9142b;

    /* JADX INFO: renamed from: c */
    public float f9143c;

    /* JADX INFO: renamed from: d */
    public float f9144d;

    /* JADX INFO: renamed from: e */
    public float f9145e;

    /* JADX INFO: renamed from: f */
    public float f9146f;

    /* JADX INFO: renamed from: g */
    public final /* synthetic */ C3166q0 f9147g;

    public ViewOnTouchListenerC3164p0(C3166q0 c3166q0, C3156l0 c3156l0) {
        this.f9147g = c3166q0;
        this.f9142b = c3156l0;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        C3166q0 c3166q0 = this.f9147g;
        C3162o0 c3162o0 = c3166q0.f9169e;
        if (!c3166q0.f9183s || c3162o0.getWidth() <= 0 || c3162o0.getHeight() <= 0) {
            return false;
        }
        C3156l0 c3156l0 = this.f9142b;
        C3152j0 c3152j0 = c3156l0.f9080b;
        if (motionEvent.getActionMasked() == 0) {
            c3166q0.f9186v = c3152j0.f9043a;
            this.f9143c = motionEvent.getRawX();
            this.f9144d = motionEvent.getRawY();
            this.f9145e = c3152j0.f9047e * c3162o0.getWidth();
            this.f9146f = c3152j0.f9048f * c3162o0.getHeight();
            c3166q0.m5062e(c3156l0);
            c3166q0.m5056U();
            view.getParent().requestDisallowInterceptTouchEvent(true);
            return true;
        }
        if (motionEvent.getActionMasked() == 2) {
            c3152j0.f9047e = C3166q0.m5031g(((motionEvent.getRawX() + this.f9145e) - this.f9143c) / c3162o0.getWidth(), Math.min(1.0f - c3152j0.f9045c, Math.min(0.15f, c3166q0.m5067l(FTPReply.SERVICE_NOT_READY) / c3162o0.getWidth())), 1.0f - c3152j0.f9045c);
            c3152j0.f9048f = C3166q0.m5031g(((motionEvent.getRawY() + this.f9146f) - this.f9144d) / c3162o0.getHeight(), Math.min(1.0f - c3152j0.f9046d, Math.min(0.15f, c3166q0.m5067l(100) / c3162o0.getHeight())), 1.0f - c3152j0.f9046d);
            c3166q0.m5072s();
            return true;
        }
        if (motionEvent.getActionMasked() != 1 && motionEvent.getActionMasked() != 3) {
            return true;
        }
        c3166q0.m5076y();
        view.getParent().requestDisallowInterceptTouchEvent(false);
        return true;
    }
}
