package p097j;

import android.graphics.Bitmap;
import java.io.ByteArrayOutputStream;
import p031c6.C0995a;
import p077h.C1646h;
import p172q.C3006a0;
import p215v.InterfaceC3311a;

/* JADX INFO: renamed from: j.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1897i implements InterfaceC3311a {

    /* JADX INFO: renamed from: b */
    public int f4929b;

    /* JADX INFO: renamed from: c */
    public Object f4930c;

    public C1897i(int i10) {
        switch (i10) {
            case 5:
                this.f4930c = Bitmap.CompressFormat.JPEG;
                this.f4929b = 100;
                break;
            default:
                this.f4930c = new int[10];
                break;
        }
    }

    @Override // p215v.InterfaceC3311a
    /* JADX INFO: renamed from: a */
    public InterfaceC1889d0 mo67a(InterfaceC1889d0 interfaceC1889d0, C1646h c1646h) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ((Bitmap) interfaceC1889d0.get()).compress((Bitmap.CompressFormat) this.f4930c, this.f4929b, byteArrayOutputStream);
        interfaceC1889d0.recycle();
        return new C3006a0(byteArrayOutputStream.toByteArray());
    }

    /* JADX INFO: renamed from: b */
    public boolean m2943b(int i10) {
        return ((1 << i10) & this.f4929b) != 0;
    }

    /* JADX INFO: renamed from: c */
    public void m2944c(int i10, int i11) {
        int[] iArr = (int[]) this.f4930c;
        if (i10 >= iArr.length) {
            return;
        }
        this.f4929b = (1 << i10) | this.f4929b;
        iArr[i10] = i11;
    }

    public /* synthetic */ C1897i(Comparable comparable, int i10) {
        this.f4930c = comparable;
        this.f4929b = i10;
    }

    public C1897i(int i10, C0995a c0995a) {
        this.f4929b = i10;
        this.f4930c = new C0995a[]{c0995a};
    }

    public C1897i(int i10, C0995a... c0995aArr) {
        this.f4929b = i10;
        this.f4930c = c0995aArr;
    }
}
