package p025c0;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: renamed from: c0.l */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C0943l {

    /* JADX INFO: renamed from: a */
    public final LinkedHashMap f802a = new LinkedHashMap(100, 0.75f, true);

    /* JADX INFO: renamed from: b */
    public final long f803b;

    /* JADX INFO: renamed from: c */
    public long f804c;

    public C0943l(long j10) {
        this.f803b = j10;
    }

    /* JADX INFO: renamed from: a */
    public final synchronized Object m1077a(Object obj) {
        C0942k c0942k;
        c0942k = (C0942k) this.f802a.get(obj);
        return c0942k != null ? c0942k.f800a : null;
    }

    /* JADX INFO: renamed from: b */
    public int mo1078b(Object obj) {
        return 1;
    }

    /* JADX INFO: renamed from: d */
    public final synchronized Object m1080d(Object obj, Object obj2) {
        int iMo1078b = mo1078b(obj2);
        long j10 = iMo1078b;
        if (j10 >= this.f803b) {
            mo1079c(obj, obj2);
            return null;
        }
        if (obj2 != null) {
            this.f804c += j10;
        }
        C0942k c0942k = (C0942k) this.f802a.put(obj, obj2 == null ? null : new C0942k(iMo1078b, obj2));
        if (c0942k != null) {
            this.f804c -= (long) c0942k.f801b;
            if (!c0942k.f800a.equals(obj2)) {
                mo1079c(obj, c0942k.f800a);
            }
        }
        m1081e(this.f803b);
        return c0942k != null ? c0942k.f800a : null;
    }

    /* JADX INFO: renamed from: e */
    public final synchronized void m1081e(long j10) {
        while (this.f804c > j10) {
            Iterator it = this.f802a.entrySet().iterator();
            Map.Entry entry = (Map.Entry) it.next();
            C0942k c0942k = (C0942k) entry.getValue();
            this.f804c -= (long) c0942k.f801b;
            Object key = entry.getKey();
            it.remove();
            mo1079c(key, c0942k.f800a);
        }
    }

    /* JADX INFO: renamed from: c */
    public void mo1079c(Object obj, Object obj2) {
    }
}
