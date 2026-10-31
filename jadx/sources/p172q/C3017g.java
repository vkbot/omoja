package p172q;

import android.os.Build;
import android.os.ParcelFileDescriptor;
import java.nio.ByteBuffer;
import p006a5.C0023h;
import p077h.C1646h;
import p077h.InterfaceC1648j;
import p097j.InterfaceC1889d0;

/* JADX INFO: renamed from: q.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3017g implements InterfaceC1648j {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f8471a;

    /* JADX INFO: renamed from: b */
    public final C3027q f8472b;

    public /* synthetic */ C3017g(C3027q c3027q, int i10) {
        this.f8471a = i10;
        this.f8472b = c3027q;
    }

    @Override // p077h.InterfaceC1648j
    /* JADX INFO: renamed from: a */
    public final InterfaceC1889d0 mo2730a(Object obj, int i10, int i11, C1646h c1646h) {
        switch (this.f8471a) {
            case 0:
                C3027q c3027q = this.f8472b;
                return c3027q.m4849a(new C0023h((ByteBuffer) obj, c3027q.f8498d, c3027q.f8497c, 21), i10, i11, c1646h, C3027q.f8493j);
            default:
                C3027q c3027q2 = this.f8472b;
                return c3027q2.m4849a(new C0023h((ParcelFileDescriptor) obj, c3027q2.f8498d, c3027q2.f8497c), i10, i11, c1646h, C3027q.f8493j);
        }
    }

    @Override // p077h.InterfaceC1648j
    /* JADX INFO: renamed from: b */
    public final boolean mo2731b(Object obj, C1646h c1646h) {
        switch (this.f8471a) {
            case 0:
                return true;
            default:
                ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) obj;
                String str = Build.MANUFACTURER;
                return (!("HUAWEI".equalsIgnoreCase(str) || "HONOR".equalsIgnoreCase(str)) || parcelFileDescriptor.getStatSize() <= 536870912) && !"robolectric".equals(Build.FINGERPRINT);
        }
    }
}
