package e0;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.Intent;
import android.os.Build$VERSION;
import android.os.PowerManager;
import android.util.Log;
import androidx.core.content.ContextCompat;
import com.example.navistart.MainActivity;
import com.example.navistart.MyA11yService;
import com.example.navistart.MyCarReceiver;
import com.example.navistart.boot;
import com.example.navistart.cores.CarCmdProxy;
import com.example.navistart.cores.ColorText;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledFuture;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class z1 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MyCarReceiver f2013b;
    public final /* synthetic */ Context c;
    public final /* synthetic */ Context d;
    public final /* synthetic */ String e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Intent f2014f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ z1(MyCarReceiver myCarReceiver, Context context, Context context2, String str, Intent intent) {
        this.f2013b = myCarReceiver;
        this.c = context;
        this.d = context2;
        this.e = str;
        this.f2014f = intent;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        int i9;
        MyCarReceiver myCarReceiver = this.f2013b;
        myCarReceiver.f791b = this.c;
        i0.a aVarM = myCarReceiver.m();
        String strH = m.h(new byte[]{30, 56, -102, 27, 24}, new byte[]{110, 87, -19, 126, 106, 90, -80, 43});
        Context context = this.d;
        if (((PowerManager) context.getSystemService(strH)).isInteractive()) {
            if (!MyCarReceiver.f785n.booleanValue()) {
                h0.b.v(m.h(new byte[]{3, 10, 101, 85, -41, 90, -80, 104, Base64.padSymbol, 4, 117, 85, -41, 90, -86, 104, 56, 0, 77, 101, -43}, new byte[]{83, 101, 18, 48, -91, 5, -3, 9}));
                MyCarReceiver.f785n = Boolean.TRUE;
            }
        } else if (MyCarReceiver.f785n.booleanValue()) {
            h0.b.v(m.h(new byte[]{-7, 34, -119, -103, -95, -14, 29, 55, -57, 44, -103, -103, -95, -14, 7, 55, -62, 40, -95, -77, -75, -53}, new byte[]{-87, 77, -2, -4, -45, -83, 80, 86}));
            MyCarReceiver.f785n = Boolean.FALSE;
        }
        m.c();
        if (MyCarReceiver.f787p == 0) {
            MyCarReceiver.f787p = h0.b.o().loadInt(m.h(new byte[]{4, -127, 69, 59, -98, -88, 41, 0, 17, -110, 75}, new byte[]{112, -28, 46, 77, -15, -52, 118, 115}), 1);
        }
        d0.d(context);
        if (MainActivity.w() || MainActivity.v(context)) {
            throw null;
        }
        if (MyCarReceiver.k().booleanValue()) {
            String strH2 = m.h(new byte[]{-67, 103, -61, 18, 6, -46, Base64.padSymbol, 115, -75, 103, -45, 5, 7, -49, 119, 60, -65, 125, -50, 15, 7, -107, 13, 20, -111, 76, -8, 52, 32, -8, 18}, new byte[]{-36, 9, -89, 96, 105, -69, 89, 93});
            String str = this.e;
            if (str.equals(strH2)) {
                MyCarReceiver.n();
                MyCarReceiver.f780i = h0.b.a().e().f1919b;
                Boolean bool = h0.b.a().e().c;
                if (!MyCarReceiver.f781j && bool.booleanValue()) {
                    myCarReceiver.p();
                    h0.b.v(m.h(new byte[]{-27, 2, 105, 41, -79, 106, 35, 7, -8, 25, 120, 51, -66, 110, 62, 0, -14, 8, 116, 34, -79, 125, 50, 17, -8, 25}, new byte[]{-73, 87, 39, 118, -16, 41, 119, 78}));
                }
                if (MyCarReceiver.f781j && !bool.booleanValue()) {
                    ConcurrentHashMap concurrentHashMap = myCarReceiver.f790a;
                    Iterator it = concurrentHashMap.values().iterator();
                    while (it.hasNext()) {
                        ((ScheduledFuture) it.next()).cancel(true);
                    }
                    concurrentHashMap.clear();
                    h0.b.v(m.h(new byte[]{13, -47, -77, -74, 57, 118, 21, 103, 16, -54, -94, -84, 54, 114, 8, 96, 26, -37, -82, -67, 57, 97, 4, 113, 16, -62, -69}, new byte[]{95, -124, -3, -23, 120, 53, 65, 46}));
                }
                MyCarReceiver.f781j = bool.booleanValue();
                MyCarReceiver.f782k = h0.b.a().e().d;
                MyCarReceiver.f788q = h0.b.a().e().f1920f;
                MyCarReceiver.f786o = h0.b.a().e().e;
                d0.d(context);
                h0.b.v(m.h(new byte[]{36, -119, -35, 99, 91, -119, 23, 16, 36, -94, -35, 110, 91, -122, 23, 28, -44, -59, -113, 3, 63, -39, 122, 67, 65, -60, -78, 3, 63, -40, 70, 67, 68, -59, -113, 2, 9, -40, 70, 67, 68, 46, 45}, new byte[]{-12, 20, 13, -45, -118, 9, -58, -109}) + h0.b.a().e().d + m.h(new byte[]{70, -35, -49, 44, 28, -32, -112, 117, -49, -36, -28, 44, 17, -32, -109, -124, -100, -65, -67, 66, 121, -124, -6, 28, -99, -113, -67, 73, 121, -117, -5, 40, 118, 45}, new byte[]{76, 13, 109, -4, -87, 48, 42, -92}) + MyCarReceiver.f786o + m.h(new byte[]{-121, 93, -18, -107, 67, -6, 106, 87, 62, 93, -54, -108, 115, -6, 103, 87, 54, 92, -10, 101, 33, -99, 2, 55, 93, 50, -85, -58, 32, -93, 2, 50, 93, 48, 64, 101}, new byte[]{-115, -115, 122, 69, -15, 42, -46, -121}) + h0.b.a().e().c + m.h(new byte[]{-12, 74, 124, -12, 124, 125, -98, 76, 126, 74, 99, -11, 71, 124, -94, 76, 114, -70, 13, -108, 22, 31, -15, 31, 46, 36, 13, -104, 22, 19, -16, 44, 46, 34, 13, -97, 23, 34, 26, -67}, new byte[]{-2, -102, -35, 36, -58, -83, 32, -99}) + h0.b.a().e().f1920f + "\n");
                Set<Thread> setKeySet = Thread.getAllStackTraces().keySet();
                int iA = w.a();
                int i10 = (((int) Runtime.getRuntime().totalMemory()) / 1024) / 1024;
                StringBuilder sb = new StringBuilder();
                com.google.protobuf.q.t(new byte[]{54, -60, -48, -23, 33, 109, 56, -2}, new byte[]{123, -95, -67, -122, 83, 20, 2, -34}, sb, i10);
                sb.append(m.h(new byte[]{-115, 70, -66, 26, -62, 62, -76, 77, -74, 97, -78, 110, -21, 47, -91, 69, -92, 119, -88, 26}, new byte[]{-64, 4, -110, 58, -125, 93, -64, 36}));
                sb.append(Thread.activeCount());
                sb.append(m.h(new byte[]{-114, 51, 41, -7, 69, -3, 99, -55, -42, 123, 15, -13, 80, -8, 124, -45, -126}, new byte[]{-94, 19, 125, -106, 49, -100, 15, -23}));
                sb.append(setKeySet.size());
                h0.b.w(com.google.protobuf.q.j(new byte[]{-118, 16, 95, -52, 115, -115, -97, 51, -11, 89, 116, -36, 44, -40}, new byte[]{-90, 48, 14, -71, 22, -8, -6, 19}, sb, iA), (iA < 50 || i10 < 50) ? ColorText.GREEN : ColorText.RED);
                ((v1.b) v1.d.a().f5516a.get(v1.b.class)).f5509a.postValue(Boolean.valueOf(MyA11yService.f()));
                d0.d(context);
                int i11 = MyCarReceiver.f787p;
                int i12 = MyCarReceiver.f786o;
                if (i11 == i12) {
                    myCarReceiver.l();
                } else if (i12 != 0) {
                    h0.b.a();
                    h0.b.d().carsetvent(1, 1);
                    h0.b.a();
                    h0.b.d().carsetheat(1, 1);
                    h0.b.a();
                    h0.b.d().carsetvent(1, 2);
                    h0.b.a();
                    h0.b.d().carsetheat(1, 2);
                    d0.d(context);
                    h0.b.a();
                    CarCmdProxy carCmdProxyD = h0.b.d();
                    Boolean bool2 = Boolean.FALSE;
                    carCmdProxyD.rulheatonoff(bool2);
                    h0.b.a();
                    h0.b.d().lobheatonoff(bool2);
                    h0.b.a();
                    h0.b.d().zadheatonoff(bool2);
                    MyCarReceiver.j();
                    MyCarReceiver.f787p = MyCarReceiver.f786o;
                    h0.b.o().saveInt(m.h(new byte[]{-9, 47, 64, -120, -70, -59, 7, 9, -30, 60, 78}, new byte[]{-125, 74, 43, -2, -43, -95, 88, 122}), MyCarReceiver.f786o);
                }
                MyCarReceiver.b(context);
                d0.d(context);
                if (h0.b.o().loadBoolean(m.h(new byte[]{-83, 54, ByteCompanionObject.MAX_VALUE, 9, -90, -80, -3, -126, -78, 57, 94, 18, -126, -96, -19}, new byte[]{-3, 87, 13, 98, -25, -59, -119, -19}), false) && (i9 = MyCarReceiver.f788q) > 0 && i9 < h0.b.o().loadInt(m.h(new byte[]{-108, -125, -92, 26, -102, -96, 74, 93, -95, -121, -78, 39, -76, -94, 108, 72}, new byte[]{-60, -30, -42, 113, -43, -50, 25, 45}), 0)) {
                    h0.b.a();
                    h0.b.d().parkonoff(Boolean.TRUE);
                }
                myCarReceiver.m3643p(boot.c(context), true);
            }
            if (str.equals(m.h(new byte[]{97, 66, -64, 65, 80, -117, -80, -25, 105, 66, -48, 86, 81, -106, -6, -88, 99, 88, -51, 92, 81, -52, -127, -102, 69, 126, -5, 99, 109, -89, -121, -116, 78, 120}, new byte[]{0, 44, -92, 51, 63, -30, -44, -55}))) {
                h0.b.v(m.h(new byte[]{-32, -63, -91, 96, 24, -63, -60, -103, -22, -16, -74, 70, 47, -19, -30, -95, -48, -6, -92, 64, 41, -5, -3, -67, -54, -4, -78, 75, 47, -124}, new byte[]{-113, -81, -9, 5, 123, -92, -83, -17}));
            }
            if (str.equals(m.h(new byte[]{96, -57, 88, 55, -64, 48, -50, 79, 104, -57, 72, 32, -63, 45, -124, 0, 98, -35, 85, 42, -63, 119, -7, 34, 83, -20, 121, 11, -16, 22, -28}, new byte[]{1, -87, 60, 69, -81, 89, -86, 97})) && MyCarReceiver.k().booleanValue()) {
                Log.e(m.h(new byte[]{-63, -68, -125, 36, -58, 15, -94, -74, -23, -84, -74, 32, -58}, new byte[]{-116, -59, -64, 69, -76, 93, -57, -43}), m.h(new byte[]{4, 73, -5, 96, -103, -29, -119, 69, 14, 120, -24, 70, -82, -49, -81, 125, 52, 116, -22, 87, -65, -61, -82, 108, 36, 105}, new byte[]{107, 39, -87, 5, -6, -122, -32, 51}));
                long jCurrentTimeMillis = System.currentTimeMillis();
                MyCarReceiver.f777f = h0.b.o().loadLong(m.h(new byte[]{-28, 97, 95, -24, 65, -68, 115, -99, -26, 112, 78, -28, 64, -83, 99, ByteCompanionObject.MIN_VALUE, -6, 118, 66, -20, 75, -96, 115, -118, -32, 110, 74, -8}, new byte[]{-91, 34, 11, -95, 14, -14, 44, -50}), jCurrentTimeMillis);
                h0.b.o().saveLong(m.h(new byte[]{46, 68, 98, 30, 41, 10, 89, -127, 44, 85, 115, 18, 40, 27, 73, -100, 48, 83, ByteCompanionObject.MAX_VALUE, 26, 35, 22, 89, -106, 42, 75, 119, 14}, new byte[]{111, 7, 54, 87, 102, 68, 6, -46}), jCurrentTimeMillis);
                h0.b.v(m.h(new byte[]{35, -63, 78, -106, -53, -51, 36, -77, 41, -16, 93, -80, -4, -31, 2, -117, 19, -4, 95, -95, -19, -19, 3, -102, 3, -31}, new byte[]{76, -81, 28, -13, -88, -88, 77, -59}));
                MyCarReceiver.f783l = true;
                h0.b.a().u();
                ((v1.b) v1.d.a().f5516a.get(v1.b.class)).f5510b.postValue(h0.b.a().e());
                d0.d(context);
                MyCarReceiver.n();
                MyCarReceiver.f786o = h0.b.a().e().e;
                h0.b.a();
                if (h0.b.l().c().equals(i0.a.f2633b)) {
                    myCarReceiver.i();
                }
                MyCarReceiver.q(context, true);
            }
            if (str.equals(m.h(new byte[]{-123, 119, 126, -104, -127, -36, -23, -43, -122, 117, 111, -113, -102, -38, -30, -113, -116, 55, 126, -113, -104, -36, -18, -98, -54, 120, 121, -98, -121, -38, -29, -43, -91, 90, 86, -75, -83, -6, -61, -75, -95, 90, 78, -81, -86}, new byte[]{-28, 25, 26, -22, -18, -75, -115, -5})) && MyCarReceiver.k().booleanValue()) {
                BluetoothDevice bluetoothDevice = (BluetoothDevice) this.f2014f.getParcelableExtra(m.h(new byte[]{-5, -9, 35, 44, -15, -60, -43, -97, -8, -11, 50, 59, -22, -62, -34, -59, -14, -73, 35, 59, -24, -60, -46, -44, -76, -4, 63, 42, -20, -52, -97, -11, -33, -49, 14, 29, -37}, new byte[]{-102, -103, 71, 94, -98, -83, -79, -79}));
                if (bluetoothDevice != null && (ContextCompat.checkSelfPermission(context, m.h(new byte[]{-82, -11, 75, 38, 87, 94, 122, -40, -65, -2, 93, 57, 81, 68, 109, -97, -96, -11, 1, 22, 116, 98, 91, -94, ByteCompanionObject.MIN_VALUE, -44, 123, 28, 103, 116, 81, -72, -127, -34, 108, 0}, new byte[]{-49, -101, 47, 84, 56, 55, 30, -10})) == 0 || Build$VERSION.SDK_INT < 31)) {
                    m.f1890a = Boolean.TRUE;
                    m.f1891b = bluetoothDevice.getName();
                }
                MyCarReceiver.f786o = h0.b.a().e().e;
                MyCarReceiver.b(context);
                h0.b.v(m.h(new byte[]{93, 99, -95, -52, 59, -56, -18, -3, 119, 80, -105, -26, 1, -23, -60, -54, 75, 74, -112, -119, 98, -121}, new byte[]{31, 15, -44, -87, 79, -89, -127, -119}) + m.f1891b);
            }
            d0.d(context);
        }
        boolean z8 = MyCarReceiver.f781j;
        if (z8 && MyCarReceiver.f783l && MyCarReceiver.f784m) {
            MyCarReceiver.f784m = false;
            myCarReceiver.o();
            h0.b.w(m.h(new byte[]{49, -88, -118, -9, 40, -69, 27, 117, 55, -76, -120, -5, 40, -95, 11, 104, 43, -76, -104, -16}, new byte[]{116, -26, -51, -66, 102, -2, 68, 38}), ColorText.RED);
        } else if (!z8 && !MyCarReceiver.f783l && !MyCarReceiver.f784m) {
            MyCarReceiver.f784m = true;
        }
        try {
            h0.b.a();
            h0.b.g().a(context, aVarM);
        } catch (Exception unused) {
        }
        if (h0.b.o().loadBoolean(m.h(new byte[]{-51, 52, -77, -38, 103, -122, -110, 73, -43, 28, -125, -46, 81, -126, -121, 70}, new byte[]{-66, 67, -20, -68, 14, -19, -31, 32}), false)) {
            k0.a.a(context, false);
        }
        myCarReceiver.a();
    }
}
