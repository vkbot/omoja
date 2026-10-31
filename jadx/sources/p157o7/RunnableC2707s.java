package p157o7;

import java.util.Locale;
import p094i7.C1760i;
import p148n7.AbstractC2503e;
import p148n7.C2508f1;

/* JADX INFO: renamed from: o7.s */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC2707s implements Runnable {

    /* JADX INFO: renamed from: b */
    public final long f7745b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C2713t f7746c;

    public RunnableC2707s(C2713t c2713t, long j10) {
        this.f7746c = c2713t;
        this.f7745b = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1760i c1760i = new C1760i(1);
        C2713t c2713t = this.f7746c;
        c2713t.f7768l.mo4094e(c1760i);
        long j10 = this.f7745b;
        long jAbs = Math.abs(j10) / 1000000000;
        long jAbs2 = Math.abs(j10) % 1000000000;
        StringBuilder sb = new StringBuilder("deadline exceeded after ");
        if (j10 < 0) {
            sb.append('-');
        }
        sb.append(jAbs);
        Locale locale = Locale.US;
        sb.append(String.format(locale, ".%09d", Long.valueOf(jAbs2)));
        sb.append("s. ");
        Long l10 = (Long) c2713t.f7767k.m3885a(AbstractC2503e.f6904a);
        sb.append(String.format(locale, "Name resolution delay %.9f seconds. ", Double.valueOf(l10 == null ? 0.0d : l10.longValue() / C2713t.f7759t)));
        sb.append(c1760i);
        c2713t.f7768l.mo4097h(C2508f1.f6940h.m3931b(sb.toString()));
    }
}
