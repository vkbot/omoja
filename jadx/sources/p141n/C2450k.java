package p141n;

import android.text.TextUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: renamed from: n.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2450k implements InterfaceC2447h {

    /* JADX INFO: renamed from: b */
    public final Map f6637b;

    /* JADX INFO: renamed from: c */
    public volatile Map f6638c;

    public C2450k(Map map) {
        this.f6637b = Collections.unmodifiableMap(map);
    }

    @Override // p141n.InterfaceC2447h
    /* JADX INFO: renamed from: a */
    public final Map mo3800a() {
        if (this.f6638c == null) {
            synchronized (this) {
                try {
                    if (this.f6638c == null) {
                        this.f6638c = Collections.unmodifiableMap(m3801b());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f6638c;
    }

    /* JADX INFO: renamed from: b */
    public final HashMap m3801b() {
        HashMap map = new HashMap();
        for (Map.Entry entry : this.f6637b.entrySet()) {
            List list = (List) entry.getValue();
            StringBuilder sb = new StringBuilder();
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                String str = ((C2449j) list.get(i10)).f6636a;
                if (!TextUtils.isEmpty(str)) {
                    sb.append(str);
                    if (i10 != list.size() - 1) {
                        sb.append(',');
                    }
                }
            }
            String string = sb.toString();
            if (!TextUtils.isEmpty(string)) {
                map.put(entry.getKey(), string);
            }
        }
        return map;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C2450k) {
            return this.f6637b.equals(((C2450k) obj).f6637b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f6637b.hashCode();
    }

    public final String toString() {
        return "LazyHeaders{headers=" + this.f6637b + '}';
    }
}
