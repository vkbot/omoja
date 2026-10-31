package p062f5;

import android.app.PendingIntent;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothClass;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.Intent;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import android.media.AudioRecord;
import android.os.Build;
import android.util.Log;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import android.widget.Toast;
import androidx.fragment.app.C0566h;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.RunnableC1054m;
import com.example.navistart.LounchB;
import com.example.navistart.MockGPS.MockGpsService;
import com.example.navistart.R;
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
import p016b1.C0872m;
import p032c7.RunnableC1001e;
import p047e0.AbstractC1387m;
import p067g0.C1603e;
import p078h0.C1652b;
import p111k2.C2036h;
import p120l.C2187d;
import p123l2.InterfaceC2199c;
import p132m0.C2283e0;
import p132m0.C2366w1;
import p141n.C2455p;
import p148n7.RunnableC2520j1;
import p157o7.C2603a3;
import p157o7.C2640g4;
import p157o7.C2646h4;
import p157o7.C2653j;
import p173q0.AbstractC3054r;
import p173q0.C3052p;
import p173q0.C3056t;
import p190s1.C3166q0;
import p190s1.RunnableC3144f0;
import p190s1.RunnableC3180x0;
import p190s1.TextureViewSurfaceTextureListenerC3135b;
import p198t1.C3223a;
import p198t1.C3232j;
import p198t1.C3233k;
import p198t1.RunnableC3234l;
import p225w0.C3445b1;
import p225w0.C3458g;
import p225w0.C3498x;
import p225w0.EnumC3443b;
import p235x0.C3549c;
import p235x0.C3559m;

/* JADX INFO: renamed from: f5.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1556j implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3827b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f3828c;

    public /* synthetic */ RunnableC1556j(int i10, Object obj) {
        this.f3827b = i10;
        this.f3828c = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        List<UsbSerialDriver> listFindAllDrivers;
        int iCargetvent;
        int i10 = 11;
        boolean z9 = false;
        int i11 = 0;
        z9 = false;
        switch (this.f3827b) {
            case 0:
                C1558k c1558k = (C1558k) this.f3828c;
                boolean z10 = c1558k.f3833c;
                if ((!z10 || !c1558k.f3834d) && z10) {
                    z9 = true;
                }
                c1558k.f3833c = z9;
                return;
            case 1:
                C1603e c1603e = (C1603e) this.f3828c;
                c1603e.setVisibility(0);
                c1603e.setAlpha(0.0f);
                c1603e.setScaleX(0.8f);
                c1603e.setScaleY(0.8f);
                c1603e.setPivotX(c1603e.getWidth() / 2.0f);
                c1603e.setPivotY(c1603e.getHeight() / 2.0f);
                ViewPropertyAnimator viewPropertyAnimator = c1603e.f4028h;
                if (viewPropertyAnimator != null) {
                    viewPropertyAnimator.scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setDuration(300L).start();
                    return;
                }
                return;
            case 2:
                C1652b.m2751w(((C1652b) this.f3828c).m2755j().run(), ColorText.RED);
                return;
            case 3:
                MaterialButton.m1772a((MaterialButton) this.f3828c);
                return;
            case 4:
                ((AccessibilityNodeInfo) this.f3828c).performAction(16);
                return;
            case 5:
                C0872m c0872m = (C0872m) this.f3828c;
                ((C2036h) ((InterfaceC2199c) c0872m.f604f)).m3136c0(new C0566h(16, c0872m));
                return;
            case 6:
                ((CarouselLayoutManager) this.f3828c).requestLayout();
                return;
            case 7:
                C2283e0 c2283e0 = (C2283e0) this.f3828c;
                String str = C2283e0.f6014A;
                c2283e0.m3682z();
                RecyclerView recyclerView = c2283e0.f6026l;
                if (recyclerView == null) {
                    return;
                }
                recyclerView.post(new RunnableC1001e(c2283e0, z9, 7));
                return;
            case 8:
                C2366w1 c2366w1 = (C2366w1) this.f3828c;
                c2366w1.f6396b.scrollToPosition(c2366w1.f6400f.size() - 1);
                return;
            case 9:
                C2653j c2653j = (C2653j) this.f3828c;
                C2187d c2187d = c2653j.f7534d;
                if (c2187d != null) {
                    RunnableC2520j1 runnableC2520j1 = (RunnableC2520j1) c2187d.f5705c;
                    if (!runnableC2520j1.f6981d && !runnableC2520j1.f6980c) {
                        c2187d.m3482j();
                    }
                }
                c2653j.f7533c = null;
                return;
            case 10:
                ((C2603a3) this.f3828c).mo3948e();
                return;
            case 11:
                C2646h4 c2646h4 = ((C2640g4) this.f3828c).f7492e;
                c2646h4.f7514c.m4168a(new RunnableC1054m(22, c2646h4));
                return;
            case 12:
                C3052p c3052p = (C3052p) this.f3828c;
                while (c3052p.f8607d.get()) {
                    if (!c3052p.f8608e) {
                        try {
                            if (C3052p.m4884c().booleanValue()) {
                                c3052p.f8608e = true;
                            }
                            break;
                        } catch (Exception unused) {
                        }
                    }
                    long j10 = c3052p.f8611h;
                    if (c3052p.f8609f && c3052p.f8610g && j10 > 0 && System.currentTimeMillis() - j10 > 4000 && !c3052p.f8612i) {
                        c3052p.f8612i = true;
                        c3052p.f8605b.m1459g();
                        MockGpsService mockGpsService = c3052p.f8605b;
                        String string = c3052p.f8604a.getString(R.string.mock_gps_connected_stale);
                        String strMo4863a = c3052p.mo4863a();
                        mockGpsService.getClass();
                        MockGpsService.m1454j(string, strMo4863a, true);
                    }
                    try {
                        Thread.sleep(100L);
                    } catch (InterruptedException unused2) {
                        Thread.currentThread().interrupt();
                    }
                }
                return;
            case 13:
                AbstractC3054r abstractC3054r = (AbstractC3054r) this.f3828c;
                Context context = abstractC3054r.f8631a;
                MockGpsService mockGpsService2 = abstractC3054r.f8632b;
                while (abstractC3054r.f8634d.get()) {
                    if (!abstractC3054r.f8646p) {
                        try {
                            if (AbstractC3054r.m4890c().booleanValue()) {
                                abstractC3054r.f8646p = true;
                            }
                            break;
                        } catch (Exception unused3) {
                        }
                    }
                    String strM4894g = abstractC3054r.m4894g();
                    if (strM4894g != null) {
                        String strM4893f = abstractC3054r.m4893f(abstractC3054r.f8644n > 0 ? abstractC3054r.f8644n : abstractC3054r.f8637g, strM4894g);
                        try {
                            try {
                                String string2 = context.getString(R.string.mock_gps_connecting);
                                mockGpsService2.getClass();
                                MockGpsService.m1454j(string2, strM4893f, false);
                                abstractC3054r.m4892e(strM4894g, strM4893f);
                            } catch (Throwable th) {
                                abstractC3054r.m4891d();
                                mockGpsService2.m1460h();
                                throw th;
                            }
                        } catch (IOException e) {
                            String string3 = context.getString(R.string.mock_gps_unavailable, e.getMessage());
                            mockGpsService2.getClass();
                            MockGpsService.m1454j(string3, strM4893f, false);
                            Log.d(abstractC3054r.f8640j, AbstractC1387m.m2421h(new byte[]{-77, 104, -7, 44, -12, 36, -4, 95, -79, 94, -76, 51, -27, 36, -82, 56, -108, 99, -11, 53, -31, 40, -80, 121, -125, 97, -15, 121, -96}, new byte[]{-31, 13, -108, 67, ByteCompanionObject.MIN_VALUE, 65, -36, 24}) + e.getMessage());
                        }
                        abstractC3054r.m4891d();
                        mockGpsService2.m1460h();
                        try {
                            Thread.sleep(1500L);
                        } catch (InterruptedException unused4) {
                            Thread.currentThread().interrupt();
                        }
                        break;
                    } else {
                        String str2 = abstractC3054r.f8639i;
                        String strMo4863a2 = abstractC3054r.mo4863a();
                        mockGpsService2.getClass();
                        MockGpsService.m1454j(str2, strMo4863a2, false);
                        mockGpsService2.m1460h();
                        try {
                            Thread.sleep(1500L);
                        } catch (InterruptedException unused5) {
                            Thread.currentThread().interrupt();
                        }
                    }
                }
                return;
            case 14:
                C3056t c3056t = (C3056t) this.f3828c;
                UsbManager usbManager = c3056t.f8664c;
                Context context2 = c3056t.f8662a;
                MockGpsService mockGpsService3 = c3056t.f8663b;
                while (c3056t.f8666e.get()) {
                    if (!c3056t.f8672k) {
                        try {
                            if (C3056t.m4896c().booleanValue()) {
                                c3056t.f8672k = true;
                            }
                            break;
                        } catch (Exception unused6) {
                        }
                    }
                    if (usbManager == null) {
                        String string4 = context2.getString(R.string.mock_gps_usb_host_unavailable);
                        String strMo4863a3 = c3056t.mo4863a();
                        mockGpsService3.getClass();
                        MockGpsService.m1454j(string4, strMo4863a3, false);
                        mockGpsService3.m1460h();
                        try {
                            Thread.sleep(1500L);
                        } catch (InterruptedException unused7) {
                            Thread.currentThread().interrupt();
                        }
                    } else {
                        UsbManager usbManager2 = c3056t.f8664c;
                        UsbSerialDriver usbSerialDriver = (usbManager2 == null || (listFindAllDrivers = UsbSerialProber.getDefaultProber().findAllDrivers(usbManager2)) == null || listFindAllDrivers.isEmpty()) ? null : listFindAllDrivers.get(0);
                        if (usbSerialDriver == null) {
                            String string5 = context2.getString(R.string.mock_gps_usb_not_found);
                            String strMo4863a4 = c3056t.mo4863a();
                            mockGpsService3.getClass();
                            MockGpsService.m1454j(string5, strMo4863a4, false);
                            mockGpsService3.m1460h();
                            try {
                                Thread.sleep(1500L);
                            } catch (InterruptedException unused8) {
                                Thread.currentThread().interrupt();
                            }
                        } else {
                            UsbDevice device = usbSerialDriver.getDevice();
                            String strM4899f = c3056t.m4899f(device);
                            if (usbManager.hasPermission(device)) {
                                try {
                                    try {
                                        c3056t.m4898e(usbSerialDriver, strM4899f);
                                    } catch (Throwable th2) {
                                        c3056t.m4897d();
                                        mockGpsService3.m1460h();
                                        throw th2;
                                    }
                                } catch (IOException e6) {
                                    String string6 = context2.getString(R.string.mock_gps_usb_unavailable, e6.getMessage());
                                    mockGpsService3.getClass();
                                    MockGpsService.m1454j(string6, strM4899f, false);
                                    Log.d(C3056t.f8660n, AbstractC1387m.m2421h(new byte[]{-72, -81, -98, 125, -80, -126, 1, -30, -104, -110, -67, 43, -106, -69, 62, -93, -113, -112, -71, 103, -41}, new byte[]{-19, -4, -36, 93, -9, -46, 82, -62}) + e6.getMessage());
                                }
                                c3056t.m4897d();
                                mockGpsService3.m1460h();
                                try {
                                    Thread.sleep(1500L);
                                } catch (InterruptedException unused9) {
                                    Thread.currentThread().interrupt();
                                }
                                break;
                            } else {
                                int i12 = Build.VERSION.SDK_INT >= 31 ? 167772160 : 134217728;
                                Intent intent = new Intent(C3056t.f8661o);
                                intent.setPackage(context2.getPackageName());
                                usbManager.requestPermission(device, PendingIntent.getBroadcast(context2, 0, intent, i12));
                                String string7 = context2.getString(R.string.mock_gps_usb_permission_request);
                                mockGpsService3.getClass();
                                MockGpsService.m1454j(string7, strM4899f, false);
                                mockGpsService3.m1460h();
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
                C0872m c0872m2 = (C0872m) this.f3828c;
                ((C3232j) c0872m2.f602d).m5171d((LounchB) c0872m2.f604f);
                return;
            case 16:
                ((TextureViewSurfaceTextureListenerC3135b) this.f3828c).m4973a();
                return;
            case 17:
                final RunnableC3144f0 runnableC3144f0 = (RunnableC3144f0) this.f3828c;
                C3166q0 c3166q0 = runnableC3144f0.f9004c;
                int iM5036w = c3166q0.f9161F;
                int iM5036w2 = c3166q0.f9162G;
                int iM5036w3 = c3166q0.f9163H;
                int iM5036w4 = c3166q0.f9164I;
                try {
                    C1652b.m2734a();
                    iM5036w = C3166q0.m5036w(C1652b.m2736d().cargetheat(1));
                    C1652b.m2734a();
                    iM5036w2 = C3166q0.m5036w(C1652b.m2736d().cargetvent(1));
                    C1652b.m2734a();
                    iM5036w3 = C3166q0.m5036w(C1652b.m2736d().cargetheat(2));
                    C1652b.m2734a();
                    iM5036w4 = C3166q0.m5036w(C1652b.m2736d().cargetvent(2));
                    break;
                } catch (Throwable unused11) {
                }
                final int i13 = iM5036w;
                final int i14 = iM5036w2;
                final int i15 = iM5036w3;
                final int i16 = iM5036w4;
                c3166q0.f9182r.post(new Runnable() { // from class: s1.g0
                    @Override // java.lang.Runnable
                    public final void run() {
                        RunnableC3144f0 runnableC3144f1 = runnableC3144f0;
                        int i17 = i13;
                        int i18 = i14;
                        int i19 = i15;
                        int i20 = i16;
                        if (runnableC3144f1.f9004c.f9160E) {
                            return;
                        }
                        C3166q0 c3166q1 = runnableC3144f1.f9004c;
                        c3166q1.f9161F = i17;
                        c3166q1.f9162G = i18;
                        c3166q1.f9163H = i19;
                        c3166q1.f9164I = i20;
                        c3166q1.m5039C();
                        runnableC3144f1.f9004c.f9182r.removeCallbacks(runnableC3144f1);
                        runnableC3144f1.f9004c.f9182r.postDelayed(runnableC3144f1, 3000L);
                    }
                });
                return;
            case 18:
                ((C3223a) this.f3828c).f9428c.setVisibility(8);
                return;
            case 19:
                C3233k c3233k = (C3233k) this.f3828c;
                c3233k.f9488b.m5171d(c3233k.f9490d);
                return;
            case 20:
                C3458g c3458g = (C3458g) this.f3828c;
                try {
                    AudioRecord audioRecord = c3458g.f9974e;
                    if (audioRecord != null && audioRecord.getRecordingState() == 3) {
                        AudioRecord audioRecord2 = c3458g.f9974e;
                        byte[] bArr = c3458g.f9979j;
                        int i17 = audioRecord2.read(bArr, 0, bArr.length, 1);
                        if (i17 <= 0) {
                            String str3 = c3458g.f9987r;
                            if (str3 != null && !str3.trim().isEmpty() && System.currentTimeMillis() >= c3458g.f9988s) {
                                String str4 = c3458g.f9987r;
                                c3458g.f9987r = "";
                                c3458g.f9988s = 0L;
                                c3458g.m5407i(str4);
                                return;
                            }
                            return;
                        }
                        if (C3458g.f9967u != EnumC3443b.f9931d) {
                            c3458g.m5408j(EnumC3443b.f9930c);
                        }
                        c3458g.m5411m(c3458g.m5409k(i17));
                        String str5 = c3458g.f9987r;
                        if (str5 != null && !str5.trim().isEmpty() && System.currentTimeMillis() >= c3458g.f9988s) {
                            String str6 = c3458g.f9987r;
                            c3458g.f9987r = "";
                            c3458g.f9988s = 0L;
                            c3458g.m5407i(str6);
                            return;
                        }
                        return;
                    }
                    c3458g.m5412n();
                    return;
                } catch (Exception unused12) {
                    c3458g.m5412n();
                    return;
                }
            case 21:
                Toast.makeText(((C3498x) ((C2455p) this.f3828c).f6648c).f10304m, R.string.voice_call_failed, 1).show();
                return;
            case 22:
                C3445b1 c3445b1 = (C3445b1) this.f3828c;
                synchronized (c3445b1) {
                    try {
                        if (c3445b1.f9936e) {
                            return;
                        }
                        int i18 = c3445b1.f9937f;
                        try {
                            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                            if (defaultAdapter == null) {
                                return;
                            }
                            if (!defaultAdapter.isEnabled()) {
                                synchronized (c3445b1) {
                                    try {
                                        if (!c3445b1.f9936e && i18 == c3445b1.f9937f) {
                                            c3445b1.f9934c.m5441f0("");
                                        }
                                    } catch (Throwable th3) {
                                        throw th3;
                                    }
                                    break;
                                }
                                return;
                            }
                            Method declaredMethod = BluetoothDevice.class.getDeclaredMethod(AbstractC1387m.m2421h(new byte[]{-92, -110, -96, 119, -56, -5, -22, -36, -71, -124, -121}, new byte[]{-51, -31, -29, 24, -90, -107, -113, -65}), null);
                            ArrayList arrayList = new ArrayList();
                            for (BluetoothDevice bluetoothDevice : defaultAdapter.getBondedDevices()) {
                                BluetoothClass bluetoothClass = bluetoothDevice.getBluetoothClass();
                                if ((bluetoothClass != null && bluetoothClass.getMajorDeviceClass() == 512) != false && Boolean.TRUE.equals(declaredMethod.invoke(bluetoothDevice, null))) {
                                    arrayList.add(bluetoothDevice.getAddress());
                                }
                            }
                            synchronized (c3445b1) {
                                try {
                                    if (!c3445b1.f9936e && i18 == c3445b1.f9937f && arrayList.size() == 1) {
                                        c3445b1.f9934c.m5440e0((String) arrayList.get(0));
                                    }
                                } catch (Throwable th4) {
                                    throw th4;
                                }
                                break;
                            }
                            return;
                            Log.d(AbstractC1387m.m2421h(new byte[]{13, -47, -86, -78, 82, 59, -64, 7, 53, -37, -127, -66, 88, 0}, new byte[]{91, -66, -61, -47, 55, 107, -88, 104}), AbstractC1387m.m2421h(new byte[]{117, 56, -36, 121, -53, 58, 73, -117, 76, 62, -38, 99, -57, 123, 86, -33, 93, 34, -48, 45, -41, 53, 68, -35, 93, 63, -39, 108, -64, 55, 64, -112, 28, 55, -62, 108, -53, 47, 76, -59, 91, 118, -42, 98, -52, 53, 64, -56, 72, 63, -38, 99, -126, 62, 83, -50, 82, 34, -107, 98, -48, 123, 70, -54, 80, 58, -107, ByteCompanionObject.MAX_VALUE, -57, 42, 80, -50, 79, 34}, new byte[]{60, 86, -75, 13, -94, 91, 37, -85}));
                            return;
                        } catch (Exception unused13) {
                            Log.d(AbstractC1387m.m2421h(new byte[]{13, -47, -86, -78, 82, 59, -64, 7, 53, -37, -127, -66, 88, 0}, new byte[]{91, -66, -61, -47, 55, 107, -88, 104}), AbstractC1387m.m2421h(new byte[]{117, 56, -36, 121, -53, 58, 73, -117, 76, 62, -38, 99, -57, 123, 86, -33, 93, 34, -48, 45, -41, 53, 68, -35, 93, 63, -39, 108, -64, 55, 64, -112, 28, 55, -62, 108, -53, 47, 76, -59, 91, 118, -42, 98, -52, 53, 64, -56, 72, 63, -38, 99, -126, 62, 83, -50, 82, 34, -107, 98, -48, 123, 70, -54, 80, 58, -107, ByteCompanionObject.MAX_VALUE, -57, 42, 80, -50, 79, 34}, new byte[]{60, 86, -75, 13, -94, 91, 37, -85}));
                            return;
                        }
                    } catch (Throwable th5) {
                        throw th5;
                    }
                }
            case 23:
                ((LinearLayout) this.f3828c).performClick();
                return;
            default:
                RunnableC3234l runnableC3234l = (RunnableC3234l) this.f3828c;
                HashMap map = new HashMap();
                C3549c c3549c = (C3549c) runnableC3234l.f9493c;
                ArrayList arrayList2 = c3549c.f10535c.f10614u;
                int size = arrayList2.size();
                while (i11 < size) {
                    Object obj = arrayList2.get(i11);
                    i11++;
                    C3559m c3559m = (C3559m) obj;
                    if (C3549c.m5655i(c3559m)) {
                        try {
                            if (C3549c.m5654h(c3559m)) {
                                C1652b.m2734a();
                                iCargetvent = C1652b.m2736d().cargetheat(C3549c.m5656n(c3559m));
                            } else {
                                C1652b.m2734a();
                                iCargetvent = C1652b.m2736d().cargetvent(C3549c.m5656n(c3559m));
                            }
                            if (iCargetvent >= 1 && iCargetvent <= 4) {
                                map.put(c3559m.f10578a, Integer.valueOf(iCargetvent - 1));
                            }
                        } catch (Exception e10) {
                            Log.w(AbstractC1387m.m2421h(new byte[]{-83, 118, -30, -5, 102, 33, 4, 3, -103, 102, -26, -19}, new byte[]{-2, 3, -110, -98, 20, 118, 109, 103}), AbstractC1387m.m2421h(new byte[]{88, -79, -80, -57, -100, -105, 123, -98, 111}, new byte[]{11, -44, -47, -77, -68, -27, 30, -1}), e10);
                        }
                    }
                }
                c3549c.f10534b.post(new RunnableC3180x0(i10, runnableC3234l, map));
                return;
        }
    }
}
