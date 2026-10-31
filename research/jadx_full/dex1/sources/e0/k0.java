package e0;

import android.widget.CompoundButton;
import android.widget.CompoundButton$OnCheckedChangeListener;
import com.example.navistart.AllWidgetServices;
import com.example.navistart.MainActivity;
import com.example.navistart.MyA11yService;
import com.example.navistart.TestSpaceActivity;
import com.example.navistart.UpdateActivity;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class k0 implements CompoundButton$OnCheckedChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1874a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ k0(int i9) {
        this.f1874a = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.CompoundButton$OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z8) {
        switch (this.f1874a) {
            case 0:
                String str = MainActivity.f688e1;
                h0.b.o().saveBoolean(m.h(new byte[]{45, -17, -1, -89, -15, -122, 51, 99, 63, -9, -31}, new byte[]{94, -101, -115, -62, -99, -19, 82, 60}), z8);
                return;
            case 1:
                String str2 = MainActivity.f688e1;
                h0.b.o().saveBoolean(m.h(new byte[]{-31, 33, 92, -78, 79, -123, 77, -17, -54, 48, 88, -68, 124, -123, 72, -29, -38, 31, 92}, new byte[]{-72, 115, 57, -47, 42, -20, 59, -118}), z8);
                return;
            case 2:
                String str3 = MainActivity.f688e1;
                h0.b.o().saveBoolean(m.h(new byte[]{125, -117, 106, -120, 70, -63, 107, -85, 123, -127, 84, -99, 108, -63, 107, -85, 114, -111, 65, -122, 108, -58, 112, -107, 97, -112, 106, -116, 93, -46, 109, -102, 118}, new byte[]{19, -28, 53, -23, 51, -75, 4, -12}), z8);
                return;
            case 3:
                String str4 = MainActivity.f688e1;
                h0.b.o().saveBoolean(m.h(new byte[]{114, -116, 100, -90, 126, 77, 60, -20, 109, -125, 69, -67, 90, 93, 44}, new byte[]{34, -19, 22, -51, 63, 56, 72, -125}), z8);
                return;
            case 4:
                String str5 = MainActivity.f688e1;
                h0.b.o().saveBoolean(m.h(new byte[]{69, 3, 124, -21, 86, -51, -45, -61}, new byte[]{54, 116, 35, -104, 34, -94, -65, -88}), z8);
                return;
            case 5:
                String str6 = MainActivity.f688e1;
                h0.b.o().saveBoolean(m.h(new byte[]{-54, 53, -106, 37, -8, 36, 95, -74, -44, 32, -118, 31, -7, Base64.padSymbol, 74, -101}, new byte[]{-71, 65, -28, 122, -116, 75, 47, -23}), z8);
                h0.b.a();
                h0.b.i().d();
                return;
            case 6:
                String str7 = MainActivity.f688e1;
                h0.b.o().saveBoolean(m.h(new byte[]{88, -30, -98, -120, -44, -23, -104, 25, 109, -32, -83, -91, -41, -6, -70, 44, 78, -5}, new byte[]{43, -107, -63, -55, -92, -103, -56, 73}), z8);
                return;
            case 7:
                String str8 = MainActivity.f688e1;
                h0.b.o().saveBoolean(m.h(new byte[]{-26, 119, -46, 23, -68, -102, 19, -61, -24, 114, -38}, new byte[]{-118, 30, -65, 72, -54, -13, 96, -86}), z8);
                return;
            case 8:
                String str9 = MainActivity.f688e1;
                h0.b.o().saveBoolean(m.h(new byte[]{88, -37, -93, 73, -41, -31, 110, -42, 70, -4, -84, 76, -41, -2, 118, -54, 72, -34, -103, 111, -52}, new byte[]{43, -84, -4, 10, -94, -110, 26, -71}), z8);
                return;
            case 9:
                String str10 = MainActivity.f688e1;
                h0.b.o().saveBoolean(m.h(new byte[]{-88, -50, 70, -91, 14, -82, 31, -55, -80, -26, 118, -83, 56, -86, 10, -58}, new byte[]{-37, -71, 25, -61, 103, -59, 108, -96}), z8);
                return;
            case 10:
                String str11 = MainActivity.f688e1;
                h0.b.o().saveBoolean(j1.x.d, z8);
                return;
            case 11:
                String str12 = MainActivity.f688e1;
                h0.b.o().saveBoolean(MainActivity.f691h1, z8);
                synchronized (h0.b.class) {
                    h0.b.x(false);
                }
                return;
            case 12:
                String str13 = MainActivity.f688e1;
                h0.b.o().saveBoolean(m.h(new byte[]{117, -124, 69, 86, -33, -74, 87, -70, 64, -69, 76, 115, -64, -69, 83, -70, 71, -73, 77, 66, -38, -67, 83, -76, 107, -89, 71}, new byte[]{52, -24, 41, 1, -74, -46, 48, -33}), z8);
                h hVar = h.d;
                AllWidgetServices allWidgetServices = MainActivity.i1;
                if (allWidgetServices != null) {
                    allWidgetServices.e(hVar, z8);
                    return;
                }
                return;
            case 13:
                String str14 = MainActivity.f688e1;
                h0.b.o().saveBoolean(m.h(new byte[]{13, -107, -91, -1, 108, -37, -1, 47, 56, -86, -84, -38, 115, -42, -5, 47, 63, -90, -99, -51, 104, -49, -3, 56, 45, -115, -68, -38, 100, -14, -7, 57, 36, -81, -96, -51, 114, -32, -41, 36}, new byte[]{76, -7, -55, -88, 5, -65, -104, 74}), z8);
                h hVar2 = h.e;
                AllWidgetServices allWidgetServices2 = MainActivity.i1;
                if (allWidgetServices2 != null) {
                    allWidgetServices2.e(hVar2, z8);
                    return;
                }
                return;
            case 14:
                String str15 = MainActivity.f688e1;
                h0.b.o().saveBoolean(m.h(new byte[]{-56, 19, 9, 74, -73, -101, -61, 46, -3, 44, 0, 111, -88, -106, -57, 46, -6, 32, 35, 104, -69, -109, -10, 46, -28, 30, 12, 115, -73, -111, -61, 29, -32, 26, 18, 66, -111, -111}, new byte[]{-119, ByteCompanionObject.MAX_VALUE, 101, 29, -34, -1, -92, 75}), z8);
                h hVar3 = h.f1849f;
                AllWidgetServices allWidgetServices3 = MainActivity.i1;
                if (allWidgetServices3 != null) {
                    allWidgetServices3.e(hVar3, z8);
                    return;
                }
                return;
            case 15:
                String str16 = MainActivity.f688e1;
                h0.b.o().saveBoolean(m.h(new byte[]{125, -85, -30, -78, -78, -5, -65, -52, 72, -108, -21, -105, -83, -10, -69, -52, 79, -104, -35, -111, -76, -19, -71, -50, 89, -127, -4, ByteCompanionObject.MIN_VALUE, -66, -55, -79, -52, 75, -104, -63, -117}, new byte[]{60, -57, -114, -27, -37, -97, -40, -87}), z8);
                h hVar4 = h.f1850g;
                AllWidgetServices allWidgetServices4 = MainActivity.i1;
                if (allWidgetServices4 != null) {
                    allWidgetServices4.e(hVar4, z8);
                    return;
                }
                return;
            case 16:
                String str17 = MainActivity.f688e1;
                h0.b.o().saveBoolean(m.h(new byte[]{-34, 33, 80, -54, 79, -32, 12, -73, -21, 30, 89, -17, 80, -19, 8, -73, -20, 18, 81, -8, 66, -19, 10, -111, -16, 35, 72, -17, 73, -24, Base64.padSymbol, -69, -6, 58, 99, -46, 72}, new byte[]{-97, 77, 60, -99, 38, -124, 107, -46}), z8);
                return;
            case 17:
                String str18 = MainActivity.f688e1;
                h0.b.o().saveBoolean(m.h(new byte[]{121, -119, 18, 97, 120, 53, 114, 37, 85, -115, 57, 125, 124, 11, 111, 55, 108}, new byte[]{10, -2, 77, 18, 12, 84, 0, 81}), z8);
                if (z8) {
                    h0.b.a();
                    h0.b.d().offStartStop();
                    return;
                }
                return;
            case 18:
                String str19 = MainActivity.f688e1;
                h0.b.o().saveBoolean(m.h(new byte[]{9, 6, 78, -70, 18, 46, -10, -75, 37, 1, 99, -90, 57, 40, -15}, new byte[]{122, 113, 17, -55, 102, 79, -124, -63}), z8);
                return;
            case 19:
                String str20 = MainActivity.f688e1;
                h0.b.o().saveBoolean(m.h(new byte[]{-43, -94, 102, -112, -117, -54, -15, 116, -7, -71, 80, -114, -110, -37, -53, 113, -54, -76, 75, -114, -92, -64, -14, 118}, new byte[]{-90, -43, 57, -29, -5, -81, -108, 16}), z8);
                return;
            case 20:
                String str21 = MainActivity.f688e1;
                h0.b.o().saveBoolean(m.h(new byte[]{53, -87, 100, 41, -93, 26, 85, 122, 54, -82, 100, 54, -71, 6, 111}, new byte[]{70, -34, 59, 91, -42, 116, 10, 27}), z8);
                return;
            case 21:
                String str22 = MainActivity.f688e1;
                h0.b.o().saveBoolean(m.h(new byte[]{2, -112, -41, -66, -10, -97, -47, -33, 16, -93, -33, -77, -18, -76, -60, -36, 12, -93, -63, -76, -13, -97, -58, -36, 9, -97, -35}, new byte[]{96, -4, -74, -35, -99, -64, -91, -80}), z8);
                MyA11yService.e = Boolean.valueOf(z8);
                return;
            case 22:
                String str23 = MainActivity.f688e1;
                h0.b.o().saveBoolean(m.h(new byte[]{-96, 21, -48, 125, 51, 12, 99, -49, -122, 15, -14, 85}, new byte[]{-24, 64, -108, 51, 82, 122, 10, ByteCompanionObject.MIN_VALUE}), z8);
                h0.b.a();
                h0.b.i().d();
                return;
            case 23:
                String str24 = MainActivity.f688e1;
                h0.b.o().saveBoolean(m.h(new byte[]{-10, -89, 82, 78}, new byte[]{-108, -56, Base64.padSymbol, 58, 39, -92, -34, 5}), z8);
                return;
            case 24:
                String str25 = MainActivity.f688e1;
                h0.b.o().saveBoolean(m.h(new byte[]{7, -122, -106, -9, 23, 106, 43}, new byte[]{69, -22, -29, -88, 97, 5, 79, -110}), z8);
                return;
            case 25:
                String str26 = MainActivity.f688e1;
                h0.b.o().saveBoolean(m.h(new byte[]{-127, -107, 29, 34, -11, 24, 32}, new byte[]{-14, -31, 111, 71, -103, 115, 65, 42}), z8);
                h0.b.a();
                h0.b.i().d();
                return;
            case 26:
                String str27 = MainActivity.f688e1;
                h0.b.o().saveBoolean(m.h(new byte[]{-22, 31, 113, -60, -97, -127, 60, 105, -12, 56, 126, -44, -98, -109, 58, 114}, new byte[]{-103, 104, 46, -121, -22, -14, 72, 6}), z8);
                return;
            case 27:
                String str28 = MainActivity.f688e1;
                h0.b.o().saveBoolean(m.h(new byte[]{75, -31, 99, 45, 92, 96, 112, 14, 99, -8, 88, 36, 106}, new byte[]{10, -108, 23, 66, 12, 18, 31, 104}), z8);
                return;
            case 28:
                int i9 = TestSpaceActivity.f847h;
                h0.b.o().saveBoolean(m.h(new byte[]{83, 66, 20, 76, -62, -94, -110, -6, 98, 78, 18, 87, -63, -93, -110, -16, 83, 85}, new byte[]{32, 33, 102, 35, -82, -50, -58, -107}), z8);
                return;
            default:
                String str29 = UpdateActivity.f871l;
                h0.b.o().saveBoolean(m.h(new byte[]{34, 0, 12, 69, 0, -108, -54, -64, 48, 51, 4, 72, 24, -65, -33, -61, 44, 51, 26, 79, 5, -108, -35, -61, 41, 15, 6}, new byte[]{64, 108, 109, 38, 107, -53, -66, -81}), z8);
                MyA11yService.e = Boolean.valueOf(z8);
                return;
        }
    }
}
