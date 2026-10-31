package n7;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map$Entry;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class q {
    public static final a9.w c = new a9.w(String.valueOf(','));
    public static final q d = new q(h.c, false, new q(new h(2), true, new q()));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f3966a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f3967b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public q(h hVar, boolean z8, q qVar) {
        String strA = hVar.a();
        o4.b.d("Comma is currently not allowed in message encoding", !strA.contains(","));
        int size = qVar.f3966a.size();
        LinkedHashMap linkedHashMap = new LinkedHashMap(qVar.f3966a.containsKey(hVar.a()) ? size : size + 1);
        for (p pVar : qVar.f3966a.values()) {
            String strA2 = pVar.f3962a.a();
            if (!strA2.equals(strA)) {
                linkedHashMap.put(strA2, new p(pVar.f3962a, pVar.f3963b));
            }
        }
        linkedHashMap.put(strA, new p(hVar, z8));
        Map mapUnmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        this.f3966a = mapUnmodifiableMap;
        HashSet hashSet = new HashSet(mapUnmodifiableMap.size());
        for (Map$Entry map$Entry : mapUnmodifiableMap.entrySet()) {
            if (((p) map$Entry.getValue()).f3963b) {
                hashSet.add((String) map$Entry.getKey());
            }
        }
        Set setUnmodifiableSet = Collections.unmodifiableSet(hashSet);
        a9.w wVar = c;
        wVar.getClass();
        Iterator it = setUnmodifiableSet.iterator();
        StringBuilder sb = new StringBuilder();
        try {
            if (it.hasNext()) {
                Object next = it.next();
                Objects.requireNonNull(next);
                sb.append(next instanceof CharSequence ? (CharSequence) next : next.toString());
                while (it.hasNext()) {
                    sb.append((CharSequence) wVar.c);
                    Object next2 = it.next();
                    Objects.requireNonNull(next2);
                    sb.append(next2 instanceof CharSequence ? (CharSequence) next2 : next2.toString());
                }
            }
            this.f3967b = sb.toString().getBytes(Charset.forName("US-ASCII"));
        } catch (IOException e) {
            j1.i.e(e);
            throw null;
        }
    }

    public q() {
        this.f3966a = new LinkedHashMap(0);
        this.f3967b = new byte[0];
    }
}
