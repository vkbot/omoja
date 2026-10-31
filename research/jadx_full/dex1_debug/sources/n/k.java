package n;

import android.text.TextUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map$Entry;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class k implements h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f3753b;
    public volatile Map c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public k(Map map) {
        this.f3753b = Collections.unmodifiableMap(map);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n.h
    public final Map a() {
        if (this.c == null) {
            synchronized (this) {
                try {
                    if (this.c == null) {
                        this.c = Collections.unmodifiableMap(b());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final HashMap b() {
        HashMap map = new HashMap();
        for (Map$Entry map$Entry : this.f3753b.entrySet()) {
            List list = (List) map$Entry.getValue();
            StringBuilder sb = new StringBuilder();
            int size = list.size();
            for (int i9 = 0; i9 < size; i9++) {
                String str = ((j) list.get(i9)).f3752a;
                if (!TextUtils.isEmpty(str)) {
                    sb.append(str);
                    if (i9 != list.size() - 1) {
                        sb.append(',');
                    }
                }
            }
            String string = sb.toString();
            if (!TextUtils.isEmpty(string)) {
                map.put(map$Entry.getKey(), string);
            }
        }
        return map;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (obj instanceof k) {
            return this.f3753b.equals(((k) obj).f3753b);
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return this.f3753b.hashCode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "LazyHeaders{headers=" + this.f3753b + '}';
    }
}
