package p172q;

import android.graphics.Bitmap;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
import java.io.File;
import p025c0.AbstractC0938g;
import p025c0.AbstractC0947p;
import p097j.InterfaceC1889d0;

/* JADX INFO: renamed from: q.a0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3006a0 implements InterfaceC1889d0 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8452b;

    /* JADX INFO: renamed from: c */
    public final Object f8453c;

    public C3006a0(byte[] bArr) {
        this.f8452b = 1;
        AbstractC0938g.m1072c(bArr, "Argument must not be null");
        this.f8453c = bArr;
    }

    @Override // p097j.InterfaceC1889d0
    /* JADX INFO: renamed from: b */
    public final int mo2932b() {
        switch (this.f8452b) {
            case 0:
                return AbstractC0947p.m1086c((Bitmap) this.f8453c);
            case 1:
                return ((byte[]) this.f8453c).length;
            case 2:
                return AbstractC0947p.m1087d(Bitmap.Config.ARGB_8888) * ((AnimatedImageDrawable) this.f8453c).getIntrinsicHeight() * ((AnimatedImageDrawable) this.f8453c).getIntrinsicWidth() * 2;
            default:
                return 1;
        }
    }

    @Override // p097j.InterfaceC1889d0
    /* JADX INFO: renamed from: d */
    public final Class mo2933d() {
        switch (this.f8452b) {
            case 0:
                return Bitmap.class;
            case 1:
                return byte[].class;
            case 2:
                return Drawable.class;
            default:
                return ((File) this.f8453c).getClass();
        }
    }

    @Override // p097j.InterfaceC1889d0
    public final Object get() {
        switch (this.f8452b) {
            case 0:
                return (Bitmap) this.f8453c;
            case 1:
                return (byte[]) this.f8453c;
            case 2:
                return (AnimatedImageDrawable) this.f8453c;
            default:
                return (File) this.f8453c;
        }
    }

    @Override // p097j.InterfaceC1889d0
    public final void recycle() {
        switch (this.f8452b) {
            case 2:
                ((AnimatedImageDrawable) this.f8453c).stop();
                ((AnimatedImageDrawable) this.f8453c).clearAnimationCallbacks();
                break;
        }
    }

    public /* synthetic */ C3006a0(int i10, Object obj) {
        this.f8452b = i10;
        this.f8453c = obj;
    }

    public C3006a0(File file) {
        this.f8452b = 3;
        AbstractC0938g.m1072c(file, "Argument must not be null");
        this.f8453c = file;
    }

    /* JADX INFO: renamed from: a */
    private final void m4816a() {
    }

    /* JADX INFO: renamed from: c */
    private final void m4817c() {
    }

    /* JADX INFO: renamed from: e */
    private final void m4818e() {
    }
}
