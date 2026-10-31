package l5;

import android.text.TextUtils;
import java.io.IOException;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3291b;
    public final /* synthetic */ d c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ c(d dVar, int i9) {
        this.f3291b = i9;
        this.c = dVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        m5.b bVarJ;
        m5.b bVarF;
        switch (this.f3291b) {
            case 0:
                this.c.a();
                return;
            case 1:
                d dVar = this.c;
                Object obj = d.f3292m;
                synchronized (obj) {
                    try {
                        o4.f fVar = dVar.f3293a;
                        fVar.a();
                        l.d dVarA = l.d.a(fVar.f4088a);
                        try {
                            bVarJ = dVar.c.J();
                            if (dVarA != null) {
                                dVarA.L();
                            }
                        } catch (Throwable th) {
                            if (dVarA != null) {
                                dVarA.L();
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                try {
                    int i9 = bVarJ.f3671b;
                    if (i9 == 5) {
                        bVarF = dVar.f(bVarJ);
                    } else {
                        if (i9 == 3) {
                            bVarF = dVar.f(bVarJ);
                        } else if (!dVar.d.a(bVarJ)) {
                            return;
                        } else {
                            bVarF = dVar.b(bVarJ);
                        }
                    }
                    synchronized (obj) {
                        try {
                            o4.f fVar2 = dVar.f3293a;
                            fVar2.a();
                            l.d dVarA2 = l.d.a(fVar2.f4088a);
                            try {
                                dVar.c.y(bVarF);
                                if (dVarA2 != null) {
                                    dVarA2.L();
                                }
                            } catch (Throwable th3) {
                                if (dVarA2 != null) {
                                    dVarA2.L();
                                }
                                throw th3;
                            }
                        } catch (Throwable th4) {
                            throw th4;
                        }
                    }
                    synchronized (dVar) {
                        try {
                            if (dVar.f3300k.size() != 0 && !TextUtils.equals(bVarJ.f3670a, bVarF.f3670a)) {
                                Iterator it = dVar.f3300k.iterator();
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
                    if (bVarF.f3671b == 4) {
                        String str = bVarF.f3670a;
                        synchronized (dVar) {
                            dVar.f3299j = str;
                        }
                    }
                    int i10 = bVarF.f3671b;
                    if (i10 == 5) {
                        dVar.g(new f());
                        return;
                    } else if (i10 == 2 || i10 == 1) {
                        dVar.g(new IOException("Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."));
                        return;
                    } else {
                        dVar.h(bVarF);
                        return;
                    }
                } catch (f e) {
                    dVar.g(e);
                    return;
                }
            default:
                this.c.a();
                return;
        }
    }
}
