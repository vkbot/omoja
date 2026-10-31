package q0;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.LinkAddress;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.util.Log;
import com.example.navistart.MockGPS.MockGpsService;
import f5.x;
import java.io.IOException;
import java.io.OutputStream;
import java.net.Inet4Address;
import java.net.InetAddress;
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
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4753b;
    public final /* synthetic */ d c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(d dVar, int i9) {
        this.f4753b = i9;
        this.c = dVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r5v5, resolved type: boolean */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        int i9;
        Network[] allNetworks;
        Network[] allNetworks2;
        int i10;
        String interfaceName;
        String strF;
        c cVar;
        Network[] allNetworks3;
        int i11 = 1;
        switch (this.f4753b) {
            case 0:
                d dVar = this.c;
                Socket socket = dVar.f4772i;
                if (!dVar.e.get() || socket == null || socket.isClosed() || !socket.isConnected()) {
                    return;
                }
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (dVar.f4773j > 0 && jCurrentTimeMillis - dVar.f4773j > 5000) {
                    dVar.e(socket);
                    return;
                }
                if (dVar.f4774k <= 0 || jCurrentTimeMillis - dVar.f4774k <= 4000 || dVar.f4775l) {
                    i9 = 1;
                } else {
                    i9 = 1;
                    dVar.f4775l = true;
                    dVar.f4768b.g();
                    MockGpsService mockGpsService = dVar.f4768b;
                    String string = dVar.f4767a.getString(2131952216);
                    String strA = dVar.a();
                    mockGpsService.getClass();
                    MockGpsService.j(string, strA, true);
                }
                try {
                    synchronized (dVar.f4769f) {
                        OutputStream outputStream = socket.getOutputStream();
                        outputStream.write(i9);
                        outputStream.flush();
                        break;
                    }
                    return;
                } catch (IOException unused) {
                    dVar.e(socket);
                    return;
                }
            default:
                d dVar2 = this.c;
                while (dVar2.e.get()) {
                    String strG = d.g(dVar2.f4770g);
                    int i12 = 0;
                    c cVar2 = null;
                    if (strG != null) {
                        cVar = new c(strG, null);
                        i10 = 0;
                    } else {
                        MockGpsService mockGpsService2 = dVar2.f4768b;
                        String string2 = dVar2.f4767a.getString(2131952217);
                        String string3 = dVar2.f4767a.getString(2131952213, Integer.valueOf(dVar2.f4771h));
                        mockGpsService2.getClass();
                        MockGpsService.j(string2, string3, false);
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        c cVar3 = dVar2.f4776m;
                        if (cVar3 != null) {
                            d.c(linkedHashMap, cVar3);
                        }
                        Context context = dVar2.f4767a;
                        String strG2 = y5.k.g(context);
                        if (strG2 != null) {
                            i10 = 0;
                        } else {
                            ConnectivityManager connectivityManagerH = y5.k.h(context);
                            if (connectivityManagerH == null || (allNetworks = connectivityManagerH.getAllNetworks()) == null) {
                                i10 = 0;
                                strG2 = null;
                            } else {
                                int length = allNetworks.length;
                                int i13 = 0;
                                while (true) {
                                    if (i13 >= length) {
                                        int i14 = 4;
                                        String[] strArr = {e0.m.h(new byte[]{56, 16, 112, -127}, new byte[]{79, 124, 17, -17, -74, 23, -41, 59}), e0.m.h(new byte[]{101, -32, -38, 63}, new byte[]{18, -119, -68, 86, -5, -111, 98, 40}), e0.m.h(new byte[]{10, 121, -124, 49, -112}, new byte[]{121, 14, -24, 80, -2, 120, 70, 110}), e0.m.h(new byte[]{-9, -65}, new byte[]{ByteCompanionObject.MIN_VALUE, -45, 36, -42, 27, 64, -110, 34})};
                                        ConnectivityManager connectivityManagerH2 = y5.k.h(context);
                                        if (connectivityManagerH2 == null || (allNetworks2 = connectivityManagerH2.getAllNetworks()) == null) {
                                            i10 = i12;
                                            strG2 = null;
                                        } else {
                                            int length2 = allNetworks2.length;
                                            int i15 = 0;
                                            while (true) {
                                                if (i15 >= length2) {
                                                    i10 = i12;
                                                    strG2 = null;
                                                } else {
                                                    LinkProperties linkProperties = connectivityManagerH2.getLinkProperties(allNetworks2[i15]);
                                                    if (linkProperties == null || (interfaceName = linkProperties.getInterfaceName()) == null) {
                                                        i10 = i12;
                                                    } else {
                                                        i10 = i12;
                                                        String lowerCase = interfaceName.toLowerCase(Locale.US);
                                                        int i16 = i10;
                                                        while (true) {
                                                            if (i16 >= i14) {
                                                                continue;
                                                            } else {
                                                                String str = strArr[i16];
                                                                if (str == null || !lowerCase.startsWith(str.toLowerCase(Locale.US))) {
                                                                    i16++;
                                                                    i14 = 4;
                                                                } else {
                                                                    String strF2 = y5.k.f(linkProperties);
                                                                    if (strF2 != null) {
                                                                        strG2 = strF2;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                    i15++;
                                                    i12 = i10;
                                                    i14 = 4;
                                                }
                                            }
                                        }
                                        if (strG2 == null) {
                                            strG2 = y5.k.e(context);
                                        }
                                    } else {
                                        Network network = allNetworks[i13];
                                        NetworkCapabilities networkCapabilities = connectivityManagerH.getNetworkCapabilities(network);
                                        if (networkCapabilities == null || !networkCapabilities.hasTransport(i11) || (strF = y5.k.f(connectivityManagerH.getLinkProperties(network))) == null) {
                                            i13++;
                                        } else {
                                            i10 = 0;
                                            strG2 = strF;
                                        }
                                    }
                                }
                            }
                        }
                        if (strG2 != null) {
                            d.c(linkedHashMap, new c(strG2, null));
                        }
                        ConnectivityManager connectivityManager = (ConnectivityManager) dVar2.f4767a.getSystemService(e0.m.h(new byte[]{-110, -63, Base64.padSymbol, 123, -111, 43, -18, -63, -121, -57, 39, 108}, new byte[]{-15, -82, 83, 21, -12, 72, -102, -88}));
                        if (connectivityManager != null && (allNetworks3 = connectivityManager.getAllNetworks()) != null) {
                            int length3 = allNetworks3.length;
                            int i17 = i10;
                            int i18 = i17;
                            while (i17 < length3) {
                                Network network2 = allNetworks3[i17];
                                LinkProperties linkProperties2 = connectivityManager.getLinkProperties(network2);
                                if (linkProperties2 != null) {
                                    Iterator<LinkAddress> it = linkProperties2.getLinkAddresses().iterator();
                                    while (it.hasNext()) {
                                        InetAddress address = it.next().getAddress();
                                        if ((address instanceof Inet4Address) && address.isSiteLocalAddress() && !address.isLoopbackAddress() && !address.isAnyLocalAddress() && i18 < 6) {
                                            d.d(linkedHashMap, (Inet4Address) address, network2);
                                            i18++;
                                        }
                                    }
                                }
                                i17++;
                            }
                        }
                        try {
                            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
                            int i19 = i10;
                            while (networkInterfaces != null && networkInterfaces.hasMoreElements() && i19 < 6) {
                                NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                                if (networkInterfaceNextElement.isUp() && !networkInterfaceNextElement.isLoopback()) {
                                    Enumeration<InetAddress> inetAddresses = networkInterfaceNextElement.getInetAddresses();
                                    while (inetAddresses.hasMoreElements() && i19 < 6) {
                                        InetAddress inetAddressNextElement = inetAddresses.nextElement();
                                        if (((!(inetAddressNextElement instanceof Inet4Address) || !inetAddressNextElement.isSiteLocalAddress() || inetAddressNextElement.isLoopbackAddress() || inetAddressNextElement.isAnyLocalAddress()) ? i10 : 1) != 0) {
                                            d.d(linkedHashMap, (Inet4Address) inetAddressNextElement, null);
                                            i19++;
                                        }
                                    }
                                }
                            }
                        } catch (IOException | RuntimeException e) {
                            Log.d(d.f4766o, e0.m.h(new byte[]{-26, -56, -36, -9, -108, 116, 93, -117, -36, -122, -40, -5, -115, 124, 24, -115, -46, -46, -40, -75, -108, 126, 30, -98, -33, -122, -44, -5, -116, 116, 15, -103, -46, -59, -40, -26, -62, 49}, new byte[]{-77, -90, -67, -107, -8, 17, 125, -1}) + e.getMessage());
                        }
                        if (!linkedHashMap.isEmpty()) {
                            ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(48);
                            ExecutorCompletionService executorCompletionService = new ExecutorCompletionService(executorServiceNewFixedThreadPool);
                            ArrayList arrayList = new ArrayList();
                            Iterator it2 = linkedHashMap.values().iterator();
                            while (it2.hasNext()) {
                                arrayList.add(executorCompletionService.submit(new x(2, dVar2, (c) it2.next())));
                            }
                            int i20 = i10;
                            while (true) {
                                try {
                                    try {
                                        if (i20 >= arrayList.size() || !dVar2.e.get()) {
                                            executorServiceNewFixedThreadPool.shutdownNow();
                                        } else {
                                            try {
                                                c cVar4 = (c) executorCompletionService.take().get();
                                                if (cVar4 != null) {
                                                    int size = arrayList.size();
                                                    int i21 = i10;
                                                    while (i21 < size) {
                                                        Object obj = arrayList.get(i21);
                                                        i21++;
                                                        ((Future) obj).cancel(true);
                                                    }
                                                    String str2 = d.f4766o;
                                                    StringBuilder sb = new StringBuilder();
                                                    sb.append(e0.m.h(new byte[]{76, 67, 73, 12, -106, -21, 8, -102, 110, 97, 58, 72, -84, -3, 25, -125, 125, 118, 104, 73, -95, -82, 27, -104, 43}, new byte[]{11, 19, 26, 44, -59, -114, 122, -20}));
                                                    sb.append(cVar4.f4763a);
                                                    byte[] bArr = new byte[1];
                                                    bArr[i10] = -102;
                                                    sb.append(e0.m.h(bArr, new byte[]{-96, -118, -114, 58, 14, -11, 10, 79}));
                                                    sb.append(dVar2.f4771h);
                                                    Log.i(str2, sb.toString());
                                                    executorServiceNewFixedThreadPool.shutdownNow();
                                                    cVar2 = cVar4;
                                                } else {
                                                    i20++;
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
                        if (cVar2 != null) {
                            dVar2.f4776m = cVar2;
                        }
                        cVar = cVar2;
                    }
                    if (cVar != null) {
                        StringBuilder sbU = ai.onnxruntime.a.u(cVar.f4763a);
                        sbU.append(e0.m.h(new byte[]{-85}, new byte[]{-111, 13, -65, -89, -84, 122, -84, -59}));
                        sbU.append(dVar2.f4771h);
                        String string4 = sbU.toString();
                        try {
                            try {
                                MockGpsService mockGpsService3 = dVar2.f4768b;
                                String string5 = dVar2.f4767a.getString(2131952217);
                                mockGpsService3.getClass();
                                MockGpsService.j(string5, string4, false);
                                dVar2.f(cVar, string4);
                            } catch (Throwable th2) {
                                dVar2.e(dVar2.f4772i);
                                dVar2.f4768b.h();
                                throw th2;
                            }
                        } catch (IOException e6) {
                            if (dVar2.e.get()) {
                                MockGpsService mockGpsService4 = dVar2.f4768b;
                                Context context2 = dVar2.f4767a;
                                String message = e6.getMessage();
                                if (message == null || message.trim().isEmpty()) {
                                    message = dVar2.f4767a.getString(2131952234);
                                }
                                String string6 = context2.getString(2131952280, message);
                                mockGpsService4.getClass();
                                MockGpsService.j(string6, string4, false);
                                Log.d(d.f4766o, e0.m.h(new byte[]{-116, 122, -14, 44, -116, 98, -20, 7, -82, 88, -127, 121, -79, 102, -24, 16, -94, 70, -64, 110, -77, 98, -92, 81}, new byte[]{-53, 42, -95, 12, -33, 7, -98, 113}) + e6.getMessage());
                            }
                        }
                        dVar2.e(dVar2.f4772i);
                        dVar2.f4768b.h();
                        try {
                            Thread.sleep(1500L);
                        } catch (InterruptedException unused4) {
                            Thread.currentThread().interrupt();
                        }
                        break;
                    } else {
                        MockGpsService mockGpsService5 = dVar2.f4768b;
                        String string7 = dVar2.f4767a.getString(2131952234);
                        String strA2 = dVar2.a();
                        mockGpsService5.getClass();
                        MockGpsService.j(string7, strA2, i10);
                        dVar2.f4768b.h();
                        try {
                            Thread.sleep(1500L);
                        } catch (InterruptedException unused5) {
                            Thread.currentThread().interrupt();
                        }
                    }
                    i11 = 1;
                }
                return;
        }
    }
}
