package n7;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import o7.f3;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class l0 {
    public static final Logger c;
    public static l0 d;
    public static final List e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashSet f3953a = new LinkedHashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinkedHashMap f3954b = new LinkedHashMap();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        Logger logger = Logger.getLogger(l0.class.getName());
        c = logger;
        ArrayList arrayList = new ArrayList();
        try {
            boolean z8 = f3.f4240a;
            arrayList.add(f3.class);
        } catch (ClassNotFoundException e6) {
            logger.log(Level.WARNING, "Unable to find pick-first LoadBalancer", (Throwable) e6);
        }
        try {
            arrayList.add(v7.y.class);
        } catch (ClassNotFoundException e9) {
            logger.log(Level.FINE, "Unable to find round-robin LoadBalancer", (Throwable) e9);
        }
        e = Collections.unmodifiableList(arrayList);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static synchronized l0 a() {
        try {
            if (d == null) {
                List<k0> listH = t.h(k0.class, e, k0.class.getClassLoader(), new h(6));
                d = new l0();
                for (k0 k0Var : listH) {
                    c.fine("Service loader found " + k0Var);
                    l0 l0Var = d;
                    synchronized (l0Var) {
                        k0Var.getClass();
                        l0Var.f3953a.add(k0Var);
                    }
                }
                d.c();
            }
        } catch (Throwable th) {
            throw th;
        }
        return d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized k0 b(String str) {
        LinkedHashMap linkedHashMap;
        linkedHashMap = this.f3954b;
        o4.b.i(str, "policy");
        return (k0) linkedHashMap.get(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void c() {
        this.f3954b.clear();
        for (k0 k0Var : this.f3953a) {
            String strA = k0Var.a();
            if (((k0) this.f3954b.get(strA)) == null) {
                this.f3954b.put(strA, k0Var);
            }
        }
    }
}
