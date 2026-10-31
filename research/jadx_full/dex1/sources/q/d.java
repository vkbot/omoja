package q;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder$Source;
import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d implements h.j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4710a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final k.b f4711b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d() {
        this.f4710a = 0;
        this.f4711b = new c5.e(13);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.j
    public final j.d0 a(Object obj, int i9, int i10, h.h hVar) {
        switch (this.f4710a) {
            case 0:
                return c(c.d(obj), i9, i10, hVar);
            default:
                return e.c(((g.d) obj).b(), this.f4711b);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.j
    public final /* bridge */ /* synthetic */ boolean b(Object obj, h.h hVar) {
        switch (this.f4710a) {
            case 0:
                c.k(obj);
                break;
            default:
                break;
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e c(ImageDecoder$Source imageDecoder$Source, int i9, int i10, h.h hVar) {
        Bitmap bitmapC = c.c(imageDecoder$Source, new p.b(i9, i10, hVar));
        if (Log.isLoggable("BitmapImageDecoder", 2)) {
            Log.v("BitmapImageDecoder", "Decoded [" + bitmapC.getWidth() + "x" + bitmapC.getHeight() + "] for [" + i9 + "x" + i10 + "]");
        }
        return new e(bitmapC, (c5.e) this.f4711b);
    }

    public d(k.b bVar) {
        this.f4710a = 1;
        this.f4711b = bVar;
    }
}
