package q;

import android.graphics.Bitmap;
import android.graphics.Bitmap$Config;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
import java.io.File;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a0 implements j.d0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4707b;
    public final Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a0(byte[] bArr) {
        this.f4707b = 1;
        c0.g.c(bArr, "Argument must not be null");
        this.c = bArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j.d0
    public final int b() {
        switch (this.f4707b) {
            case 0:
                return c0.p.c((Bitmap) this.c);
            case 1:
                return ((byte[]) this.c).length;
            case 2:
                return c0.p.d(Bitmap$Config.ARGB_8888) * c.m((AnimatedImageDrawable) this.c) * c.b((AnimatedImageDrawable) this.c) * 2;
            default:
                return 1;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j.d0
    public final Class d() {
        switch (this.f4707b) {
            case 0:
                return Bitmap.class;
            case 1:
                return byte[].class;
            case 2:
                return Drawable.class;
            default:
                return ((File) this.c).getClass();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j.d0
    public final Object get() {
        switch (this.f4707b) {
            case 0:
                return (Bitmap) this.c;
            case 1:
                return (byte[]) this.c;
            case 2:
                return (AnimatedImageDrawable) this.c;
            default:
                return (File) this.c;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j.d0
    public final void recycle() {
        switch (this.f4707b) {
            case 2:
                c.j((AnimatedImageDrawable) this.c);
                c.n((AnimatedImageDrawable) this.c);
                break;
        }
    }

    public /* synthetic */ a0(int i9, Object obj) {
        this.f4707b = i9;
        this.c = obj;
    }

    public a0(File file) {
        this.f4707b = 3;
        c0.g.c(file, "Argument must not be null");
        this.c = file;
    }

    private final void a() {
    }

    private final void c() {
    }

    private final void e() {
    }
}
