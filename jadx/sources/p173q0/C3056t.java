package p173q0;

import android.content.Context;
import android.content.IntentFilter;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbManager;
import android.os.Build;
import com.example.navistart.MockGPS.MockGpsService;
import com.example.navistart.R;
import com.google.protobuf.AbstractC1178q;
import com.hoho.android.usbserial.driver.UsbSerialDriver;
import com.hoho.android.usbserial.driver.UsbSerialPort;
import com.hoho.android.usbserial.driver.UsbSerialProber;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.p118io.encoding.Base64;
import p016b1.C0862c;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1406p3;
import p047e0.C1440x1;
import p062f5.RunnableC1556j;
import p078h0.C1652b;
import p097j.C1897i;
import p142n0.C2467b;
import p206u0.C3277a;

/* JADX INFO: renamed from: q0.t */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3056t implements InterfaceC3044h {

    /* JADX INFO: renamed from: m */
    public static final String f8659m = AbstractC1387m.m2421h(new byte[]{Base64.padSymbol, 43, 76}, new byte[]{72, 88, 46, -94, 33, -94, -1, -125});

    /* JADX INFO: renamed from: n */
    public static final String f8660n = AbstractC1387m.m2421h(new byte[]{-95, -89, -105, 87, -121, -17, -30, -6, -127, -90, -106, 117}, new byte[]{-12, -44, -11, 16, -9, -100, -79, -107});

    /* JADX INFO: renamed from: o */
    public static final String f8661o = AbstractC1387m.m2421h(new byte[]{18, -73, 77, 113, -8, 21, 110, -119, 1, -76, 69, 113, -13, 12, 121, -115, 2, -84, 65, 45, -23, 67, 66, -117, 18, -77, 103, 15, -50, 67, 90, -73, 51, -121, 112, 26, -49, 32, 70, -73, 34, -111, 111, 17}, new byte[]{113, -40, 32, 95, -99, 109, 15, -28});

    /* JADX INFO: renamed from: a */
    public final Context f8662a;

    /* JADX INFO: renamed from: b */
    public final MockGpsService f8663b;

    /* JADX INFO: renamed from: c */
    public final UsbManager f8664c;

    /* JADX INFO: renamed from: d */
    public final ExecutorService f8665d = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: e */
    public final AtomicBoolean f8666e = new AtomicBoolean(false);

    /* JADX INFO: renamed from: f */
    public final C3050n f8667f = new C3050n(AbstractC1387m.m2421h(new byte[]{56, 54, -12, -36, 115, 19, -94, 58}, new byte[]{86, 91, -111, -67, 44, 102, -47, 88}));

    /* JADX INFO: renamed from: g */
    public final C0862c f8668g = new C0862c(6, this);

    /* JADX INFO: renamed from: h */
    public volatile int f8669h = 460800;

    /* JADX INFO: renamed from: i */
    public volatile UsbSerialPort f8670i;

    /* JADX INFO: renamed from: j */
    public volatile UsbDeviceConnection f8671j;

    /* JADX INFO: renamed from: k */
    public volatile boolean f8672k;

    /* JADX INFO: renamed from: l */
    public boolean f8673l;

    public C3056t(MockGpsService mockGpsService, MockGpsService mockGpsService2) {
        Context applicationContext = mockGpsService.getApplicationContext();
        this.f8662a = applicationContext;
        this.f8663b = mockGpsService2;
        this.f8664c = (UsbManager) applicationContext.getSystemService(AbstractC1387m.m2421h(new byte[]{-42, -67, 5}, new byte[]{-93, -50, 103, 60, 20, 98, -15, 73}));
    }

    /* JADX INFO: renamed from: c */
    public static Boolean m4896c() {
        StringBuilder sb = new StringBuilder();
        C3277a c3277aM2745o = C1652b.m2745o();
        byte[] bArr = AbstractC1387m.f3322j;
        String[] strArr = AbstractC1406p3.f3368a;
        AbstractC1178q.m2085s(bArr, c3277aM2745o, "", sb);
        AbstractC1178q.m2084r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strM2073g = AbstractC1178q.m2073g(sb, C1440x1.f3470q);
        C3277a c3277aM2745o2 = C1652b.m2745o();
        byte[] bArr2 = AbstractC1387m.f3318f;
        if (AbstractC1178q.m2089w(bArr2, c3277aM2745o2, "", strM2073g)) {
            return Boolean.valueOf(AbstractC1178q.m2070d(Long.MAX_VALUE, C1652b.m2734a().m2755j()) < Long.parseLong(new String(AbstractC1178q.m2090x(new byte[]{-71}, new byte[]{-119, 23, 119, -127, 7, -7, 2, -110}, C1652b.m2745o(), AbstractC1178q.m2074h(AbstractC1387m.f3319g, C1652b.m2745o(), new String(bArr2)), 0))));
        }
        return Boolean.FALSE;
    }

    @Override // p173q0.InterfaceC3044h
    /* JADX INFO: renamed from: a */
    public final String mo4863a() {
        List<UsbSerialDriver> listFindAllDrivers;
        UsbManager usbManager = this.f8664c;
        UsbSerialDriver usbSerialDriver = null;
        if (usbManager != null && (listFindAllDrivers = UsbSerialProber.getDefaultProber().findAllDrivers(usbManager)) != null && !listFindAllDrivers.isEmpty()) {
            usbSerialDriver = listFindAllDrivers.get(0);
        }
        return usbSerialDriver == null ? this.f8662a.getString(R.string.mock_gps_usb_serial_target, Integer.valueOf(this.f8669h)) : m4899f(usbSerialDriver.getDevice());
    }

    @Override // p173q0.InterfaceC3044h
    /* JADX INFO: renamed from: b */
    public final void mo4864b(C1897i c1897i) {
        int i10 = c1897i.f4929b;
        if (i10 < 1200 || i10 > 921600) {
            return;
        }
        this.f8669h = i10;
    }

    /* JADX INFO: renamed from: d */
    public final void m4897d() {
        UsbSerialPort usbSerialPort = this.f8670i;
        this.f8670i = null;
        if (usbSerialPort != null) {
            try {
                usbSerialPort.close();
            } catch (IOException unused) {
            }
        }
        UsbDeviceConnection usbDeviceConnection = this.f8671j;
        this.f8671j = null;
        if (usbDeviceConnection != null) {
            usbDeviceConnection.close();
        }
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00d5  */
    /* JADX INFO: renamed from: e */
    public final void m4898e(UsbSerialDriver usbSerialDriver, String str) throws IOException {
        UsbSerialPort usbSerialPort;
        int i10;
        long j10;
        boolean z9;
        UsbSerialPort usbSerialPort2;
        int i11;
        int i12;
        int i13;
        List<UsbSerialPort> ports = usbSerialDriver.getPorts();
        if (ports == null || ports.isEmpty()) {
            C2467b.m3820A(this.f8662a.getString(R.string.mock_gps_usb_no_serial_port));
            return;
        }
        UsbDeviceConnection usbDeviceConnectionOpenDevice = this.f8664c.openDevice(usbSerialDriver.getDevice());
        if (usbDeviceConnectionOpenDevice == null) {
            C2467b.m3820A(this.f8662a.getString(R.string.mock_gps_usb_no_device_access));
            return;
        }
        this.f8671j = usbDeviceConnectionOpenDevice;
        int i14 = 0;
        UsbSerialPort usbSerialPort3 = ports.get(0);
        this.f8670i = usbSerialPort3;
        usbSerialPort3.open(usbDeviceConnectionOpenDevice);
        usbSerialPort3.setParameters(this.f8669h, 8, 1, 0);
        try {
            usbSerialPort3.setDTR(true);
            usbSerialPort3.setRTS(true);
        } catch (Exception unused) {
        }
        MockGpsService mockGpsService = this.f8663b;
        String string = this.f8662a.getString(R.string.mock_gps_usb_connected);
        mockGpsService.getClass();
        MockGpsService.m1454j(string, str, true);
        byte[] bArr = new byte[1024];
        StringBuilder sb = new StringBuilder(128);
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j11 = 0;
        while (this.f8666e.get()) {
            int i15 = usbSerialPort3.read(bArr, 1200);
            if (i15 > 0) {
                String str2 = new String(bArr, i14, i15, StandardCharsets.US_ASCII);
                int i16 = i14;
                int i17 = i16;
                int i18 = i17;
                j10 = 0;
                while (i16 < str2.length()) {
                    char cCharAt = str2.charAt(i16);
                    if (cCharAt == '\r' || cCharAt == '\n') {
                        if (sb.length() > 0) {
                            String string2 = sb.toString();
                            if (string2.length() < 7 || string2.charAt(i14) != '$' || string2.indexOf(44) < 6) {
                                usbSerialPort2 = usbSerialPort3;
                                i11 = 0;
                            } else {
                                int iIndexOf = string2.indexOf(42);
                                if (iIndexOf < 0) {
                                    usbSerialPort2 = usbSerialPort3;
                                } else {
                                    if (iIndexOf + 3 != string2.length()) {
                                        usbSerialPort2 = usbSerialPort3;
                                    } else {
                                        try {
                                            int i19 = Integer.parseInt(string2.substring(iIndexOf + 1), 16);
                                            usbSerialPort2 = usbSerialPort3;
                                            int iCharAt = 0;
                                            for (int i20 = 1; i20 < iIndexOf; i20++) {
                                                iCharAt ^= string2.charAt(i20);
                                            }
                                            if (iCharAt == i19) {
                                            }
                                        } catch (NumberFormatException unused2) {
                                            usbSerialPort2 = usbSerialPort3;
                                        }
                                    }
                                    i11 = 0;
                                }
                                i11 = 1;
                            }
                            i17 |= i11;
                            C3053q c3053qM4883c = this.f8667f.m4883c(string2);
                            if (c3053qM4883c == null) {
                                i12 = 0;
                            } else {
                                this.f8663b.m1461i(c3053qM4883c);
                                i12 = 1;
                            }
                            i18 |= i12;
                            i13 = 0;
                            sb.setLength(0);
                        }
                        i16++;
                        i14 = i13;
                        usbSerialPort3 = usbSerialPort2;
                    } else if (sb.length() < 256) {
                        sb.append(cCharAt);
                    } else {
                        sb.setLength(i14);
                    }
                    usbSerialPort2 = usbSerialPort3;
                    i13 = i14;
                    i16++;
                    i14 = i13;
                    usbSerialPort3 = usbSerialPort2;
                }
                usbSerialPort = usbSerialPort3;
                i10 = i14;
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                if (i17 != 0) {
                    jCurrentTimeMillis = jCurrentTimeMillis2;
                }
                if (i18 != 0) {
                    j11 = jCurrentTimeMillis2;
                }
            } else {
                usbSerialPort = usbSerialPort3;
                i10 = i14;
                j10 = 0;
            }
            long jCurrentTimeMillis3 = System.currentTimeMillis();
            if (j11 <= j10 || jCurrentTimeMillis3 - j11 <= 4000) {
                z9 = true;
            } else {
                this.f8663b.m1459g();
                MockGpsService mockGpsService2 = this.f8663b;
                String string3 = this.f8662a.getString(R.string.mock_gps_usb_connected_stale);
                mockGpsService2.getClass();
                z9 = true;
                MockGpsService.m1454j(string3, str, true);
                j11 = j10;
            }
            if (jCurrentTimeMillis3 - jCurrentTimeMillis > 8000) {
                C2467b.m3820A(this.f8662a.getString(R.string.mock_gps_no_nmea_data));
                return;
            } else {
                i14 = i10;
                usbSerialPort3 = usbSerialPort;
            }
        }
    }

    /* JADX INFO: renamed from: f */
    public final String m4899f(UsbDevice usbDevice) {
        Context context = this.f8662a;
        return usbDevice == null ? context.getString(R.string.mock_gps_usb_serial_target, Integer.valueOf(this.f8669h)) : context.getString(R.string.mock_gps_usb_device_target, Integer.valueOf(usbDevice.getVendorId()), Integer.valueOf(usbDevice.getProductId()), Integer.valueOf(this.f8669h));
    }

    @Override // p173q0.InterfaceC3044h
    public final String getTitle() {
        return this.f8662a.getString(R.string.mock_gps_source_usb);
    }

    @Override // p173q0.InterfaceC3044h
    public final String getType() {
        return f8659m;
    }

    @Override // p173q0.InterfaceC3044h
    public final void start() {
        if (this.f8666e.compareAndSet(false, true)) {
            if (!this.f8672k) {
                try {
                    if (m4896c().booleanValue()) {
                        this.f8672k = true;
                    }
                } catch (Exception unused) {
                }
            }
            C0862c c0862c = this.f8668g;
            if (!this.f8673l) {
                IntentFilter intentFilter = new IntentFilter(f8661o);
                int i10 = Build.VERSION.SDK_INT;
                Context context = this.f8662a;
                if (i10 >= 33) {
                    context.registerReceiver(c0862c, intentFilter, 4);
                } else {
                    context.registerReceiver(c0862c, intentFilter);
                }
                this.f8673l = true;
            }
            this.f8665d.execute(new RunnableC1556j(14, this));
        }
    }

    @Override // p173q0.InterfaceC3044h
    public final void stop() {
        this.f8666e.set(false);
        m4897d();
        if (this.f8673l) {
            try {
                this.f8662a.unregisterReceiver(this.f8668g);
            } catch (IllegalArgumentException unused) {
            }
            this.f8673l = false;
        }
        this.f8665d.shutdownNow();
    }
}
