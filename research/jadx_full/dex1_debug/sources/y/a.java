package y;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.collection.SimpleArrayMap;
import c0.p;
import com.bumptech.glide.h;
import h.l;
import j.m;
import j1.i;
import java.util.Map;
import q.o;
import q.t;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class a implements Cloneable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6042b;
    public int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f6043f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f6048k;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f6052o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f6053p;
    public boolean r;
    public m c = m.d;
    public h d = h.d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f6044g = true;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f6045h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f6046i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public h.e f6047j = b0.a.f227b;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public h.h f6049l = new h.h();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public c0.c f6050m = new c0.c();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Class f6051n = Object.class;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f6054q = true;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean g(int i9, int i10) {
        return (i9 & i10) != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a a(a aVar) {
        if (this.f6053p) {
            return b().a(aVar);
        }
        int i9 = aVar.f6042b;
        if (g(aVar.f6042b, 1048576)) {
            this.r = aVar.r;
        }
        if (g(aVar.f6042b, 4)) {
            this.c = aVar.c;
        }
        if (g(aVar.f6042b, 8)) {
            this.d = aVar.d;
        }
        if (g(aVar.f6042b, 16)) {
            this.e = 0;
            this.f6042b &= -33;
        }
        if (g(aVar.f6042b, 32)) {
            this.e = aVar.e;
            this.f6042b &= -17;
        }
        if (g(aVar.f6042b, 64)) {
            this.f6043f = 0;
            this.f6042b &= -129;
        }
        if (g(aVar.f6042b, 128)) {
            this.f6043f = aVar.f6043f;
            this.f6042b &= -65;
        }
        if (g(aVar.f6042b, 256)) {
            this.f6044g = aVar.f6044g;
        }
        if (g(aVar.f6042b, 512)) {
            this.f6046i = aVar.f6046i;
            this.f6045h = aVar.f6045h;
        }
        if (g(aVar.f6042b, 1024)) {
            this.f6047j = aVar.f6047j;
        }
        if (g(aVar.f6042b, 4096)) {
            this.f6051n = aVar.f6051n;
        }
        if (g(aVar.f6042b, 8192)) {
            this.f6042b &= -16385;
        }
        if (g(aVar.f6042b, 16384)) {
            this.f6042b &= -8193;
        }
        if (g(aVar.f6042b, 131072)) {
            this.f6048k = aVar.f6048k;
        }
        if (g(aVar.f6042b, 2048)) {
            this.f6050m.putAll((Map) aVar.f6050m);
            this.f6054q = aVar.f6054q;
        }
        this.f6042b |= aVar.f6042b;
        this.f6049l.f2412b.putAll((SimpleArrayMap) aVar.f6049l.f2412b);
        l();
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a b() {
        try {
            a aVar = (a) super.clone();
            h.h hVar = new h.h();
            aVar.f6049l = hVar;
            hVar.f2412b.putAll((SimpleArrayMap) this.f6049l.f2412b);
            c0.c cVar = new c0.c();
            aVar.f6050m = cVar;
            cVar.putAll((Map) this.f6050m);
            aVar.f6052o = false;
            aVar.f6053p = false;
            return aVar;
        } catch (CloneNotSupportedException e) {
            n0.b.w(e);
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final a c(Class cls) {
        if (this.f6053p) {
            return b().c(cls);
        }
        this.f6051n = cls;
        this.f6042b |= 4096;
        l();
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* bridge */ /* synthetic */ Object clone() {
        return b();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final a d(m mVar) {
        if (this.f6053p) {
            return b().d(mVar);
        }
        this.c = mVar;
        this.f6042b |= 4;
        l();
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final a e(int i9) {
        if (this.f6053p) {
            return b().e(i9);
        }
        this.e = i9;
        this.f6042b = (this.f6042b | 32) & (-17);
        l();
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean equals(Object obj) {
        if (obj instanceof a) {
            return f((a) obj);
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean f(a aVar) {
        aVar.getClass();
        if (Float.compare(1.0f, 1.0f) != 0 || this.e != aVar.e) {
            return false;
        }
        char[] cArr = p.f411a;
        return this.f6043f == aVar.f6043f && this.f6044g == aVar.f6044g && this.f6045h == aVar.f6045h && this.f6046i == aVar.f6046i && this.f6048k == aVar.f6048k && this.c.equals(aVar.c) && this.d == aVar.d && this.f6049l.equals(aVar.f6049l) && this.f6050m.equals(aVar.f6050m) && this.f6051n.equals(aVar.f6051n) && this.f6047j.equals(aVar.f6047j);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final a h(o oVar, q.f fVar) {
        if (this.f6053p) {
            return b().h(oVar, fVar);
        }
        m(o.f4729g, oVar);
        return p(fVar, false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        char[] cArr = p.f411a;
        return p.h(p.h(p.h(p.h(p.h(p.h(p.h(p.g(0, p.g(0, p.g(1, p.g(this.f6048k ? 1 : 0, p.g(this.f6046i, p.g(this.f6045h, p.g(this.f6044g ? 1 : 0, p.h(p.g(0, p.h(p.g(this.f6043f, p.h(p.g(this.e, p.g(Float.floatToIntBits(1.0f), 17)), null)), null)), null)))))))), this.c), this.d), this.f6049l), this.f6050m), this.f6051n), this.f6047j), null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final a i(int i9, int i10) {
        if (this.f6053p) {
            return b().i(i9, i10);
        }
        this.f6046i = i9;
        this.f6045h = i10;
        this.f6042b |= 512;
        l();
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final a j(int i9) {
        if (this.f6053p) {
            return b().j(i9);
        }
        this.f6043f = i9;
        this.f6042b = (this.f6042b | 128) & (-65);
        l();
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final a k() {
        if (this.f6053p) {
            return b().k();
        }
        this.d = h.e;
        this.f6042b |= 8;
        l();
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void l() {
        if (this.f6052o) {
            i.l("You cannot modify locked T, consider clone()");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final a m(h.g gVar, Object obj) {
        if (this.f6053p) {
            return b().m(gVar, obj);
        }
        c0.g.b(gVar);
        this.f6049l.f2412b.put(gVar, obj);
        l();
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final a n(b0.b bVar) {
        if (this.f6053p) {
            return b().n(bVar);
        }
        this.f6047j = bVar;
        this.f6042b |= 1024;
        l();
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final a o() {
        if (this.f6053p) {
            return b().o();
        }
        this.f6044g = false;
        this.f6042b |= 256;
        l();
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final a p(l lVar, boolean z8) {
        if (this.f6053p) {
            return b().p(lVar, z8);
        }
        t tVar = new t(lVar, z8);
        q(Bitmap.class, lVar, z8);
        q(Drawable.class, tVar, z8);
        q(BitmapDrawable.class, tVar, z8);
        q(u.b.class, new u.c(lVar), z8);
        l();
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final a q(Class cls, l lVar, boolean z8) {
        if (this.f6053p) {
            return b().q(cls, lVar, z8);
        }
        c0.g.b(lVar);
        this.f6050m.put(cls, lVar);
        int i9 = this.f6042b;
        this.f6042b = 67584 | i9;
        this.f6054q = false;
        if (z8) {
            this.f6042b = i9 | 198656;
            this.f6048k = true;
        }
        l();
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final a r(q.i iVar) {
        o oVar = o.d;
        if (this.f6053p) {
            return b().r(iVar);
        }
        m(o.f4729g, oVar);
        return p(iVar, true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final a s() {
        if (this.f6053p) {
            return b().s();
        }
        this.r = true;
        this.f6042b |= 1048576;
        l();
        return this;
    }
}
