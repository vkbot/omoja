package p;

import android.graphics.ImageDecoder;
import android.graphics.ImageDecoder$ImageInfo;
import android.graphics.ImageDecoder$OnHeaderDecodedListener;
import android.graphics.ImageDecoder$Source;
import android.os.Build$VERSION;
import android.util.Log;
import android.util.Size;
import h.g;
import h.h;
import h.i;
import q.o;
import q.q;
import q.w;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b implements ImageDecoder$OnHeaderDecodedListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w f4536a = w.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f4537b;
    public final int c;
    public final h.a d;
    public final o e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f4538f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final i f4539g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(int i9, int i10, h hVar) {
        this.f4537b = i9;
        this.c = i10;
        this.d = (h.a) hVar.c(q.f4732f);
        this.e = (o) hVar.c(o.f4729g);
        g gVar = q.f4735i;
        this.f4538f = hVar.c(gVar) != null && ((Boolean) hVar.c(gVar)).booleanValue();
        this.f4539g = (i) hVar.c(q.f4733g);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder$ImageInfo imageDecoder$ImageInfo, ImageDecoder$Source imageDecoder$Source) {
        if (this.f4536a.c(this.f4537b, this.c, this.f4538f, false)) {
            androidx.core.view.accessibility.a.l(imageDecoder);
        } else {
            androidx.core.view.accessibility.a.y(imageDecoder);
        }
        if (this.d == h.a.c) {
            androidx.core.view.accessibility.a.C(imageDecoder);
        }
        androidx.core.view.accessibility.a.o(imageDecoder, new a());
        Size sizeG = androidx.core.view.accessibility.a.g(imageDecoder$ImageInfo);
        int width = this.f4537b;
        if (width == Integer.MIN_VALUE) {
            width = sizeG.getWidth();
        }
        int height = this.c;
        if (height == Integer.MIN_VALUE) {
            height = sizeG.getHeight();
        }
        float fB = this.e.b(sizeG.getWidth(), sizeG.getHeight(), width, height);
        int iRound = Math.round(sizeG.getWidth() * fB);
        int iRound2 = Math.round(sizeG.getHeight() * fB);
        if (Log.isLoggable("ImageDecoder", 2)) {
            Log.v("ImageDecoder", "Resizing from [" + sizeG.getWidth() + "x" + sizeG.getHeight() + "] to [" + iRound + "x" + iRound2 + "] scaleFactor: " + fB);
        }
        androidx.core.view.accessibility.a.m(imageDecoder, iRound, iRound2);
        i iVar = this.f4539g;
        if (iVar != null) {
            int i9 = Build$VERSION.SDK_INT;
            if (i9 >= 28) {
                androidx.core.view.accessibility.a.n(imageDecoder, androidx.core.graphics.a.i((iVar == i.f2413b && androidx.core.view.accessibility.a.c(imageDecoder$ImageInfo) != null && org.apache.commons.net.util.a.x(androidx.core.view.accessibility.a.c(imageDecoder$ImageInfo))) ? org.apache.commons.net.util.a.i() : ai.onnxruntime.c.o()));
            } else if (i9 >= 26) {
                ai.onnxruntime.c.o();
                androidx.core.view.accessibility.a.n(imageDecoder, ai.onnxruntime.c.p());
            }
        }
    }
}
