package p170p7;

import androidx.navigation.C0674b;
import java.io.IOException;
import p022b7.C0920p;
import p034c9.C1023i;
import p130l9.C2242l;
import p142n0.C2467b;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: p7.v */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2997v {

    /* JADX INFO: renamed from: b */
    public final int f8437b;

    /* JADX INFO: renamed from: c */
    public int f8438c;

    /* JADX INFO: renamed from: d */
    public int f8439d;

    /* JADX INFO: renamed from: e */
    public final C2985j f8440e;

    /* JADX INFO: renamed from: g */
    public final /* synthetic */ C0920p f8442g;

    /* JADX INFO: renamed from: a */
    public final C2242l f8436a = new C2242l();

    /* JADX INFO: renamed from: f */
    public boolean f8441f = false;

    public C2997v(C0920p c0920p, int i10, int i11, C2985j c2985j) {
        this.f8442g = c0920p;
        this.f8437b = i10;
        this.f8438c = i11;
        this.f8440e = c2985j;
    }

    /* JADX INFO: renamed from: a */
    public final int m4809a(int i10) {
        if (i10 > 0 && Integer.MAX_VALUE - i10 < this.f8438c) {
            C0674b.m836b(this.f8437b, "Window size overflow for stream: ");
            return 0;
        }
        int i11 = this.f8438c + i10;
        this.f8438c = i11;
        return i11;
    }

    /* JADX INFO: renamed from: b */
    public final void m4810b(int i10, boolean z9, C2242l c2242l) {
        boolean zM4122f;
        do {
            int iMin = Math.min(i10, ((C2979d) this.f8442g.f770d).f8303c.f8286b.f8926e);
            int i11 = -iMin;
            ((C2997v) this.f8442g.f771e).m4809a(i11);
            m4809a(i11);
            try {
                boolean z10 = false;
                ((C2979d) this.f8442g.f770d).m4776b(c2242l.f5878c == ((long) iMin) && z9, this.f8437b, c2242l, iMin);
                C2985j c2985j = this.f8440e;
                synchronized (c2985j.f7291b) {
                    AbstractC2587b.m4046m(c2985j.f7295f, "onStreamAllocated was not called, but it seems the stream is active");
                    int i12 = c2985j.f7294e;
                    boolean z11 = i12 < 32768;
                    int i13 = i12 - iMin;
                    c2985j.f7294e = i13;
                    boolean z12 = i13 < 32768;
                    if (!z11 && z12) {
                        z10 = true;
                    }
                }
                if (z10) {
                    synchronized (c2985j.f7291b) {
                        zM4122f = c2985j.m4122f();
                    }
                    if (zM4122f) {
                        c2985j.f7299j.mo75j();
                    }
                }
                i10 -= iMin;
            } catch (IOException e) {
                C2467b.m3833w(e);
                return;
            }
        } while (i10 > 0);
    }

    /* JADX INFO: renamed from: c */
    public final void m4811c(int i10, C1023i c1023i) {
        int i11 = this.f8438c;
        C0920p c0920p = this.f8442g;
        int iMin = Math.min(i10, Math.min(i11, ((C2997v) c0920p.f771e).f8438c));
        int i12 = 0;
        while (true) {
            C2242l c2242l = this.f8436a;
            long j10 = c2242l.f5878c;
            if (j10 <= 0 || iMin <= 0) {
                return;
            }
            if (iMin >= j10) {
                int i13 = (int) j10;
                i12 += i13;
                m4810b(i13, this.f8441f, c2242l);
            } else {
                i12 += iMin;
                m4810b(iMin, false, c2242l);
            }
            c1023i.f1048b++;
            iMin = Math.min(i10 - i12, Math.min(this.f8438c, ((C2997v) c0920p.f771e).f8438c));
        }
    }
}
