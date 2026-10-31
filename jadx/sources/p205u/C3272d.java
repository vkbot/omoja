package p205u;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import p025c0.AbstractC0947p;
import p099j1.C1929i;
import p244y.C3621f;
import p244y.InterfaceC3618c;
import p254z.InterfaceC3690d;

/* JADX INFO: renamed from: u.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3272d implements InterfaceC3690d {

    /* JADX INFO: renamed from: b */
    public final int f9582b;

    /* JADX INFO: renamed from: c */
    public final int f9583c;

    /* JADX INFO: renamed from: d */
    public InterfaceC3618c f9584d;

    /* JADX INFO: renamed from: e */
    public final Handler f9585e;

    /* JADX INFO: renamed from: f */
    public final int f9586f;

    /* JADX INFO: renamed from: g */
    public final long f9587g;

    /* JADX INFO: renamed from: h */
    public Bitmap f9588h;

    public C3272d(Handler handler, int i10, long j10) {
        if (!AbstractC0947p.m1092i(Integer.MIN_VALUE, Integer.MIN_VALUE)) {
            C1929i.m3029k("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: -2147483648 and height: -2147483648");
            throw null;
        }
        this.f9582b = Integer.MIN_VALUE;
        this.f9583c = Integer.MIN_VALUE;
        this.f9585e = handler;
        this.f9586f = i10;
        this.f9587g = j10;
    }

    @Override // p254z.InterfaceC3690d
    /* JADX INFO: renamed from: a */
    public final void mo1369a(C3621f c3621f) throws Throwable {
        c3621f.m5795m(this.f9582b, this.f9583c);
    }

    @Override // p254z.InterfaceC3690d
    /* JADX INFO: renamed from: b */
    public final void mo1370b(Object obj) {
        this.f9588h = (Bitmap) obj;
        Handler handler = this.f9585e;
        handler.sendMessageAtTime(handler.obtainMessage(1, this), this.f9587g);
    }

    @Override // p254z.InterfaceC3690d
    /* JADX INFO: renamed from: h */
    public final void mo1374h(InterfaceC3618c interfaceC3618c) {
        this.f9584d = interfaceC3618c;
    }

    @Override // p254z.InterfaceC3690d
    /* JADX INFO: renamed from: i */
    public final InterfaceC3618c mo1375i() {
        return this.f9584d;
    }

    @Override // p254z.InterfaceC3690d
    /* JADX INFO: renamed from: j */
    public final void mo1376j(Drawable drawable) {
        this.f9588h = null;
    }

    @Override // com.bumptech.glide.manager.InterfaceC1063i
    /* JADX INFO: renamed from: c */
    public final void mo1337c() {
    }

    @Override // com.bumptech.glide.manager.InterfaceC1063i
    /* JADX INFO: renamed from: e */
    public final void mo1338e() {
    }

    @Override // com.bumptech.glide.manager.InterfaceC1063i
    public final void onStart() {
    }

    @Override // p254z.InterfaceC3690d
    /* JADX INFO: renamed from: d */
    public final void mo1371d(Drawable drawable) {
    }

    @Override // p254z.InterfaceC3690d
    /* JADX INFO: renamed from: f */
    public final void mo1372f(C3621f c3621f) {
    }

    @Override // p254z.InterfaceC3690d
    /* JADX INFO: renamed from: g */
    public final void mo1373g(Drawable drawable) {
    }
}
