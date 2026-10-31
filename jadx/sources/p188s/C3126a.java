package p188s;

import android.graphics.ImageDecoder;
import android.os.Build;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import p025c0.AbstractC0933b;
import p077h.C1646h;
import p077h.InterfaceC1648j;
import p097j.InterfaceC1889d0;
import p108k.C2019g;
import p120l.C2187d;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: s.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3126a implements InterfaceC1648j {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f8941a;

    /* JADX INFO: renamed from: b */
    public final C2187d f8942b;

    public /* synthetic */ C3126a(C2187d c2187d, int i10) {
        this.f8941a = i10;
        this.f8942b = c2187d;
    }

    @Override // p077h.InterfaceC1648j
    /* JADX INFO: renamed from: a */
    public final InterfaceC1889d0 mo2730a(Object obj, int i10, int i11, C1646h c1646h) {
        switch (this.f8941a) {
            case 0:
                return C2187d.m3459m(ImageDecoder.createSource((ByteBuffer) obj), i10, i11, c1646h);
            default:
                return C2187d.m3459m(ImageDecoder.createSource(AbstractC0933b.m1066b((InputStream) obj)), i10, i11, c1646h);
        }
    }

    @Override // p077h.InterfaceC1648j
    /* JADX INFO: renamed from: b */
    public final boolean mo2731b(Object obj, C1646h c1646h) throws IOException {
        switch (this.f8941a) {
            case 0:
                ImageHeaderParser$ImageType imageHeaderParser$ImageTypeM4056w = AbstractC2587b.m4056w((ArrayList) this.f8942b.f5705c, (ByteBuffer) obj);
                return imageHeaderParser$ImageTypeM4056w == ImageHeaderParser$ImageType.ANIMATED_WEBP || (Build.VERSION.SDK_INT >= 31 && imageHeaderParser$ImageTypeM4056w == ImageHeaderParser$ImageType.ANIMATED_AVIF);
            default:
                C2187d c2187d = this.f8942b;
                ImageHeaderParser$ImageType imageHeaderParser$ImageTypeM4055v = AbstractC2587b.m4055v((ArrayList) c2187d.f5705c, (InputStream) obj, (C2019g) c2187d.f5706d);
                return imageHeaderParser$ImageTypeM4055v == ImageHeaderParser$ImageType.ANIMATED_WEBP || (Build.VERSION.SDK_INT >= 31 && imageHeaderParser$ImageTypeM4055v == ImageHeaderParser$ImageType.ANIMATED_AVIF);
        }
    }
}
