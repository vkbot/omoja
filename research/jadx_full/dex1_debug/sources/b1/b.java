package b1;

import android.content.Intent;
import android.os.IBinder;
import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f230b;
    public final /* synthetic */ f c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(f fVar, int i9) {
        this.f230b = i9;
        this.c = fVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f230b) {
            case 0:
                if (!this.c.e.isEmpty() && this.c.f241g == null) {
                    f fVar = this.c;
                    if (!fVar.f247m && !fVar.f246l) {
                        try {
                            fVar.f238a.sendBroadcast(new Intent(e0.m.h(new byte[]{-11, -102, 11, 32, 52, -49, -3, 14, -1, -63, 92, 56, 59, -59, -4, 19, -22, -114, 85, 42, 123, -20, -48, 37, -50, -94, 100, 9, 10, -15, -48, 37, -64}, new byte[]{-121, -17, 37, 89, 85, -95, -103, 107})).setPackage(e0.m.h(new byte[]{-114, -15, 79, -64, 39, -1, 4, 11, -124, -86, 24, -40, 40, -11, 5, 22, -110, -27, 23, -48}, new byte[]{-4, -124, 97, -71, 70, -111, 96, 110})).putExtra(e0.m.h(new byte[]{5, -79, -125, -26, -120}, new byte[]{107, -34, -19, -123, -19, -70, -55, 93}), this.c.f240f));
                        } catch (RuntimeException e) {
                            Log.w(e0.m.h(new byte[]{47, 93, 84, -76, 87, -117, 31, 72, 16, 85, 87, -72, 73, -123, 26, 124, 1, 81}, new byte[]{98, 52, 58, -35, 26, -22, 111, 14}), e0.m.h(new byte[]{89, 70, 72, 65, -36, -112, -95, -85, 99, 8, 89, 74, -34, -110, -95, -111, 109, 94, 64, 68, -47, -127, -18, -83}, new byte[]{12, 40, 41, 35, -80, -11, -127, -33}), e);
                        }
                        this.c.f239b.postDelayed(this, 1000L);
                        break;
                    }
                }
                break;
            default:
                if (!this.c.e.isEmpty() && this.c.f241g != null) {
                    f fVar2 = this.c;
                    if (fVar2.d.compareAndSet(false, true)) {
                        IBinder iBinder = fVar2.f241g;
                        if (iBinder == null) {
                            fVar2.d.set(false);
                        } else {
                            fVar2.c.execute(new a1.a(6, fVar2, iBinder));
                        }
                    }
                    this.c.f239b.postDelayed(this, 200L);
                    break;
                }
                break;
        }
    }
}
