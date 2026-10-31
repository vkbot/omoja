package p096i9;

import java.lang.ref.SoftReference;
import kotlin.jvm.functions.Function0;

/* JADX INFO: renamed from: i9.v0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1868v0 {

    /* JADX INFO: renamed from: a */
    public volatile SoftReference f4841a;

    /* JADX INFO: renamed from: a */
    public final synchronized Object m2928a(Function0 function0) {
        Object obj = this.f4841a.get();
        if (obj != null) {
            return obj;
        }
        Object objInvoke = function0.invoke();
        this.f4841a = new SoftReference(objInvoke);
        return objInvoke;
    }
}
