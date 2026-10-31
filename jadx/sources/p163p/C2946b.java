package p163p;

import android.graphics.ColorSpace;
import android.graphics.ImageDecoder;
import android.graphics.ImageDecoder$OnHeaderDecodedListener;
import android.os.Build;
import android.util.Log;
import android.util.Size;
import p077h.C1645g;
import p077h.C1646h;
import p077h.EnumC1639a;
import p077h.EnumC1647i;
import p172q.C3025o;
import p172q.C3027q;
import p172q.C3033w;

/* JADX INFO: renamed from: p.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2946b implements ImageDecoder$OnHeaderDecodedListener {

    /* JADX INFO: renamed from: a */
    public final C3033w f8174a = C3033w.m4852a();

    /* JADX INFO: renamed from: b */
    public final int f8175b;

    /* JADX INFO: renamed from: c */
    public final int f8176c;

    /* JADX INFO: renamed from: d */
    public final EnumC1639a f8177d;

    /* JADX INFO: renamed from: e */
    public final C3025o f8178e;

    /* JADX INFO: renamed from: f */
    public final boolean f8179f;

    /* JADX INFO: renamed from: g */
    public final EnumC1647i f8180g;

    public C2946b(int i10, int i11, C1646h c1646h) {
        this.f8175b = i10;
        this.f8176c = i11;
        this.f8177d = (EnumC1639a) c1646h.m2729c(C3027q.f8489f);
        this.f8178e = (C3025o) c1646h.m2729c(C3025o.f8486g);
        C1645g c1645g = C3027q.f8492i;
        this.f8179f = c1646h.m2729c(c1645g) != null && ((Boolean) c1646h.m2729c(c1645g)).booleanValue();
        this.f8180g = (EnumC1647i) c1646h.m2729c(C3027q.f8490g);
    }

    public final void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
        if (this.f8174a.m4854c(this.f8175b, this.f8176c, this.f8179f, false)) {
            imageDecoder.setAllocator(3);
        } else {
            imageDecoder.setAllocator(1);
        }
        if (this.f8177d == EnumC1639a.f4172c) {
            imageDecoder.setMemorySizePolicy(0);
        }
        imageDecoder.setOnPartialImageListener(new C2945a());
        Size size = imageInfo.getSize();
        int width = this.f8175b;
        if (width == Integer.MIN_VALUE) {
            width = size.getWidth();
        }
        int height = this.f8176c;
        if (height == Integer.MIN_VALUE) {
            height = size.getHeight();
        }
        float fM4845b = this.f8178e.m4845b(size.getWidth(), size.getHeight(), width, height);
        int iRound = Math.round(size.getWidth() * fM4845b);
        int iRound2 = Math.round(size.getHeight() * fM4845b);
        if (Log.isLoggable("ImageDecoder", 2)) {
            Log.v("ImageDecoder", "Resizing from [" + size.getWidth() + "x" + size.getHeight() + "] to [" + iRound + "x" + iRound2 + "] scaleFactor: " + fM4845b);
        }
        imageDecoder.setTargetSize(iRound, iRound2);
        EnumC1647i enumC1647i = this.f8180g;
        if (enumC1647i != null) {
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 28) {
                imageDecoder.setTargetColorSpace(ColorSpace.get((enumC1647i == EnumC1647i.f4183b && imageInfo.getColorSpace() != null && imageInfo.getColorSpace().isWideGamut()) ? ColorSpace.Named.DISPLAY_P3 : ColorSpace.Named.SRGB));
            } else if (i10 >= 26) {
                ColorSpace.Named unused = ColorSpace.Named.SRGB;
                imageDecoder.setTargetColorSpace(ColorSpace.get(ColorSpace.Named.SRGB));
            }
        }
    }
}
