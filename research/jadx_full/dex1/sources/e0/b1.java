package e0;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemSelectedListener;
import com.example.navistart.MainActivity;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b1 implements AdapterView$OnItemSelectedListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1812b;
    public final /* synthetic */ MainActivity c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b1(MainActivity mainActivity, int i9) {
        this.f1812b = i9;
        this.c = mainActivity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.AdapterView$OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i9, long j9) {
        int i10 = this.f1812b;
        MainActivity mainActivity = this.c;
        switch (i10) {
            case 0:
                String str = mainActivity.f725p;
                String str2 = mainActivity.f723o;
                String str3 = mainActivity.f717l;
                String str4 = mainActivity.f715k;
                String str5 = mainActivity.f709h;
                String str6 = mainActivity.f707g;
                int selectedItemId = (int) mainActivity.L0.getSelectedItemId();
                if (selectedItemId == 1) {
                    h0.b.o().saveString(str6, mainActivity.f711i);
                    h0.b.o().saveString(str5, mainActivity.f713j);
                    h0.b.o().saveString(str4, mainActivity.f719m);
                    h0.b.o().saveString(str3, mainActivity.f721n);
                    h0.b.o().saveString(str2, mainActivity.f727q);
                    h0.b.o().saveString(str, mainActivity.r);
                    mainActivity.I();
                } else if (selectedItemId == 2) {
                    h0.b.o().saveString(str6, m.h(new byte[]{73, -125, 1, 88}, new byte[]{120, -74, 49, 104, -100, 112, -24, 37}));
                    h0.b.o().saveString(str5, m.h(new byte[]{-8, 117, 121}, new byte[]{-53, 69, 73, -35, -53, -11, -59, -28}));
                    h0.b.o().saveString(str4, m.h(new byte[]{-27, 125, 45, 30}, new byte[]{-44, 72, 29, 46, 52, 96, -88, 49}));
                    h0.b.o().saveString(str3, m.h(new byte[]{19, 35, 109}, new byte[]{32, 19, 93, 119, 106, -39, -90, -114}));
                    h0.b.o().saveString(str2, m.h(new byte[]{105, 121, -39}, new byte[]{94, 76, -23, 52, -92, 81, ByteCompanionObject.MAX_VALUE, -17}));
                    h0.b.o().saveString(str, m.h(new byte[]{-9, 118}, new byte[]{-62, 70, 107, -28, -52, 70, 26, -92}));
                    mainActivity.I();
                } else if (selectedItemId == 3) {
                    h0.b.o().saveString(str6, m.h(new byte[]{40, 125, -92, -16}, new byte[]{25, 79, -107, -63, -54, -35, 3, 93}));
                    h0.b.o().saveString(str5, m.h(new byte[]{-7, 87, -33}, new byte[]{-53, 111, -18, -87, -59, 74, -1, -76}));
                    h0.b.o().saveString(str4, m.h(new byte[]{-53, 118, 28, -106}, new byte[]{-6, 71, 41, -96, 71, 85, -123, -32}));
                    h0.b.o().saveString(str3, m.h(new byte[]{70, 19, -37}, new byte[]{116, 36, -29, 72, 24, ByteCompanionObject.MIN_VALUE, -108, -7}));
                    h0.b.o().saveString(str2, m.h(new byte[]{102, 74}, new byte[]{84, ByteCompanionObject.MAX_VALUE, 101, 98, 101, -105, -38, 122}));
                    h0.b.o().saveString(str, m.h(new byte[]{34, 126}, new byte[]{21, 76, -14, -50, 39, -125, -36, -104}));
                    mainActivity.I();
                } else if (selectedItemId == 4) {
                    h0.b.o().saveString(str6, m.h(new byte[]{0, -109, 120}, new byte[]{51, -94, 72, Base64.padSymbol, 86, -33, 119, -38}));
                    h0.b.o().saveString(str5, m.h(new byte[]{92, -81, -125}, new byte[]{111, -98, -77, -79, -56, -32, 57, -24}));
                    h0.b.o().saveString(str4, m.h(new byte[]{-92, 47, -50}, new byte[]{-106, 22, -2, 9, -27, -47, 23, -101}));
                    h0.b.o().saveString(str3, m.h(new byte[]{0, 112, 62}, new byte[]{50, 64, 14, -7, -25, -101, 31, 0}));
                    h0.b.o().saveString(str2, m.h(new byte[]{-56, 69, -14}, new byte[]{-1, 112, -62, -123, 54, -58, 97, 102}));
                    h0.b.o().saveString(str, m.h(new byte[]{66, -126, 89}, new byte[]{115, -78, 105, 119, 6, 66, 112, -17}));
                    mainActivity.I();
                }
                n3.a(mainActivity);
                break;
            case 1:
                mainActivity.C0.getSelectedItemId();
                h0.b.o().saveString(m.h(new byte[]{-23, -117, 47, -96, 50, 16, -93, -104}, new byte[]{-85, -57, 122, -1, 124, 81, -18, -35}) + mainActivity.B0.getSelectedItem(), mainActivity.C0.getSelectedItem().toString());
                break;
            default:
                String str7 = MainActivity.f688e1;
                mainActivity.u();
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.AdapterView$OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
        int i9 = this.f1812b;
    }

    private final void a(AdapterView adapterView) {
    }

    private final void b(AdapterView adapterView) {
    }

    private final void c(AdapterView adapterView) {
    }
}
