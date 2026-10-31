package androidx.profileinstaller;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.example.navistart.MyCarReceiver;
import com.example.navistart.Notik;
import com.example.navistart.Si;
import e0.m;
import e0.n3;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import p0.e;
import p0.j;
import w0.a0;
import y5.k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f213b;
    public final /* synthetic */ Context c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ c(Context context, int i9) {
        this.f213b = i9;
        this.c = context;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        int i9 = this.f213b;
        Context context = this.c;
        switch (i9) {
            case 0:
                ProfileInstallerInitializer.b(context);
                break;
            case 1:
                ProfileInstallerInitializer.a(context);
                break;
            case 2:
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = MyCarReceiver.c;
                Notik.g(context);
                break;
            case 3:
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor2 = MyCarReceiver.c;
                Si.a(context);
                break;
            case 4:
                boolean z8 = Si.d;
                a0.g(context);
                break;
            case 5:
                boolean z9 = Si.d;
                a0.b();
                Si.a(context);
                break;
            case 6:
                Intent intent = new Intent(m.h(new byte[]{93, 28, -102, 123, 4, 19, 112, -37, 109, 86, -109}, new byte[]{4, 50, -10, 26, 125, Base64.padSymbol, 23, -82}));
                intent.putExtra(m.h(new byte[]{95, -9, -57, 52, 107, -113, -61, 70, 102, -37}, new byte[]{15, -94, -109, 107, 50, -61, -84, 48}), n3.d);
                intent.putExtra(m.h(new byte[]{-56, -2, 1, 1}, new byte[]{-87, -116, 100, 96, -79, 18, -59, 36}), h0.b.o().loadInt(m.h(new byte[]{-61, -19, -7, 107, -116, 3, -37, -114}, new byte[]{-94, -97, -100, 10, -50, 108, -76, -6}), 2));
                intent.putExtra(m.h(new byte[]{-85, 78, -82, -81, 109, 49, 59, -61, -98, 122, -104, -75}, new byte[]{-20, 29, -15, -37, 2, 65, 118, -94}), Integer.parseInt(h0.b.o().loadString(m.h(new byte[]{-108, 112, -54, -95, -63, ByteCompanionObject.MAX_VALUE, -26, -72, -95, 68, -4, -69}, new byte[]{-45, 35, -107, -43, -82, 15, -85, -39}), m.h(new byte[]{-79, -63, -31}, new byte[]{-125, -12, -47, -16, -90, -91, 54, -109}))));
                intent.putExtra(m.h(new byte[]{-43, 96, -87, 78, 83, 35, -113, 81, -13, 65, -111, 75, 88}, new byte[]{-110, 51, -10, 34, 54, 69, -5, 28}), Integer.parseInt(h0.b.o().loadString(m.h(new byte[]{-56, 62, 74, 86, -79, 1, -125, -24, -18, 31, 114, 83, -70}, new byte[]{-113, 109, 21, 58, -44, 103, -9, -91}), m.h(new byte[]{-89, 63, -103}, new byte[]{-108, 10, -87, 91, -2, -122, 66, -86}))));
                intent.putExtra(m.h(new byte[]{71, 42, -12, 62, -57, -4, 22, -38}, new byte[]{0, 121, -85, 73, -82, -104, 98, -78}), Integer.parseInt(h0.b.o().loadString(m.h(new byte[]{123, -122, -127, 121, -4, 72, 62, -78}, new byte[]{60, -43, -34, 14, -107, 44, 74, -38}), m.h(new byte[]{106, -86, -83}, new byte[]{91, -102, -99, -74, -36, 53, -73, 51}))));
                intent.putExtra(m.h(new byte[]{-22, -72, 33, 117, -1, -82, 52, -3, -39}, new byte[]{-83, -21, 126, 29, -102, -57, 83, -107}), Integer.parseInt(h0.b.o().loadString(m.h(new byte[]{30, 11, -54, 88, 95, 4, -121, -63, 45}, new byte[]{89, 88, -107, 48, 58, 109, -32, -87}), m.h(new byte[]{51, 43, -41}, new byte[]{2, 27, -25, 80, 32, 76, -4, 98}))));
                intent.putExtra(m.h(new byte[]{-87, 56, 55, 84, -52, -81, 54, -96, -104, 18, 1, 78}, new byte[]{-22, 117, 104, 32, -93, -33, 123, -63}), Integer.parseInt(h0.b.o().loadString(m.h(new byte[]{-104, 52, 36, 105, 84, 34, -17, 106, -87, 30, 18, 115}, new byte[]{-37, 121, 123, 29, 59, 82, -94, 11}), m.h(new byte[]{-119, 50, 117}, new byte[]{-69, 7, 69, -77, 35, 56, 121, -87}))));
                intent.putExtra(m.h(new byte[]{86, -104, -74, 92, 89, -98, -71, -109, 116, -89, -114, 89, 82}, new byte[]{21, -43, -23, 48, 60, -8, -51, -34}), Integer.parseInt(h0.b.o().loadString(m.h(new byte[]{36, 34, 85, -20, ByteCompanionObject.MIN_VALUE, -51, 113, -28, 6, 29, 109, -23, -117}, new byte[]{103, 111, 10, ByteCompanionObject.MIN_VALUE, -27, -85, 5, -87}), m.h(new byte[]{-54, 95, -48, -48}, new byte[]{-5, 107, -32, -32, 92, 72, -69, -53}))));
                intent.putExtra(m.h(new byte[]{-80, 77, -118, -35, -75, -4, -14, -8}, new byte[]{-13, 0, -43, -86, -36, -104, -122, -112}), Integer.parseInt(h0.b.o().loadString(m.h(new byte[]{-19, 52, -89, -109, -103, 93, -23, -73}, new byte[]{-82, 121, -8, -28, -16, 57, -99, -33}), m.h(new byte[]{15, -120, -59}, new byte[]{62, -72, -11, 126, -93, -66, 90, -125}))));
                intent.putExtra(m.h(new byte[]{15, -11, -127, 7, -54, -109, -81, 78, 56}, new byte[]{76, -72, -34, 111, -81, -6, -56, 38}), Integer.parseInt(h0.b.o().loadString(m.h(new byte[]{-83, -126, 26, 46, -68, -9, -28, 97, -102}, new byte[]{-18, -49, 69, 70, -39, -98, -125, 9}), m.h(new byte[]{-15, 122, 101}, new byte[]{-64, 74, 85, -113, -63, ByteCompanionObject.MIN_VALUE, -63, -65}))));
                intent.putExtra(m.h(new byte[]{-60, 0, 105, 89, -56, -44, -64, 126, -17, 14, 87, 73, -64, -55, -38}, new byte[]{-126, 67, 54, 59, -89, -96, -76, 17}), Integer.parseInt(h0.b.o().loadString(m.h(new byte[]{-34, 103, 36, 80, 110, 102, 93, 75, -11, 105, 26, 64, 102, 123, 71}, new byte[]{-104, 36, 123, 50, 1, 18, 41, 36}), m.h(new byte[]{65, -40, 52}, new byte[]{112, -24, 4, 126, -37, -38, 41, -46}))));
                intent.putExtra(m.h(new byte[]{36, -123, -93, -48, -72, 46, -4, 11, 3, -76, -101, -43, -77}, new byte[]{98, -58, -4, -68, -35, 72, -120, 70}), Integer.parseInt(h0.b.o().loadString(m.h(new byte[]{34, 67, 63, 2, 8, 52, 58, -16, 5, 114, 7, 7, 3}, new byte[]{100, 0, 96, 110, 109, 82, 78, -67}), m.h(new byte[]{-10, 4, 87}, new byte[]{-63, 49, 103, 62, -108, 17, 76, 66}))));
                intent.putExtra(m.h(new byte[]{84, -69, -97, 17, -9, -30, 68, -18}, new byte[]{18, -8, -64, 102, -98, -122, 48, -122}), Integer.parseInt(h0.b.o().loadString(m.h(new byte[]{-80, 103, -101, 22, -85, 116, 95, -19}, new byte[]{-10, 36, -60, 97, -62, 16, 43, -123}), m.h(new byte[]{74, 89, 45}, new byte[]{123, 105, 29, 4, -54, 39, -20, -41}))));
                intent.putExtra(m.h(new byte[]{-26, 113, 108, 66, 63, ByteCompanionObject.MAX_VALUE, -63, 81, -44}, new byte[]{-96, 50, 51, 42, 90, 22, -90, 57}), Integer.parseInt(h0.b.o().loadString(m.h(new byte[]{55, 8, -103, 106, 28, 33, -21, 2, 5}, new byte[]{113, 75, -58, 2, 121, 72, -116, 106}), m.h(new byte[]{112, 106, -64}, new byte[]{65, 90, -16, 30, 73, 75, 106, -8}))));
                intent.putExtra(m.h(new byte[]{-119, 53, 107, -38, -45, 110, 75, -55, -78, Base64.padSymbol, 111, -4, -51, 73, 111, -23}, new byte[]{-60, 84, 27, -123, -110, 13, 63, -96}), Integer.parseInt(h0.b.o().loadString(m.h(new byte[]{20, 79, 52, 101, 46, 69, -41, 66, 47, 71, 48, 67, 48, 98, -13, 98}, new byte[]{89, 46, 68, 58, 111, 38, -93, 43}), m.h(new byte[]{-113, -94, 44}, new byte[]{-66, -108, 28, -44, 115, 88, -96, -94}))));
                intent.putExtra(m.h(new byte[]{-95, -21, -69, 68, -118, 86, -22, -92, -102, -29, -65, 98, -108, 113, -50, -124, -77, -51, -98}, new byte[]{-20, -118, -53, 27, -53, 53, -98, -51}), Integer.parseInt(h0.b.o().loadString(m.h(new byte[]{91, 89, -96, -31, 28, -54, 94, 55, 96, 81, -92, -57, 2, -19, 122, 23, 73, ByteCompanionObject.MAX_VALUE, -123}, new byte[]{22, 56, -48, -66, 93, -87, 42, 94}), m.h(new byte[]{-19, 91, 44}, new byte[]{-36, 109, 28, 78, -115, 57, -125, -114}))));
                intent.putExtra(m.h(new byte[]{-6, -16, -51, 99, 120, 51, 19, -95, -63, -8, -55, 69, 102, 22, 50, -124, -5, -62, -2, 110, 124, 21, 41, -105, -16, -60}, new byte[]{-73, -111, -67, 60, 57, 80, 103, -56}), h0.b.o().loadBoolean(m.h(new byte[]{33, -4, -23, 16, 43, -106, 21, -36, 26, -12, -19, 54, 53, -77, 52, -7, 32, -50, -38, 29, 47, -80, 47, -22, 43, -56}, new byte[]{108, -99, -103, 79, 106, -11, 97, -75}), true));
                intent.putExtra(m.h(new byte[]{-110, -68, -87, -105, -98, -86, -67, 125, -87, -76, -83, -79, ByteCompanionObject.MIN_VALUE, -124, -120, 76, ByteCompanionObject.MIN_VALUE, -115, -100, -102, -103, -122, -101, 89, -98, -109, -102, -115}, new byte[]{-33, -35, -39, -56, -33, -55, -55, 20}), h0.b.o().loadBoolean(m.h(new byte[]{-73, 125, -74, -27, 9, 59, -65, 77, -116, 117, -78, -61, 23, 21, -118, 124, -91, 76, -125, -24, 14, 23, -103, 105, -69, 82, -123, -1}, new byte[]{-6, 28, -58, -70, 72, 88, -53, 36}), false));
                k.r(context, intent);
                break;
            case 7:
                Intent intent2 = new Intent(m.h(new byte[]{-12, -15, 4, 95, -44, 43, -6}, new byte[]{-77, -98, 91, 25, -95, 94, -106, 19}));
                intent2.putExtra(m.h(new byte[]{-77, -56, -83, 118, -11, 104, -100, 105, -118, -28}, new byte[]{-29, -99, -7, 41, -84, 36, -13, 31}), n3.d);
                k.r(context, intent2);
                break;
            case 8:
                p0.b.g(context, false);
                break;
            default:
                e eVar = new e(context);
                h0.b.o().saveBoolean(e.f4555h, true);
                Log.i(j.f4564l, m.h(new byte[]{-76, -66, -112, -43, 27, 60, -126, ByteCompanionObject.MIN_VALUE, -91, -70, -102, -28, 34, 39, -71, ByteCompanionObject.MIN_VALUE, -93, -78, -102, -52, 0, 58, -107, -116, -25, -66, -106, -58, 41, 48, -97, -44}, new byte[]{-57, -42, -1, -94, 77, 85, -15, -23}) + e.e());
                new j(context, eVar, null).h(1);
                break;
        }
    }
}
