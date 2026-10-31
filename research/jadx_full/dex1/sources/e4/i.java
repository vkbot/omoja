package e4;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.View$OnTouchListener;
import e0.j2;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class i implements View$OnTouchListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2055b;
    public final /* synthetic */ Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ i(int i9, Object obj) {
        this.f2055b = i9;
        this.c = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        switch (this.f2055b) {
            case 0:
                l lVar = (l) this.c;
                if (motionEvent.getAction() == 1) {
                    long jUptimeMillis = SystemClock.uptimeMillis() - lVar.f2067o;
                    if (jUptimeMillis < 0 || jUptimeMillis > 300) {
                        lVar.f2065m = false;
                    }
                    lVar.t();
                    lVar.f2065m = true;
                    lVar.f2067o = SystemClock.uptimeMillis();
                }
                return false;
            case 1:
                s1.b bVar = (s1.b) this.c;
                if (bVar.f5059l || !bVar.f5058k || bVar.f5062o <= 0 || !bVar.f5053f.f5228f) {
                    return false;
                }
                int actionMasked = motionEvent.getActionMasked();
                if (motionEvent.getPointerCount() == 1 && actionMasked <= 3 && (actionMasked != 2 || motionEvent.getEventTime() - bVar.f5063p >= 16)) {
                    bVar.f5063p = motionEvent.getEventTime();
                    s1.x xVar = bVar.f5053f;
                    String str = e0.m.h(new byte[]{14, -15, 58, 28, -103, 73}, new byte[]{90, -66, 111, 95, -47, 105, 54, 21}) + bVar.f5062o + " " + actionMasked + " " + motionEvent.getX() + " " + motionEvent.getY() + " " + motionEvent.getDownTime() + " " + motionEvent.getEventTime();
                    xVar.getClass();
                    try {
                        xVar.e.execute(new j2(28, xVar, str));
                    } catch (RejectedExecutionException unused) {
                        xVar.f5228f = false;
                    }
                    break;
                }
                return true;
            default:
                s1.n nVar = (s1.n) this.c;
                if (motionEvent.getActionMasked() == 0) {
                    nVar.j();
                }
                if (motionEvent.getActionMasked() == 1 || motionEvent.getActionMasked() == 3) {
                    nVar.l();
                }
                return false;
        }
    }
}
