package p245y0;

import android.content.Context;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.ByteCompanionObject;
import p047e0.AbstractC1387m;
import p099j1.C1929i;

/* JADX INFO: renamed from: y0.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3630h implements AutoCloseable {

    /* JADX INFO: renamed from: b */
    public final Context f10776b;

    /* JADX INFO: renamed from: c */
    public final AtomicBoolean f10777c = new AtomicBoolean(false);

    public C3630h(Context context, String str) {
        this.f10776b = context;
    }

    /* JADX INFO: renamed from: b */
    public final void m5806b(String str, String str2, String str3) {
        if (this.f10777c.get()) {
            C1929i.m3030l(AbstractC1387m.m2421h(new byte[]{-28, -109, -91, -93, 32, 83, 108, -100, -60, -63, -88, -88, 50, 80, 102, -50, -39, -110, -28, -82, 63, 76, 112, -117, -44}, new byte[]{-80, -31, -60, -51, 83, 35, 3, -18}));
        } else {
            if (str.trim().isEmpty()) {
                C1929i.m3029k(AbstractC1387m.m2421h(new byte[]{108, -59, -98, 98, -83, 125, 54, -19, 76, -105, -100, 100, -65, 99, 55, -6, 84, -105, -106, ByteCompanionObject.MAX_VALUE, -2, 104, 52, -17, 76, -50}, new byte[]{56, -73, -1, 12, -34, 13, 89, -97}));
                return;
            }
            if (str2 == null) {
                str2 = "";
            }
            AbstractC3629g.m5803c(this.f10776b, str, str2, str3);
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m5807c(String str, String str2) {
        m5806b(str, str2, AbstractC1387m.m2421h(new byte[]{119, 78, -83, -52, 102, 91}, new byte[]{27, 47, -39, -87, 21, 47, -52, 124}));
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        if (this.f10777c.compareAndSet(false, true)) {
            CopyOnWriteArrayList copyOnWriteArrayList = AbstractC3629g.f10774a;
        }
    }

    /* JADX INFO: renamed from: y */
    public final void m5808y(String str, String str2) {
        m5806b(str, str2, AbstractC1387m.m2421h(new byte[]{28, -95, -91, -3, -118, 41, 29, 100}, new byte[]{110, -60, -55, -108, -21, 75, 113, 1}));
    }
}
