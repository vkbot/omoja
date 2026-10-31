package o7;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class t4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final n7.e[] f4457a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicBoolean f4458b = new AtomicBoolean(false);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        new t4(new n7.e[0]);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public t4(n7.e[] eVarArr) {
        this.f4457a = eVarArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(long j9) {
        for (n7.e eVar : this.f4457a) {
            eVar.l(j9);
        }
    }
}
