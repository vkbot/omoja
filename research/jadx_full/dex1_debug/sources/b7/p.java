package b7;

import android.os.Handler;
import android.os.HandlerThread;
import java.io.IOException;
import java.util.Formatter;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class p implements l {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static p f383f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f384a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f385b;
    public Object c;
    public Object d;
    public Object e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public p(p7.n nVar, p7.d dVar) {
        this.f384a = 3;
        this.c = nVar;
        this.d = dVar;
        this.f385b = 65535;
        this.e = new p7.v(this, 0, 65535, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void a(l.d dVar) {
        if (dVar != null) {
            s6.e eVar = (s6.e) dVar;
            s6.a aVar = (s6.a) this.c;
            s6.a[] aVarArr = (s6.a[]) eVar.d;
            for (s6.a aVar2 : aVarArr) {
                if (aVar2 != null) {
                    aVar2.b();
                }
            }
            eVar.T(aVarArr, aVar);
            s6.c cVar = (s6.c) eVar.c;
            boolean z8 = eVar.e;
            z5.o oVar = z8 ? cVar.f5305b : cVar.d;
            z5.o oVar2 = z8 ? cVar.c : cVar.e;
            int iX = eVar.x((int) oVar.f6340b);
            int iX2 = eVar.x((int) oVar2.f6340b);
            int i9 = -1;
            int iMax = 1;
            int i10 = 0;
            while (iX < iX2) {
                s6.a aVar3 = aVarArr[iX];
                if (aVar3 != null) {
                    int i11 = aVar3.f5302f;
                    int i12 = i11 - i9;
                    if (i12 == 0) {
                        i10++;
                    } else {
                        if (i12 == 1) {
                            iMax = Math.max(iMax, i10);
                            i9 = aVar3.f5302f;
                        } else if (i12 < 0 || i11 >= aVar.f5302f || i12 > iX) {
                            aVarArr[iX] = null;
                        } else {
                            if (iMax > 2) {
                                i12 *= iMax - 2;
                            }
                            boolean z9 = i12 >= iX;
                            for (int i13 = 1; i13 <= i12 && !z9; i13++) {
                                z9 = aVarArr[iX - i13] != null;
                            }
                            if (z9) {
                                aVarArr[iX] = null;
                            } else {
                                i9 = aVar3.f5302f;
                            }
                        }
                        i10 = 1;
                    }
                }
                iX++;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void b() {
        synchronized (this.e) {
            try {
                if (((Handler) this.c) == null) {
                    if (this.f385b <= 0) {
                        throw new IllegalStateException("CameraThread is not open");
                    }
                    HandlerThread handlerThread = new HandlerThread("CameraThread");
                    this.d = handlerThread;
                    handlerThread.start();
                    this.c = new Handler(((HandlerThread) this.d).getLooper());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void c(boolean z8, p7.v vVar, l9.l lVar, boolean z9) {
        o4.b.i(lVar, "source");
        int iMin = Math.min(vVar.c, ((p7.v) vVar.f4700g.e).c);
        l9.l lVar2 = vVar.f4697a;
        boolean z10 = lVar2.c > 0;
        int i9 = (int) lVar.c;
        if (z10 || iMin < i9) {
            if (!z10 && iMin > 0) {
                vVar.b(iMin, false, lVar);
            }
            lVar2.write(lVar, (int) lVar.c);
            vVar.f4699f = z8 | vVar.f4699f;
        } else {
            vVar.b(i9, z8, lVar);
        }
        if (z9) {
            try {
                ((p7.d) this.d).flush();
            } catch (IOException e) {
                n0.b.w(e);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void d(Runnable runnable) {
        synchronized (this.e) {
            b();
            ((Handler) this.c).post(runnable);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void e(p7.v vVar, int i9) {
        if (vVar == null) {
            ((p7.v) this.e).a(i9);
            f();
            return;
        }
        vVar.a(i9);
        c9.i iVar = new c9.i();
        vVar.c(Math.min(vVar.c, ((p7.v) vVar.f4700g.e).c), iVar);
        if (iVar.b > 0) {
            try {
                ((p7.d) this.d).flush();
            } catch (IOException e) {
                n0.b.w(e);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /*  JADX ERROR: JadxOverflowException in pass: LoopRegionVisitor
        jadx.core.utils.exceptions.JadxOverflowException: LoopRegionVisitor.assignOnlyInLoop endless recursion
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public void f() {
        /*
            r13 = this;
            java.lang.Object r0 = r13.c
            p7.n r0 = (p7.n) r0
            p7.v[] r1 = r0.i()
            java.util.List r2 = java.util.Arrays.asList(r1)
            java.util.Collections.shuffle(r2)
            java.lang.Object r2 = r13.e
            p7.v r2 = (p7.v) r2
            int r2 = r2.c
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
            int r9 = r8.c
            l9.l r10 = r8.f4697a
            long r11 = r10.c
            int r11 = (int) r11
            int r9 = java.lang.Math.min(r9, r11)
            int r9 = java.lang.Math.max(r4, r9)
            int r11 = r8.d
            int r9 = r9 - r11
            int r9 = java.lang.Math.min(r9, r5)
            int r9 = java.lang.Math.min(r2, r9)
            if (r9 <= 0) goto L4e
            int r11 = r8.d
            int r11 = r11 + r9
            r8.d = r11
            int r2 = r2 - r9
        L4e:
            int r9 = r8.c
            long r10 = r10.c
            int r10 = (int) r10
            int r9 = java.lang.Math.min(r9, r10)
            int r9 = java.lang.Math.max(r4, r9)
            int r10 = r8.d
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
            p7.v[] r0 = r0.i()
            int r2 = r0.length
            r3 = r4
        L75:
            if (r3 >= r2) goto L83
            r5 = r0[r3]
            int r6 = r5.d
            r5.c(r6, r1)
            r5.d = r4
            int r3 = r3 + 1
            goto L75
        L83:
            int r0 = r1.b
            if (r0 <= 0) goto L93
            java.lang.Object r0 = r13.d     // Catch: java.io.IOException -> L8f
            p7.d r0 = (p7.d) r0     // Catch: java.io.IOException -> L8f
            r0.flush()     // Catch: java.io.IOException -> L8f
            return
        L8f:
            r0 = move-exception
            n0.b.w(r0)
        L93:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: b7.p.f():void");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        switch (this.f384a) {
            case 4:
                int i9 = this.f385b;
                l.d[] dVarArr = (l.d[]) this.d;
                l.d dVar = dVarArr[0];
                if (dVar == null) {
                    dVar = dVarArr[i9 + 1];
                }
                Formatter formatter = new Formatter();
                for (int i10 = 0; i10 < ((s6.a[]) dVar.d).length; i10++) {
                    try {
                        formatter.format("CW %3d:", Integer.valueOf(i10));
                        for (int i11 = 0; i11 < i9 + 2; i11++) {
                            l.d dVar2 = dVarArr[i11];
                            if (dVar2 == null) {
                                formatter.format("    |   ", new Object[0]);
                            } else {
                                s6.a aVar = ((s6.a[]) dVar2.d)[i10];
                                if (aVar == null) {
                                    formatter.format("    |   ", new Object[0]);
                                } else {
                                    formatter.format(" %3d|%3d", Integer.valueOf(aVar.f5302f), Integer.valueOf(aVar.e));
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

    public p() {
        this.f384a = 2;
        this.f385b = 0;
        this.e = new Object();
    }

    public p(s6.a aVar, s6.c cVar) {
        this.f384a = 4;
        this.c = aVar;
        int i9 = aVar.f5301b;
        this.f385b = i9;
        this.e = cVar;
        this.d = new l.d[i9 + 2];
    }

    public /* synthetic */ p(int i9) {
        this.f384a = i9;
    }
}
