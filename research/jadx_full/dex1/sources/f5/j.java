package f5;

import android.app.PendingIntent;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothClass;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.Intent;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import android.media.AudioRecord;
import android.os.Build$VERSION;
import android.util.Log;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import android.widget.Toast;
import androidx.recyclerview.widget.RecyclerView;
import com.example.navistart.LounchB;
import com.example.navistart.MockGPS.MockGpsService;
import com.example.navistart.cores.ColorText;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.carousel.CarouselLayoutManager;
import com.hoho.android.usbserial.driver.UsbSerialDriver;
import com.hoho.android.usbserial.driver.UsbSerialProber;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.jvm.internal.ByteCompanionObject;
import m0.w1;
import n7.j1;
import o7.a3;
import o7.g4;
import o7.h4;
import s1.q0;
import s1.x0;
import w0.b1;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class j implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2209b;
    public final /* synthetic */ Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ j(int i9, Object obj) {
        this.f2209b = i9;
        this.c = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r10v10, resolved type: java.lang.Object[] */
    /* JADX DEBUG: Multi-variable search result rejected for r10v11, resolved type: java.lang.Object[] */
    /* JADX DEBUG: Multi-variable search result rejected for r10v15, resolved type: java.lang.Object[] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        List<UsbSerialDriver> listFindAllDrivers;
        int iCargetvent;
        boolean z8 = false;
        int i9 = 0;
        z8 = false;
        switch (this.f2209b) {
            case 0:
                k kVar = (k) this.c;
                boolean z9 = kVar.c;
                if ((!z9 || !kVar.d) && z9) {
                    z8 = true;
                }
                kVar.c = z8;
                return;
            case 1:
                g0.e eVar = (g0.e) this.c;
                eVar.setVisibility(0);
                eVar.setAlpha(0.0f);
                eVar.setScaleX(0.8f);
                eVar.setScaleY(0.8f);
                eVar.setPivotX(eVar.getWidth() / 2.0f);
                eVar.setPivotY(eVar.getHeight() / 2.0f);
                ViewPropertyAnimator viewPropertyAnimator = eVar.f2337h;
                if (viewPropertyAnimator != null) {
                    viewPropertyAnimator.scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setDuration(300L).start();
                    return;
                }
                return;
            case 2:
                h0.b.w(((h0.b) this.c).j().run(), ColorText.RED);
                return;
            case 3:
                MaterialButton.a((MaterialButton) this.c);
                return;
            case 4:
                ((AccessibilityNodeInfo) this.c).performAction(16);
                return;
            case 5:
                b1.m mVar = (b1.m) this.c;
                ((k2.h) ((l2.c) mVar.f270f)).c0(new androidx.fragment.app.h(16, mVar));
                return;
            case 6:
                ((CarouselLayoutManager) this.c).requestLayout();
                return;
            case 7:
                m0.e0 e0Var = (m0.e0) this.c;
                String str = m0.e0.A;
                e0Var.z();
                RecyclerView recyclerView = e0Var.f3390l;
                if (recyclerView == null) {
                    return;
                }
                recyclerView.post(new c7.e(e0Var, false, 7));
                return;
            case 8:
                w1 w1Var = (w1) this.c;
                w1Var.f3616b.scrollToPosition(w1Var.f3617f.size() - 1);
                return;
            case 9:
                o7.j jVar = (o7.j) this.c;
                l.d dVar = jVar.d;
                if (dVar != null) {
                    j1 j1Var = (j1) dVar.c;
                    if (!j1Var.d && !j1Var.c) {
                        dVar.j();
                    }
                }
                jVar.c = null;
                return;
            case 10:
                ((a3) this.c).e();
                return;
            case 11:
                h4 h4Var = ((g4) this.c).e;
                h4Var.c.a(new com.bumptech.glide.m(22, h4Var));
                return;
            case 12:
                q0.p pVar = (q0.p) this.c;
                while (pVar.d.get()) {
                    if (!pVar.e) {
                        try {
                            if (q0.p.c().booleanValue()) {
                                pVar.e = true;
                            }
                            break;
                        } catch (Exception unused) {
                        }
                    }
                    long j9 = pVar.f4817h;
                    if (pVar.f4815f && pVar.f4816g && j9 > 0 && System.currentTimeMillis() - j9 > 4000 && !pVar.f4818i) {
                        pVar.f4818i = true;
                        pVar.f4814b.g();
                        MockGpsService mockGpsService = pVar.f4814b;
                        String string = pVar.f4813a.getString(2131952216);
                        String strA = pVar.a();
                        mockGpsService.getClass();
                        MockGpsService.j(string, strA, true);
                    }
                    try {
                        Thread.sleep(100L);
                    } catch (InterruptedException unused2) {
                        Thread.currentThread().interrupt();
                    }
                }
                return;
            case 13:
                q0.r rVar = (q0.r) this.c;
                Context context = rVar.f4834a;
                MockGpsService mockGpsService2 = rVar.f4835b;
                while (rVar.d.get()) {
                    if (!rVar.f4846p) {
                        try {
                            if (q0.r.c().booleanValue()) {
                                rVar.f4846p = true;
                            }
                            break;
                        } catch (Exception unused3) {
                        }
                    }
                    String strG = rVar.g();
                    if (strG != null) {
                        String strF = rVar.f(rVar.f4844n > 0 ? rVar.f4844n : rVar.f4837g, strG);
                        try {
                            try {
                                String string2 = context.getString(2131952217);
                                mockGpsService2.getClass();
                                MockGpsService.j(string2, strF, false);
                                rVar.e(strG, strF);
                            } catch (IOException e) {
                                String string3 = context.getString(2131952280, e.getMessage());
                                mockGpsService2.getClass();
                                MockGpsService.j(string3, strF, false);
                                Log.d(rVar.f4840j, e0.m.h(new byte[]{-77, 104, -7, 44, -12, 36, -4, 95, -79, 94, -76, 51, -27, 36, -82, 56, -108, 99, -11, 53, -31, 40, -80, 121, -125, 97, -15, 121, -96}, new byte[]{-31, 13, -108, 67, ByteCompanionObject.MIN_VALUE, 65, -36, 24}) + e.getMessage());
                            }
                            rVar.d();
                            mockGpsService2.h();
                            try {
                                Thread.sleep(1500L);
                            } catch (InterruptedException unused4) {
                                Thread.currentThread().interrupt();
                            }
                        } catch (Throwable th) {
                            rVar.d();
                            mockGpsService2.h();
                            throw th;
                        }
                        break;
                    } else {
                        String str2 = rVar.f4839i;
                        String strA2 = rVar.a();
                        mockGpsService2.getClass();
                        MockGpsService.j(str2, strA2, false);
                        mockGpsService2.h();
                        try {
                            Thread.sleep(1500L);
                        } catch (InterruptedException unused5) {
                            Thread.currentThread().interrupt();
                        }
                    }
                }
                return;
            case 14:
                q0.t tVar = (q0.t) this.c;
                UsbManager usbManager = tVar.c;
                Context context2 = tVar.f4859a;
                MockGpsService mockGpsService3 = tVar.f4860b;
                while (tVar.e.get()) {
                    if (!tVar.f4866k) {
                        try {
                            if (q0.t.c().booleanValue()) {
                                tVar.f4866k = true;
                            }
                            break;
                        } catch (Exception unused6) {
                        }
                    }
                    if (usbManager == null) {
                        String string4 = context2.getString(2131952285);
                        String strA3 = tVar.a();
                        mockGpsService3.getClass();
                        MockGpsService.j(string4, strA3, false);
                        mockGpsService3.h();
                        try {
                            Thread.sleep(1500L);
                        } catch (InterruptedException unused7) {
                            Thread.currentThread().interrupt();
                        }
                    } else {
                        UsbManager usbManager2 = tVar.c;
                        UsbSerialDriver usbSerialDriver = (usbManager2 == null || (listFindAllDrivers = UsbSerialProber.getDefaultProber().findAllDrivers(usbManager2)) == null || listFindAllDrivers.isEmpty()) ? null : listFindAllDrivers.get(0);
                        if (usbSerialDriver == null) {
                            String string5 = context2.getString(2131952288);
                            String strA4 = tVar.a();
                            mockGpsService3.getClass();
                            MockGpsService.j(string5, strA4, false);
                            mockGpsService3.h();
                            try {
                                Thread.sleep(1500L);
                            } catch (InterruptedException unused8) {
                                Thread.currentThread().interrupt();
                            }
                        } else {
                            UsbDevice device = usbSerialDriver.getDevice();
                            String strF2 = tVar.f(device);
                            if (usbManager.hasPermission(device)) {
                                try {
                                    try {
                                        tVar.e(usbSerialDriver, strF2);
                                    } catch (IOException e6) {
                                        String string6 = context2.getString(2131952293, e6.getMessage());
                                        mockGpsService3.getClass();
                                        MockGpsService.j(string6, strF2, false);
                                        Log.d(q0.t.f4857n, e0.m.h(new byte[]{-72, -81, -98, 125, -80, -126, 1, -30, -104, -110, -67, 43, -106, -69, 62, -93, -113, -112, -71, 103, -41}, new byte[]{-19, -4, -36, 93, -9, -46, 82, -62}) + e6.getMessage());
                                    }
                                    tVar.d();
                                    mockGpsService3.h();
                                    try {
                                        Thread.sleep(1500L);
                                    } catch (InterruptedException unused9) {
                                        Thread.currentThread().interrupt();
                                    }
                                } catch (Throwable th2) {
                                    tVar.d();
                                    mockGpsService3.h();
                                    throw th2;
                                }
                                break;
                            } else {
                                int i10 = Build$VERSION.SDK_INT >= 31 ? 167772160 : 134217728;
                                Intent intent = new Intent(q0.t.f4858o);
                                intent.setPackage(context2.getPackageName());
                                usbManager.requestPermission(device, PendingIntent.getBroadcast(context2, 0, intent, i10));
                                String string7 = context2.getString(2131952291);
                                mockGpsService3.getClass();
                                MockGpsService.j(string7, strF2, false);
                                mockGpsService3.h();
                                try {
                                    Thread.sleep(3000L);
                                } catch (InterruptedException unused10) {
                                    Thread.currentThread().interrupt();
                                }
                            }
                        }
                    }
                }
                return;
            case 15:
                b1.m mVar2 = (b1.m) this.c;
                ((t1.j) mVar2.d).d((LounchB) mVar2.f270f);
                return;
            case 16:
                ((s1.b) this.c).a();
                return;
            case 17:
                s1.f0 f0Var = (s1.f0) this.c;
                q0 q0Var = f0Var.c;
                int iW = q0Var.F;
                int iW2 = q0Var.G;
                int iW3 = q0Var.H;
                int iW4 = q0Var.I;
                try {
                    h0.b.a();
                    iW = q0.w(h0.b.d().cargetheat(1));
                    h0.b.a();
                    iW2 = q0.w(h0.b.d().cargetvent(1));
                    h0.b.a();
                    iW3 = q0.w(h0.b.d().cargetheat(2));
                    h0.b.a();
                    iW4 = q0.w(h0.b.d().cargetvent(2));
                    break;
                } catch (Throwable unused11) {
                }
                q0Var.r.post(new s1.g0(f0Var, iW, iW2, iW3, iW4));
                return;
            case 18:
                ((t1.a) this.c).c.setVisibility(8);
                return;
            case 19:
                t1.k kVar2 = (t1.k) this.c;
                kVar2.f5372b.d(kVar2.d);
                return;
            case 20:
                w0.g gVar = (w0.g) this.c;
                try {
                    AudioRecord audioRecord = gVar.e;
                    if (audioRecord != null && audioRecord.getRecordingState() == 3) {
                        AudioRecord audioRecord2 = gVar.e;
                        byte[] bArr = gVar.f5630j;
                        int i11 = audioRecord2.read(bArr, 0, bArr.length, 1);
                        if (i11 <= 0) {
                            String str3 = gVar.r;
                            if (str3 != null && !str3.trim().isEmpty() && System.currentTimeMillis() >= gVar.f5638s) {
                                String str4 = gVar.r;
                                gVar.r = "";
                                gVar.f5638s = 0L;
                                gVar.i(str4);
                                return;
                            }
                            return;
                        }
                        if (w0.g.f5622u != w0.b.d) {
                            gVar.j(w0.b.c);
                        }
                        gVar.m(gVar.k(i11));
                        String str5 = gVar.r;
                        if (str5 != null && !str5.trim().isEmpty() && System.currentTimeMillis() >= gVar.f5638s) {
                            String str6 = gVar.r;
                            gVar.r = "";
                            gVar.f5638s = 0L;
                            gVar.i(str6);
                            return;
                        }
                        return;
                    }
                    gVar.n();
                    return;
                } catch (Exception unused12) {
                    gVar.n();
                    return;
                }
            case 21:
                Toast.makeText(((w0.x) ((n.p) this.c).c).f5816m, 2131952795, 1).show();
                return;
            case 22:
                b1 b1Var = (b1) this.c;
                synchronized (b1Var) {
                    try {
                        if (b1Var.e) {
                            return;
                        }
                        int i12 = b1Var.f5601f;
                        try {
                            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                            if (defaultAdapter == null) {
                                return;
                            }
                            if (!defaultAdapter.isEnabled()) {
                                synchronized (b1Var) {
                                    try {
                                        if (!b1Var.e && i12 == b1Var.f5601f) {
                                            b1Var.c.f0("");
                                        }
                                    } catch (Throwable th3) {
                                        throw th3;
                                    }
                                    break;
                                }
                                return;
                            }
                            Method declaredMethod = BluetoothDevice.class.getDeclaredMethod(e0.m.h(new byte[]{-92, -110, -96, 119, -56, -5, -22, -36, -71, -124, -121}, new byte[]{-51, -31, -29, 24, -90, -107, -113, -65}), null);
                            ArrayList arrayList = new ArrayList();
                            for (BluetoothDevice bluetoothDevice : defaultAdapter.getBondedDevices()) {
                                BluetoothClass bluetoothClass = bluetoothDevice.getBluetoothClass();
                                if ((bluetoothClass != null && bluetoothClass.getMajorDeviceClass() == 512) != false && Boolean.TRUE.equals(declaredMethod.invoke(bluetoothDevice, null))) {
                                    arrayList.add(bluetoothDevice.getAddress());
                                }
                            }
                            synchronized (b1Var) {
                                try {
                                    if (!b1Var.e && i12 == b1Var.f5601f && arrayList.size() == 1) {
                                        b1Var.c.e0((String) arrayList.get(0));
                                    }
                                } catch (Throwable th4) {
                                    throw th4;
                                }
                                break;
                            }
                            return;
                            Log.d(e0.m.h(new byte[]{13, -47, -86, -78, 82, 59, -64, 7, 53, -37, -127, -66, 88, 0}, new byte[]{91, -66, -61, -47, 55, 107, -88, 104}), e0.m.h(new byte[]{117, 56, -36, 121, -53, 58, 73, -117, 76, 62, -38, 99, -57, 123, 86, -33, 93, 34, -48, 45, -41, 53, 68, -35, 93, 63, -39, 108, -64, 55, 64, -112, 28, 55, -62, 108, -53, 47, 76, -59, 91, 118, -42, 98, -52, 53, 64, -56, 72, 63, -38, 99, -126, 62, 83, -50, 82, 34, -107, 98, -48, 123, 70, -54, 80, 58, -107, ByteCompanionObject.MAX_VALUE, -57, 42, 80, -50, 79, 34}, new byte[]{60, 86, -75, 13, -94, 91, 37, -85}));
                            return;
                        } catch (Exception unused13) {
                            Log.d(e0.m.h(new byte[]{13, -47, -86, -78, 82, 59, -64, 7, 53, -37, -127, -66, 88, 0}, new byte[]{91, -66, -61, -47, 55, 107, -88, 104}), e0.m.h(new byte[]{117, 56, -36, 121, -53, 58, 73, -117, 76, 62, -38, 99, -57, 123, 86, -33, 93, 34, -48, 45, -41, 53, 68, -35, 93, 63, -39, 108, -64, 55, 64, -112, 28, 55, -62, 108, -53, 47, 76, -59, 91, 118, -42, 98, -52, 53, 64, -56, 72, 63, -38, 99, -126, 62, 83, -50, 82, 34, -107, 98, -48, 123, 70, -54, 80, 58, -107, ByteCompanionObject.MAX_VALUE, -57, 42, 80, -50, 79, 34}, new byte[]{60, 86, -75, 13, -94, 91, 37, -85}));
                            return;
                        }
                    } catch (Throwable th5) {
                        throw th5;
                    }
                }
            case 23:
                ((LinearLayout) this.c).performClick();
                return;
            default:
                t1.l lVar = (t1.l) this.c;
                HashMap map = new HashMap();
                x0.c cVar = (x0.c) lVar.c;
                ArrayList arrayList2 = cVar.c.f6018u;
                int size = arrayList2.size();
                while (i9 < size) {
                    Object obj = arrayList2.get(i9);
                    i9++;
                    x0.m mVar3 = (x0.m) obj;
                    if (x0.c.i(mVar3)) {
                        try {
                            if (x0.c.h(mVar3)) {
                                h0.b.a();
                                iCargetvent = h0.b.d().cargetheat(x0.c.n(mVar3));
                            } else {
                                h0.b.a();
                                iCargetvent = h0.b.d().cargetvent(x0.c.n(mVar3));
                            }
                            if (iCargetvent >= 1 && iCargetvent <= 4) {
                                map.put(mVar3.f5993a, Integer.valueOf(iCargetvent - 1));
                            }
                        } catch (Exception e9) {
                            Log.w(e0.m.h(new byte[]{-83, 118, -30, -5, 102, 33, 4, 3, -103, 102, -26, -19}, new byte[]{-2, 3, -110, -98, 20, 118, 109, 103}), e0.m.h(new byte[]{88, -79, -80, -57, -100, -105, 123, -98, 111}, new byte[]{11, -44, -47, -77, -68, -27, 30, -1}), e9);
                        }
                    }
                }
                cVar.f5964b.post(new x0(11, lVar, map));
                return;
        }
    }
}
