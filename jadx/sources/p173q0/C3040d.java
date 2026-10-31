package p173q0;

import ai.onnxruntime.AbstractC0074a;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.LinkAddress;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.util.Log;
import com.example.navistart.MockGPS.MockGpsService;
import com.example.navistart.R;
import com.google.protobuf.AbstractC1178q;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.OutputStream;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.NetworkInterface;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorCompletionService;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import org.json.JSONException;
import p047e0.AbstractC1387m;
import p062f5.CallableC1574x;
import p097j.C1897i;
import p102j4.C1963b;
import p142n0.C2467b;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: q0.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3040d implements InterfaceC3044h {

    /* JADX INFO: renamed from: n */
    public static final String f8536n = AbstractC1387m.m2421h(new byte[]{-103, 78, 13, -84, 67, 70, 31, 91, -101, 76, 33, -102, 95, 80}, new byte[]{-2, 62, 126, -13, 48, 35, 109, 45});

    /* JADX INFO: renamed from: o */
    public static final String f8537o = AbstractC1387m.m2421h(new byte[]{-41, 39, -7, -7, -63, -92, -67, 50, -30, 4, -27, -33, -42, -75, -82}, new byte[]{-112, 87, -118, -86, -92, -42, -53, 87});

    /* JADX INFO: renamed from: a */
    public final Context f8538a;

    /* JADX INFO: renamed from: b */
    public final MockGpsService f8539b;

    /* JADX INFO: renamed from: g */
    public volatile String f8544g;

    /* JADX INFO: renamed from: i */
    public volatile Socket f8546i;

    /* JADX INFO: renamed from: j */
    public volatile long f8547j;

    /* JADX INFO: renamed from: k */
    public volatile long f8548k;

    /* JADX INFO: renamed from: l */
    public volatile boolean f8549l;

    /* JADX INFO: renamed from: m */
    public volatile C3039c f8550m;

    /* JADX INFO: renamed from: c */
    public final ExecutorService f8540c = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: d */
    public final ScheduledExecutorService f8541d = Executors.newSingleThreadScheduledExecutor();

    /* JADX INFO: renamed from: e */
    public final AtomicBoolean f8542e = new AtomicBoolean(false);

    /* JADX INFO: renamed from: f */
    public final Object f8543f = new Object();

    /* JADX INFO: renamed from: h */
    public volatile int f8545h = 8887;

    public C3040d(MockGpsService mockGpsService, MockGpsService mockGpsService2) {
        this.f8538a = mockGpsService.getApplicationContext();
        this.f8539b = mockGpsService2;
    }

    /* JADX INFO: renamed from: c */
    public static void m4860c(LinkedHashMap linkedHashMap, C3039c c3039c) {
        Network network = c3039c.f8535b;
        StringBuilder sbM170u = AbstractC0074a.m170u(network == null ? AbstractC1387m.m2421h(new byte[]{76, -106, -85, 97, 2, -121, 118}, new byte[]{40, -13, -51, 0, 119, -21, 2, 54}) : network.toString());
        sbM170u.append(AbstractC1387m.m2421h(new byte[]{11}, new byte[]{119, -22, -8, 104, -57, 34, -106, 73}));
        sbM170u.append(c3039c.f8534a);
        linkedHashMap.putIfAbsent(sbM170u.toString(), c3039c);
    }

    /* JADX INFO: renamed from: d */
    public static void m4861d(LinkedHashMap linkedHashMap, Inet4Address inet4Address, Network network) {
        byte[] address = inet4Address.getAddress();
        int i10 = address[3] & UByte.MAX_VALUE;
        StringBuilder sb = new StringBuilder();
        sb.append(address[0] & UByte.MAX_VALUE);
        sb.append(AbstractC1387m.m2421h(new byte[]{64}, new byte[]{110, 45, -60, 25, -62, 94, -31, -15}));
        sb.append(address[1] & UByte.MAX_VALUE);
        sb.append(AbstractC1387m.m2421h(new byte[]{126}, new byte[]{80, -7, 122, 121, -104, 83, 69, 2}));
        sb.append(address[2] & UByte.MAX_VALUE);
        String strM2075i = AbstractC1178q.m2075i(new byte[]{65}, new byte[]{111, Base64.padSymbol, -3, -69, -118, 81, 117, 62}, sb);
        for (int i11 = 1; i11 <= 254; i11++) {
            if (i11 != i10) {
                m4860c(linkedHashMap, new C3039c(strM2075i + i11, network));
            }
        }
    }

    /* JADX INFO: renamed from: g */
    public static String m4862g(String str) {
        if (str == null) {
            return null;
        }
        String strTrim = str.trim();
        if (strTrim.isEmpty()) {
            return null;
        }
        return strTrim;
    }

    @Override // p173q0.InterfaceC3044h
    /* JADX INFO: renamed from: a */
    public final String mo4863a() {
        String strM4862g = m4862g(this.f8544g);
        if (strM4862g == null && this.f8550m != null) {
            strM4862g = this.f8550m.f8534a;
        }
        if (strM4862g == null) {
            return this.f8538a.getString(R.string.mock_gps_auto_wifi_gateway, Integer.valueOf(this.f8545h));
        }
        StringBuilder sbM170u = AbstractC0074a.m170u(strM4862g);
        sbM170u.append(AbstractC1387m.m2421h(new byte[]{34}, new byte[]{24, -12, 54, 40, 97, -61, 54, 75}));
        sbM170u.append(this.f8545h);
        return sbM170u.toString();
    }

    @Override // p173q0.InterfaceC3044h
    /* JADX INFO: renamed from: b */
    public final void mo4864b(C1897i c1897i) {
        boolean zEquals;
        String str = this.f8544g;
        int i10 = this.f8545h;
        this.f8544g = m4862g((String) c1897i.f4930c);
        int i11 = c1897i.f4929b;
        if (i11 <= 0 || i11 > 65535) {
            i11 = 8887;
        }
        this.f8545h = i11;
        String str2 = this.f8544g;
        String strM4862g = m4862g(str);
        String strM4862g2 = m4862g(str2);
        boolean zEquals2 = false;
        if (strM4862g == null) {
            zEquals = strM4862g2 == null;
        } else {
            zEquals = strM4862g.equals(strM4862g2);
        }
        if (!zEquals) {
            this.f8550m = null;
        }
        if (this.f8542e.get()) {
            if (i10 == this.f8545h) {
                String str3 = this.f8544g;
                String strM4862g3 = m4862g(str);
                String strM4862g4 = m4862g(str3);
                if (strM4862g3 != null) {
                    zEquals2 = strM4862g3.equals(strM4862g4);
                } else if (strM4862g4 == null) {
                    zEquals2 = true;
                }
                if (zEquals2) {
                    return;
                }
            }
            m4865e(this.f8546i);
        }
    }

    /* JADX INFO: renamed from: e */
    public final void m4865e(Socket socket) {
        if (socket == null) {
            return;
        }
        if (this.f8546i == socket) {
            this.f8546i = null;
        }
        try {
            socket.close();
        } catch (IOException unused) {
        }
    }

    /* JADX INFO: renamed from: f */
    public final void m4866f(C3039c c3039c, String str) throws IOException {
        Network network = c3039c.f8535b;
        Socket socket = network == null ? new Socket() : network.getSocketFactory().createSocket();
        this.f8546i = socket;
        boolean z9 = true;
        socket.setTcpNoDelay(true);
        socket.setKeepAlive(true);
        socket.connect(new InetSocketAddress(c3039c.f8534a, this.f8545h), 1200);
        this.f8547j = System.currentTimeMillis();
        this.f8548k = 0L;
        this.f8549l = false;
        MockGpsService mockGpsService = this.f8539b;
        Context context = this.f8538a;
        int i10 = R.string.mock_gps_connected;
        String string = context.getString(R.string.mock_gps_connected);
        mockGpsService.getClass();
        MockGpsService.m1454j(string, str, true);
        synchronized (this.f8543f) {
            OutputStream outputStream = socket.getOutputStream();
            outputStream.write(1);
            outputStream.flush();
        }
        DataInputStream dataInputStream = new DataInputStream(socket.getInputStream());
        while (this.f8542e.get() && !socket.isClosed()) {
            try {
                int i11 = dataInputStream.readInt();
                if (i11 <= 0 || i11 > 65536) {
                    C2467b.m3820A(this.f8538a.getString(R.string.mock_gps_ios_invalid_packet));
                    return;
                }
                byte[] bArr = new byte[i11];
                dataInputStream.readFully(bArr);
                this.f8547j = System.currentTimeMillis();
                C1963b c1963bM3064c = C1963b.m3064c(bArr);
                MockGpsService mockGpsService2 = this.f8539b;
                String string2 = this.f8538a.getString(i10);
                mockGpsService2.getClass();
                MockGpsService.m1454j(string2, str, z9);
                C3038b c3038b = (C3038b) c1963bM3064c.f5347d;
                if (c3038b != null) {
                    try {
                        double d = c3038b.f8523b;
                        double d10 = c3038b.f8524c;
                        long j10 = c3038b.f8522a;
                        Double dValueOf = c3038b.f8530i ? Double.valueOf(c3038b.f8525d) : null;
                        Float fValueOf = c3038b.f8531j ? Float.valueOf(c3038b.f8526e) : null;
                        Float fValueOf2 = c3038b.f8532k ? Float.valueOf(c3038b.f8527f) : null;
                        Float fValueOf3 = c3038b.f8533l ? Float.valueOf(c3038b.f8528g) : null;
                        int i12 = c1963bM3064c.f5345b;
                        C3053q c3053qM4887a = C3053q.m4887a(d, d10, j10, dValueOf, fValueOf, fValueOf2, fValueOf3, i12, i12, 0, null, null, c3038b.f8529h);
                        this.f8548k = System.currentTimeMillis();
                        this.f8549l = false;
                        this.f8539b.m1461i(c3053qM4887a);
                    } catch (JSONException e) {
                        throw new IOException(this.f8538a.getString(R.string.mock_gps_ios_invalid_packet), e);
                    }
                }
                z9 = true;
                i10 = R.string.mock_gps_connected;
            } catch (EOFException e6) {
                throw new IOException(this.f8538a.getString(R.string.mock_gps_phone_connection_closed), e6);
            }
        }
    }

    @Override // p173q0.InterfaceC3044h
    public final String getTitle() {
        return this.f8538a.getString(R.string.mock_gps_source_ios_server);
    }

    @Override // p173q0.InterfaceC3044h
    public final String getType() {
        return f8536n;
    }

    @Override // p173q0.InterfaceC3044h
    public final void start() {
        if (this.f8542e.compareAndSet(false, true)) {
            final int i10 = 0;
            this.f8541d.scheduleAtFixedRate(new Runnable(this) { // from class: q0.a

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ C3040d f8521c;

                {
                    this.f8521c = this;
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.lang.Runnable
                public final void run() {
                    int i11;
                    Network[] allNetworks;
                    Network[] allNetworks2;
                    int i12;
                    String interfaceName;
                    String strM5860f;
                    C3039c c3039c;
                    Network[] allNetworks3;
                    int i13 = 1;
                    switch (i10) {
                        case 0:
                            C3040d c3040d = this.f8521c;
                            Socket socket = c3040d.f8546i;
                            if (!c3040d.f8542e.get() || socket == null || socket.isClosed() || !socket.isConnected()) {
                                return;
                            }
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            if (c3040d.f8547j > 0 && jCurrentTimeMillis - c3040d.f8547j > 5000) {
                                c3040d.m4865e(socket);
                                return;
                            }
                            if (c3040d.f8548k <= 0 || jCurrentTimeMillis - c3040d.f8548k <= 4000 || c3040d.f8549l) {
                                i11 = 1;
                            } else {
                                i11 = 1;
                                c3040d.f8549l = true;
                                c3040d.f8539b.m1459g();
                                MockGpsService mockGpsService = c3040d.f8539b;
                                String string = c3040d.f8538a.getString(R.string.mock_gps_connected_stale);
                                String strMo4863a = c3040d.mo4863a();
                                mockGpsService.getClass();
                                MockGpsService.m1454j(string, strMo4863a, true);
                            }
                            try {
                                synchronized (c3040d.f8543f) {
                                    OutputStream outputStream = socket.getOutputStream();
                                    outputStream.write(i11);
                                    outputStream.flush();
                                    break;
                                }
                                return;
                            } catch (IOException unused) {
                                c3040d.m4865e(socket);
                                return;
                            }
                        default:
                            C3040d c3040d2 = this.f8521c;
                            while (c3040d2.f8542e.get()) {
                                String strM4862g = C3040d.m4862g(c3040d2.f8544g);
                                int i14 = 0;
                                C3039c c3039c2 = null;
                                if (strM4862g != null) {
                                    c3039c = new C3039c(strM4862g, null);
                                    i12 = 0;
                                } else {
                                    MockGpsService mockGpsService2 = c3040d2.f8539b;
                                    String string2 = c3040d2.f8538a.getString(R.string.mock_gps_connecting);
                                    String string3 = c3040d2.f8538a.getString(R.string.mock_gps_auto_wifi_gateway, Integer.valueOf(c3040d2.f8545h));
                                    mockGpsService2.getClass();
                                    MockGpsService.m1454j(string2, string3, false);
                                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                                    C3039c c3039c3 = c3040d2.f8550m;
                                    if (c3039c3 != null) {
                                        C3040d.m4860c(linkedHashMap, c3039c3);
                                    }
                                    Context context = c3040d2.f8538a;
                                    String strM5861g = AbstractC3656k.m5861g(context);
                                    if (strM5861g != null) {
                                        i12 = 0;
                                    } else {
                                        ConnectivityManager connectivityManagerM5862h = AbstractC3656k.m5862h(context);
                                        if (connectivityManagerM5862h == null || (allNetworks = connectivityManagerM5862h.getAllNetworks()) == null) {
                                            i12 = 0;
                                            strM5861g = null;
                                        } else {
                                            int length = allNetworks.length;
                                            int i15 = 0;
                                            while (true) {
                                                if (i15 >= length) {
                                                    int i16 = 4;
                                                    String[] strArr = {AbstractC1387m.m2421h(new byte[]{56, 16, 112, -127}, new byte[]{79, 124, 17, -17, -74, 23, -41, 59}), AbstractC1387m.m2421h(new byte[]{101, -32, -38, 63}, new byte[]{18, -119, -68, 86, -5, -111, 98, 40}), AbstractC1387m.m2421h(new byte[]{10, 121, -124, 49, -112}, new byte[]{121, 14, -24, 80, -2, 120, 70, 110}), AbstractC1387m.m2421h(new byte[]{-9, -65}, new byte[]{ByteCompanionObject.MIN_VALUE, -45, 36, -42, 27, 64, -110, 34})};
                                                    ConnectivityManager connectivityManagerM5862h2 = AbstractC3656k.m5862h(context);
                                                    if (connectivityManagerM5862h2 == null || (allNetworks2 = connectivityManagerM5862h2.getAllNetworks()) == null) {
                                                        i12 = i14;
                                                        strM5861g = null;
                                                    } else {
                                                        int length2 = allNetworks2.length;
                                                        int i17 = 0;
                                                        while (true) {
                                                            if (i17 >= length2) {
                                                                i12 = i14;
                                                                strM5861g = null;
                                                            } else {
                                                                LinkProperties linkProperties = connectivityManagerM5862h2.getLinkProperties(allNetworks2[i17]);
                                                                if (linkProperties == null || (interfaceName = linkProperties.getInterfaceName()) == null) {
                                                                    i12 = i14;
                                                                } else {
                                                                    i12 = i14;
                                                                    String lowerCase = interfaceName.toLowerCase(Locale.US);
                                                                    int i18 = i12;
                                                                    while (true) {
                                                                        if (i18 >= i16) {
                                                                            continue;
                                                                        } else {
                                                                            String str = strArr[i18];
                                                                            if (str == null || !lowerCase.startsWith(str.toLowerCase(Locale.US))) {
                                                                                i18++;
                                                                                i16 = 4;
                                                                            } else {
                                                                                String strM5860f2 = AbstractC3656k.m5860f(linkProperties);
                                                                                if (strM5860f2 != null) {
                                                                                    strM5861g = strM5860f2;
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                                i17++;
                                                                i14 = i12;
                                                                i16 = 4;
                                                            }
                                                        }
                                                    }
                                                    if (strM5861g == null) {
                                                        strM5861g = AbstractC3656k.m5859e(context);
                                                    }
                                                } else {
                                                    Network network = allNetworks[i15];
                                                    NetworkCapabilities networkCapabilities = connectivityManagerM5862h.getNetworkCapabilities(network);
                                                    if (networkCapabilities == null || !networkCapabilities.hasTransport(i13) || (strM5860f = AbstractC3656k.m5860f(connectivityManagerM5862h.getLinkProperties(network))) == null) {
                                                        i15++;
                                                    } else {
                                                        i12 = 0;
                                                        strM5861g = strM5860f;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    if (strM5861g != null) {
                                        C3040d.m4860c(linkedHashMap, new C3039c(strM5861g, null));
                                    }
                                    ConnectivityManager connectivityManager = (ConnectivityManager) c3040d2.f8538a.getSystemService(AbstractC1387m.m2421h(new byte[]{-110, -63, Base64.padSymbol, 123, -111, 43, -18, -63, -121, -57, 39, 108}, new byte[]{-15, -82, 83, 21, -12, 72, -102, -88}));
                                    if (connectivityManager != null && (allNetworks3 = connectivityManager.getAllNetworks()) != null) {
                                        int length3 = allNetworks3.length;
                                        int i19 = i12;
                                        int i20 = i19;
                                        while (i19 < length3) {
                                            Network network2 = allNetworks3[i19];
                                            LinkProperties linkProperties2 = connectivityManager.getLinkProperties(network2);
                                            if (linkProperties2 != null) {
                                                Iterator<LinkAddress> it = linkProperties2.getLinkAddresses().iterator();
                                                while (it.hasNext()) {
                                                    InetAddress address = it.next().getAddress();
                                                    if ((address instanceof Inet4Address) && address.isSiteLocalAddress() && !address.isLoopbackAddress() && !address.isAnyLocalAddress() && i20 < 6) {
                                                        C3040d.m4861d(linkedHashMap, (Inet4Address) address, network2);
                                                        i20++;
                                                    }
                                                }
                                            }
                                            i19++;
                                        }
                                    }
                                    try {
                                        Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
                                        int i21 = i12;
                                        while (networkInterfaces != null && networkInterfaces.hasMoreElements() && i21 < 6) {
                                            NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                                            if (networkInterfaceNextElement.isUp() && !networkInterfaceNextElement.isLoopback()) {
                                                Enumeration<InetAddress> inetAddresses = networkInterfaceNextElement.getInetAddresses();
                                                while (inetAddresses.hasMoreElements() && i21 < 6) {
                                                    InetAddress inetAddressNextElement = inetAddresses.nextElement();
                                                    if (((!(inetAddressNextElement instanceof Inet4Address) || !inetAddressNextElement.isSiteLocalAddress() || inetAddressNextElement.isLoopbackAddress() || inetAddressNextElement.isAnyLocalAddress()) ? i12 : 1) != 0) {
                                                        C3040d.m4861d(linkedHashMap, (Inet4Address) inetAddressNextElement, null);
                                                        i21++;
                                                    }
                                                }
                                            }
                                        }
                                    } catch (IOException | RuntimeException e) {
                                        Log.d(C3040d.f8537o, AbstractC1387m.m2421h(new byte[]{-26, -56, -36, -9, -108, 116, 93, -117, -36, -122, -40, -5, -115, 124, 24, -115, -46, -46, -40, -75, -108, 126, 30, -98, -33, -122, -44, -5, -116, 116, 15, -103, -46, -59, -40, -26, -62, 49}, new byte[]{-77, -90, -67, -107, -8, 17, 125, -1}) + e.getMessage());
                                    }
                                    if (!linkedHashMap.isEmpty()) {
                                        ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(48);
                                        ExecutorCompletionService executorCompletionService = new ExecutorCompletionService(executorServiceNewFixedThreadPool);
                                        ArrayList arrayList = new ArrayList();
                                        Iterator it2 = linkedHashMap.values().iterator();
                                        while (it2.hasNext()) {
                                            arrayList.add(executorCompletionService.submit(new CallableC1574x(2, c3040d2, (C3039c) it2.next())));
                                        }
                                        int i22 = i12;
                                        while (true) {
                                            try {
                                                try {
                                                    if (i22 >= arrayList.size() || !c3040d2.f8542e.get()) {
                                                        executorServiceNewFixedThreadPool.shutdownNow();
                                                    } else {
                                                        try {
                                                            C3039c c3039c4 = (C3039c) executorCompletionService.take().get();
                                                            if (c3039c4 != null) {
                                                                int size = arrayList.size();
                                                                int i23 = i12;
                                                                while (i23 < size) {
                                                                    Object obj = arrayList.get(i23);
                                                                    i23++;
                                                                    ((Future) obj).cancel(true);
                                                                }
                                                                String str2 = C3040d.f8537o;
                                                                StringBuilder sb = new StringBuilder();
                                                                sb.append(AbstractC1387m.m2421h(new byte[]{76, 67, 73, 12, -106, -21, 8, -102, 110, 97, 58, 72, -84, -3, 25, -125, 125, 118, 104, 73, -95, -82, 27, -104, 43}, new byte[]{11, 19, 26, 44, -59, -114, 122, -20}));
                                                                sb.append(c3039c4.f8534a);
                                                                byte[] bArr = new byte[1];
                                                                bArr[i12] = -102;
                                                                sb.append(AbstractC1387m.m2421h(bArr, new byte[]{-96, -118, -114, 58, 14, -11, 10, 79}));
                                                                sb.append(c3040d2.f8545h);
                                                                Log.i(str2, sb.toString());
                                                                executorServiceNewFixedThreadPool.shutdownNow();
                                                                c3039c2 = c3039c4;
                                                            } else {
                                                                i22++;
                                                            }
                                                        } catch (ExecutionException unused2) {
                                                        }
                                                    }
                                                } catch (InterruptedException unused3) {
                                                    Thread.currentThread().interrupt();
                                                }
                                            } catch (Throwable th) {
                                                executorServiceNewFixedThreadPool.shutdownNow();
                                                throw th;
                                            }
                                        }
                                    }
                                    if (c3039c2 != null) {
                                        c3040d2.f8550m = c3039c2;
                                    }
                                    c3039c = c3039c2;
                                }
                                if (c3039c != null) {
                                    StringBuilder sbM170u = AbstractC0074a.m170u(c3039c.f8534a);
                                    sbM170u.append(AbstractC1387m.m2421h(new byte[]{-85}, new byte[]{-111, 13, -65, -89, -84, 122, -84, -59}));
                                    sbM170u.append(c3040d2.f8545h);
                                    String string4 = sbM170u.toString();
                                    try {
                                        try {
                                            MockGpsService mockGpsService3 = c3040d2.f8539b;
                                            String string5 = c3040d2.f8538a.getString(R.string.mock_gps_connecting);
                                            mockGpsService3.getClass();
                                            MockGpsService.m1454j(string5, string4, false);
                                            c3040d2.m4866f(c3039c, string4);
                                        } catch (IOException e6) {
                                            if (c3040d2.f8542e.get()) {
                                                MockGpsService mockGpsService4 = c3040d2.f8539b;
                                                Context context2 = c3040d2.f8538a;
                                                String message = e6.getMessage();
                                                if (message == null || message.trim().isEmpty()) {
                                                    message = c3040d2.f8538a.getString(R.string.mock_gps_ios_server_unavailable);
                                                }
                                                String string6 = context2.getString(R.string.mock_gps_unavailable, message);
                                                mockGpsService4.getClass();
                                                MockGpsService.m1454j(string6, string4, false);
                                                Log.d(C3040d.f8537o, AbstractC1387m.m2421h(new byte[]{-116, 122, -14, 44, -116, 98, -20, 7, -82, 88, -127, 121, -79, 102, -24, 16, -94, 70, -64, 110, -77, 98, -92, 81}, new byte[]{-53, 42, -95, 12, -33, 7, -98, 113}) + e6.getMessage());
                                            }
                                        }
                                        c3040d2.m4865e(c3040d2.f8546i);
                                        c3040d2.f8539b.m1460h();
                                        try {
                                            Thread.sleep(1500L);
                                        } catch (InterruptedException unused4) {
                                            Thread.currentThread().interrupt();
                                        }
                                    } catch (Throwable th2) {
                                        c3040d2.m4865e(c3040d2.f8546i);
                                        c3040d2.f8539b.m1460h();
                                        throw th2;
                                    }
                                    break;
                                } else {
                                    MockGpsService mockGpsService5 = c3040d2.f8539b;
                                    String string7 = c3040d2.f8538a.getString(R.string.mock_gps_ios_server_unavailable);
                                    String strMo4863a2 = c3040d2.mo4863a();
                                    mockGpsService5.getClass();
                                    MockGpsService.m1454j(string7, strMo4863a2, i12);
                                    c3040d2.f8539b.m1460h();
                                    try {
                                        Thread.sleep(1500L);
                                    } catch (InterruptedException unused5) {
                                        Thread.currentThread().interrupt();
                                    }
                                }
                                i13 = 1;
                            }
                            return;
                    }
                }
            }, 1000L, 1000L, TimeUnit.MILLISECONDS);
            final int i11 = 1;
            this.f8540c.execute(new Runnable(this) { // from class: q0.a

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ C3040d f8521c;

                {
                    this.f8521c = this;
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.lang.Runnable
                public final void run() {
                    int i12;
                    Network[] allNetworks;
                    Network[] allNetworks2;
                    int i13;
                    String interfaceName;
                    String strM5860f;
                    C3039c c3039c;
                    Network[] allNetworks3;
                    int i14 = 1;
                    switch (i11) {
                        case 0:
                            C3040d c3040d = this.f8521c;
                            Socket socket = c3040d.f8546i;
                            if (!c3040d.f8542e.get() || socket == null || socket.isClosed() || !socket.isConnected()) {
                                return;
                            }
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            if (c3040d.f8547j > 0 && jCurrentTimeMillis - c3040d.f8547j > 5000) {
                                c3040d.m4865e(socket);
                                return;
                            }
                            if (c3040d.f8548k <= 0 || jCurrentTimeMillis - c3040d.f8548k <= 4000 || c3040d.f8549l) {
                                i12 = 1;
                            } else {
                                i12 = 1;
                                c3040d.f8549l = true;
                                c3040d.f8539b.m1459g();
                                MockGpsService mockGpsService = c3040d.f8539b;
                                String string = c3040d.f8538a.getString(R.string.mock_gps_connected_stale);
                                String strMo4863a = c3040d.mo4863a();
                                mockGpsService.getClass();
                                MockGpsService.m1454j(string, strMo4863a, true);
                            }
                            try {
                                synchronized (c3040d.f8543f) {
                                    OutputStream outputStream = socket.getOutputStream();
                                    outputStream.write(i12);
                                    outputStream.flush();
                                    break;
                                }
                                return;
                            } catch (IOException unused) {
                                c3040d.m4865e(socket);
                                return;
                            }
                        default:
                            C3040d c3040d2 = this.f8521c;
                            while (c3040d2.f8542e.get()) {
                                String strM4862g = C3040d.m4862g(c3040d2.f8544g);
                                int i15 = 0;
                                C3039c c3039c2 = null;
                                if (strM4862g != null) {
                                    c3039c = new C3039c(strM4862g, null);
                                    i13 = 0;
                                } else {
                                    MockGpsService mockGpsService2 = c3040d2.f8539b;
                                    String string2 = c3040d2.f8538a.getString(R.string.mock_gps_connecting);
                                    String string3 = c3040d2.f8538a.getString(R.string.mock_gps_auto_wifi_gateway, Integer.valueOf(c3040d2.f8545h));
                                    mockGpsService2.getClass();
                                    MockGpsService.m1454j(string2, string3, false);
                                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                                    C3039c c3039c3 = c3040d2.f8550m;
                                    if (c3039c3 != null) {
                                        C3040d.m4860c(linkedHashMap, c3039c3);
                                    }
                                    Context context = c3040d2.f8538a;
                                    String strM5861g = AbstractC3656k.m5861g(context);
                                    if (strM5861g != null) {
                                        i13 = 0;
                                    } else {
                                        ConnectivityManager connectivityManagerM5862h = AbstractC3656k.m5862h(context);
                                        if (connectivityManagerM5862h == null || (allNetworks = connectivityManagerM5862h.getAllNetworks()) == null) {
                                            i13 = 0;
                                            strM5861g = null;
                                        } else {
                                            int length = allNetworks.length;
                                            int i16 = 0;
                                            while (true) {
                                                if (i16 >= length) {
                                                    int i17 = 4;
                                                    String[] strArr = {AbstractC1387m.m2421h(new byte[]{56, 16, 112, -127}, new byte[]{79, 124, 17, -17, -74, 23, -41, 59}), AbstractC1387m.m2421h(new byte[]{101, -32, -38, 63}, new byte[]{18, -119, -68, 86, -5, -111, 98, 40}), AbstractC1387m.m2421h(new byte[]{10, 121, -124, 49, -112}, new byte[]{121, 14, -24, 80, -2, 120, 70, 110}), AbstractC1387m.m2421h(new byte[]{-9, -65}, new byte[]{ByteCompanionObject.MIN_VALUE, -45, 36, -42, 27, 64, -110, 34})};
                                                    ConnectivityManager connectivityManagerM5862h2 = AbstractC3656k.m5862h(context);
                                                    if (connectivityManagerM5862h2 == null || (allNetworks2 = connectivityManagerM5862h2.getAllNetworks()) == null) {
                                                        i13 = i15;
                                                        strM5861g = null;
                                                    } else {
                                                        int length2 = allNetworks2.length;
                                                        int i18 = 0;
                                                        while (true) {
                                                            if (i18 >= length2) {
                                                                i13 = i15;
                                                                strM5861g = null;
                                                            } else {
                                                                LinkProperties linkProperties = connectivityManagerM5862h2.getLinkProperties(allNetworks2[i18]);
                                                                if (linkProperties == null || (interfaceName = linkProperties.getInterfaceName()) == null) {
                                                                    i13 = i15;
                                                                } else {
                                                                    i13 = i15;
                                                                    String lowerCase = interfaceName.toLowerCase(Locale.US);
                                                                    int i19 = i13;
                                                                    while (true) {
                                                                        if (i19 >= i17) {
                                                                            continue;
                                                                        } else {
                                                                            String str = strArr[i19];
                                                                            if (str == null || !lowerCase.startsWith(str.toLowerCase(Locale.US))) {
                                                                                i19++;
                                                                                i17 = 4;
                                                                            } else {
                                                                                String strM5860f2 = AbstractC3656k.m5860f(linkProperties);
                                                                                if (strM5860f2 != null) {
                                                                                    strM5861g = strM5860f2;
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                                i18++;
                                                                i15 = i13;
                                                                i17 = 4;
                                                            }
                                                        }
                                                    }
                                                    if (strM5861g == null) {
                                                        strM5861g = AbstractC3656k.m5859e(context);
                                                    }
                                                } else {
                                                    Network network = allNetworks[i16];
                                                    NetworkCapabilities networkCapabilities = connectivityManagerM5862h.getNetworkCapabilities(network);
                                                    if (networkCapabilities == null || !networkCapabilities.hasTransport(i14) || (strM5860f = AbstractC3656k.m5860f(connectivityManagerM5862h.getLinkProperties(network))) == null) {
                                                        i16++;
                                                    } else {
                                                        i13 = 0;
                                                        strM5861g = strM5860f;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    if (strM5861g != null) {
                                        C3040d.m4860c(linkedHashMap, new C3039c(strM5861g, null));
                                    }
                                    ConnectivityManager connectivityManager = (ConnectivityManager) c3040d2.f8538a.getSystemService(AbstractC1387m.m2421h(new byte[]{-110, -63, Base64.padSymbol, 123, -111, 43, -18, -63, -121, -57, 39, 108}, new byte[]{-15, -82, 83, 21, -12, 72, -102, -88}));
                                    if (connectivityManager != null && (allNetworks3 = connectivityManager.getAllNetworks()) != null) {
                                        int length3 = allNetworks3.length;
                                        int i110 = i13;
                                        int i20 = i110;
                                        while (i110 < length3) {
                                            Network network2 = allNetworks3[i110];
                                            LinkProperties linkProperties2 = connectivityManager.getLinkProperties(network2);
                                            if (linkProperties2 != null) {
                                                Iterator<LinkAddress> it = linkProperties2.getLinkAddresses().iterator();
                                                while (it.hasNext()) {
                                                    InetAddress address = it.next().getAddress();
                                                    if ((address instanceof Inet4Address) && address.isSiteLocalAddress() && !address.isLoopbackAddress() && !address.isAnyLocalAddress() && i20 < 6) {
                                                        C3040d.m4861d(linkedHashMap, (Inet4Address) address, network2);
                                                        i20++;
                                                    }
                                                }
                                            }
                                            i110++;
                                        }
                                    }
                                    try {
                                        Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
                                        int i21 = i13;
                                        while (networkInterfaces != null && networkInterfaces.hasMoreElements() && i21 < 6) {
                                            NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                                            if (networkInterfaceNextElement.isUp() && !networkInterfaceNextElement.isLoopback()) {
                                                Enumeration<InetAddress> inetAddresses = networkInterfaceNextElement.getInetAddresses();
                                                while (inetAddresses.hasMoreElements() && i21 < 6) {
                                                    InetAddress inetAddressNextElement = inetAddresses.nextElement();
                                                    if (((!(inetAddressNextElement instanceof Inet4Address) || !inetAddressNextElement.isSiteLocalAddress() || inetAddressNextElement.isLoopbackAddress() || inetAddressNextElement.isAnyLocalAddress()) ? i13 : 1) != 0) {
                                                        C3040d.m4861d(linkedHashMap, (Inet4Address) inetAddressNextElement, null);
                                                        i21++;
                                                    }
                                                }
                                            }
                                        }
                                    } catch (IOException | RuntimeException e) {
                                        Log.d(C3040d.f8537o, AbstractC1387m.m2421h(new byte[]{-26, -56, -36, -9, -108, 116, 93, -117, -36, -122, -40, -5, -115, 124, 24, -115, -46, -46, -40, -75, -108, 126, 30, -98, -33, -122, -44, -5, -116, 116, 15, -103, -46, -59, -40, -26, -62, 49}, new byte[]{-77, -90, -67, -107, -8, 17, 125, -1}) + e.getMessage());
                                    }
                                    if (!linkedHashMap.isEmpty()) {
                                        ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(48);
                                        ExecutorCompletionService executorCompletionService = new ExecutorCompletionService(executorServiceNewFixedThreadPool);
                                        ArrayList arrayList = new ArrayList();
                                        Iterator it2 = linkedHashMap.values().iterator();
                                        while (it2.hasNext()) {
                                            arrayList.add(executorCompletionService.submit(new CallableC1574x(2, c3040d2, (C3039c) it2.next())));
                                        }
                                        int i22 = i13;
                                        while (true) {
                                            try {
                                                try {
                                                    if (i22 >= arrayList.size() || !c3040d2.f8542e.get()) {
                                                        executorServiceNewFixedThreadPool.shutdownNow();
                                                    } else {
                                                        try {
                                                            C3039c c3039c4 = (C3039c) executorCompletionService.take().get();
                                                            if (c3039c4 != null) {
                                                                int size = arrayList.size();
                                                                int i23 = i13;
                                                                while (i23 < size) {
                                                                    Object obj = arrayList.get(i23);
                                                                    i23++;
                                                                    ((Future) obj).cancel(true);
                                                                }
                                                                String str2 = C3040d.f8537o;
                                                                StringBuilder sb = new StringBuilder();
                                                                sb.append(AbstractC1387m.m2421h(new byte[]{76, 67, 73, 12, -106, -21, 8, -102, 110, 97, 58, 72, -84, -3, 25, -125, 125, 118, 104, 73, -95, -82, 27, -104, 43}, new byte[]{11, 19, 26, 44, -59, -114, 122, -20}));
                                                                sb.append(c3039c4.f8534a);
                                                                byte[] bArr = new byte[1];
                                                                bArr[i13] = -102;
                                                                sb.append(AbstractC1387m.m2421h(bArr, new byte[]{-96, -118, -114, 58, 14, -11, 10, 79}));
                                                                sb.append(c3040d2.f8545h);
                                                                Log.i(str2, sb.toString());
                                                                executorServiceNewFixedThreadPool.shutdownNow();
                                                                c3039c2 = c3039c4;
                                                            } else {
                                                                i22++;
                                                            }
                                                        } catch (ExecutionException unused2) {
                                                        }
                                                    }
                                                } catch (InterruptedException unused3) {
                                                    Thread.currentThread().interrupt();
                                                }
                                            } catch (Throwable th) {
                                                executorServiceNewFixedThreadPool.shutdownNow();
                                                throw th;
                                            }
                                        }
                                    }
                                    if (c3039c2 != null) {
                                        c3040d2.f8550m = c3039c2;
                                    }
                                    c3039c = c3039c2;
                                }
                                if (c3039c != null) {
                                    StringBuilder sbM170u = AbstractC0074a.m170u(c3039c.f8534a);
                                    sbM170u.append(AbstractC1387m.m2421h(new byte[]{-85}, new byte[]{-111, 13, -65, -89, -84, 122, -84, -59}));
                                    sbM170u.append(c3040d2.f8545h);
                                    String string4 = sbM170u.toString();
                                    try {
                                        try {
                                            MockGpsService mockGpsService3 = c3040d2.f8539b;
                                            String string5 = c3040d2.f8538a.getString(R.string.mock_gps_connecting);
                                            mockGpsService3.getClass();
                                            MockGpsService.m1454j(string5, string4, false);
                                            c3040d2.m4866f(c3039c, string4);
                                        } catch (IOException e6) {
                                            if (c3040d2.f8542e.get()) {
                                                MockGpsService mockGpsService4 = c3040d2.f8539b;
                                                Context context2 = c3040d2.f8538a;
                                                String message = e6.getMessage();
                                                if (message == null || message.trim().isEmpty()) {
                                                    message = c3040d2.f8538a.getString(R.string.mock_gps_ios_server_unavailable);
                                                }
                                                String string6 = context2.getString(R.string.mock_gps_unavailable, message);
                                                mockGpsService4.getClass();
                                                MockGpsService.m1454j(string6, string4, false);
                                                Log.d(C3040d.f8537o, AbstractC1387m.m2421h(new byte[]{-116, 122, -14, 44, -116, 98, -20, 7, -82, 88, -127, 121, -79, 102, -24, 16, -94, 70, -64, 110, -77, 98, -92, 81}, new byte[]{-53, 42, -95, 12, -33, 7, -98, 113}) + e6.getMessage());
                                            }
                                        }
                                        c3040d2.m4865e(c3040d2.f8546i);
                                        c3040d2.f8539b.m1460h();
                                        try {
                                            Thread.sleep(1500L);
                                        } catch (InterruptedException unused4) {
                                            Thread.currentThread().interrupt();
                                        }
                                    } catch (Throwable th2) {
                                        c3040d2.m4865e(c3040d2.f8546i);
                                        c3040d2.f8539b.m1460h();
                                        throw th2;
                                    }
                                    break;
                                } else {
                                    MockGpsService mockGpsService5 = c3040d2.f8539b;
                                    String string7 = c3040d2.f8538a.getString(R.string.mock_gps_ios_server_unavailable);
                                    String strMo4863a2 = c3040d2.mo4863a();
                                    mockGpsService5.getClass();
                                    MockGpsService.m1454j(string7, strMo4863a2, i13);
                                    c3040d2.f8539b.m1460h();
                                    try {
                                        Thread.sleep(1500L);
                                    } catch (InterruptedException unused5) {
                                        Thread.currentThread().interrupt();
                                    }
                                }
                                i14 = 1;
                            }
                            return;
                    }
                }
            });
        }
    }

    @Override // p173q0.InterfaceC3044h
    public final void stop() {
        this.f8542e.set(false);
        m4865e(this.f8546i);
        this.f8541d.shutdownNow();
        this.f8540c.shutdownNow();
    }
}
