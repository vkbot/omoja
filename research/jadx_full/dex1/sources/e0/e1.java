package e0;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemSelectedListener;
import com.example.navistart.SpeedBoardService;
import java.io.File;
import java.util.function.IntConsumer;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e1 implements AdapterView$OnItemSelectedListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1830b;
    public final /* synthetic */ Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ e1(int i9, Object obj) {
        this.f1830b = i9;
        this.c = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.AdapterView$OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i9, long j9) {
        int i10 = this.f1830b;
        Object obj = this.c;
        switch (i10) {
            case 0:
                h0.b.o().saveString(m.h(new byte[]{120, -89, 87, 92, -19, 117, -55, -19, 123, -72, 89, 93, -25, 113, -28, -59, 98, -77, 89, 109, -13, 98, -44}, new byte[]{11, -41, 62, 50, -125, 16, -69, -78}), ((String[]) obj)[i9]);
                break;
            case 1:
                h0.b.o().saveString(m.h(new byte[]{114, 5, 122, -1, -27, -3, -118, 73, 65, 47, 111, -30, -10, -2, -113, 91, 86}, new byte[]{51, 107, 14, -106, -105, -100, -18, 40}), ((i7.h[]) obj)[i9].name());
                break;
            case 2:
                m0.a0 a0Var = (m0.a0) obj;
                String str = (String) a0Var.c.get(i9);
                h0.b.a();
                h0.b.o().saveString(m.h(new byte[]{70, 74, -48, -49, 90, -92, -43, -21, 97, 86, -28, -34, 122, -104, -58, -25, 96, 108, -44, -49, 76, ByteCompanionObject.MIN_VALUE, -50, -22, 108, 64, -40, -31, 93, -115}, new byte[]{11, 51, -121, -86, 56, -12, -89, -124}), str);
                a0Var.w();
                break;
            case 3:
                m0.c2 c2Var = (m0.c2) obj;
                String str2 = (String) c2Var.f3353g.get(i9);
                h0.b.a();
                h0.b.o().saveString(m.h(new byte[]{100, 17, 62, -116, 64, -43, -118, 73, 118, 0, 3, -96, 82, -48, -117, 77, 103, 17, 56}, new byte[]{19, 116, 92, -45, 55, -68, -18, 46}), str2);
                c2Var.w();
                c2Var.x();
                break;
            case 4:
                m0.e2 e2Var = (m0.e2) obj;
                String str3 = (String) e2Var.f3413g.get(i9);
                h0.b.o().saveString(m.h(new byte[]{-14, ByteCompanionObject.MIN_VALUE, -70, 57, -126, -29, -22, 109, -43, -100, -114, 40, -88, -26, -36, 93, -20, -100, -103, 40, -119, -35, -1, 113, -32, -78, -120, 37}, new byte[]{-65, -7, -19, 92, -32, -77, -104, 2}), str3);
                if (m.h(new byte[]{-76, 106, 14, 69, -69, -75, 16, 69, -72, 122, 12}, new byte[]{-48, 15, 104, 36, -50, -39, 100, 26}).equals(str3) && !new File(e2Var.f3412f, m.h(new byte[]{27, -46, 20, 56, 6, -87, 40, -31, 23, -62, 22, 118, 26, -85, 56, -37, 7, -103, 26, 45, 30, -87}, new byte[]{ByteCompanionObject.MAX_VALUE, -73, 114, 89, 115, -59, 92, -66})).isFile()) {
                    File file = new File(e2Var.requireContext().getCacheDir(), m.h(new byte[]{-86, -19, 105, 48, -118, -55, -72, 30, -90, -3, 107, ByteCompanionObject.MAX_VALUE, -123, -52, -68}, new byte[]{-50, -120, 15, 81, -1, -91, -52, 65}));
                    if (e2Var.f3415i.c(file)) {
                        e2Var.v(file);
                    }
                }
                e2Var.x();
                e2Var.y();
                SpeedBoardService.b(e2Var.requireContext());
                break;
            default:
                ((IntConsumer) obj).accept(i9);
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.AdapterView$OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
        int i9 = this.f1830b;
        Object obj = this.c;
        switch (i9) {
            case 2:
                String str = m0.a0.f3328h;
                ((m0.a0) obj).w();
                break;
            case 3:
                m0.c2 c2Var = (m0.c2) obj;
                String str2 = m0.c2.f3348i;
                c2Var.w();
                c2Var.x();
                break;
            case 4:
                m0.e2 e2Var = (m0.e2) obj;
                String str3 = m0.e2.f3407j;
                e2Var.x();
                e2Var.y();
                break;
        }
    }

    private final void a(AdapterView adapterView) {
    }

    private final void b(AdapterView adapterView) {
    }

    private final void c(AdapterView adapterView) {
    }
}
