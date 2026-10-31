package p245y0;

import android.content.Intent;
import android.net.Uri;
import com.example.navistart.Transport.TransportService;
import com.google.protobuf.AbstractC1178q;
import java.util.List;
import java.util.Objects;
import kotlin.p118io.encoding.Base64;
import p026c1.AbstractC0950c;
import p026c1.C0949b;
import p026c1.EnumC0948a;
import p047e0.AbstractC1387m;
import p105j7.C1996a;
import p105j7.C1997b;
import p190s1.RunnableC3180x0;

/* JADX INFO: renamed from: y0.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C3623a implements InterfaceC3627e {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C3624b f10762a;

    public /* synthetic */ C3623a(C3624b c3624b) {
        this.f10762a = c3624b;
    }

    @Override // p245y0.InterfaceC3627e
    /* JADX INFO: renamed from: a */
    public void mo2385a(String str) {
        C3624b c3624b = this.f10762a;
        c3624b.f10764c.post(new RunnableC3180x0(15, c3624b, str));
    }

    /* JADX INFO: renamed from: b */
    public String m5796b(C1997b c1997b) {
        EnumC0948a enumC0948aM1094b;
        TransportService transportService = this.f10762a.f10763b;
        C1996a c1996a = c1997b.f5441d;
        List list = c1997b.f5442e;
        if (c1996a == null) {
            enumC0948aM1094b = AbstractC0950c.m1095c(transportService, c1997b.f5439b);
        } else {
            int size = list.size();
            C0949b[] c0949bArr = new C0949b[size];
            for (int i10 = 0; i10 < size; i10++) {
                C1996a c1996a2 = (C1996a) list.get(i10);
                c0949bArr[i10] = new C0949b(c1996a2.f5436a, c1996a2.f5437b);
            }
            C0949b c0949b = new C0949b(c1996a.f5436a, c1996a.f5437b);
            String str = AbstractC0950c.f819a;
            AbstractC1387m.m2421h(new byte[]{-3, -63}, new byte[]{-119, -82, 43, 30, 55, 63, -41, 0});
            AbstractC1387m.m2421h(new byte[]{-46, 92, -81}, new byte[]{-92, 53, -50, 103, 104, 100, 92, 99});
            Uri.Builder builderAuthority = new Uri.Builder().scheme(AbstractC1387m.m2421h(new byte[]{-91, -95, -37, 25, 103, 33, 125, 13, -86, -87}, new byte[]{-36, -64, -75, 125, 2, 89, 19, 108})).authority(AbstractC1387m.m2421h(new byte[]{-9, -35, -100, 20, 24, 56, -52, -103, -32, -36, -112, 39, 19, 9, -31, -101, -12, -40}, new byte[]{-107, -88, -11, 120, 124, 103, -66, -10}));
            builderAuthority.appendQueryParameter(AbstractC1387m.m2421h(new byte[]{49, 6, -87, 24, -66, -68, 89, -87, 52, 27, -81, 11, -66, -118, 88, -90}, new byte[]{66, 114, -56, 106, -54, -29, 55, -56}), Boolean.toString(true));
            builderAuthority.appendQueryParameter(AbstractC1387m.m2421h(new byte[]{-120, 116, 38}, new byte[]{-6, 0, 82, 70, 14, 31, -50, -28}), AbstractC1387m.m2421h(new byte[]{108, 86, 26, 29}, new byte[]{13, 35, 110, 114, 112, -53, 115, 83}));
            AbstractC0950c.m1093a(builderAuthority, AbstractC1387m.m2421h(new byte[]{37, 109}, new byte[]{81, 2, 88, -78, 115, -116, 65, -45}), c0949b);
            for (int i11 = 0; i11 < size; i11++) {
                String strM2076j = AbstractC1178q.m2076j(new byte[]{-33, -118, 89, 121}, new byte[]{-87, -29, 56, 38, 21, -40, -20, -92}, new StringBuilder(), i11);
                C0949b c0949b2 = c0949bArr[i11];
                StringBuilder sb = new StringBuilder();
                AbstractC1178q.m2086t(new byte[]{64, 14, 56, 26}, new byte[]{54, 103, 89, 65, -71, 84, -40, 51}, sb, i11);
                sb.append(AbstractC1387m.m2421h(new byte[]{104}, new byte[]{53, -19, 82, 7, -15, 69, -6, -52}));
                Objects.requireNonNull(c0949b2, sb.toString());
                AbstractC0950c.m1093a(builderAuthority, strM2076j, c0949b2);
            }
            enumC0948aM1094b = AbstractC0950c.m1094b(transportService, new Intent(AbstractC1387m.m2421h(new byte[]{58, 27, 74, 48, -19, 97, -126, -88, 50, 27, 90, 39, -20, 124, -56, -25, 56, 1, 71, 45, -20, 38, -80, -49, 30, 34}, new byte[]{91, 117, 46, 66, -126, 8, -26, -122}), builderAuthority.build()).setPackage(AbstractC0950c.f819a));
        }
        if (enumC0948aM1094b == EnumC0948a.f813b) {
            return c1996a == null ? AbstractC1387m.m2421h(new byte[]{-46, 21, 29, 50, 76, 64, -80, 24, -60, 30, 8}, new byte[]{-95, 112, 124, 64, 47, 40, -17, 107}) : AbstractC1387m.m2421h(new byte[]{0, 117, -27, 38, 64, 68, 112, 11, 28, 110}, new byte[]{114, 26, -112, 82, 37, 27, 3, 110});
        }
        return enumC0948aM1094b == EnumC0948a.f814c ? AbstractC1387m.m2421h(new byte[]{-34, 45, -81, 46, -105, -110, 20, -109, -36, 35, -71, 29, -109}, new byte[]{-80, 66, -37, 113, -10, -28, 117, -6}) : AbstractC1387m.m2421h(new byte[]{-43, -4, 30, 68, 84, -42, -86, 66, -54, -9, 51, 77, 88, -53, -80, 78, -63}, new byte[]{-91, -103, 108, 41, Base64.padSymbol, -91, -39, 43});
    }
}
