package p148n7;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import p155o4.AbstractC2587b;
import p157o7.C2633f3;
import p223v7.C3364y;

/* JADX INFO: renamed from: n7.l0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2525l0 {

    /* JADX INFO: renamed from: c */
    public static final Logger f6988c;

    /* JADX INFO: renamed from: d */
    public static C2525l0 f6989d;

    /* JADX INFO: renamed from: e */
    public static final List f6990e;

    /* JADX INFO: renamed from: a */
    public final LinkedHashSet f6991a = new LinkedHashSet();

    /* JADX INFO: renamed from: b */
    public final LinkedHashMap f6992b = new LinkedHashMap();

    static {
        Logger logger = Logger.getLogger(C2525l0.class.getName());
        f6988c = logger;
        ArrayList arrayList = new ArrayList();
        try {
            boolean z9 = C2633f3.f7451a;
            arrayList.add(C2633f3.class);
        } catch (ClassNotFoundException e) {
            logger.log(Level.WARNING, "Unable to find pick-first LoadBalancer", (Throwable) e);
        }
        try {
            arrayList.add(C3364y.class);
        } catch (ClassNotFoundException e6) {
            logger.log(Level.FINE, "Unable to find round-robin LoadBalancer", (Throwable) e6);
        }
        f6990e = Collections.unmodifiableList(arrayList);
    }

    /* JADX INFO: renamed from: a */
    public static synchronized C2525l0 m3958a() {
        try {
            if (f6989d == null) {
                List<AbstractC2522k0> listM3974h = AbstractC2542t.m3974h(AbstractC2522k0.class, f6990e, AbstractC2522k0.class.getClassLoader(), new C2512h(6));
                f6989d = new C2525l0();
                for (AbstractC2522k0 abstractC2522k0 : listM3974h) {
                    f6988c.fine("Service loader found " + abstractC2522k0);
                    C2525l0 c2525l0 = f6989d;
                    synchronized (c2525l0) {
                        abstractC2522k0.getClass();
                        c2525l0.f6991a.add(abstractC2522k0);
                    }
                }
                f6989d.m3960c();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f6989d;
    }

    /* JADX INFO: renamed from: b */
    public final synchronized AbstractC2522k0 m3959b(String str) {
        LinkedHashMap linkedHashMap;
        linkedHashMap = this.f6992b;
        AbstractC2587b.m4042i(str, "policy");
        return (AbstractC2522k0) linkedHashMap.get(str);
    }

    /* JADX INFO: renamed from: c */
    public final synchronized void m3960c() {
        this.f6992b.clear();
        for (AbstractC2522k0 abstractC2522k0 : this.f6991a) {
            String strMo3951a = abstractC2522k0.mo3951a();
            if (((AbstractC2522k0) this.f6992b.get(strMo3951a)) == null) {
                this.f6992b.put(strMo3951a, abstractC2522k0);
            }
        }
    }
}
