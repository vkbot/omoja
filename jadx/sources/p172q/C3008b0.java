package p172q;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import java.io.File;
import p077h.C1646h;
import p077h.InterfaceC1648j;
import p097j.InterfaceC1889d0;
import p188s.C3127b;

/* JADX INFO: renamed from: q.b0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3008b0 implements InterfaceC1648j {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f8457a;

    public /* synthetic */ C3008b0(int i10) {
        this.f8457a = i10;
    }

    @Override // p077h.InterfaceC1648j
    /* JADX INFO: renamed from: a */
    public final InterfaceC1889d0 mo2730a(Object obj, int i10, int i11, C1646h c1646h) {
        switch (this.f8457a) {
            case 0:
                return new C3006a0(0, (Bitmap) obj);
            case 1:
                Drawable drawable = (Drawable) obj;
                if (drawable != null) {
                    return new C3127b(drawable, 0);
                }
                return null;
            default:
                return new C3006a0((File) obj);
        }
    }

    @Override // p077h.InterfaceC1648j
    /* JADX INFO: renamed from: b */
    public final /* bridge */ /* synthetic */ boolean mo2731b(Object obj, C1646h c1646h) {
        switch (this.f8457a) {
            case 0:
                break;
            case 1:
                break;
            default:
                break;
        }
        return true;
    }
}
