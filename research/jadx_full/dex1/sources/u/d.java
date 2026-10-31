package u;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import c0.p;
import j1.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d implements z.d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f5432b;
    public final int c;
    public y.c d;
    public final Handler e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f5433f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f5434g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Bitmap f5435h;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d(Handler handler, int i9, long j9) {
        if (!p.i(Integer.MIN_VALUE, Integer.MIN_VALUE)) {
            i.k("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: -2147483648 and height: -2147483648");
            throw null;
        }
        this.f5432b = Integer.MIN_VALUE;
        this.c = Integer.MIN_VALUE;
        this.e = handler;
        this.f5433f = i9;
        this.f5434g = j9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z.d
    public final void a(y.f fVar) throws Throwable {
        fVar.m(this.f5432b, this.c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z.d
    public final void b(Object obj) {
        this.f5435h = (Bitmap) obj;
        Handler handler = this.e;
        handler.sendMessageAtTime(handler.obtainMessage(1, this), this.f5434g);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z.d
    public final void h(y.c cVar) {
        this.d = cVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z.d
    public final y.c i() {
        return this.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z.d
    public final void j(Drawable drawable) {
        this.f5435h = null;
    }

    @Override // com.bumptech.glide.manager.i
    public final void c() {
    }

    @Override // com.bumptech.glide.manager.i
    public final void e() {
    }

    @Override // com.bumptech.glide.manager.i
    public final void onStart() {
    }

    @Override // z.d
    public final void d(Drawable drawable) {
    }

    @Override // z.d
    public final void f(y.f fVar) {
    }

    @Override // z.d
    public final void g(Drawable drawable) {
    }
}
