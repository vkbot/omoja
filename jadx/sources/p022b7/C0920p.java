package p022b7;

import android.os.Handler;
import android.os.HandlerThread;
import java.io.IOException;
import java.util.Formatter;
import p034c9.C1023i;
import p120l.C2187d;
import p130l9.C2242l;
import p142n0.C2467b;
import p155o4.AbstractC2587b;
import p170p7.C2979d;
import p170p7.C2989n;
import p170p7.C2997v;
import p194s6.C3209a;
import p194s6.C3211c;
import p194s6.C3213e;
import p260z5.C3759o;

/* JADX INFO: renamed from: b7.p */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0920p implements InterfaceC0916l {

    /* JADX INFO: renamed from: f */
    public static C0920p f766f;

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f767a;

    /* JADX INFO: renamed from: b */
    public int f768b;

    /* JADX INFO: renamed from: c */
    public Object f769c;

    /* JADX INFO: renamed from: d */
    public Object f770d;

    /* JADX INFO: renamed from: e */
    public Object f771e;

    public C0920p(C2989n c2989n, C2979d c2979d) {
        this.f767a = 3;
        this.f769c = c2989n;
        this.f770d = c2979d;
        this.f768b = 65535;
        this.f771e = new C2997v(this, 0, 65535, null);
    }

    /* JADX INFO: renamed from: a */
    public void m1054a(C2187d c2187d) {
        if (c2187d != null) {
            C3213e c3213e = (C3213e) c2187d;
            C3209a c3209a = (C3209a) this.f769c;
            C3209a[] c3209aArr = (C3209a[]) c3213e.f5706d;
            for (C3209a c3209a2 : c3209aArr) {
                if (c3209a2 != null) {
                    c3209a2.m5142b();
                }
            }
            c3213e.m5149T(c3209aArr, c3209a);
            C3211c c3211c = (C3211c) c3213e.f5705c;
            boolean z9 = c3213e.f9395e;
            C3759o c3759o = z9 ? c3211c.f9384b : c3211c.f9386d;
            C3759o c3759o2 = z9 ? c3211c.f9385c : c3211c.f9387e;
            int iM3495x = c3213e.m3495x((int) c3759o.f11215b);
            int iM3495x2 = c3213e.m3495x((int) c3759o2.f11215b);
            int i10 = -1;
            int iMax = 1;
            int i11 = 0;
            while (iM3495x < iM3495x2) {
                C3209a c3209a3 = c3209aArr[iM3495x];
                if (c3209a3 != null) {
                    int i12 = c3209a3.f9381f;
                    int i13 = i12 - i10;
                    if (i13 == 0) {
                        i11++;
                    } else {
                        if (i13 == 1) {
                            iMax = Math.max(iMax, i11);
                            i10 = c3209a3.f9381f;
                        } else if (i13 < 0 || i12 >= c3209a.f9381f || i13 > iM3495x) {
                            c3209aArr[iM3495x] = null;
                        } else {
                            if (iMax > 2) {
                                i13 *= iMax - 2;
                            }
                            boolean z10 = i13 >= iM3495x;
                            for (int i14 = 1; i14 <= i13 && !z10; i14++) {
                                z10 = c3209aArr[iM3495x - i14] != null;
                            }
                            if (z10) {
                                c3209aArr[iM3495x] = null;
                            } else {
                                i10 = c3209a3.f9381f;
                            }
                        }
                        i11 = 1;
                    }
                }
                iM3495x++;
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public void m1055b() {
        synchronized (this.f771e) {
            try {
                if (((Handler) this.f769c) == null) {
                    if (this.f768b <= 0) {
                        throw new IllegalStateException("CameraThread is not open");
                    }
                    HandlerThread handlerThread = new HandlerThread("CameraThread");
                    this.f770d = handlerThread;
                    handlerThread.start();
                    this.f769c = new Handler(((HandlerThread) this.f770d).getLooper());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: c */
    public void m1056c(boolean z9, C2997v c2997v, C2242l c2242l, boolean z10) {
        AbstractC2587b.m4042i(c2242l, "source");
        int iMin = Math.min(c2997v.f8438c, ((C2997v) c2997v.f8442g.f771e).f8438c);
        C2242l c2242l2 = c2997v.f8436a;
        boolean z11 = c2242l2.f5878c > 0;
        int i10 = (int) c2242l.f5878c;
        if (z11 || iMin < i10) {
            if (!z11 && iMin > 0) {
                c2997v.m4810b(iMin, false, c2242l);
            }
            c2242l2.write(c2242l, (int) c2242l.f5878c);
            c2997v.f8441f = z9 | c2997v.f8441f;
        } else {
            c2997v.m4810b(i10, z9, c2242l);
        }
        if (z10) {
            try {
                ((C2979d) this.f770d).flush();
            } catch (IOException e) {
                C2467b.m3833w(e);
            }
        }
    }

    /* JADX INFO: renamed from: d */
    public void m1057d(Runnable runnable) {
        synchronized (this.f771e) {
            m1055b();
            ((Handler) this.f769c).post(runnable);
        }
    }

    /* JADX INFO: renamed from: e */
    public void m1058e(C2997v c2997v, int i10) {
        if (c2997v == null) {
            ((C2997v) this.f771e).m4809a(i10);
            m1059f();
            return;
        }
        c2997v.m4809a(i10);
        C1023i c1023i = new C1023i();
        c2997v.m4811c(Math.min(c2997v.f8438c, ((C2997v) c2997v.f8442g.f771e).f8438c), c1023i);
        if (c1023i.f1048b > 0) {
            try {
                ((C2979d) this.f770d).flush();
            } catch (IOException e) {
                C2467b.m3833w(e);
            }
        }
    }

    /*  JADX ERROR: JadxOverflowException in pass: LoopRegionVisitor
        jadx.core.utils.exceptions.JadxOverflowException: LoopRegionVisitor.assignOnlyInLoop endless recursion
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX INFO: renamed from: f */
    public void m1059f() {
        /*
            r13 = this;
            java.lang.Object r0 = r13.f769c
            p7.n r0 = (p170p7.C2989n) r0
            p7.v[] r1 = r0.m4791i()
            java.util.List r2 = java.util.Arrays.asList(r1)
            java.util.Collections.shuffle(r2)
            java.lang.Object r2 = r13.f771e
            p7.v r2 = (p170p7.C2997v) r2
            int r2 = r2.f8438c
            int r3 = r1.length
        L16:
            r4 = 0
            if (r3 <= 0) goto L6a
            if (r2 <= 0) goto L6a
            float r5 = (float) r2
            float r6 = (float) r3
            float r5 = r5 / r6
            double r5 = (double) r5
            double r5 = java.lang.Math.ceil(r5)
            int r5 = (int) r5
            r6 = r4
            r7 = r6
        L26:
            if (r7 >= r3) goto L68
            if (r2 <= 0) goto L68
            r8 = r1[r7]
            int r9 = r8.f8438c
            l9.l r10 = r8.f8436a
            long r11 = r10.f5878c
            int r11 = (int) r11
            int r9 = java.lang.Math.min(r9, r11)
            int r9 = java.lang.Math.max(r4, r9)
            int r11 = r8.f8439d
            int r9 = r9 - r11
            int r9 = java.lang.Math.min(r9, r5)
            int r9 = java.lang.Math.min(r2, r9)
            if (r9 <= 0) goto L4e
            int r11 = r8.f8439d
            int r11 = r11 + r9
            r8.f8439d = r11
            int r2 = r2 - r9
        L4e:
            int r9 = r8.f8438c
            long r10 = r10.f5878c
            int r10 = (int) r10
            int r9 = java.lang.Math.min(r9, r10)
            int r9 = java.lang.Math.max(r4, r9)
            int r10 = r8.f8439d
            int r9 = r9 - r10
            if (r9 <= 0) goto L65
            int r9 = r6 + 1
            r1[r6] = r8
            r6 = r9
        L65:
            int r7 = r7 + 1
            goto L26
        L68:
            r3 = r6
            goto L16
        L6a:
            c9.i r1 = new c9.i
            r1.<init>()
            p7.v[] r0 = r0.m4791i()
            int r2 = r0.length
            r3 = r4
        L75:
            if (r3 >= r2) goto L83
            r5 = r0[r3]
            int r6 = r5.f8439d
            r5.m4811c(r6, r1)
            r5.f8439d = r4
            int r3 = r3 + 1
            goto L75
        L83:
            int r0 = r1.f1048b
            if (r0 <= 0) goto L93
            java.lang.Object r0 = r13.f770d     // Catch: java.io.IOException -> L8f
            p7.d r0 = (p170p7.C2979d) r0     // Catch: java.io.IOException -> L8f
            r0.flush()     // Catch: java.io.IOException -> L8f
            return
        L8f:
            r0 = move-exception
            p142n0.C2467b.m3833w(r0)
        L93:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p022b7.C0920p.m1059f():void");
    }

    public String toString() {
        switch (this.f767a) {
            case 4:
                int i10 = this.f768b;
                C2187d[] c2187dArr = (C2187d[]) this.f770d;
                C2187d c2187d = c2187dArr[0];
                if (c2187d == null) {
                    c2187d = c2187dArr[i10 + 1];
                }
                Formatter formatter = new Formatter();
                for (int i11 = 0; i11 < ((C3209a[]) c2187d.f5706d).length; i11++) {
                    try {
                        formatter.format("CW %3d:", Integer.valueOf(i11));
                        for (int i12 = 0; i12 < i10 + 2; i12++) {
                            C2187d c2187d2 = c2187dArr[i12];
                            if (c2187d2 == null) {
                                formatter.format("    |   ", new Object[0]);
                            } else {
                                C3209a c3209a = ((C3209a[]) c2187d2.f5706d)[i11];
                                if (c3209a == null) {
                                    formatter.format("    |   ", new Object[0]);
                                } else {
                                    formatter.format(" %3d|%3d", Integer.valueOf(c3209a.f9381f), Integer.valueOf(c3209a.f9380e));
                                }
                            }
                        }
                        formatter.format("%n", new Object[0]);
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            try {
                                formatter.close();
                                break;
                            } catch (Throwable th3) {
                                th.addSuppressed(th3);
                            }
                            throw th2;
                        }
                    }
                }
                String string = formatter.toString();
                formatter.close();
                return string;
            default:
                return super.toString();
        }
    }

    public C0920p() {
        this.f767a = 2;
        this.f768b = 0;
        this.f771e = new Object();
    }

    public C0920p(C3209a c3209a, C3211c c3211c) {
        this.f767a = 4;
        this.f769c = c3209a;
        int i10 = c3209a.f9377b;
        this.f768b = i10;
        this.f771e = c3211c;
        this.f770d = new C2187d[i10 + 2];
    }

    public /* synthetic */ C0920p(int i10) {
        this.f767a = i10;
    }
}
