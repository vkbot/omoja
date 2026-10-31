package o7;

import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class s implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f4420b;
    public final /* synthetic */ t c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public s(t tVar, long j9) {
        this.c = tVar;
        this.f4420b = j9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        i7.i iVar = new i7.i(1);
        t tVar = this.c;
        tVar.f4436l.e(iVar);
        long j9 = this.f4420b;
        long jAbs = Math.abs(j9) / 1000000000;
        long jAbs2 = Math.abs(j9) % 1000000000;
        StringBuilder sb = new StringBuilder("deadline exceeded after ");
        if (j9 < 0) {
            sb.append('-');
        }
        sb.append(jAbs);
        Locale locale = Locale.US;
        sb.append(String.format(locale, ".%09d", Long.valueOf(jAbs2)));
        sb.append("s. ");
        Long l9 = (Long) tVar.f4435k.a(n7.e.f3901a);
        sb.append(String.format(locale, "Name resolution delay %.9f seconds. ", Double.valueOf(l9 == null ? 0.0d : l9.longValue() / t.t)));
        sb.append(iVar);
        tVar.f4436l.h(n7.f1.f3925h.b(sb.toString()));
    }
}
