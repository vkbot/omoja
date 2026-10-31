package p016b1;

import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import p002a1.RunnableC0003a;
import p047e0.AbstractC1387m;

/* JADX INFO: renamed from: b1.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0861b implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f542b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C0865f f543c;

    public /* synthetic */ RunnableC0861b(C0865f c0865f, int i10) {
        this.f542b = i10;
        this.f543c = c0865f;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f542b) {
            case 0:
                if (!this.f543c.f557e.isEmpty() && this.f543c.f559g == null) {
                    C0865f c0865f = this.f543c;
                    if (!c0865f.f565m && !c0865f.f564l) {
                        try {
                            c0865f.f553a.sendBroadcast(new Intent(AbstractC1387m.m2421h(new byte[]{-11, -102, 11, 32, 52, -49, -3, 14, -1, -63, 92, 56, 59, -59, -4, 19, -22, -114, 85, 42, 123, -20, -48, 37, -50, -94, 100, 9, 10, -15, -48, 37, -64}, new byte[]{-121, -17, 37, 89, 85, -95, -103, 107})).setPackage(AbstractC1387m.m2421h(new byte[]{-114, -15, 79, -64, 39, -1, 4, 11, -124, -86, 24, -40, 40, -11, 5, 22, -110, -27, 23, -48}, new byte[]{-4, -124, 97, -71, 70, -111, 96, 110})).putExtra(AbstractC1387m.m2421h(new byte[]{5, -79, -125, -26, -120}, new byte[]{107, -34, -19, -123, -19, -70, -55, 93}), this.f543c.f558f));
                        } catch (RuntimeException e) {
                            Log.w(AbstractC1387m.m2421h(new byte[]{47, 93, 84, -76, 87, -117, 31, 72, 16, 85, 87, -72, 73, -123, 26, 124, 1, 81}, new byte[]{98, 52, 58, -35, 26, -22, 111, 14}), AbstractC1387m.m2421h(new byte[]{89, 70, 72, 65, -36, -112, -95, -85, 99, 8, 89, 74, -34, -110, -95, -111, 109, 94, 64, 68, -47, -127, -18, -83}, new byte[]{12, 40, 41, 35, -80, -11, -127, -33}), e);
                        }
                        this.f543c.f554b.postDelayed(this, 1000L);
                        break;
                    }
                }
                break;
            default:
                if (!this.f543c.f557e.isEmpty() && this.f543c.f559g != null) {
                    C0865f c0865f2 = this.f543c;
                    if (c0865f2.f556d.compareAndSet(false, true)) {
                        IBinder iBinder = c0865f2.f559g;
                        if (iBinder == null) {
                            c0865f2.f556d.set(false);
                        } else {
                            c0865f2.f555c.execute(new RunnableC0003a(6, c0865f2, iBinder));
                        }
                    }
                    this.f543c.f554b.postDelayed(this, 200L);
                    break;
                }
                break;
        }
    }
}
