package com.google.protobuf;

import java.util.Collections;
import java.util.Map;

/* JADX INFO: renamed from: com.google.protobuf.p */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1175p {

    /* JADX INFO: renamed from: b */
    public static volatile C1175p f2739b;

    /* JADX INFO: renamed from: c */
    public static final C1175p f2740c = new C1175p();

    /* JADX INFO: renamed from: a */
    public final Map f2741a = Collections.EMPTY_MAP;

    /* JADX INFO: renamed from: a */
    public static C1175p m2056a() {
        C1175p c1175p;
        C1175p c1175p2 = f2739b;
        if (c1175p2 != null) {
            return c1175p2;
        }
        synchronized (C1175p.class) {
            try {
                c1175p = f2739b;
                if (c1175p == null) {
                    Class cls = AbstractC1172o.f2736a;
                    C1175p c1175p3 = null;
                    if (cls != null) {
                        try {
                            c1175p3 = (C1175p) cls.getDeclaredMethod("getEmptyRegistry", null).invoke(null, null);
                        } catch (Exception unused) {
                        }
                    }
                    c1175p = c1175p3 != null ? c1175p3 : f2740c;
                    f2739b = c1175p;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return c1175p;
    }
}
