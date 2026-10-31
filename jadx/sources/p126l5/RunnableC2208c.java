package p126l5;

import android.text.TextUtils;
import java.io.IOException;
import java.util.Iterator;
import p120l.C2187d;
import p136m5.C2399b;
import p155o4.C2591f;

/* JADX INFO: renamed from: l5.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC2208c implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f5801b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C2209d f5802c;

    public /* synthetic */ RunnableC2208c(C2209d c2209d, int i10) {
        this.f5801b = i10;
        this.f5802c = c2209d;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C2399b c2399bM3469J;
        C2399b c2399bM3543f;
        switch (this.f5801b) {
            case 0:
                this.f5802c.m3538a();
                return;
            case 1:
                C2209d c2209d = this.f5802c;
                Object obj = C2209d.f5803m;
                synchronized (obj) {
                    try {
                        C2591f c2591f = c2209d.f5804a;
                        c2591f.m4064a();
                        C2187d c2187dM3458a = C2187d.m3458a(c2591f.f7208a);
                        try {
                            c2399bM3469J = c2209d.f5806c.m3469J();
                            if (c2187dM3458a != null) {
                                c2187dM3458a.m3471L();
                            }
                        } catch (Throwable th) {
                            if (c2187dM3458a != null) {
                                c2187dM3458a.m3471L();
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                try {
                    int i10 = c2399bM3469J.f6492b;
                    if (i10 == 5) {
                        c2399bM3543f = c2209d.m3543f(c2399bM3469J);
                    } else {
                        if (i10 == 3) {
                            c2399bM3543f = c2209d.m3543f(c2399bM3469J);
                        } else if (!c2209d.f5807d.m3549a(c2399bM3469J)) {
                            return;
                        } else {
                            c2399bM3543f = c2209d.m3539b(c2399bM3469J);
                        }
                    }
                    synchronized (obj) {
                        try {
                            C2591f c2591f2 = c2209d.f5804a;
                            c2591f2.m4064a();
                            C2187d c2187dM3458a2 = C2187d.m3458a(c2591f2.f7208a);
                            try {
                                c2209d.f5806c.m3496y(c2399bM3543f);
                                if (c2187dM3458a2 != null) {
                                    c2187dM3458a2.m3471L();
                                }
                            } catch (Throwable th3) {
                                if (c2187dM3458a2 != null) {
                                    c2187dM3458a2.m3471L();
                                }
                                throw th3;
                            }
                        } catch (Throwable th4) {
                            throw th4;
                        }
                    }
                    synchronized (c2209d) {
                        try {
                            if (c2209d.f5814k.size() != 0 && !TextUtils.equals(c2399bM3469J.f6491a, c2399bM3543f.f6491a)) {
                                Iterator it = c2209d.f5814k.iterator();
                                if (it.hasNext()) {
                                    if (it.next() != null) {
                                        throw new ClassCastException();
                                    }
                                    throw null;
                                }
                            }
                        } catch (Throwable th5) {
                            throw th5;
                        }
                    }
                    if (c2399bM3543f.f6492b == 4) {
                        String str = c2399bM3543f.f6491a;
                        synchronized (c2209d) {
                            c2209d.f5813j = str;
                        }
                    }
                    int i11 = c2399bM3543f.f6492b;
                    if (i11 == 5) {
                        c2209d.m3544g(new C2211f());
                        return;
                    } else if (i11 == 2 || i11 == 1) {
                        c2209d.m3544g(new IOException("Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."));
                        return;
                    } else {
                        c2209d.m3545h(c2399bM3543f);
                        return;
                    }
                } catch (C2211f e) {
                    c2209d.m3544g(e);
                    return;
                }
            default:
                this.f5802c.m3538a();
                return;
        }
    }
}
