package q0;

import android.content.Context;
import android.content.IntentFilter;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbManager;
import android.os.Build$VERSION;
import com.example.navistart.MockGPS.MockGpsService;
import com.hoho.android.usbserial.driver.UsbSerialDriver;
import com.hoho.android.usbserial.driver.UsbSerialPort;
import com.hoho.android.usbserial.driver.UsbSerialProber;
import e0.p3;
import e0.x1;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.io.encoding.Base64;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class t implements h {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final String f4856m = e0.m.h(new byte[]{Base64.padSymbol, 43, 76}, new byte[]{72, 88, 46, -94, 33, -94, -1, -125});

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final String f4857n = e0.m.h(new byte[]{-95, -89, -105, 87, -121, -17, -30, -6, -127, -90, -106, 117}, new byte[]{-12, -44, -11, 16, -9, -100, -79, -107});

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final String f4858o = e0.m.h(new byte[]{18, -73, 77, 113, -8, 21, 110, -119, 1, -76, 69, 113, -13, 12, 121, -115, 2, -84, 65, 45, -23, 67, 66, -117, 18, -77, 103, 15, -50, 67, 90, -73, 51, -121, 112, 26, -49, 32, 70, -73, 34, -111, 111, 17}, new byte[]{113, -40, 32, 95, -99, 109, 15, -28});

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f4859a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MockGpsService f4860b;
    public final UsbManager c;
    public final ExecutorService d = Executors.newSingleThreadExecutor();
    public final AtomicBoolean e = new AtomicBoolean(false);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final n f4861f = new n(e0.m.h(new byte[]{56, 54, -12, -36, 115, 19, -94, 58}, new byte[]{86, 91, -111, -67, 44, 102, -47, 88}));

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final b1.c f4862g = new b1.c(6, this);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile int f4863h = 460800;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile UsbSerialPort f4864i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public volatile UsbDeviceConnection f4865j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public volatile boolean f4866k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f4867l;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public t(MockGpsService mockGpsService, MockGpsService mockGpsService2) {
        Context applicationContext = mockGpsService.getApplicationContext();
        this.f4859a = applicationContext;
        this.f4860b = mockGpsService2;
        this.c = (UsbManager) applicationContext.getSystemService(e0.m.h(new byte[]{-42, -67, 5}, new byte[]{-93, -50, 103, 60, 20, 98, -15, 73}));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Boolean c() {
        StringBuilder sb = new StringBuilder();
        u0.a aVarO = h0.b.o();
        byte[] bArr = e0.m.f1896j;
        String[] strArr = p3.f1924a;
        com.google.protobuf.q.s(bArr, aVarO, "", sb);
        com.google.protobuf.q.r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strG = com.google.protobuf.q.g(sb, x1.f1989q);
        u0.a aVarO2 = h0.b.o();
        byte[] bArr2 = e0.m.f1892f;
        if (com.google.protobuf.q.w(bArr2, aVarO2, "", strG)) {
            return Boolean.valueOf(com.google.protobuf.q.d(Long.MAX_VALUE, h0.b.a().j()) < Long.parseLong(new String(com.google.protobuf.q.x(new byte[]{-71}, new byte[]{-119, 23, 119, -127, 7, -7, 2, -110}, h0.b.o(), com.google.protobuf.q.h(e0.m.f1893g, h0.b.o(), new String(bArr2)), 0))));
        }
        return Boolean.FALSE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q0.h
    public final String a() {
        List<UsbSerialDriver> listFindAllDrivers;
        UsbManager usbManager = this.c;
        UsbSerialDriver usbSerialDriver = null;
        if (usbManager != null && (listFindAllDrivers = UsbSerialProber.getDefaultProber().findAllDrivers(usbManager)) != null && !listFindAllDrivers.isEmpty()) {
            usbSerialDriver = listFindAllDrivers.get(0);
        }
        return usbSerialDriver == null ? this.f4859a.getString(2131952292, Integer.valueOf(this.f4863h)) : f(usbSerialDriver.getDevice());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q0.h
    public final void b(j.i iVar) {
        int i9 = iVar.f2793b;
        if (i9 < 1200 || i9 > 921600) {
            return;
        }
        this.f4863h = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d() {
        UsbSerialPort usbSerialPort = this.f4864i;
        this.f4864i = null;
        if (usbSerialPort != null) {
            try {
                usbSerialPort.close();
            } catch (IOException unused) {
            }
        }
        UsbDeviceConnection usbDeviceConnection = this.f4865j;
        this.f4865j = null;
        if (usbDeviceConnection != null) {
            usbDeviceConnection.close();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:43:0x00d5  */
    public final void e(UsbSerialDriver usbSerialDriver, String str) throws IOException {
        UsbSerialPort usbSerialPort;
        int i9;
        long j9;
        boolean z8;
        UsbSerialPort usbSerialPort2;
        int i10;
        int i11;
        int i12;
        List<UsbSerialPort> ports = usbSerialDriver.getPorts();
        if (ports == null || ports.isEmpty()) {
            n0.b.A(this.f4859a.getString(2131952287));
            return;
        }
        UsbDeviceConnection usbDeviceConnectionOpenDevice = this.c.openDevice(usbSerialDriver.getDevice());
        if (usbDeviceConnectionOpenDevice == null) {
            n0.b.A(this.f4859a.getString(2131952286));
            return;
        }
        this.f4865j = usbDeviceConnectionOpenDevice;
        int i13 = 0;
        UsbSerialPort usbSerialPort3 = ports.get(0);
        this.f4864i = usbSerialPort3;
        usbSerialPort3.open(usbDeviceConnectionOpenDevice);
        usbSerialPort3.setParameters(this.f4863h, 8, 1, 0);
        try {
            usbSerialPort3.setDTR(true);
            usbSerialPort3.setRTS(true);
        } catch (Exception unused) {
        }
        MockGpsService mockGpsService = this.f4860b;
        String string = this.f4859a.getString(2131952281);
        mockGpsService.getClass();
        MockGpsService.j(string, str, true);
        byte[] bArr = new byte[1024];
        StringBuilder sb = new StringBuilder(128);
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j10 = 0;
        while (this.e.get()) {
            int i14 = usbSerialPort3.read(bArr, 1200);
            if (i14 > 0) {
                String str2 = new String(bArr, i13, i14, StandardCharsets.US_ASCII);
                int i15 = i13;
                int i16 = i15;
                int i17 = i16;
                j9 = 0;
                while (i15 < str2.length()) {
                    char cCharAt = str2.charAt(i15);
                    if (cCharAt == '\r' || cCharAt == '\n') {
                        if (sb.length() > 0) {
                            String string2 = sb.toString();
                            if (string2.length() < 7 || string2.charAt(i13) != '$' || string2.indexOf(44) < 6) {
                                usbSerialPort2 = usbSerialPort3;
                                i10 = 0;
                            } else {
                                int iIndexOf = string2.indexOf(42);
                                if (iIndexOf < 0) {
                                    usbSerialPort2 = usbSerialPort3;
                                } else {
                                    if (iIndexOf + 3 != string2.length()) {
                                        usbSerialPort2 = usbSerialPort3;
                                    } else {
                                        try {
                                            int i18 = Integer.parseInt(string2.substring(iIndexOf + 1), 16);
                                            usbSerialPort2 = usbSerialPort3;
                                            int iCharAt = 0;
                                            for (int i19 = 1; i19 < iIndexOf; i19++) {
                                                iCharAt ^= string2.charAt(i19);
                                            }
                                            if (iCharAt == i18) {
                                            }
                                        } catch (NumberFormatException unused2) {
                                            usbSerialPort2 = usbSerialPort3;
                                        }
                                    }
                                    i10 = 0;
                                }
                                i10 = 1;
                            }
                            i16 |= i10;
                            q qVarC = this.f4861f.c(string2);
                            if (qVarC == null) {
                                i11 = 0;
                            } else {
                                this.f4860b.i(qVarC);
                                i11 = 1;
                            }
                            i17 |= i11;
                            i12 = 0;
                            sb.setLength(0);
                        }
                        i15++;
                        i13 = i12;
                        usbSerialPort3 = usbSerialPort2;
                    } else if (sb.length() < 256) {
                        sb.append(cCharAt);
                    } else {
                        sb.setLength(i13);
                    }
                    usbSerialPort2 = usbSerialPort3;
                    i12 = i13;
                    i15++;
                    i13 = i12;
                    usbSerialPort3 = usbSerialPort2;
                }
                usbSerialPort = usbSerialPort3;
                i9 = i13;
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                if (i16 != 0) {
                    jCurrentTimeMillis = jCurrentTimeMillis2;
                }
                if (i17 != 0) {
                    j10 = jCurrentTimeMillis2;
                }
            } else {
                usbSerialPort = usbSerialPort3;
                i9 = i13;
                j9 = 0;
            }
            long jCurrentTimeMillis3 = System.currentTimeMillis();
            if (j10 <= j9 || jCurrentTimeMillis3 - j10 <= 4000) {
                z8 = true;
            } else {
                this.f4860b.g();
                MockGpsService mockGpsService2 = this.f4860b;
                String string3 = this.f4859a.getString(2131952282);
                mockGpsService2.getClass();
                z8 = true;
                MockGpsService.j(string3, str, true);
                j10 = j9;
            }
            if (jCurrentTimeMillis3 - jCurrentTimeMillis > 8000) {
                n0.b.A(this.f4859a.getString(2131952245));
                return;
            } else {
                i13 = i9;
                usbSerialPort3 = usbSerialPort;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String f(UsbDevice usbDevice) {
        Context context = this.f4859a;
        return usbDevice == null ? context.getString(2131952292, Integer.valueOf(this.f4863h)) : context.getString(2131952284, Integer.valueOf(usbDevice.getVendorId()), Integer.valueOf(usbDevice.getProductId()), Integer.valueOf(this.f4863h));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q0.h
    public final String getTitle() {
        return this.f4859a.getString(2131952262);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q0.h
    public final String getType() {
        return f4856m;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q0.h
    public final void start() {
        if (this.e.compareAndSet(false, true)) {
            if (!this.f4866k) {
                try {
                    if (c().booleanValue()) {
                        this.f4866k = true;
                    }
                } catch (Exception unused) {
                }
            }
            b1.c cVar = this.f4862g;
            if (!this.f4867l) {
                IntentFilter intentFilter = new IntentFilter(f4858o);
                int i9 = Build$VERSION.SDK_INT;
                Context context = this.f4859a;
                if (i9 >= 33) {
                    org.apache.commons.net.util.a.q(context, cVar, intentFilter);
                } else {
                    context.registerReceiver(cVar, intentFilter);
                }
                this.f4867l = true;
            }
            this.d.execute(new f5.j(14, this));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q0.h
    public final void stop() {
        this.e.set(false);
        d();
        if (this.f4867l) {
            try {
                this.f4859a.unregisterReceiver(this.f4862g);
            } catch (IllegalArgumentException unused) {
            }
            this.f4867l = false;
        }
        this.d.shutdownNow();
    }
}
