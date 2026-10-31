package u;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat$AnimationCallback;
import b4.k;
import com.bumptech.glide.l;
import com.bumptech.glide.p;
import j.m;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final g.d f5436a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f5437b;
    public final ArrayList c;
    public final p d;
    public final k.b e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f5438f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f5439g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public l f5440h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public d f5441i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f5442j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public d f5443k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Bitmap f5444l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public d f5445m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f5446n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f5447o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f5448p;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public f(com.bumptech.glide.b bVar, g.d dVar, int i9, int i10, Bitmap bitmap) {
        k.b bVar2 = bVar.f549b;
        com.bumptech.glide.e eVar = bVar.d;
        Context baseContext = eVar.getBaseContext();
        c0.g.c(baseContext, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        p pVarB = com.bumptech.glide.b.a(baseContext).f550f.b(baseContext);
        Context baseContext2 = eVar.getBaseContext();
        c0.g.c(baseContext2, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        p pVarB2 = com.bumptech.glide.b.a(baseContext2).f550f.b(baseContext2);
        pVarB2.getClass();
        l lVarU = new l(pVarB2.f621b, pVarB2, Bitmap.class, pVarB2.c).u(p.f620l).u(((y.e) ((y.e) ((y.e) new y.e().d(m.f2817b)).s()).o()).i(i9, i10));
        this.c = new ArrayList();
        this.d = pVarB;
        Handler handler = new Handler(Looper.getMainLooper(), new k(3, this));
        this.e = bVar2;
        this.f5437b = handler;
        this.f5440h = lVarU;
        this.f5436a = dVar;
        c(p.c.f4540b, bitmap);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a() {
        int i9;
        int i10;
        if (!this.f5438f || this.f5439g) {
            return;
        }
        d dVar = this.f5445m;
        if (dVar != null) {
            this.f5445m = null;
            b(dVar);
            return;
        }
        this.f5439g = true;
        g.d dVar2 = this.f5436a;
        g.b bVar = dVar2.f2323l;
        int i11 = bVar.c;
        if (i11 <= 0 || (i10 = dVar2.f2322k) < 0) {
            i9 = 0;
        } else {
            i9 = (i10 < 0 || i10 >= i11) ? -1 : ((g.a) bVar.e.get(i10)).f2302i;
        }
        long jUptimeMillis = SystemClock.uptimeMillis() + ((long) i9);
        int i12 = (dVar2.f2322k + 1) % dVar2.f2323l.c;
        dVar2.f2322k = i12;
        this.f5443k = new d(this.f5437b, i12, jUptimeMillis);
        l lVarZ = this.f5440h.u((y.e) new y.e().n(new b0.b(Double.valueOf(Math.random())))).z(dVar2);
        lVarZ.y(this.f5443k, lVarZ);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(d dVar) {
        this.f5439g = false;
        boolean z8 = this.f5442j;
        Handler handler = this.f5437b;
        if (z8) {
            handler.obtainMessage(2, dVar).sendToTarget();
            return;
        }
        if (!this.f5438f) {
            this.f5445m = dVar;
            return;
        }
        if (dVar.f5435h != null) {
            Bitmap bitmap = this.f5444l;
            if (bitmap != null) {
                this.e.c(bitmap);
                this.f5444l = null;
            }
            d dVar2 = this.f5441i;
            this.f5441i = dVar;
            ArrayList arrayList = this.c;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                b bVar = (b) ((e) arrayList.get(size));
                Object callback = bVar.getCallback();
                while (callback instanceof Drawable) {
                    callback = ((Drawable) callback).getCallback();
                }
                if (callback == null) {
                    bVar.stop();
                    bVar.invalidateSelf();
                } else {
                    bVar.invalidateSelf();
                    f fVar = (f) bVar.f5423b.f4939b;
                    d dVar3 = fVar.f5441i;
                    if ((dVar3 != null ? dVar3.f5433f : -1) == fVar.f5436a.f2323l.c - 1) {
                        bVar.f5425g++;
                    }
                    int i9 = bVar.f5426h;
                    if (i9 != -1 && bVar.f5425g >= i9) {
                        ArrayList arrayList2 = bVar.f5430l;
                        if (arrayList2 != null) {
                            int size2 = arrayList2.size();
                            for (int i10 = 0; i10 < size2; i10++) {
                                ((Animatable2Compat$AnimationCallback) bVar.f5430l.get(i10)).onAnimationEnd(bVar);
                            }
                        }
                        bVar.stop();
                    }
                }
            }
            if (dVar2 != null) {
                handler.obtainMessage(2, dVar2).sendToTarget();
            }
        }
        a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c(h.l lVar, Bitmap bitmap) {
        c0.g.c(lVar, "Argument must not be null");
        c0.g.c(bitmap, "Argument must not be null");
        this.f5444l = bitmap;
        this.f5440h = this.f5440h.u(new y.e().p(lVar, true));
        this.f5446n = c0.p.c(bitmap);
        this.f5447o = bitmap.getWidth();
        this.f5448p = bitmap.getHeight();
    }
}
