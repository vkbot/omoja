package p148n7;

import com.bumptech.glide.AbstractC1030c;
import com.bumptech.glide.manager.C1073s;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import p010a9.C0061w;
import p027c2.C0961k;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: n7.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2497c {

    /* JADX INFO: renamed from: h */
    public static final C2497c f6890h;

    /* JADX INFO: renamed from: a */
    public final C2532o f6891a;

    /* JADX INFO: renamed from: b */
    public final Executor f6892b;

    /* JADX INFO: renamed from: c */
    public final Object[][] f6893c;

    /* JADX INFO: renamed from: d */
    public final List f6894d;

    /* JADX INFO: renamed from: e */
    public final Boolean f6895e;

    /* JADX INFO: renamed from: f */
    public final Integer f6896f;

    /* JADX INFO: renamed from: g */
    public final Integer f6897g;

    static {
        C0961k c0961k = new C0961k(3);
        c0961k.f874e = (Object[][]) Array.newInstance((Class<?>) Object.class, 0, 2);
        c0961k.f876g = Collections.EMPTY_LIST;
        f6890h = new C2497c(c0961k);
    }

    public C2497c(C0961k c0961k) {
        this.f6891a = (C2532o) c0961k.f872c;
        this.f6892b = (Executor) c0961k.f873d;
        this.f6893c = (Object[][]) c0961k.f874e;
        this.f6894d = (List) c0961k.f876g;
        this.f6895e = (Boolean) c0961k.f877h;
        this.f6896f = (Integer) c0961k.f875f;
        this.f6897g = (Integer) c0961k.f878i;
    }

    /* JADX INFO: renamed from: b */
    public static C0961k m3884b(C2497c c2497c) {
        C0961k c0961k = new C0961k(3);
        c0961k.f872c = c2497c.f6891a;
        c0961k.f873d = c2497c.f6892b;
        c0961k.f874e = c2497c.f6893c;
        c0961k.f876g = c2497c.f6894d;
        c0961k.f877h = c2497c.f6895e;
        c0961k.f875f = c2497c.f6896f;
        c0961k.f878i = c2497c.f6897g;
        return c0961k;
    }

    /* JADX INFO: renamed from: a */
    public final Object m3885a(C0061w c0061w) {
        AbstractC2587b.m4042i(c0061w, "key");
        int i10 = 0;
        while (true) {
            Object[][] objArr = this.f6893c;
            if (i10 >= objArr.length) {
                return null;
            }
            if (c0061w.equals(objArr[i10][0])) {
                return objArr[i10][1];
            }
            i10++;
        }
    }

    /* JADX INFO: renamed from: c */
    public final C2497c m3886c(C0061w c0061w, Object obj) {
        Object[][] objArr;
        AbstractC2587b.m4042i(c0061w, "key");
        C0961k c0961kM3884b = m3884b(this);
        int i10 = 0;
        while (true) {
            objArr = this.f6893c;
            if (i10 >= objArr.length) {
                i10 = -1;
                break;
            }
            if (c0061w.equals(objArr[i10][0])) {
                break;
            }
            i10++;
        }
        Object[][] objArr2 = (Object[][]) Array.newInstance((Class<?>) Object.class, objArr.length + (i10 == -1 ? 1 : 0), 2);
        c0961kM3884b.f874e = objArr2;
        System.arraycopy(objArr, 0, objArr2, 0, objArr.length);
        Object[][] objArr3 = (Object[][]) c0961kM3884b.f874e;
        if (i10 == -1) {
            objArr3[objArr.length] = new Object[]{c0061w, obj};
        } else {
            objArr3[i10] = new Object[]{c0061w, obj};
        }
        return new C2497c(c0961kM3884b);
    }

    public final String toString() {
        C1073s c1073sM1263t = AbstractC1030c.m1263t(this);
        c1073sM1263t.m1347c(this.f6891a, "deadline");
        c1073sM1263t.m1347c(null, "authority");
        c1073sM1263t.m1347c(null, "callCredentials");
        Executor executor = this.f6892b;
        c1073sM1263t.m1347c(executor != null ? executor.getClass() : null, "executor");
        c1073sM1263t.m1347c(null, "compressorName");
        c1073sM1263t.m1347c(Arrays.deepToString(this.f6893c), "customOptions");
        c1073sM1263t.m1348d("waitForReady", Boolean.TRUE.equals(this.f6895e));
        c1073sM1263t.m1347c(this.f6896f, "maxInboundMessageSize");
        c1073sM1263t.m1347c(this.f6897g, "maxOutboundMessageSize");
        c1073sM1263t.m1347c(this.f6894d, "streamTracerFactories");
        return c1073sM1263t.toString();
    }
}
