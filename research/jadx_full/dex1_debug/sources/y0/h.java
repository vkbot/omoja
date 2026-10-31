package y0;

import android.content.Context;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h implements AutoCloseable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f6092b;
    public final AtomicBoolean c = new AtomicBoolean(false);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public h(Context context, String str) {
        this.f6092b = context;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(String str, String str2, String str3) {
        if (this.c.get()) {
            j1.i.l(e0.m.h(new byte[]{-28, -109, -91, -93, 32, 83, 108, -100, -60, -63, -88, -88, 50, 80, 102, -50, -39, -110, -28, -82, 63, 76, 112, -117, -44}, new byte[]{-80, -31, -60, -51, 83, 35, 3, -18}));
        } else {
            if (str.trim().isEmpty()) {
                j1.i.k(e0.m.h(new byte[]{108, -59, -98, 98, -83, 125, 54, -19, 76, -105, -100, 100, -65, 99, 55, -6, 84, -105, -106, ByteCompanionObject.MAX_VALUE, -2, 104, 52, -17, 76, -50}, new byte[]{56, -73, -1, 12, -34, 13, 89, -97}));
                return;
            }
            if (str2 == null) {
                str2 = "";
            }
            g.c(this.f6092b, str, str2, str3);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c(String str, String str2) {
        b(str, str2, e0.m.h(new byte[]{119, 78, -83, -52, 102, 91}, new byte[]{27, 47, -39, -87, 21, 47, -52, 124}));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.AutoCloseable
    public final void close() {
        if (this.c.compareAndSet(false, true)) {
            CopyOnWriteArrayList copyOnWriteArrayList = g.f6090a;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void y(String str, String str2) {
        b(str, str2, e0.m.h(new byte[]{28, -95, -91, -3, -118, 41, 29, 100}, new byte[]{110, -60, -55, -108, -21, 75, 113, 1}));
    }
}
