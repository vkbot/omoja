package p148n7;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: renamed from: n7.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2515i {

    /* JADX INFO: renamed from: b */
    public static final C2515i f6962b = new C2515i(new C2512h(2), C2512h.f6956c);

    /* JADX INFO: renamed from: a */
    public final ConcurrentHashMap f6963a = new ConcurrentHashMap();

    public C2515i(C2512h... c2512hArr) {
        for (C2512h c2512h : c2512hArr) {
            this.f6963a.put(c2512h.m3936a(), c2512h);
        }
    }
}
