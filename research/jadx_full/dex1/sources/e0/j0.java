package e0;

import android.content.Intent;
import android.view.WindowManager;
import com.example.navistart.LounchB;
import com.example.navistart.ModernMainActivity;
import kotlin.io.encoding.Base64;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class j0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1868b;
    public final /* synthetic */ LounchB c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ j0(LounchB lounchB, int i9) {
        this.f1868b = i9;
        this.c = lounchB;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        int i9 = this.f1868b;
        LounchB lounchB = this.c;
        switch (i9) {
            case 0:
                lounchB.c.d(lounchB);
                break;
            default:
                WindowManager windowManager = LounchB.f684g;
                StringBuilder sb = new StringBuilder();
                u0.a aVarO = h0.b.o();
                byte[] bArr = m.f1896j;
                String[] strArr = p3.f1924a;
                com.google.protobuf.q.s(bArr, aVarO, "", sb);
                com.google.protobuf.q.r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
                String strG = com.google.protobuf.q.g(sb, x1.f1989q);
                u0.a aVarO2 = h0.b.o();
                byte[] bArr2 = m.f1892f;
                if (!(com.google.protobuf.q.w(bArr2, aVarO2, "", strG) ? Boolean.valueOf(com.google.protobuf.q.d(Long.MAX_VALUE, h0.b.a().j()) < Long.parseLong(new String(com.google.protobuf.q.x(new byte[]{-6}, new byte[]{-54, Base64.padSymbol, 91, -11, -9, -54, 43, -84}, h0.b.o(), com.google.protobuf.q.h(m.f1893g, h0.b.o(), new String(bArr2)), 0)))) : Boolean.FALSE).booleanValue()) {
                    y5.k.u(lounchB, new Intent(lounchB, (Class<?>) ModernMainActivity.class).addFlags(268435456), null);
                } else {
                    h0.b.a();
                    h0.b.f().k(m.h(new byte[]{-101, 74, -121, 113, 13, 26, -27, -85, -92, 64, -122, 64, 0, 23, -48}, new byte[]{-41, 37, -14, 31, 110, 114, -89, -12}));
                }
                break;
        }
    }
}
