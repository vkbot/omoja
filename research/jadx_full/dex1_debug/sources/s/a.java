package s;

import android.os.Build$VERSION;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import h.h;
import h.j;
import j.d0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import k.g;
import l.d;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5036a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final d f5037b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(d dVar, int i9) {
        this.f5036a = i9;
        this.f5037b = dVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.j
    public final d0 a(Object obj, int i9, int i10, h hVar) {
        switch (this.f5036a) {
            case 0:
                return d.m(q.c.e((ByteBuffer) obj), i9, i10, hVar);
            default:
                return d.m(q.c.e(c0.b.b((InputStream) obj)), i9, i10, hVar);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.j
    public final boolean b(Object obj, h hVar) throws IOException {
        switch (this.f5036a) {
            case 0:
                ImageHeaderParser$ImageType imageHeaderParser$ImageTypeW = o4.b.w((ArrayList) this.f5037b.c, (ByteBuffer) obj);
                return imageHeaderParser$ImageTypeW == ImageHeaderParser$ImageType.ANIMATED_WEBP || (Build$VERSION.SDK_INT >= 31 && imageHeaderParser$ImageTypeW == ImageHeaderParser$ImageType.ANIMATED_AVIF);
            default:
                d dVar = this.f5037b;
                ImageHeaderParser$ImageType imageHeaderParser$ImageTypeV = o4.b.v((ArrayList) dVar.c, (InputStream) obj, (g) dVar.d);
                return imageHeaderParser$ImageTypeV == ImageHeaderParser$ImageType.ANIMATED_WEBP || (Build$VERSION.SDK_INT >= 31 && imageHeaderParser$ImageTypeV == ImageHeaderParser$ImageType.ANIMATED_AVIF);
        }
    }
}
