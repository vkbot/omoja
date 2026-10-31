package p172q;

import android.graphics.ImageDecoder;
import java.io.InputStream;
import java.nio.ByteBuffer;
import p025c0.AbstractC0933b;
import p077h.C1646h;
import p077h.InterfaceC1648j;
import p097j.InterfaceC1889d0;

/* JADX INFO: renamed from: q.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3018h implements InterfaceC1648j {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f8473a;

    /* JADX INFO: renamed from: b */
    public final C3011d f8474b;

    public C3018h(int i10) {
        this.f8473a = i10;
        switch (i10) {
            case 1:
                this.f8474b = new C3011d();
                break;
            default:
                this.f8474b = new C3011d();
                break;
        }
    }

    @Override // p077h.InterfaceC1648j
    /* JADX INFO: renamed from: a */
    public final InterfaceC1889d0 mo2730a(Object obj, int i10, int i11, C1646h c1646h) {
        switch (this.f8473a) {
            case 0:
                return this.f8474b.m4836c(ImageDecoder.createSource((ByteBuffer) obj), i10, i11, c1646h);
            default:
                return this.f8474b.m4836c(ImageDecoder.createSource(AbstractC0933b.m1066b((InputStream) obj)), i10, i11, c1646h);
        }
    }

    @Override // p077h.InterfaceC1648j
    /* JADX INFO: renamed from: b */
    public final /* bridge */ /* synthetic */ boolean mo2731b(Object obj, C1646h c1646h) {
        switch (this.f8473a) {
            case 0:
                break;
            default:
                break;
        }
        return true;
    }
}
