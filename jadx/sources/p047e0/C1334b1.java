package p047e0;

import android.view.View;
import android.widget.AdapterView;
import com.example.navistart.MainActivity;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p078h0.C1652b;

/* JADX INFO: renamed from: e0.b1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1334b1 implements AdapterView.OnItemSelectedListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3183b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ MainActivity f3184c;

    public /* synthetic */ C1334b1(MainActivity mainActivity, int i10) {
        this.f3183b = i10;
        this.f3184c = mainActivity;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i10, long j10) {
        int i11 = this.f3183b;
        MainActivity mainActivity = this.f3184c;
        switch (i11) {
            case 0:
                String str = mainActivity.f1381p;
                String str2 = mainActivity.f1379o;
                String str3 = mainActivity.f1373l;
                String str4 = mainActivity.f1371k;
                String str5 = mainActivity.f1365h;
                String str6 = mainActivity.f1363g;
                int selectedItemId = (int) mainActivity.f1319L0.getSelectedItemId();
                if (selectedItemId == 1) {
                    C1652b.m2745o().saveString(str6, mainActivity.f1367i);
                    C1652b.m2745o().saveString(str5, mainActivity.f1369j);
                    C1652b.m2745o().saveString(str4, mainActivity.f1375m);
                    C1652b.m2745o().saveString(str3, mainActivity.f1377n);
                    C1652b.m2745o().saveString(str2, mainActivity.f1383q);
                    C1652b.m2745o().saveString(str, mainActivity.f1385r);
                    mainActivity.m1436I();
                } else if (selectedItemId == 2) {
                    C1652b.m2745o().saveString(str6, AbstractC1387m.m2421h(new byte[]{73, -125, 1, 88}, new byte[]{120, -74, 49, 104, -100, 112, -24, 37}));
                    C1652b.m2745o().saveString(str5, AbstractC1387m.m2421h(new byte[]{-8, 117, 121}, new byte[]{-53, 69, 73, -35, -53, -11, -59, -28}));
                    C1652b.m2745o().saveString(str4, AbstractC1387m.m2421h(new byte[]{-27, 125, 45, 30}, new byte[]{-44, 72, 29, 46, 52, 96, -88, 49}));
                    C1652b.m2745o().saveString(str3, AbstractC1387m.m2421h(new byte[]{19, 35, 109}, new byte[]{32, 19, 93, 119, 106, -39, -90, -114}));
                    C1652b.m2745o().saveString(str2, AbstractC1387m.m2421h(new byte[]{105, 121, -39}, new byte[]{94, 76, -23, 52, -92, 81, ByteCompanionObject.MAX_VALUE, -17}));
                    C1652b.m2745o().saveString(str, AbstractC1387m.m2421h(new byte[]{-9, 118}, new byte[]{-62, 70, 107, -28, -52, 70, 26, -92}));
                    mainActivity.m1436I();
                } else if (selectedItemId == 3) {
                    C1652b.m2745o().saveString(str6, AbstractC1387m.m2421h(new byte[]{40, 125, -92, -16}, new byte[]{25, 79, -107, -63, -54, -35, 3, 93}));
                    C1652b.m2745o().saveString(str5, AbstractC1387m.m2421h(new byte[]{-7, 87, -33}, new byte[]{-53, 111, -18, -87, -59, 74, -1, -76}));
                    C1652b.m2745o().saveString(str4, AbstractC1387m.m2421h(new byte[]{-53, 118, 28, -106}, new byte[]{-6, 71, 41, -96, 71, 85, -123, -32}));
                    C1652b.m2745o().saveString(str3, AbstractC1387m.m2421h(new byte[]{70, 19, -37}, new byte[]{116, 36, -29, 72, 24, ByteCompanionObject.MIN_VALUE, -108, -7}));
                    C1652b.m2745o().saveString(str2, AbstractC1387m.m2421h(new byte[]{102, 74}, new byte[]{84, ByteCompanionObject.MAX_VALUE, 101, 98, 101, -105, -38, 122}));
                    C1652b.m2745o().saveString(str, AbstractC1387m.m2421h(new byte[]{34, 126}, new byte[]{21, 76, -14, -50, 39, -125, -36, -104}));
                    mainActivity.m1436I();
                } else if (selectedItemId == 4) {
                    C1652b.m2745o().saveString(str6, AbstractC1387m.m2421h(new byte[]{0, -109, 120}, new byte[]{51, -94, 72, Base64.padSymbol, 86, -33, 119, -38}));
                    C1652b.m2745o().saveString(str5, AbstractC1387m.m2421h(new byte[]{92, -81, -125}, new byte[]{111, -98, -77, -79, -56, -32, 57, -24}));
                    C1652b.m2745o().saveString(str4, AbstractC1387m.m2421h(new byte[]{-92, 47, -50}, new byte[]{-106, 22, -2, 9, -27, -47, 23, -101}));
                    C1652b.m2745o().saveString(str3, AbstractC1387m.m2421h(new byte[]{0, 112, 62}, new byte[]{50, 64, 14, -7, -25, -101, 31, 0}));
                    C1652b.m2745o().saveString(str2, AbstractC1387m.m2421h(new byte[]{-56, 69, -14}, new byte[]{-1, 112, -62, -123, 54, -58, 97, 102}));
                    C1652b.m2745o().saveString(str, AbstractC1387m.m2421h(new byte[]{66, -126, 89}, new byte[]{115, -78, 105, 119, 6, 66, 112, -17}));
                    mainActivity.m1436I();
                }
                C1396n3.m2439a(mainActivity);
                break;
            case 1:
                mainActivity.f1301C0.getSelectedItemId();
                C1652b.m2745o().saveString(AbstractC1387m.m2421h(new byte[]{-23, -117, 47, -96, 50, 16, -93, -104}, new byte[]{-85, -57, 122, -1, 124, 81, -18, -35}) + mainActivity.f1299B0.getSelectedItem(), mainActivity.f1301C0.getSelectedItem().toString());
                break;
            default:
                String str7 = MainActivity.f1288e1;
                mainActivity.m1446u();
                break;
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
        int i10 = this.f3183b;
    }

    /* JADX INFO: renamed from: a */
    private final void m2382a(AdapterView adapterView) {
    }

    /* JADX INFO: renamed from: b */
    private final void m2383b(AdapterView adapterView) {
    }

    /* JADX INFO: renamed from: c */
    private final void m2384c(AdapterView adapterView) {
    }
}
