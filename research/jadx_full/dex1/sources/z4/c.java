package z4;

import a5.e;
import java.util.Date;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c implements y4.a {
    public static final e e = new e(2);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f6291f = new a(0);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f6292g = new a(1);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final b f6293h = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f6294a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f6295b;
    public final e c;
    public boolean d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c() {
        HashMap map = new HashMap();
        this.f6294a = map;
        HashMap map2 = new HashMap();
        this.f6295b = map2;
        this.c = e;
        this.d = false;
        map2.put(String.class, f6291f);
        map.remove(String.class);
        map2.put(Boolean.class, f6292g);
        map.remove(Boolean.class);
        map2.put(Date.class, f6293h);
        map.remove(Date.class);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final y4.a a(Class cls, x4.d dVar) {
        this.f6294a.put(cls, dVar);
        this.f6295b.remove(cls);
        return this;
    }
}
