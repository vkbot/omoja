package d2;

import android.content.Context;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class s {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile k f1695b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final j2.i f1696a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public s(j2.i iVar, b1.m mVar) {
        this.f1696a = iVar;
        ((Executor) mVar.c).execute(new f5.j(5, mVar));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static s a() {
        k kVar = f1695b;
        if (kVar != null) {
            return (s) kVar.f1687g.get();
        }
        j1.i.l("Not initialized!");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void b(Context context) {
        if (f1695b == null) {
            synchronized (s.class) {
                try {
                    if (f1695b == null) {
                        com.bumptech.glide.manager.o oVar = new com.bumptech.glide.manager.o();
                        context.getClass();
                        oVar.c = context;
                        f1695b = oVar.a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final r c(b2.a aVar) {
        Set setUnmodifiableSet = aVar instanceof b2.a ? Collections.unmodifiableSet(b2.a.d) : Collections.singleton(new a2.a("proto"));
        aVar.getClass();
        String str = aVar.f297a;
        String str2 = aVar.f298b;
        if (str2 == null) {
            str2 = "";
        }
        return new r(setUnmodifiableSet, new j("cct", ("1$" + str + "\\" + str2).getBytes(Charset.forName("UTF-8")), a2.b.f6b), this);
    }
}
