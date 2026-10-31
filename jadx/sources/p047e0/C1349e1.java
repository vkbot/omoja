package p047e0;

import android.view.View;
import android.widget.AdapterView;
import com.example.navistart.SpeedBoardService;
import java.io.File;
import java.util.function.IntConsumer;
import kotlin.jvm.internal.ByteCompanionObject;
import p078h0.C1652b;
import p094i7.EnumC1759h;
import p132m0.C2263a0;
import p132m0.C2275c2;
import p132m0.C2285e2;

/* JADX INFO: renamed from: e0.e1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1349e1 implements AdapterView.OnItemSelectedListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3213b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f3214c;

    public /* synthetic */ C1349e1(int i10, Object obj) {
        this.f3213b = i10;
        this.f3214c = obj;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i10, long j10) {
        int i11 = this.f3213b;
        Object obj = this.f3214c;
        switch (i11) {
            case 0:
                C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{120, -89, 87, 92, -19, 117, -55, -19, 123, -72, 89, 93, -25, 113, -28, -59, 98, -77, 89, 109, -13, 98, -44}, new byte[]{11, -41, 62, 50, -125, 16, -69, -78}), ((String[]) obj)[i10]);
                break;
            case 1:
                C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{114, 5, 122, -1, -27, -3, -118, 73, 65, 47, 111, -30, -10, -2, -113, 91, 86}, new byte[]{51, 107, 14, -106, -105, -100, -18, 40}), ((EnumC1759h[]) obj)[i10].name());
                break;
            case 2:
                C2263a0 c2263a0 = (C2263a0) obj;
                String str = (String) c2263a0.f5926c.get(i10);
                C1652b.m2734a();
                C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{70, 74, -48, -49, 90, -92, -43, -21, 97, 86, -28, -34, 122, -104, -58, -25, 96, 108, -44, -49, 76, ByteCompanionObject.MIN_VALUE, -50, -22, 108, 64, -40, -31, 93, -115}, new byte[]{11, 51, -121, -86, 56, -12, -89, -124}), str);
                c2263a0.m3644w();
                break;
            case 3:
                C2275c2 c2275c2 = (C2275c2) obj;
                String str2 = (String) c2275c2.f5965g.get(i10);
                C1652b.m2734a();
                C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{100, 17, 62, -116, 64, -43, -118, 73, 118, 0, 3, -96, 82, -48, -117, 77, 103, 17, 56}, new byte[]{19, 116, 92, -45, 55, -68, -18, 46}), str2);
                c2275c2.m3649w();
                c2275c2.m3650x();
                break;
            case 4:
                C2285e2 c2285e2 = (C2285e2) obj;
                String str3 = (String) c2285e2.f6058g.get(i10);
                C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-14, ByteCompanionObject.MIN_VALUE, -70, 57, -126, -29, -22, 109, -43, -100, -114, 40, -88, -26, -36, 93, -20, -100, -103, 40, -119, -35, -1, 113, -32, -78, -120, 37}, new byte[]{-65, -7, -19, 92, -32, -77, -104, 2}), str3);
                if (AbstractC1387m.m2421h(new byte[]{-76, 106, 14, 69, -69, -75, 16, 69, -72, 122, 12}, new byte[]{-48, 15, 104, 36, -50, -39, 100, 26}).equals(str3) && !new File(c2285e2.f6057f, AbstractC1387m.m2421h(new byte[]{27, -46, 20, 56, 6, -87, 40, -31, 23, -62, 22, 118, 26, -85, 56, -37, 7, -103, 26, 45, 30, -87}, new byte[]{ByteCompanionObject.MAX_VALUE, -73, 114, 89, 115, -59, 92, -66})).isFile()) {
                    File file = new File(c2285e2.requireContext().getCacheDir(), AbstractC1387m.m2421h(new byte[]{-86, -19, 105, 48, -118, -55, -72, 30, -90, -3, 107, ByteCompanionObject.MAX_VALUE, -123, -52, -68}, new byte[]{-50, -120, 15, 81, -1, -91, -52, 65}));
                    if (c2285e2.f6060i.m979c(file)) {
                        c2285e2.m3687v(file);
                    }
                }
                c2285e2.m3689x();
                c2285e2.m3690y();
                SpeedBoardService.m1542b(c2285e2.requireContext());
                break;
            default:
                ((IntConsumer) obj).accept(i10);
                break;
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
        int i10 = this.f3213b;
        Object obj = this.f3214c;
        switch (i10) {
            case 2:
                String str = C2263a0.f5922h;
                ((C2263a0) obj).m3644w();
                break;
            case 3:
                C2275c2 c2275c2 = (C2275c2) obj;
                String str2 = C2275c2.f5957i;
                c2275c2.m3649w();
                c2275c2.m3650x();
                break;
            case 4:
                C2285e2 c2285e2 = (C2285e2) obj;
                String str3 = C2285e2.f6049j;
                c2285e2.m3689x();
                c2285e2.m3690y();
                break;
        }
    }

    /* JADX INFO: renamed from: a */
    private final void m2398a(AdapterView adapterView) {
    }

    /* JADX INFO: renamed from: b */
    private final void m2399b(AdapterView adapterView) {
    }

    /* JADX INFO: renamed from: c */
    private final void m2400c(AdapterView adapterView) {
    }
}
