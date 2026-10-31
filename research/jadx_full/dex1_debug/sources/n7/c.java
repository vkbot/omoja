package n7;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final c f3892h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final o f3893a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f3894b;
    public final Object[][] c;
    public final List d;
    public final Boolean e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Integer f3895f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Integer f3896g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        c2.k kVar = new c2.k(3);
        kVar.e = (Object[][]) Array.newInstance((Class<?>) Object.class, 0, 2);
        kVar.f456g = Collections.EMPTY_LIST;
        f3892h = new c(kVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(c2.k kVar) {
        this.f3893a = (o) kVar.c;
        this.f3894b = (Executor) kVar.d;
        this.c = (Object[][]) kVar.e;
        this.d = (List) kVar.f456g;
        this.e = (Boolean) kVar.f457h;
        this.f3895f = (Integer) kVar.f455f;
        this.f3896g = (Integer) kVar.f458i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static c2.k b(c cVar) {
        c2.k kVar = new c2.k(3);
        kVar.c = cVar.f3893a;
        kVar.d = cVar.f3894b;
        kVar.e = cVar.c;
        kVar.f456g = cVar.d;
        kVar.f457h = cVar.e;
        kVar.f455f = cVar.f3895f;
        kVar.f458i = cVar.f3896g;
        return kVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object a(a9.w wVar) {
        o4.b.i(wVar, "key");
        int i9 = 0;
        while (true) {
            Object[][] objArr = this.c;
            if (i9 >= objArr.length) {
                return null;
            }
            if (wVar.equals(objArr[i9][0])) {
                return objArr[i9][1];
            }
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final c c(a9.w wVar, Object obj) {
        Object[][] objArr;
        o4.b.i(wVar, "key");
        c2.k kVarB = b(this);
        int i9 = 0;
        while (true) {
            objArr = this.c;
            if (i9 >= objArr.length) {
                i9 = -1;
                break;
            }
            if (wVar.equals(objArr[i9][0])) {
                break;
            }
            i9++;
        }
        Object[][] objArr2 = (Object[][]) Array.newInstance((Class<?>) Object.class, objArr.length + (i9 == -1 ? 1 : 0), 2);
        kVarB.e = objArr2;
        System.arraycopy(objArr, 0, objArr2, 0, objArr.length);
        Object[][] objArr3 = (Object[][]) kVarB.e;
        if (i9 == -1) {
            objArr3[objArr.length] = new Object[]{wVar, obj};
        } else {
            objArr3[i9] = new Object[]{wVar, obj};
        }
        return new c(kVarB);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        com.bumptech.glide.manager.s sVarT = com.bumptech.glide.c.t(this);
        sVarT.c(this.f3893a, "deadline");
        sVarT.c(null, "authority");
        sVarT.c(null, "callCredentials");
        Executor executor = this.f3894b;
        sVarT.c(executor != null ? executor.getClass() : null, "executor");
        sVarT.c(null, "compressorName");
        sVarT.c(Arrays.deepToString(this.c), "customOptions");
        sVarT.d("waitForReady", Boolean.TRUE.equals(this.e));
        sVarT.c(this.f3895f, "maxInboundMessageSize");
        sVarT.c(this.f3896g, "maxOutboundMessageSize");
        sVarT.c(this.d, "streamTracerFactories");
        return sVarT.toString();
    }
}
