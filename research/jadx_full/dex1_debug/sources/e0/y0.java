package e0;

import com.example.navistart.MainActivity;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class y0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2005b;
    public final /* synthetic */ MainActivity c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ y0(MainActivity mainActivity, int i9) {
        this.f2005b = i9;
        this.c = mainActivity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        int i9 = this.f2005b;
        MainActivity mainActivity = this.c;
        switch (i9) {
            case 0:
                String strValueOf = String.valueOf(Integer.parseInt(mainActivity.T0.getYLayMovY()) - 1);
                h0.b.o().saveString(mainActivity.f725p, strValueOf);
                mainActivity.T0.setYLayMovY(strValueOf);
                n3.a(mainActivity);
                break;
            case 1:
                String str = MainActivity.f688e1;
                String strValueOf2 = String.valueOf(Integer.parseInt(h0.b.o().loadString(m.h(new byte[]{14, 116, -109, 67, 113, -16, 57, -52, 53, 124, -105, 101, 111, -41, 29, -20}, new byte[]{67, 21, -29, 28, 48, -109, 77, -91}), mainActivity.f730s)) - 1);
                h0.b.o().saveString(m.h(new byte[]{-111, 102, 107, 75, 53, 120, 75, 67, -86, 110, 111, 109, 43, 95, 111, 99}, new byte[]{-36, 7, 27, 20, 116, 27, 63, 42}), strValueOf2);
                mainActivity.U0.setYLayMovX(strValueOf2);
                n3.a(mainActivity);
                break;
            case 2:
                String str2 = MainActivity.f688e1;
                String strValueOf3 = String.valueOf(Integer.parseInt(h0.b.o().loadString(m.h(new byte[]{-23, -60, -4, -127, 101, 54, -102, 16, -46, -52, -8, -89, 123, 17, -66, 48}, new byte[]{-92, -91, -116, -34, 36, 85, -18, 121}), mainActivity.f730s)) + 1);
                h0.b.o().saveString(m.h(new byte[]{-66, -70, -81, -63, 42, -44, 16, -18, -123, -78, -85, -25, 52, -13, 52, -50}, new byte[]{-13, -37, -33, -98, 107, -73, 100, -121}), strValueOf3);
                mainActivity.U0.setYLayMovX(strValueOf3);
                n3.a(mainActivity);
                break;
            case 3:
                String str3 = MainActivity.f688e1;
                String strValueOf4 = String.valueOf(Integer.parseInt(h0.b.o().loadString(m.h(new byte[]{-50, 2, 110, -35, 99, 41, -71, 88, -11, 10, 106, -5, 125, 14, -99, 120, -36, 36, 75}, new byte[]{-125, 99, 30, -126, 34, 74, -51, 49}), mainActivity.f730s)) - 1);
                h0.b.o().saveString(m.h(new byte[]{78, -57, 104, 72, -38, 118, -74, -105, 117, -49, 108, 110, -60, 81, -110, -73, 92, -31, 77}, new byte[]{3, -90, 24, 23, -101, 21, -62, -2}), strValueOf4);
                mainActivity.V0.setYLayMovX(strValueOf4);
                n3.a(mainActivity);
                break;
            case 4:
                String str4 = MainActivity.f688e1;
                String strValueOf5 = String.valueOf(Integer.parseInt(h0.b.o().loadString(m.h(new byte[]{9, 14, -71, 59, 29, -6, -36, -79, 50, 6, -67, 29, 3, -35, -8, -111, 27, 40, -100}, new byte[]{68, 111, -55, 100, 92, -103, -88, -40}), mainActivity.f730s)) + 1);
                h0.b.o().saveString(m.h(new byte[]{-6, -123, -102, 59, 29, -39, 59, 123, -63, -115, -98, 29, 3, -2, 31, 91, -24, -93, -65}, new byte[]{-73, -28, -22, 100, 92, -70, 79, 18}), strValueOf5);
                mainActivity.V0.setYLayMovX(strValueOf5);
                n3.a(mainActivity);
                break;
            case 5:
                String str5 = MainActivity.f688e1;
                h0.b.o().saveBoolean(com.google.protobuf.q.k(new byte[]{63, -39, 57, 81, -26, 25, -125, -93, 36, -44, 48, 87, -11, 20, -113, -94, 55, -55, 57, 68, -30, 5, -120, -82, 58, -36, 50, 91, -24, 5}, new byte[]{118, -99, 102, 18, -89, 75, -36, -25}, new StringBuilder(), mainActivity), mainActivity.F.getisEnable().booleanValue());
                h0.b.o().saveInt(com.google.protobuf.q.k(new byte[]{39, 15, 115, 78, -36, 23, 125, 117, 60, 2, 122, 72, -49, 26, 113, 116, 47, 31, 115, 91, -40, 11, 118, 120, 34, 10, 120, 68, -46, 11, 125, 124, 33, 24, 100}, new byte[]{110, 75, 44, 13, -99, 69, 34, 49}, new StringBuilder(), mainActivity), mainActivity.F.getLevel());
                break;
            case 6:
                String str6 = MainActivity.f688e1;
                h0.b.o().saveBoolean(com.google.protobuf.q.k(new byte[]{124, 117, -28, -97, -11, -64, 27, -76, 103, 120, -19, -103, -26, -51, 23, -75, 116, 101, -28, -108, -15, -45, 16}, new byte[]{53, 49, -69, -36, -76, -110, 68, -16}, new StringBuilder(), mainActivity), mainActivity.D.getisEnable().booleanValue());
                h0.b.o().saveInt(com.google.protobuf.q.k(new byte[]{-87, 65, -112, 30, -125, 121, -84, -88, -78, 76, -103, 24, -112, 116, -96, -87, -95, 81, -112, 21, -121, 106, -89, -77, -83, 74, -100, 21}, new byte[]{-32, 5, -49, 93, -62, 43, -13, -20}, new StringBuilder(), mainActivity), mainActivity.D.getLevel());
                break;
            case 7:
                String str7 = MainActivity.f688e1;
                h0.b.o().saveBoolean(com.google.protobuf.q.k(new byte[]{-43, -46, -119, -64, -118, 76, -33, 120, -45, -58, -97, -49, -124, 74, -33, 104, -39, -41, -126, -36, -125, 91, -63, 111}, new byte[]{-100, -106, -42, -125, -53, 30, ByteCompanionObject.MIN_VALUE, 59}, new StringBuilder(), mainActivity), mainActivity.E.getisEnable().booleanValue());
                h0.b.o().saveInt(com.google.protobuf.q.k(new byte[]{-54, 108, 111, 56, -100, -25, 14, -123, -52, 120, 121, 55, -110, -31, 14, -107, -58, 105, 100, 36, -107, -16, 16, -110, -36, 101, ByteCompanionObject.MAX_VALUE, 40, -107}, new byte[]{-125, 40, 48, 123, -35, -75, 81, -58}, new StringBuilder(), mainActivity), mainActivity.E.getLevel());
                break;
            case 8:
                String str8 = MainActivity.f688e1;
                h0.b.o().saveBoolean(com.google.protobuf.q.k(new byte[]{20, -55, -61, 106, ByteCompanionObject.MAX_VALUE, 69, 62, -65, 18, -35, -43, 101, 113, 67, 62, -81, 24, -52, -56, 118, 104, 82, 47, -88, 20, -63, -35, 125, 119, 88, 47}, new byte[]{93, -115, -100, 41, 62, 23, 97, -4}, new StringBuilder(), mainActivity), mainActivity.G.getisEnable().booleanValue());
                h0.b.o().saveInt(com.google.protobuf.q.k(new byte[]{-28, 51, -66, 50, -107, 44, -118, 28, -30, 39, -88, Base64.padSymbol, -101, 42, -118, 12, -24, 54, -75, 46, -126, 59, -101, 11, -28, 59, -96, 37, -99, 49, -101, 0, -32, 56, -78, 57}, new byte[]{-83, 119, -31, 113, -44, 126, -43, 95}, new StringBuilder(), mainActivity), mainActivity.G.getLevel());
                break;
            case 9:
                String str9 = MainActivity.f688e1;
                h0.b.o().saveBoolean(com.google.protobuf.q.k(new byte[]{-23, 64, -79, -89, -123, -65, 40, 16, -12, 65, -85, -74, -101, -70, 63, 6, -27, 72, -79, -84, -127, -84, 35}, new byte[]{-96, 4, -18, -28, -60, -19, 119, 67}, new StringBuilder(), mainActivity), mainActivity.H.getisEnable().booleanValue());
                break;
            case 10:
                String str10 = MainActivity.f688e1;
                h0.b.o().saveBoolean(com.google.protobuf.q.k(new byte[]{-117, -25, 3, 60, 62, -6, 126, -28, -115, -19, 8, 34, 58, -23, 121, -27, -111, -4, 20, 56, 60, -15}, new byte[]{-62, -93, 92, 125, 125, -91, 56, -74}, new StringBuilder(), mainActivity), mainActivity.I.getisEnable().booleanValue());
                break;
            case 11:
                String str11 = MainActivity.f688e1;
                h0.b.o().saveBoolean(com.google.protobuf.q.k(new byte[]{97, 113, -17, -35, 0, 107, 25, 19, 105, 103, -17, -40, 6, 114, 25, 25, 123, 97}, new byte[]{40, 53, -80, -100, 67, 52, 75, 86}, new StringBuilder(), mainActivity), mainActivity.J.getisEnable().booleanValue());
                break;
            default:
                String str12 = MainActivity.f688e1;
                h0.b.o().saveBoolean(com.google.protobuf.q.k(new byte[]{-119, 1, 94, -57, 53, -27, -40, 126, -92, 32, 86, -61, 5, -37, -48, 126, -87, 11, 91, -53, 26, -22, -43, 109, -88, 15, 108, -19, 63}, new byte[]{-35, 104, 51, -94, 113, -124, -76, 31}, new StringBuilder(), mainActivity), mainActivity.K.getisEnable().booleanValue());
                mainActivity.L(mainActivity.K.getisEnable().booleanValue());
                break;
        }
    }
}
