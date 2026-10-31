package p051e4;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import java.util.concurrent.RejectedExecutionException;
import p047e0.AbstractC1387m;
import p047e0.RunnableC1375j2;
import p190s1.C3159n;
import p190s1.C3179x;
import p190s1.TextureViewSurfaceTextureListenerC3135b;

/* JADX INFO: renamed from: e4.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnTouchListenerC1476i implements View.OnTouchListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3577b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f3578c;

    public /* synthetic */ ViewOnTouchListenerC1476i(int i10, Object obj) {
        this.f3577b = i10;
        this.f3578c = obj;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        switch (this.f3577b) {
            case 0:
                C1479l c1479l = (C1479l) this.f3578c;
                if (motionEvent.getAction() == 1) {
                    long jUptimeMillis = SystemClock.uptimeMillis() - c1479l.f3591o;
                    if (jUptimeMillis < 0 || jUptimeMillis > 300) {
                        c1479l.f3589m = false;
                    }
                    c1479l.m2540t();
                    c1479l.f3589m = true;
                    c1479l.f3591o = SystemClock.uptimeMillis();
                }
                return false;
            case 1:
                TextureViewSurfaceTextureListenerC3135b textureViewSurfaceTextureListenerC3135b = (TextureViewSurfaceTextureListenerC3135b) this.f3578c;
                if (textureViewSurfaceTextureListenerC3135b.f8975l || !textureViewSurfaceTextureListenerC3135b.f8974k || textureViewSurfaceTextureListenerC3135b.f8978o <= 0 || !textureViewSurfaceTextureListenerC3135b.f8969f.f9254f) {
                    return false;
                }
                int actionMasked = motionEvent.getActionMasked();
                if (motionEvent.getPointerCount() == 1 && actionMasked <= 3 && (actionMasked != 2 || motionEvent.getEventTime() - textureViewSurfaceTextureListenerC3135b.f8979p >= 16)) {
                    textureViewSurfaceTextureListenerC3135b.f8979p = motionEvent.getEventTime();
                    C3179x c3179x = textureViewSurfaceTextureListenerC3135b.f8969f;
                    String str = AbstractC1387m.m2421h(new byte[]{14, -15, 58, 28, -103, 73}, new byte[]{90, -66, 111, 95, -47, 105, 54, 21}) + textureViewSurfaceTextureListenerC3135b.f8978o + " " + actionMasked + " " + motionEvent.getX() + " " + motionEvent.getY() + " " + motionEvent.getDownTime() + " " + motionEvent.getEventTime();
                    c3179x.getClass();
                    try {
                        c3179x.f9253e.execute(new RunnableC1375j2(28, c3179x, str));
                    } catch (RejectedExecutionException unused) {
                        c3179x.f9254f = false;
                    }
                    break;
                }
                return true;
            default:
                C3159n c3159n = (C3159n) this.f3578c;
                if (motionEvent.getActionMasked() == 0) {
                    c3159n.m5023j();
                }
                if (motionEvent.getActionMasked() == 1 || motionEvent.getActionMasked() == 3) {
                    c3159n.m5025l();
                }
                return false;
        }
    }
}
