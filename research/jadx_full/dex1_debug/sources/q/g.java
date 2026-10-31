package q;

import android.os.Build;
import android.os.ParcelFileDescriptor;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class g implements h.j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4718a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final q f4719b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ g(q qVar, int i9) {
        this.f4718a = i9;
        this.f4719b = qVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.j
    public final j.d0 a(Object obj, int i9, int i10, h.h hVar) {
        switch (this.f4718a) {
            case 0:
                q qVar = this.f4719b;
                return qVar.a(new a5.h((ByteBuffer) obj, qVar.d, qVar.c, 21), i9, i10, hVar, q.f4736j);
            default:
                q qVar2 = this.f4719b;
                return qVar2.a(new a5.h((ParcelFileDescriptor) obj, qVar2.d, qVar2.c), i9, i10, hVar, q.f4736j);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.j
    public final boolean b(Object obj, h.h hVar) {
        switch (this.f4718a) {
            case 0:
                return true;
            default:
                ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) obj;
                String str = Build.MANUFACTURER;
                return (!("HUAWEI".equalsIgnoreCase(str) || "HONOR".equalsIgnoreCase(str)) || parcelFileDescriptor.getStatSize() <= 536870912) && !"robolectric".equals(Build.FINGERPRINT);
        }
    }
}
