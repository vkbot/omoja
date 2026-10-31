package p047e0;

import android.os.SystemClock;
import android.widget.Toast;
import p235x0.C3549c;

/* JADX INFO: renamed from: e0.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1352f implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3219b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C3549c f3220c;

    public /* synthetic */ RunnableC1352f(C3549c c3549c, int i10) {
        this.f3219b = i10;
        this.f3220c = c3549c;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i10 = this.f3219b;
        C3549c c3549c = this.f3220c;
        switch (i10) {
            case 0:
                if (c3549c.f10535c.f10597d) {
                    c3549c.f10537e = !c3549c.f10537e;
                    c3549c.m5665k();
                    c3549c.m5666l();
                }
                break;
            case 1:
                if (c3549c.f10538f) {
                    Toast.makeText(c3549c.getContext(), AbstractC1387m.m2421h(new byte[]{-5, 30, -121, 93, -22, 107, -19, 52, -97, 83, -25, 56, 113, 106, -48, 53, -86, 82, -37, -56, 26, 2, -66, 83, -5, 63, -121, 93, 26, 7, -66, 92, -6, 1, -122, 100, -22, 107, -19, 53, -85, 83, -23, 56, 120, 106, -37, 52, -106, 82, -37, -56, 27, 59, -66, 92, -5, 55, -121, 93, 26, 7, -65, 104, -6, 12}, new byte[]{43, -125, 87, -24, -54, -70, 110, -28}), 0).show();
                }
                break;
            case 2:
                c3549c.f10537e = false;
                c3549c.m5665k();
                break;
            default:
                c3549c.f10539g--;
                c3549c.f10540h = SystemClock.uptimeMillis();
                break;
        }
    }
}
