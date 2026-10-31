package p148n7;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentSkipListMap;
import java.util.logging.Logger;

/* JADX INFO: renamed from: n7.x */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2550x {

    /* JADX INFO: renamed from: d */
    public static final Logger f7049d = Logger.getLogger(C2550x.class.getName());

    /* JADX INFO: renamed from: e */
    public static final C2550x f7050e = new C2550x();

    /* JADX INFO: renamed from: a */
    public final ConcurrentSkipListMap f7051a;

    /* JADX INFO: renamed from: b */
    public final ConcurrentHashMap f7052b;

    /* JADX INFO: renamed from: c */
    public final ConcurrentHashMap f7053c;

    public C2550x() {
        new ConcurrentSkipListMap();
        this.f7051a = new ConcurrentSkipListMap();
        this.f7052b = new ConcurrentHashMap();
        this.f7053c = new ConcurrentHashMap();
        new ConcurrentHashMap();
    }
}
