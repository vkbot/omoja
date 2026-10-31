package p039d2;

import android.content.Context;
import com.bumptech.glide.manager.C1069o;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
import p003a2.C0004a;
import p003a2.EnumC0005b;
import p016b1.C0872m;
import p017b2.C0881a;
import p062f5.RunnableC1556j;
import p099j1.C1929i;
import p100j2.C1953i;

/* JADX INFO: renamed from: d2.s */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1263s {

    /* JADX INFO: renamed from: b */
    public static volatile C1255k f2981b;

    /* JADX INFO: renamed from: a */
    public final C1953i f2982a;

    public C1263s(C1953i c1953i, C0872m c0872m) {
        this.f2982a = c1953i;
        ((Executor) c0872m.f601c).execute(new RunnableC1556j(5, c0872m));
    }

    /* JADX INFO: renamed from: a */
    public static C1263s m2259a() {
        C1255k c1255k = f2981b;
        if (c1255k != null) {
            return (C1263s) c1255k.f2972g.get();
        }
        C1929i.m3030l("Not initialized!");
        return null;
    }

    /* JADX INFO: renamed from: b */
    public static void m2260b(Context context) {
        if (f2981b == null) {
            synchronized (C1263s.class) {
                try {
                    if (f2981b == null) {
                        C1069o c1069o = new C1069o();
                        context.getClass();
                        c1069o.f1169c = context;
                        f2981b = c1069o.m1343a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* JADX INFO: renamed from: c */
    public final C1262r m2261c(C0881a c0881a) {
        Set setUnmodifiableSet = c0881a instanceof C0881a ? Collections.unmodifiableSet(C0881a.f646d) : Collections.singleton(new C0004a("proto"));
        c0881a.getClass();
        String str = c0881a.f649a;
        String str2 = c0881a.f650b;
        if (str2 == null) {
            str2 = "";
        }
        return new C1262r(setUnmodifiableSet, new C1254j("cct", ("1$" + str + "\\" + str2).getBytes(Charset.forName("UTF-8")), EnumC0005b.f5b), this);
    }
}
