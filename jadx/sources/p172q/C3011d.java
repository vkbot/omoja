package p172q;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.util.Log;
import java.io.IOException;
import p030c5.C0990e;
import p066g.C1598d;
import p077h.C1646h;
import p077h.InterfaceC1648j;
import p097j.InterfaceC1889d0;
import p108k.InterfaceC2014b;
import p163p.C2946b;

/* JADX INFO: renamed from: q.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3011d implements InterfaceC1648j {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f8458a;

    /* JADX INFO: renamed from: b */
    public final InterfaceC2014b f8459b;

    public C3011d() {
        this.f8458a = 0;
        this.f8459b = new C0990e(13);
    }

    @Override // p077h.InterfaceC1648j
    /* JADX INFO: renamed from: a */
    public final InterfaceC1889d0 mo2730a(Object obj, int i10, int i11, C1646h c1646h) {
        switch (this.f8458a) {
            case 0:
                return m4836c(AbstractC3009c.m4822d(obj), i10, i11, c1646h);
            default:
                return C3013e.m4837c(((C1598d) obj).m2683b(), this.f8459b);
        }
    }

    @Override // p077h.InterfaceC1648j
    /* JADX INFO: renamed from: b */
    public final /* bridge */ /* synthetic */ boolean mo2731b(Object obj, C1646h c1646h) {
        switch (this.f8458a) {
            case 0:
                AbstractC3009c.m4829k(obj);
                break;
            default:
                break;
        }
        return true;
    }

    /* JADX INFO: renamed from: c */
    public C3013e m4836c(ImageDecoder.Source source, int i10, int i11, C1646h c1646h) throws IOException {
        Bitmap bitmapDecodeBitmap = ImageDecoder.decodeBitmap(source, new C2946b(i10, i11, c1646h));
        if (Log.isLoggable("BitmapImageDecoder", 2)) {
            Log.v("BitmapImageDecoder", "Decoded [" + bitmapDecodeBitmap.getWidth() + "x" + bitmapDecodeBitmap.getHeight() + "] for [" + i10 + "x" + i11 + "]");
        }
        return new C3013e(bitmapDecodeBitmap, (C0990e) this.f8459b);
    }

    public C3011d(InterfaceC2014b interfaceC2014b) {
        this.f8458a = 1;
        this.f8459b = interfaceC2014b;
    }
}
