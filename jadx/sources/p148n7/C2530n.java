package p148n7;

import java.util.logging.Level;
import java.util.logging.Logger;
import p142n0.C2467b;

/* JADX INFO: renamed from: n7.n */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C2530n {

    /* JADX INFO: renamed from: a */
    public static final Logger f6998a = Logger.getLogger(C2530n.class.getName());

    /* JADX INFO: renamed from: b */
    public static final C2530n f6999b = new C2530n();

    /* JADX INFO: renamed from: b */
    public static C2530n m3961b() {
        ((C2526l1) AbstractC2524l.f6987a).getClass();
        C2530n c2530n = (C2530n) C2526l1.f6994b.get();
        C2530n c2530n2 = f6999b;
        if (c2530n == null) {
            c2530n = c2530n2;
        }
        return c2530n == null ? c2530n2 : c2530n;
    }

    /* JADX INFO: renamed from: a */
    public final C2530n m3962a() {
        ((C2526l1) AbstractC2524l.f6987a).getClass();
        ThreadLocal threadLocal = C2526l1.f6994b;
        C2530n c2530n = (C2530n) threadLocal.get();
        C2530n c2530n2 = f6999b;
        if (c2530n == null) {
            c2530n = c2530n2;
        }
        threadLocal.set(this);
        return c2530n == null ? c2530n2 : c2530n;
    }

    /* JADX INFO: renamed from: c */
    public final void m3963c(C2530n c2530n) {
        if (c2530n == null) {
            C2467b.m3828n("toAttach");
            return;
        }
        C2526l1 c2526l1 = (C2526l1) AbstractC2524l.f6987a;
        ThreadLocal threadLocal = C2526l1.f6994b;
        c2526l1.getClass();
        C2530n c2530n2 = (C2530n) threadLocal.get();
        C2530n c2530n3 = f6999b;
        if (c2530n2 == null) {
            c2530n2 = c2530n3;
        }
        if (c2530n2 != this) {
            C2526l1.f6993a.log(Level.SEVERE, "Context was not attached when detaching", new Throwable().fillInStackTrace());
        }
        if (c2530n != c2530n3) {
            threadLocal.set(c2530n);
        } else {
            threadLocal.set(null);
        }
    }
}
