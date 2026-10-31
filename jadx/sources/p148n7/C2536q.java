package p148n7;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import p010a9.C0061w;
import p099j1.C1929i;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: n7.q */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2536q {

    /* JADX INFO: renamed from: c */
    public static final C0061w f7011c = new C0061w(String.valueOf(','));

    /* JADX INFO: renamed from: d */
    public static final C2536q f7012d = new C2536q(C2512h.f6956c, false, new C2536q(new C2512h(2), true, new C2536q()));

    /* JADX INFO: renamed from: a */
    public final Map f7013a;

    /* JADX INFO: renamed from: b */
    public final byte[] f7014b;

    public C2536q(C2512h c2512h, boolean z9, C2536q c2536q) {
        String strM3936a = c2512h.m3936a();
        AbstractC2587b.m4037d("Comma is currently not allowed in message encoding", !strM3936a.contains(","));
        int size = c2536q.f7013a.size();
        LinkedHashMap linkedHashMap = new LinkedHashMap(c2536q.f7013a.containsKey(c2512h.m3936a()) ? size : size + 1);
        for (C2534p c2534p : c2536q.f7013a.values()) {
            String strM3936a2 = c2534p.f7005a.m3936a();
            if (!strM3936a2.equals(strM3936a)) {
                linkedHashMap.put(strM3936a2, new C2534p(c2534p.f7005a, c2534p.f7006b));
            }
        }
        linkedHashMap.put(strM3936a, new C2534p(c2512h, z9));
        Map mapUnmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        this.f7013a = mapUnmodifiableMap;
        HashSet hashSet = new HashSet(mapUnmodifiableMap.size());
        for (Map.Entry entry : mapUnmodifiableMap.entrySet()) {
            if (((C2534p) entry.getValue()).f7006b) {
                hashSet.add((String) entry.getKey());
            }
        }
        Set setUnmodifiableSet = Collections.unmodifiableSet(hashSet);
        C0061w c0061w = f7011c;
        c0061w.getClass();
        Iterator it = setUnmodifiableSet.iterator();
        StringBuilder sb = new StringBuilder();
        try {
            if (it.hasNext()) {
                Object next = it.next();
                Objects.requireNonNull(next);
                sb.append(next instanceof CharSequence ? (CharSequence) next : next.toString());
                while (it.hasNext()) {
                    sb.append((CharSequence) c0061w.f152c);
                    Object next2 = it.next();
                    Objects.requireNonNull(next2);
                    sb.append(next2 instanceof CharSequence ? (CharSequence) next2 : next2.toString());
                }
            }
            this.f7014b = sb.toString().getBytes(Charset.forName("US-ASCII"));
        } catch (IOException e) {
            C1929i.m3023e(e);
            throw null;
        }
    }

    public C2536q() {
        this.f7013a = new LinkedHashMap(0);
        this.f7014b = new byte[0];
    }
}
