package p7;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class v {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f4698b;
    public int c;
    public int d;
    public final j e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ b7.p f4700g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final l9.l f4697a = new l9.l();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f4699f = false;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public v(b7.p pVar, int i9, int i10, j jVar) {
        this.f4700g = pVar;
        this.f4698b = i9;
        this.c = i10;
        this.e = jVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int a(int i9) {
        if (i9 > 0 && Integer.MAX_VALUE - i9 < this.c) {
            androidx.navigation.b.b(this.f4698b, "Window size overflow for stream: ");
            return 0;
        }
        int i10 = this.c + i9;
        this.c = i10;
        return i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(int i9, boolean z8, l9.l lVar) {
        boolean zF;
        do {
            int iMin = Math.min(i9, ((d) this.f4700g.d).c.f4607b.e);
            int i10 = -iMin;
            ((v) this.f4700g.e).a(i10);
            a(i10);
            try {
                boolean z9 = false;
                ((d) this.f4700g.d).b(lVar.c == ((long) iMin) && z8, this.f4698b, lVar, iMin);
                j jVar = this.e;
                synchronized (jVar.f4144b) {
                    o4.b.m(jVar.f4145f, "onStreamAllocated was not called, but it seems the stream is active");
                    int i11 = jVar.e;
                    boolean z10 = i11 < 32768;
                    int i12 = i11 - iMin;
                    jVar.e = i12;
                    boolean z11 = i12 < 32768;
                    if (!z10 && z11) {
                        z9 = true;
                    }
                }
                if (z9) {
                    synchronized (jVar.f4144b) {
                        zF = jVar.f();
                    }
                    if (zF) {
                        jVar.f4149j.j();
                    }
                }
                i9 -= iMin;
            } catch (IOException e) {
                n0.b.w(e);
                return;
            }
        } while (i9 > 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c(int i9, c9.i iVar) {
        int i10 = this.c;
        b7.p pVar = this.f4700g;
        int iMin = Math.min(i9, Math.min(i10, ((v) pVar.e).c));
        int i11 = 0;
        while (true) {
            l9.l lVar = this.f4697a;
            long j9 = lVar.c;
            if (j9 <= 0 || iMin <= 0) {
                return;
            }
            if (iMin >= j9) {
                int i12 = (int) j9;
                i11 += i12;
                b(i12, this.f4699f, lVar);
            } else {
                i11 += iMin;
                b(iMin, false, lVar);
            }
            iVar.b++;
            iMin = Math.min(i9 - i11, Math.min(this.c, ((v) pVar.e).c));
        }
    }
}
