package j1;

import android.content.Context;
import android.content.Intent;
import com.example.navistart.MyCarReceiver;
import com.example.navistart.cores.ColorText;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b implements v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c5.e f2883a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public p2.e f2884b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j1.v
    public final void a(Context context, i0.a aVar) {
        if (aVar == null || !aVar.equals(i0.a.c)) {
            return;
        }
        new MyCarReceiver().onReceive(context, new Intent(e0.m.h(new byte[]{20, 40, -110, -89, 30, 25, 94, 17, 28, 40, -126, -80, 31, 4, 20, 94, 22, 50, -97, -70, 31, 94, 105, 124, 39, 3, -77, -101, 46, 63, 116}, new byte[]{117, 70, -10, -43, 113, 112, 58, 63})));
        m7.k.c(context, true);
        h0.b.w(e0.m.h(new byte[]{-61, 96, 11, 81, -127, 22, 36, -87, -44, 124, 19, 123, -49, 105, 97, -99, -40, 115, 12, 91, -127, 37, 35, -90, -44}, new byte[]{-79, 21, 101, 30, -17, 68, 65, -54}), ColorText.RED);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j1.v
    public final z0.a b() {
        if (this.f2883a == null) {
            this.f2883a = new c5.e(20);
        }
        return this.f2883a;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j1.v
    public final boolean c() {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j1.v
    public final w d() {
        if (this.f2884b == null) {
            this.f2884b = new p2.e(12);
        }
        return this.f2884b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j1.v
    public final boolean h() {
        return true;
    }
}
