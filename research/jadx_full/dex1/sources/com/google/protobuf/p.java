package com.google.protobuf;

import java.util.Collections;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class p {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile p f1541b;
    public static final p c = new p();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f1542a = Collections.EMPTY_MAP;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static p a() {
        p pVar;
        p pVar2 = f1541b;
        if (pVar2 != null) {
            return pVar2;
        }
        synchronized (p.class) {
            try {
                pVar = f1541b;
                if (pVar == null) {
                    Class cls = o.f1539a;
                    p pVar3 = null;
                    if (cls != null) {
                        try {
                            pVar3 = (p) cls.getDeclaredMethod("getEmptyRegistry", null).invoke(null, null);
                        } catch (Exception unused) {
                        }
                    }
                    pVar = pVar3 != null ? pVar3 : c;
                    f1541b = pVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return pVar;
    }
}
