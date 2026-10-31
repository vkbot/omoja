package com.example.navistart.Transport;

import android.app.Notification;
import android.app.Notification$Builder;
import android.app.NotificationManager;
import android.app.Service;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothSocket;
import android.content.Context;
import android.content.Intent;
import android.net.DhcpInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build$VERSION;
import android.os.IBinder;
import android.util.Log;
import com.example.navistart.cores.ColorText;
import e0.d2;
import e0.m;
import e0.s3;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentHashMap$KeySetView;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONException;
import s1.x0;
import w0.d;
import y0.b;
import y0.c;
import y0.g;
import y0.i;
import y0.j;
import y0.k;
import y0.l;
import y0.n;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class TransportService extends Service {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final String f852p = m.h(new byte[]{29, 54, 30, -45, 67, 102, -7, -52, 39, 58, 24, -13}, new byte[]{87, 85, 106, -121, 49, 7, -105, -65});

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final String f853q = m.h(new byte[]{70, -101, -6, 75, 45, 91, 75, 56, 85, -104, -14, 75, 38, 66, 92, 60, 86, ByteCompanionObject.MIN_VALUE, -10, 23, 60, 13, 94, 39, 68, -102, -28, 21, 39, 81, 94, 123, 100, -73, -58, 48, 1, 113, 111}, new byte[]{37, -12, -105, 101, 72, 35, 42, 85});
    public static final String r = m.h(new byte[]{-61, 79, -108, -60, -99, -104, -92, -113, -48, 76, -100, -60, -106, -127, -77, -117, -45, 84, -104, -104, -116, -50, -79, -112, -63, 78, -118, -102, -105, -110, -79, -52, -16, 117, -69, -90, -79, -77, -115}, new byte[]{-96, 32, -7, -22, -8, -32, -59, -30});

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final String f854s = m.h(new byte[]{-120, -28, 101, 28, -94, -97, 81}, new byte[]{-21, -116, 4, 114, -52, -6, Base64.padSymbol, 59});
    public static final String t = m.h(new byte[]{-67, 91, 48, 115, -42, -11, 5}, new byte[]{-51, 58, 73, 31, -71, -108, 97, 63});

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final String f855u = m.h(new byte[]{-115, -2, -65, 126, ByteCompanionObject.MAX_VALUE, 111, 52, -14}, new byte[]{-23, -101, -45, 23, 9, 10, 70, -117});

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final String f856v = m.h(new byte[]{92, -37, 80, 34, 88, 46, -77, -1, 69, -56, 75, 15, 88}, new byte[]{54, -72, 36, 125, 44, 92, -46, -111});
    public static final AtomicBoolean w = new AtomicBoolean(false);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final AtomicBoolean f857x = new AtomicBoolean(false);

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static volatile String f858y = "";

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static volatile TransportService f859z;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ExecutorService f862g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ExecutorService f863h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ExecutorService f864i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ScheduledExecutorService f865j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public b f866k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public volatile s3 f867l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public volatile long f868m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public volatile long f869n;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f860b = new ConcurrentHashMap();
    public final ConcurrentHashMap c = new ConcurrentHashMap();
    public final ConcurrentHashMap$KeySetView d = ConcurrentHashMap.newKeySet();
    public final AtomicLong e = new AtomicLong(System.currentTimeMillis());

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AtomicBoolean f861f = new AtomicBoolean(false);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final ConcurrentHashMap f870o = new ConcurrentHashMap();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void b(Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (IOException unused) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String e(Throwable th) {
        if (th == null) {
            return m.h(new byte[]{48, -11, -91, -96, 35, 17, 86, 92, 32, -23, -68, -95, 62}, new byte[]{69, -101, -50, -50, 76, 102, 56, 124});
        }
        String message = th.getMessage();
        return th.getClass().getSimpleName().concat(message == null ? "" : m.h(new byte[]{121, 60}, new byte[]{67, 28, 83, 86, 86, -85, 56, 0}).concat(message));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Notification a(String str) {
        String string = str == null ? getString(2131952650) : getString(2131952630, str);
        return Build$VERSION.SDK_INT >= 26 ? d.b(this, f856v).setSmallIcon(2131165496).setContentTitle(getString(2131952647)).setContentText(string).setOnlyAlertOnce(true).setOngoing(true).build() : new Notification$Builder(this).setSmallIcon(2131165496).setContentTitle(getString(2131952647)).setContentText(string).setOnlyAlertOnce(true).setOngoing(true).build();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final s3 c() {
        BluetoothDevice next;
        ExecutionException e;
        Throwable e6;
        BluetoothSocket bluetoothSocketCreateInsecureRfcommSocketToServiceRecord;
        Future futureSubmit;
        if (Build$VERSION.SDK_INT >= 31 && checkSelfPermission(m.h(new byte[]{4, -43, -113, -39, -107, -31, -52, -114, 21, -34, -103, -58, -109, -5, -37, -55, 10, -43, -59, -23, -74, -35, -19, -12, 42, -12, -65, -29, -91, -53, -25, -18, 43, -2, -88, -1}, new byte[]{101, -69, -21, -85, -6, -120, -88, -96})) != 0) {
            i(m.h(new byte[]{108, -123, 67, -58, -25, 64, 106, -50, 102, -106, 85, -52, -3, 65, 96, -39, 122, -23, 102, -26, -63, 98, 76, -23, 93, -96, 121, -19, -109, 98, 76, -23, 93, -96, 120, -28}, new byte[]{46, -55, 22, -125, -77, 15, 37, -102}));
            return null;
        }
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter == null) {
            i(m.h(new byte[]{-66, -80, -84, -8, -5, 85, 102, -122, -108, -4, -72, -7, -18, 74, 125, -105, -114, -4, -84, -13, -18, 76, 104, -101, -112, -67, -69, -15, -22}, new byte[]{-4, -36, -39, -99, -113, 58, 9, -14}));
            return null;
        }
        if (!defaultAdapter.isEnabled()) {
            i(m.h(new byte[]{7, -83, -103, 58, -99, 36, 24, -42, 45, -31, -123, 44, -55, 47, 30, -47, 36, -93, ByteCompanionObject.MIN_VALUE, 58, -115}, new byte[]{69, -63, -20, 95, -23, 75, 119, -94}));
            return null;
        }
        String strD = y0.m.d(y0.m.c(this).getString(y0.m.e, ""));
        if (strD == null || strD.trim().isEmpty()) {
            i(m.h(new byte[]{-58, -115, 1, 21, -41, 8, -88, 122, -20, -62, 69, 0, -64, 8, -71, 122, -88, -111, 68, 9, -45, 2, -82, 122, -20}, new byte[]{-120, -30, 33, 101, -74, 97, -38, 31}));
            return null;
        }
        String strTrim = strD.trim();
        try {
            Iterator<BluetoothDevice> it = defaultAdapter.getBondedDevices().iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!strTrim.equals(next.getName()));
        } catch (SecurityException e9) {
            i(m.h(new byte[]{-68, 53, 49, 10, -126, -8, 2, -28, -100, 55, 58, 23, -98, -84, 82, -28, -106, 38, 58, 0, -51, -24, 71, -13, -106, 55, 58, 23, -41, -84}, new byte[]{-1, 84, 95, 100, -19, -116, 34, -123}).concat(e(e9)));
        }
        if (next == null) {
            i(m.h(new byte[]{-11, -30, 115, -14, 79, -79, 22, 98, -64, -11, 115, -29, 79, -11, 88, 105, -47, -93, 124, -17, 95, -69, 82, 60, -123}, new byte[]{-91, -125, 26, ByteCompanionObject.MIN_VALUE, 42, -43, 54, 6}).concat(strD));
            return null;
        }
        try {
            try {
                try {
                    i(m.h(new byte[]{-8, -71, 11, -111, -46, 85, 92, -64, -43, -79, 69, -117, -40, 22}, new byte[]{-69, -42, 101, -1, -73, 54, 40, -87}).concat(strD));
                    defaultAdapter.cancelDiscovery();
                    bluetoothSocketCreateInsecureRfcommSocketToServiceRecord = next.createInsecureRfcommSocketToServiceRecord(j.f6097a);
                    try {
                        try {
                            futureSubmit = this.f863h.submit(new d7.b(2, bluetoothSocketCreateInsecureRfcommSocketToServiceRecord));
                            try {
                                futureSubmit.get(5000L, TimeUnit.MILLISECONDS);
                                i(m.h(new byte[]{19, 83, 51, 117, -35, 32, 118, -31, 47, 82, 62, 123, -37, 32, 51, -26, 96, 72, 63, 62}, new byte[]{64, 60, 80, 30, -72, 84, 86, -126}).concat(strD));
                                String strH = m.h(new byte[]{-4, -10, 47, -3, 41, -47, 83, 78, -42}, new byte[]{-66, -102, 90, -104, 93, -66, 60, 58});
                                InputStream inputStream = bluetoothSocketCreateInsecureRfcommSocketToServiceRecord.getInputStream();
                                Charset charset = StandardCharsets.UTF_8;
                                return new s3(strH, bluetoothSocketCreateInsecureRfcommSocketToServiceRecord, new BufferedReader(new InputStreamReader(inputStream, charset)), new BufferedWriter(new OutputStreamWriter(bluetoothSocketCreateInsecureRfcommSocketToServiceRecord.getOutputStream(), charset)));
                            } catch (InterruptedException unused) {
                                i(m.h(new byte[]{-60, 17, 14, -106, -34, -64, 49, 5, -24, 16, 64, -111, -43, -41, 32, 30, -11, 11, 16, -116, -34, -57}, new byte[]{-121, 126, 96, -8, -69, -93, 69, 108}));
                                Thread.currentThread().interrupt();
                                if (futureSubmit != null) {
                                    futureSubmit.cancel(true);
                                }
                                b(bluetoothSocketCreateInsecureRfcommSocketToServiceRecord);
                                return null;
                            } catch (TimeoutException unused2) {
                                i(m.h(new byte[]{31, 60, 55, -67, -86, -126, 23, -28, 51, Base64.padSymbol, 121, -89, -90, -116, 6, -23, 124, 60, 44, -89, -17, ByteCompanionObject.MIN_VALUE, 5, -7, 57, 33, 121, -26, -17, -110, 89, -83}, new byte[]{92, 83, 89, -45, -49, -31, 99, -115}).concat(strD));
                                if (futureSubmit != null) {
                                    futureSubmit.cancel(true);
                                }
                                b(bluetoothSocketCreateInsecureRfcommSocketToServiceRecord);
                                return null;
                            }
                        } catch (InterruptedException unused3) {
                            futureSubmit = null;
                        } catch (TimeoutException unused4) {
                            futureSubmit = null;
                        }
                    } catch (IOException e10) {
                        e6 = e10;
                        i(m.h(new byte[]{-88, -62, -34, -60, ByteCompanionObject.MAX_VALUE, -47, -86, -9, -126, -114, -50, -45, 121, -47, -73, -71, -54}, new byte[]{-22, -82, -85, -95, 11, -66, -59, -125}).concat(e(e6)));
                        b(bluetoothSocketCreateInsecureRfcommSocketToServiceRecord);
                        return null;
                    } catch (SecurityException e11) {
                        e6 = e11;
                        i(m.h(new byte[]{-88, -62, -34, -60, ByteCompanionObject.MAX_VALUE, -47, -86, -9, -126, -114, -50, -45, 121, -47, -73, -71, -54}, new byte[]{-22, -82, -85, -95, 11, -66, -59, -125}).concat(e(e6)));
                        b(bluetoothSocketCreateInsecureRfcommSocketToServiceRecord);
                        return null;
                    } catch (ExecutionException e12) {
                        e = e12;
                        i(m.h(new byte[]{-83, 7, 52, -46, -57, 51, -66, -56, -127, 6, 122, -38, -61, 57, -90, -60, -118, 82, 122}, new byte[]{-18, 104, 90, -68, -94, 80, -54, -95}).concat(e(e.getCause())));
                        b(bluetoothSocketCreateInsecureRfcommSocketToServiceRecord);
                        return null;
                    }
                } catch (IOException e13) {
                    e6 = e13;
                    bluetoothSocketCreateInsecureRfcommSocketToServiceRecord = null;
                    i(m.h(new byte[]{-88, -62, -34, -60, ByteCompanionObject.MAX_VALUE, -47, -86, -9, -126, -114, -50, -45, 121, -47, -73, -71, -54}, new byte[]{-22, -82, -85, -95, 11, -66, -59, -125}).concat(e(e6)));
                    b(bluetoothSocketCreateInsecureRfcommSocketToServiceRecord);
                    return null;
                } catch (SecurityException e14) {
                    e6 = e14;
                    bluetoothSocketCreateInsecureRfcommSocketToServiceRecord = null;
                    i(m.h(new byte[]{-88, -62, -34, -60, ByteCompanionObject.MAX_VALUE, -47, -86, -9, -126, -114, -50, -45, 121, -47, -73, -71, -54}, new byte[]{-22, -82, -85, -95, 11, -66, -59, -125}).concat(e(e6)));
                    b(bluetoothSocketCreateInsecureRfcommSocketToServiceRecord);
                    return null;
                } catch (ExecutionException e15) {
                    e = e15;
                    bluetoothSocketCreateInsecureRfcommSocketToServiceRecord = null;
                    i(m.h(new byte[]{-83, 7, 52, -46, -57, 51, -66, -56, -127, 6, 122, -38, -61, 57, -90, -60, -118, 82, 122}, new byte[]{-18, 104, 90, -68, -94, 80, -54, -95}).concat(e(e.getCause())));
                    b(bluetoothSocketCreateInsecureRfcommSocketToServiceRecord);
                    return null;
                }
            } catch (InterruptedException unused5) {
                bluetoothSocketCreateInsecureRfcommSocketToServiceRecord = null;
                futureSubmit = null;
            } catch (TimeoutException unused6) {
                bluetoothSocketCreateInsecureRfcommSocketToServiceRecord = null;
                futureSubmit = null;
            }
        } catch (IOException e16) {
            e = e16;
            e6 = e;
            bluetoothSocketCreateInsecureRfcommSocketToServiceRecord = null;
            i(m.h(new byte[]{-88, -62, -34, -60, ByteCompanionObject.MAX_VALUE, -47, -86, -9, -126, -114, -50, -45, 121, -47, -73, -71, -54}, new byte[]{-22, -82, -85, -95, 11, -66, -59, -125}).concat(e(e6)));
            b(bluetoothSocketCreateInsecureRfcommSocketToServiceRecord);
            return null;
        } catch (SecurityException e17) {
            e = e17;
            e6 = e;
            bluetoothSocketCreateInsecureRfcommSocketToServiceRecord = null;
            i(m.h(new byte[]{-88, -62, -34, -60, ByteCompanionObject.MAX_VALUE, -47, -86, -9, -126, -114, -50, -45, 121, -47, -73, -71, -54}, new byte[]{-22, -82, -85, -95, 11, -66, -59, -125}).concat(e(e6)));
            b(bluetoothSocketCreateInsecureRfcommSocketToServiceRecord);
            return null;
        } catch (ExecutionException e18) {
            e = e18;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final s3 d() {
        DhcpInfo dhcpInfo;
        String strD = y0.m.d(y0.m.c(this).getString(y0.m.c, ""));
        Context applicationContext = getApplicationContext();
        String str = y0.m.f6104a;
        if (applicationContext.getSharedPreferences(str, 0).getBoolean(y0.m.f6105b, true)) {
            WifiManager wifiManager = (WifiManager) getApplicationContext().getSystemService(m.h(new byte[]{-31, -86, -13, -53}, new byte[]{-106, -61, -107, -94, 113, -110, 107, -45}));
            strD = (wifiManager == null || (dhcpInfo = wifiManager.getDhcpInfo()) == null || dhcpInfo.gateway == 0) ? null : String.format(Locale.US, m.h(new byte[]{95, 90, 84, 71, 23, 49, -100, 8, 84, 27, 30}, new byte[]{122, 62, 122, 98, 115, 31, -71, 108}), Integer.valueOf(dhcpInfo.gateway & 255), Integer.valueOf((dhcpInfo.gateway >> 8) & 255), Integer.valueOf((dhcpInfo.gateway >> 16) & 255), Integer.valueOf((dhcpInfo.gateway >> 24) & 255));
        }
        if (strD != null && !strD.trim().isEmpty()) {
            int i9 = 8897;
            int i10 = getApplicationContext().getSharedPreferences(str, 0).getInt(y0.m.d, 8897);
            if (i10 > 0 && i10 <= 65535) {
                i9 = i10;
            }
            Socket socket = new Socket();
            try {
                socket.setTcpNoDelay(true);
                socket.connect(new InetSocketAddress(strD.trim(), i9), 1200);
                socket.setSoTimeout(7000);
                String strH = m.h(new byte[]{-63, 101, -54, -11, -2}, new byte[]{-106, 12, -25, -77, -105, 88, -120, 28});
                InputStream inputStream = socket.getInputStream();
                Charset charset = StandardCharsets.UTF_8;
                return new s3(strH, socket, new BufferedReader(new InputStreamReader(inputStream, charset)), new BufferedWriter(new OutputStreamWriter(socket.getOutputStream(), charset)));
            } catch (IOException unused) {
                b(socket);
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void f() {
        Iterator it = this.f860b.values().iterator();
        while (it.hasNext()) {
            k((l) it.next());
        }
        Iterator it2 = this.c.values().iterator();
        while (it2.hasNext()) {
            k((l) it2.next());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void g(s3 s3Var, i iVar) {
        String str = iVar.f6093a;
        String str2 = iVar.e;
        String str3 = iVar.f6094b;
        long j9 = iVar.c;
        switch (str.hashCode()) {
            case 96393:
                if (str.equals(m.h(new byte[]{82, -24, 78}, new byte[]{51, -117, 37, 98, ByteCompanionObject.MAX_VALUE, -68, 55, 79}))) {
                    this.c.remove(Long.valueOf(j9));
                    return;
                }
                return;
            case 3076010:
                if (str.equals(m.h(new byte[]{-124, -59, 17, -7}, new byte[]{-32, -92, 101, -104, 90, 114, 63, -109}))) {
                    if (!m.h(new byte[]{77, -31, -71, -10, -124, 84, -28, -8}, new byte[]{63, -124, -43, -97, -27, 54, -120, -99}).equals(iVar.d)) {
                        g.b(j9, str3, str2);
                        return;
                    }
                    if (this.d.add(Long.valueOf(j9))) {
                        g.b(j9, str3, str2);
                    }
                    try {
                        s3Var.r(j.b(j.f6099f).put(m.h(new byte[]{-14, -28, -5, 110, 11, 71, 123, 0}, new byte[]{-127, -127, -118, 27, 110, 41, 24, 101}), j9).toString());
                        return;
                    } catch (JSONException e) {
                        throw new IllegalStateException(e);
                    }
                }
                return;
            case 3441010:
                if (str.equals(m.h(new byte[]{-30, -90, -38, -21}, new byte[]{-110, -49, -76, -116, -36, 49, 87, -92}))) {
                    s3Var.r(j.c(m.h(new byte[]{66, 120, 108, 101}, new byte[]{50, 23, 2, 2, 74, 70, 32, 42}), m.h(new byte[]{107, -30, -20}, new byte[]{8, -125, -98, 69, -81, 30, -77, 60})));
                    return;
                }
                return;
            case 3446776:
                str.equals(m.h(new byte[]{-78, -61, -29, -96}, new byte[]{-62, -84, -115, -57, -28, -50, 8, -86}));
                return;
            default:
                return;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void h() {
        s3 s3Var = this.f867l;
        if (!this.f861f.get() || s3Var == null) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.f868m > 7000) {
            Log.i(f852p, m.h(new byte[]{62, -110, 13, -101, 7, -3, 66, 6, 30, -64, 28, -112, 17, -1, 13, 0, 3, -115, 9, -111, 84, -30, 88, 0, 81, -64, 30, -112, 23, -30, 67, 26, 15, -125, 24, -100, 26, -22}, new byte[]{106, -32, 108, -11, 116, -115, 45, 116}));
            if (m.h(new byte[]{-44, 7, 46, -27, 96, 67, 0, 80, -2}, new byte[]{-106, 107, 91, ByteCompanionObject.MIN_VALUE, 20, 44, 111, 36}).equals((String) s3Var.c)) {
                i(m.h(new byte[]{-80, 30, -110, -118, 43, 46, 49, 86, -112, 2, -41, -40, 40, 47, 46, 84, -34, 1, -38, -105, 32, 56, 97, 95, -111, 3, -110, -49, 110, 46}, new byte[]{-2, 113, -78, -8, 78, 93, 65, 57}));
            }
            s3Var.e();
            return;
        }
        if (f857x.get()) {
            if (m.h(new byte[]{28, 88, -78, -21, -23, 107, -38, -66, 54}, new byte[]{94, 52, -57, -114, -99, 4, -75, -54}).equals((String) s3Var.c) && jCurrentTimeMillis - this.f869n >= 5000) {
                this.f869n = jCurrentTimeMillis;
                s3 s3VarD = d();
                if (s3VarD != null) {
                    s3VarD.e();
                    s3Var.e();
                    return;
                }
            }
            try {
                s3Var.r(j.c(m.h(new byte[]{27, 23, 85, -14}, new byte[]{107, 126, 59, -107, -70, -5, 120, -34}), m.h(new byte[]{-77, -114, 123}, new byte[]{-48, -17, 9, 105, 66, 84, 78, 125})));
            } catch (IOException unused) {
                s3Var.e();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void i(String str) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        ConcurrentHashMap concurrentHashMap = this.f870o;
        Long l9 = (Long) concurrentHashMap.get(str);
        if (l9 == null || jCurrentTimeMillis - l9.longValue() >= 30000) {
            concurrentHashMap.put(str, Long.valueOf(jCurrentTimeMillis));
            String strConcat = m.h(new byte[]{117, 53, -59, 33, 123, 40, 60, -118, 79, 57, -61, 1, 41, 11, 62, -116, 90, 34, -34, 26, 125, 33, 104, -39}, new byte[]{63, 86, -79, 117, 9, 73, 82, -7}).concat(str);
            Log.i(f852p, strConcat);
            h0.b.w(strConcat, ColorText.GREEN);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:70:0x0243 A[Catch: all -> 0x00c6, TryCatch #1 {all -> 0x00c6, blocks: (B:3:0x0012, B:4:0x002b, B:6:0x0033, B:8:0x003d, B:9:0x0043, B:10:0x0047, B:12:0x005d, B:19:0x0072, B:21:0x00b2, B:28:0x00cf, B:29:0x00ef, B:32:0x010a, B:34:0x0129, B:36:0x0156, B:42:0x0174, B:43:0x0181, B:45:0x0199, B:47:0x01c6, B:48:0x01d7, B:55:0x01e9, B:57:0x01ff, B:60:0x0210, B:62:0x0216, B:68:0x023b, B:70:0x0243, B:72:0x028a), top: B:84:0x0012 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x028a A[Catch: all -> 0x00c6, TRY_LEAVE, TryCatch #1 {all -> 0x00c6, blocks: (B:3:0x0012, B:4:0x002b, B:6:0x0033, B:8:0x003d, B:9:0x0043, B:10:0x0047, B:12:0x005d, B:19:0x0072, B:21:0x00b2, B:28:0x00cf, B:29:0x00ef, B:32:0x010a, B:34:0x0129, B:36:0x0156, B:42:0x0174, B:43:0x0181, B:45:0x0199, B:47:0x01c6, B:48:0x01d7, B:55:0x01e9, B:57:0x01ff, B:60:0x0210, B:62:0x0216, B:68:0x023b, B:70:0x0243, B:72:0x028a), top: B:84:0x0012 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:70:0x0243, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:72:0x028a, please report this as an issue */
    public final void j(s3 s3Var) {
        String line;
        this.f867l = s3Var;
        this.f868m = System.currentTimeMillis();
        String strB = c.b();
        try {
            try {
                String strH = m.h(new byte[]{123, -2, -99}, new byte[]{24, -97, -17, 26, 90, 11, -112, -124});
                String str = Build.MODEL;
                s3Var.r(j.e(strH, strB));
                boolean z8 = false;
                String str2 = null;
                while (this.f861f.get() && (line = ((BufferedReader) s3Var.e).readLine()) != null) {
                    this.f868m = System.currentTimeMillis();
                    try {
                        i iVarG = j.g(line);
                        if (m.h(new byte[]{-102, 79, 90, 80, -41, -15, -83, 44, -100}, new byte[]{-7, 39, 59, 60, -69, -108, -61, 75}).equals(iVarG.f6093a)) {
                            str2 = iVarG.f6095f;
                            if (str2.isEmpty()) {
                                if (this.f867l == s3Var) {
                                    this.f867l = null;
                                    m();
                                }
                                s3Var.e();
                                return;
                            }
                            Log.i(f852p, m.h(new byte[]{60, 1, 0, -89, -58, -103, 96, 81, 17, 64, 13, -85, -44, -99, 109, 95, 26, 7, 11, -29, -57, -108, 98, 95, 29, 22, 11, -89, -107, -121, 104, 91, 84}, new byte[]{116, 96, 110, -61, -75, -15, 1, 58}) + ((String) s3Var.c));
                            if (m.h(new byte[]{107, 11, 123, 114, -33, 27, -24, -17, 65}, new byte[]{41, 103, 14, 23, -85, 116, -121, -101}).equals((String) s3Var.c)) {
                                i(m.h(new byte[]{12, 46, -34, 67, 114, 27, -26, -127, Base64.padSymbol, 42, -35, 72, 121, 92, -32, -55, 46, 35, -46, 72, 126, 77, -32, -115, 103, 102, -57, 72, 101, 82, -29, -112, 53, 40, -42, 13, 99, 84, -18, -116, 50}, new byte[]{92, 70, -79, 45, 23, 59, -123, -23}));
                            }
                            s3Var.r(j.a(c.c(y0.m.a(this), strB, str2, m.h(new byte[]{-77, 39, Base64.padSymbol}, new byte[]{-48, 70, 79, -58, 88, 43, -39, 90}))));
                        } else if (!m.h(new byte[]{102, 0, 93, -38, 2, 88, 27}, new byte[]{7, 117, 41, -78, 93, 55, 112, 91}).equals(iVarG.f6093a) || str2 == null) {
                            if (m.h(new byte[]{-64, -24, -16, 83, -56, -105, -7, 90, -56, -8, -32}, new byte[]{-95, -99, -124, 59, -105, -13, -100, 52}).equals(iVarG.f6093a)) {
                                Log.w(f852p, m.h(new byte[]{79, 30, -48, 105, 56, 28, -32, -123, 98, 95, -38, 104, 37, 29, -28, -118, 39, 29, -57, 45, 59, 28, -18, ByteCompanionObject.MIN_VALUE, 98, 69, -98, 126, 35, 21, -13, -117, 99, 95, -54, 98, 32, 17, -17, -50, 99, 16, -37, 126, 107, 26, -18, -102, 39, 18, -33, 121, 40, 28}, new byte[]{7, ByteCompanionObject.MAX_VALUE, -66, 13, 75, 116, -127, -18}));
                                if (m.h(new byte[]{-95, 47, 43, 68, -104, 33, -125, 13, -117}, new byte[]{-29, 67, 94, 33, -20, 78, -20, 121}).equals((String) s3Var.c)) {
                                    i(m.h(new byte[]{74, 79, 78, -101, 90, 41, -92, 68, 112, 66, 66, -127, 90, 109, -10, 82, 114, 70, 83, -112, 91, 41, -94, 78, 113, 66, 79}, new byte[]{26, 39, 33, -11, 63, 9, -42, 33}));
                                }
                                n.a();
                                if (this.f867l == s3Var) {
                                    this.f867l = null;
                                    m();
                                }
                                s3Var.e();
                                return;
                            }
                            if (m.h(new byte[]{58, 105, 121, 82, 110, 84, ByteCompanionObject.MAX_VALUE, -47, 56, 109, 97, 85, 98, 73, 108}, new byte[]{74, 8, 16, 32, 7, 58, 24, -114}).equals(iVarG.f6093a)) {
                                s3Var.r(j.f(y0.m.a(this)));
                            } else if (z8) {
                                g(s3Var, iVarG);
                            }
                        } else {
                            if (!c.a(c.c(y0.m.a(this), strB, str2, m.h(new byte[]{108, -92, -15, -79, 102}, new byte[]{28, -52, -98, -33, 3, 116, -101, ByteCompanionObject.MIN_VALUE})), iVarG.f6096g)) {
                                Log.w(f852p, m.h(new byte[]{-76, 77, -111, -81, 19, -2, -116, -41, -103, 12, -101, -82, 14, -1, -120, -40, -58, 12, -113, -93, 15, -8, -120, -100, -116, 94, -112, -92, 6, -74, -119, -45, -103, 95, -33, -91, 15, -30, -51, -47, -99, 88, -100, -93}, new byte[]{-4, 44, -1, -53, 96, -106, -19, -68}));
                                if (m.h(new byte[]{-45, -100, -21, 25, -57, -66, -11, -40, -7}, new byte[]{-111, -16, -98, 124, -77, -47, -102, -84}).equals((String) s3Var.c)) {
                                    i(m.h(new byte[]{15, -16, -38, -37, 2, 63, -24, -55, 43, -16, -48, -37, 19, 118, -22, -35, 43, -15, -38, -37, 71, 121, -24, -43, 51, -3, -47}, new byte[]{95, -104, -75, -75, 103, 31, -119, -68}));
                                }
                                if (this.f867l == s3Var) {
                                    this.f867l = null;
                                    m();
                                }
                                s3Var.e();
                                return;
                            }
                            l((String) s3Var.c);
                            f();
                            z8 = true;
                        }
                    } catch (JSONException e) {
                        Log.w(f852p, m.h(new byte[]{14, 96, 121, -10, 33, -23, 23, -12, 103, 106, 118, -11, 53, -17, 11, -2, 34, 99, 55, -19, 33, -31, 23, -32, 55, 104, 101, -19, 115, -26, 11, -14, 42, 98}, new byte[]{71, 7, 23, -103, 83, ByteCompanionObject.MIN_VALUE, 121, -109}), e);
                    }
                }
                if (this.f867l == s3Var) {
                    this.f867l = null;
                    m();
                }
            } catch (Throwable th) {
                if (this.f867l == s3Var) {
                    this.f867l = null;
                    m();
                }
                s3Var.e();
                throw th;
            }
        } catch (IOException e6) {
            e = e6;
            if (this.f861f.get()) {
                Log.d(f852p, ((String) s3Var.c) + m.h(new byte[]{-38, 75, -10, -127, 67, 7, -115, -4, -120, 75, -92, -124, 68, 7, -98, -4, -108, 81, -31, -125, 89, 17, -103, -87, -38}, new byte[]{-6, 63, -124, -32, 45, 116, -3, -109}) + e.getMessage());
                if (m.h(new byte[]{77, -105, 39, 39, -18, 42, -49, 1, 103}, new byte[]{15, -5, 82, 66, -102, 69, -96, 117}).equals((String) s3Var.c)) {
                    i(m.h(new byte[]{59, 80, -124, -49, -122, -25, -92, -39, 23, 81, -54, -51, -116, -9, -92, -118, 88}, new byte[]{120, 63, -22, -95, -29, -124, -48, -80}) + e(e));
                }
            }
            if (this.f867l == s3Var) {
            }
            s3Var.e();
        } catch (RuntimeException e9) {
            e = e9;
            if (this.f861f.get()) {
                Log.d(f852p, ((String) s3Var.c) + m.h(new byte[]{-38, 75, -10, -127, 67, 7, -115, -4, -120, 75, -92, -124, 68, 7, -98, -4, -108, 81, -31, -125, 89, 17, -103, -87, -38}, new byte[]{-6, 63, -124, -32, 45, 116, -3, -109}) + e.getMessage());
                if (m.h(new byte[]{77, -105, 39, 39, -18, 42, -49, 1, 103}, new byte[]{15, -5, 82, 66, -102, 69, -96, 117}).equals((String) s3Var.c)) {
                    i(m.h(new byte[]{59, 80, -124, -49, -122, -25, -92, -39, 23, 81, -54, -51, -116, -9, -92, -118, 88}, new byte[]{120, 63, -22, -95, -29, -124, -48, -80}) + e(e));
                }
            }
            if (this.f867l == s3Var) {
            }
            s3Var.e();
        }
        s3Var.e();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void k(l lVar) {
        s3 s3Var = this.f867l;
        if (s3Var == null || !f857x.get()) {
            return;
        }
        try {
            s3Var.r(j.d(lVar.d, lVar.f6102a, lVar.c, lVar.f6103b));
            if (m.h(new byte[]{-2, -69, -73, -55, -56, -116}, new byte[]{-110, -38, -61, -84, -69, -8, -22, 34}).equals(lVar.c)) {
                this.f860b.remove(lVar.f6102a, lVar);
            }
        } catch (IOException unused) {
            s3Var.e();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void l(String str) {
        f857x.set(true);
        f858y = str;
        Log.i(f852p, m.h(new byte[]{-51, 1, 67, 28, -61, 45, -4, -126, -22, 78, 91, 27, -57, 110}, new byte[]{-114, 110, 45, 114, -90, 78, -120, -25}).concat(str));
        if (m.h(new byte[]{50, 64, 108, -39, 23, 12, 32, 108, 24}, new byte[]{112, 44, 25, -68, 99, 99, 79, 24}).equals(str)) {
            i(m.h(new byte[]{102, -85, 58, -41, -10, -102, 121, -101, 65, -28, 53, -41, -9, -39, 108, -117, 81, -84, 49, -41, -25, -112, 110, -97, 81, -95, 48}, new byte[]{37, -60, 84, -71, -109, -7, 13, -2}));
        }
        startForeground(1907, a(str));
        Iterator it = g.f6091b.iterator();
        while (it.hasNext()) {
            try {
                ((d2) it.next()).a(true);
            } catch (RuntimeException unused) {
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void m() {
        String str = f858y;
        if (f857x.getAndSet(false)) {
            Log.i(f852p, m.h(new byte[]{-90, 37, 120, 50, 12, -40, 114, -107, -122, 119, 125, 53, 12, -53, 114, -119, -100, 50, 122, 40, 26, -52}, new byte[]{-14, 87, 25, 92, ByteCompanionObject.MAX_VALUE, -88, 29, -25}));
            if (m.h(new byte[]{-104, 17, 116, 105, -100, 75, -81, -83, -78}, new byte[]{-38, 125, 1, 12, -24, 36, -64, -39}).equals(str)) {
                i(m.h(new byte[]{76, -4, 79, 10, -90, -109, -28, -106, 96, -3, 1, 7, -81, -97, -29, -102, 107}, new byte[]{15, -109, 33, 100, -61, -16, -112, -1}));
            }
        }
        f858y = "";
        Iterator it = g.f6091b.iterator();
        while (it.hasNext()) {
            try {
                ((d2) it.next()).a(false);
            } catch (RuntimeException unused) {
            }
        }
        if (w.get()) {
            startForeground(1907, a(null));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final void onCreate() {
        NotificationManager notificationManager;
        super.onCreate();
        f859z = this;
        this.f862g = Executors.newSingleThreadExecutor();
        this.f863h = Executors.newCachedThreadPool();
        this.f864i = Executors.newSingleThreadExecutor();
        this.f865j = Executors.newSingleThreadScheduledExecutor();
        if (Build$VERSION.SDK_INT >= 26 && (notificationManager = (NotificationManager) getSystemService(NotificationManager.class)) != null) {
            d.g();
            d.h(notificationManager, d.c(f856v, getString(2131952629)));
        }
        this.f866k = new b(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final void onDestroy() {
        b bVar = this.f866k;
        if (bVar != null) {
            bVar.close();
        }
        this.f861f.set(false);
        w.set(false);
        Log.i(f852p, m.h(new byte[]{-24, 20, -81, -112, -13, 125, -123, -115, -56, 70, -94, -105, -26, 104, -119, -122, -33, 10, -85, -34, -13, 121, -123, -113, -52, 3, -86}, new byte[]{-68, 102, -50, -2, ByteCompanionObject.MIN_VALUE, 13, -22, -1}));
        m();
        s3 s3Var = this.f867l;
        this.f867l = null;
        if (s3Var != null) {
            s3Var.e();
        }
        this.f862g.shutdownNow();
        this.f863h.shutdownNow();
        this.f864i.shutdownNow();
        this.f865j.shutdownNow();
        if (f859z == this) {
            f859z = null;
        }
        super.onDestroy();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i9, int i10) {
        String action = intent == null ? null : intent.getAction();
        startForeground(1907, a(null));
        boolean zCompareAndSet = this.f861f.compareAndSet(false, true);
        String str = f852p;
        if (zCompareAndSet) {
            w.set(true);
            Log.i(str, m.h(new byte[]{-120, -82, 112, 93, -35, 11, 26, 41, -88, -4, 125, 90, -56, 30, 22, 34, -65, -80, 116, 19, -35, 15, 20, 41, -88, -71, 117}, new byte[]{-36, -36, 17, 51, -82, 123, 117, 91}));
            this.f865j.scheduleWithFixedDelay(new k(this, 0), 2000L, 2000L, TimeUnit.MILLISECONDS);
            this.f862g.execute(new k(this, 1));
        }
        if (r.equals(action)) {
            String stringExtra = intent.getStringExtra(f854s);
            String stringExtra2 = intent.getStringExtra(t);
            String stringExtra3 = intent.getStringExtra(f855u);
            if (stringExtra != null && !stringExtra.trim().isEmpty()) {
                if (stringExtra2 == null) {
                    stringExtra2 = "";
                }
                String str2 = stringExtra2;
                String strH = m.h(new byte[]{119, 122, 84, 45, 7, -104, -43, -32}, new byte[]{5, 31, 56, 68, 102, -6, -71, -123}).equals(stringExtra3) ? m.h(new byte[]{-66, -70, 27, -47, -11, -97, -124, 116}, new byte[]{-52, -33, 119, -72, -108, -3, -24, 17}) : m.h(new byte[]{-115, 115, -48, 110, -48, 1}, new byte[]{-31, 18, -92, 11, -93, 117, -104, 96});
                long jIncrementAndGet = this.e.incrementAndGet();
                l lVar = new l(jIncrementAndGet, stringExtra, str2, strH);
                if (m.h(new byte[]{-114, 49, ByteCompanionObject.MAX_VALUE, 9, -61, 82, 52, 94}, new byte[]{-4, 84, 19, 96, -94, 48, 88, 59}).equals(strH)) {
                    this.c.put(Long.valueOf(jIncrementAndGet), lVar);
                } else {
                    this.f860b.put(stringExtra, lVar);
                }
                try {
                    this.f864i.execute(new x0(16, this, lVar));
                } catch (RuntimeException e) {
                    Log.w(str, m.h(new byte[]{75, 107, -15, 35, 62, -48, -60, 40, 113, 37, -31, 52, 55, -64, -127, 124, 106, 119, -15, 47, 33, -59, -117, 46, 106, 37, -3, 36, 33, -58, -123, 59, 123}, new byte[]{30, 5, -112, 65, 82, -75, -28, 92}), e);
                }
            }
        }
        return 1;
    }
}
