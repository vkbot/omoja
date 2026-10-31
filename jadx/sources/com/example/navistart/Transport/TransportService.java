package com.example.navistart.Transport;

import android.app.Notification;
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
import android.os.IBinder;
import android.util.Log;
import com.example.navistart.R;
import com.example.navistart.Transport.TransportService;
import com.example.navistart.cores.ColorText;
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
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import org.json.JSONException;
import p044d7.CallableC1311b;
import p047e0.AbstractC1387m;
import p047e0.C1345d2;
import p047e0.C1421s3;
import p078h0.C1652b;
import p190s1.RunnableC3180x0;
import p225w0.AbstractC3449d;
import p245y0.AbstractC3625c;
import p245y0.AbstractC3629g;
import p245y0.AbstractC3632j;
import p245y0.AbstractC3635m;
import p245y0.AbstractC3636n;
import p245y0.C3624b;
import p245y0.C3631i;
import p245y0.C3634l;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class TransportService extends Service {

    /* JADX INFO: renamed from: p */
    public static final String f1653p = AbstractC1387m.m2421h(new byte[]{29, 54, 30, -45, 67, 102, -7, -52, 39, 58, 24, -13}, new byte[]{87, 85, 106, -121, 49, 7, -105, -65});

    /* JADX INFO: renamed from: q */
    public static final String f1654q = AbstractC1387m.m2421h(new byte[]{70, -101, -6, 75, 45, 91, 75, 56, 85, -104, -14, 75, 38, 66, 92, 60, 86, ByteCompanionObject.MIN_VALUE, -10, 23, 60, 13, 94, 39, 68, -102, -28, 21, 39, 81, 94, 123, 100, -73, -58, 48, 1, 113, 111}, new byte[]{37, -12, -105, 101, 72, 35, 42, 85});

    /* JADX INFO: renamed from: r */
    public static final String f1655r = AbstractC1387m.m2421h(new byte[]{-61, 79, -108, -60, -99, -104, -92, -113, -48, 76, -100, -60, -106, -127, -77, -117, -45, 84, -104, -104, -116, -50, -79, -112, -63, 78, -118, -102, -105, -110, -79, -52, -16, 117, -69, -90, -79, -77, -115}, new byte[]{-96, 32, -7, -22, -8, -32, -59, -30});

    /* JADX INFO: renamed from: s */
    public static final String f1656s = AbstractC1387m.m2421h(new byte[]{-120, -28, 101, 28, -94, -97, 81}, new byte[]{-21, -116, 4, 114, -52, -6, Base64.padSymbol, 59});

    /* JADX INFO: renamed from: t */
    public static final String f1657t = AbstractC1387m.m2421h(new byte[]{-67, 91, 48, 115, -42, -11, 5}, new byte[]{-51, 58, 73, 31, -71, -108, 97, 63});

    /* JADX INFO: renamed from: u */
    public static final String f1658u = AbstractC1387m.m2421h(new byte[]{-115, -2, -65, 126, ByteCompanionObject.MAX_VALUE, 111, 52, -14}, new byte[]{-23, -101, -45, 23, 9, 10, 70, -117});

    /* JADX INFO: renamed from: v */
    public static final String f1659v = AbstractC1387m.m2421h(new byte[]{92, -37, 80, 34, 88, 46, -77, -1, 69, -56, 75, 15, 88}, new byte[]{54, -72, 36, 125, 44, 92, -46, -111});

    /* JADX INFO: renamed from: w */
    public static final AtomicBoolean f1660w = new AtomicBoolean(false);

    /* JADX INFO: renamed from: x */
    public static final AtomicBoolean f1661x = new AtomicBoolean(false);

    /* JADX INFO: renamed from: y */
    public static volatile String f1662y = "";

    /* JADX INFO: renamed from: z */
    public static volatile TransportService f1663z;

    /* JADX INFO: renamed from: g */
    public ExecutorService f1669g;

    /* JADX INFO: renamed from: h */
    public ExecutorService f1670h;

    /* JADX INFO: renamed from: i */
    public ExecutorService f1671i;

    /* JADX INFO: renamed from: j */
    public ScheduledExecutorService f1672j;

    /* JADX INFO: renamed from: k */
    public C3624b f1673k;

    /* JADX INFO: renamed from: l */
    public volatile C1421s3 f1674l;

    /* JADX INFO: renamed from: m */
    public volatile long f1675m;

    /* JADX INFO: renamed from: n */
    public volatile long f1676n;

    /* JADX INFO: renamed from: b */
    public final ConcurrentHashMap f1664b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: c */
    public final ConcurrentHashMap f1665c = new ConcurrentHashMap();

    /* JADX INFO: renamed from: d */
    public final ConcurrentHashMap.KeySetView f1666d = ConcurrentHashMap.newKeySet();

    /* JADX INFO: renamed from: e */
    public final AtomicLong f1667e = new AtomicLong(System.currentTimeMillis());

    /* JADX INFO: renamed from: f */
    public final AtomicBoolean f1668f = new AtomicBoolean(false);

    /* JADX INFO: renamed from: o */
    public final ConcurrentHashMap f1677o = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b */
    public static void m1587b(Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (IOException unused) {
        }
    }

    /* JADX INFO: renamed from: e */
    public static String m1588e(Throwable th) {
        if (th == null) {
            return AbstractC1387m.m2421h(new byte[]{48, -11, -91, -96, 35, 17, 86, 92, 32, -23, -68, -95, 62}, new byte[]{69, -101, -50, -50, 76, 102, 56, 124});
        }
        String message = th.getMessage();
        return th.getClass().getSimpleName().concat(message == null ? "" : AbstractC1387m.m2421h(new byte[]{121, 60}, new byte[]{67, 28, 83, 86, 86, -85, 56, 0}).concat(message));
    }

    /* JADX INFO: renamed from: a */
    public final Notification m1589a(String str) {
        String string = str == null ? getString(R.string.transport_waiting_for_phone) : getString(R.string.transport_connected_via, str);
        return Build.VERSION.SDK_INT >= 26 ? AbstractC3449d.m5376b(this, f1659v).setSmallIcon(R.drawable.ic_transport).setContentTitle(getString(R.string.transport_title)).setContentText(string).setOnlyAlertOnce(true).setOngoing(true).build() : new Notification.Builder(this).setSmallIcon(R.drawable.ic_transport).setContentTitle(getString(R.string.transport_title)).setContentText(string).setOnlyAlertOnce(true).setOngoing(true).build();
    }

    /* JADX INFO: renamed from: c */
    public final C1421s3 m1590c() {
        BluetoothDevice next;
        ExecutionException e;
        Throwable e6;
        BluetoothSocket bluetoothSocketCreateInsecureRfcommSocketToServiceRecord;
        Future futureSubmit;
        if (Build.VERSION.SDK_INT >= 31 && checkSelfPermission(AbstractC1387m.m2421h(new byte[]{4, -43, -113, -39, -107, -31, -52, -114, 21, -34, -103, -58, -109, -5, -37, -55, 10, -43, -59, -23, -74, -35, -19, -12, 42, -12, -65, -29, -91, -53, -25, -18, 43, -2, -88, -1}, new byte[]{101, -69, -21, -85, -6, -120, -88, -96})) != 0) {
            m1595i(AbstractC1387m.m2421h(new byte[]{108, -123, 67, -58, -25, 64, 106, -50, 102, -106, 85, -52, -3, 65, 96, -39, 122, -23, 102, -26, -63, 98, 76, -23, 93, -96, 121, -19, -109, 98, 76, -23, 93, -96, 120, -28}, new byte[]{46, -55, 22, -125, -77, 15, 37, -102}));
            return null;
        }
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter == null) {
            m1595i(AbstractC1387m.m2421h(new byte[]{-66, -80, -84, -8, -5, 85, 102, -122, -108, -4, -72, -7, -18, 74, 125, -105, -114, -4, -84, -13, -18, 76, 104, -101, -112, -67, -69, -15, -22}, new byte[]{-4, -36, -39, -99, -113, 58, 9, -14}));
            return null;
        }
        if (!defaultAdapter.isEnabled()) {
            m1595i(AbstractC1387m.m2421h(new byte[]{7, -83, -103, 58, -99, 36, 24, -42, 45, -31, -123, 44, -55, 47, 30, -47, 36, -93, ByteCompanionObject.MIN_VALUE, 58, -115}, new byte[]{69, -63, -20, 95, -23, 75, 119, -94}));
            return null;
        }
        String strM5819d = AbstractC3635m.m5819d(AbstractC3635m.m5818c(this).getString(AbstractC3635m.f10802e, ""));
        if (strM5819d == null || strM5819d.trim().isEmpty()) {
            m1595i(AbstractC1387m.m2421h(new byte[]{-58, -115, 1, 21, -41, 8, -88, 122, -20, -62, 69, 0, -64, 8, -71, 122, -88, -111, 68, 9, -45, 2, -82, 122, -20}, new byte[]{-120, -30, 33, 101, -74, 97, -38, 31}));
            return null;
        }
        String strTrim = strM5819d.trim();
        try {
            Iterator<BluetoothDevice> it = defaultAdapter.getBondedDevices().iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!strTrim.equals(next.getName()));
        } catch (SecurityException e10) {
            m1595i(AbstractC1387m.m2421h(new byte[]{-68, 53, 49, 10, -126, -8, 2, -28, -100, 55, 58, 23, -98, -84, 82, -28, -106, 38, 58, 0, -51, -24, 71, -13, -106, 55, 58, 23, -41, -84}, new byte[]{-1, 84, 95, 100, -19, -116, 34, -123}).concat(m1588e(e10)));
        }
        if (next == null) {
            m1595i(AbstractC1387m.m2421h(new byte[]{-11, -30, 115, -14, 79, -79, 22, 98, -64, -11, 115, -29, 79, -11, 88, 105, -47, -93, 124, -17, 95, -69, 82, 60, -123}, new byte[]{-91, -125, 26, ByteCompanionObject.MIN_VALUE, 42, -43, 54, 6}).concat(strM5819d));
            return null;
        }
        try {
            try {
                try {
                    m1595i(AbstractC1387m.m2421h(new byte[]{-8, -71, 11, -111, -46, 85, 92, -64, -43, -79, 69, -117, -40, 22}, new byte[]{-69, -42, 101, -1, -73, 54, 40, -87}).concat(strM5819d));
                    defaultAdapter.cancelDiscovery();
                    bluetoothSocketCreateInsecureRfcommSocketToServiceRecord = next.createInsecureRfcommSocketToServiceRecord(AbstractC3632j.f10785a);
                    try {
                        try {
                            futureSubmit = this.f1670h.submit(new CallableC1311b(2, bluetoothSocketCreateInsecureRfcommSocketToServiceRecord));
                            try {
                                futureSubmit.get(5000L, TimeUnit.MILLISECONDS);
                                m1595i(AbstractC1387m.m2421h(new byte[]{19, 83, 51, 117, -35, 32, 118, -31, 47, 82, 62, 123, -37, 32, 51, -26, 96, 72, 63, 62}, new byte[]{64, 60, 80, 30, -72, 84, 86, -126}).concat(strM5819d));
                                String strM2421h = AbstractC1387m.m2421h(new byte[]{-4, -10, 47, -3, 41, -47, 83, 78, -42}, new byte[]{-66, -102, 90, -104, 93, -66, 60, 58});
                                InputStream inputStream = bluetoothSocketCreateInsecureRfcommSocketToServiceRecord.getInputStream();
                                Charset charset = StandardCharsets.UTF_8;
                                return new C1421s3(strM2421h, bluetoothSocketCreateInsecureRfcommSocketToServiceRecord, new BufferedReader(new InputStreamReader(inputStream, charset)), new BufferedWriter(new OutputStreamWriter(bluetoothSocketCreateInsecureRfcommSocketToServiceRecord.getOutputStream(), charset)));
                            } catch (InterruptedException unused) {
                                m1595i(AbstractC1387m.m2421h(new byte[]{-60, 17, 14, -106, -34, -64, 49, 5, -24, 16, 64, -111, -43, -41, 32, 30, -11, 11, 16, -116, -34, -57}, new byte[]{-121, 126, 96, -8, -69, -93, 69, 108}));
                                Thread.currentThread().interrupt();
                                if (futureSubmit != null) {
                                    futureSubmit.cancel(true);
                                }
                                m1587b(bluetoothSocketCreateInsecureRfcommSocketToServiceRecord);
                                return null;
                            } catch (TimeoutException unused2) {
                                m1595i(AbstractC1387m.m2421h(new byte[]{31, 60, 55, -67, -86, -126, 23, -28, 51, Base64.padSymbol, 121, -89, -90, -116, 6, -23, 124, 60, 44, -89, -17, ByteCompanionObject.MIN_VALUE, 5, -7, 57, 33, 121, -26, -17, -110, 89, -83}, new byte[]{92, 83, 89, -45, -49, -31, 99, -115}).concat(strM5819d));
                                if (futureSubmit != null) {
                                    futureSubmit.cancel(true);
                                }
                                m1587b(bluetoothSocketCreateInsecureRfcommSocketToServiceRecord);
                                return null;
                            }
                        } catch (IOException e11) {
                            e6 = e11;
                            m1595i(AbstractC1387m.m2421h(new byte[]{-88, -62, -34, -60, ByteCompanionObject.MAX_VALUE, -47, -86, -9, -126, -114, -50, -45, 121, -47, -73, -71, -54}, new byte[]{-22, -82, -85, -95, 11, -66, -59, -125}).concat(m1588e(e6)));
                            m1587b(bluetoothSocketCreateInsecureRfcommSocketToServiceRecord);
                            return null;
                        } catch (SecurityException e12) {
                            e6 = e12;
                            m1595i(AbstractC1387m.m2421h(new byte[]{-88, -62, -34, -60, ByteCompanionObject.MAX_VALUE, -47, -86, -9, -126, -114, -50, -45, 121, -47, -73, -71, -54}, new byte[]{-22, -82, -85, -95, 11, -66, -59, -125}).concat(m1588e(e6)));
                            m1587b(bluetoothSocketCreateInsecureRfcommSocketToServiceRecord);
                            return null;
                        } catch (ExecutionException e13) {
                            e = e13;
                            m1595i(AbstractC1387m.m2421h(new byte[]{-83, 7, 52, -46, -57, 51, -66, -56, -127, 6, 122, -38, -61, 57, -90, -60, -118, 82, 122}, new byte[]{-18, 104, 90, -68, -94, 80, -54, -95}).concat(m1588e(e.getCause())));
                            m1587b(bluetoothSocketCreateInsecureRfcommSocketToServiceRecord);
                            return null;
                        }
                    } catch (InterruptedException unused3) {
                        futureSubmit = null;
                    } catch (TimeoutException unused4) {
                        futureSubmit = null;
                    }
                } catch (IOException e14) {
                    e6 = e14;
                    bluetoothSocketCreateInsecureRfcommSocketToServiceRecord = null;
                    m1595i(AbstractC1387m.m2421h(new byte[]{-88, -62, -34, -60, ByteCompanionObject.MAX_VALUE, -47, -86, -9, -126, -114, -50, -45, 121, -47, -73, -71, -54}, new byte[]{-22, -82, -85, -95, 11, -66, -59, -125}).concat(m1588e(e6)));
                    m1587b(bluetoothSocketCreateInsecureRfcommSocketToServiceRecord);
                    return null;
                } catch (SecurityException e15) {
                    e6 = e15;
                    bluetoothSocketCreateInsecureRfcommSocketToServiceRecord = null;
                    m1595i(AbstractC1387m.m2421h(new byte[]{-88, -62, -34, -60, ByteCompanionObject.MAX_VALUE, -47, -86, -9, -126, -114, -50, -45, 121, -47, -73, -71, -54}, new byte[]{-22, -82, -85, -95, 11, -66, -59, -125}).concat(m1588e(e6)));
                    m1587b(bluetoothSocketCreateInsecureRfcommSocketToServiceRecord);
                    return null;
                } catch (ExecutionException e16) {
                    e = e16;
                    bluetoothSocketCreateInsecureRfcommSocketToServiceRecord = null;
                    m1595i(AbstractC1387m.m2421h(new byte[]{-83, 7, 52, -46, -57, 51, -66, -56, -127, 6, 122, -38, -61, 57, -90, -60, -118, 82, 122}, new byte[]{-18, 104, 90, -68, -94, 80, -54, -95}).concat(m1588e(e.getCause())));
                    m1587b(bluetoothSocketCreateInsecureRfcommSocketToServiceRecord);
                    return null;
                }
            } catch (IOException e17) {
                e = e17;
                e6 = e;
                bluetoothSocketCreateInsecureRfcommSocketToServiceRecord = null;
                m1595i(AbstractC1387m.m2421h(new byte[]{-88, -62, -34, -60, ByteCompanionObject.MAX_VALUE, -47, -86, -9, -126, -114, -50, -45, 121, -47, -73, -71, -54}, new byte[]{-22, -82, -85, -95, 11, -66, -59, -125}).concat(m1588e(e6)));
                m1587b(bluetoothSocketCreateInsecureRfcommSocketToServiceRecord);
                return null;
            } catch (SecurityException e18) {
                e = e18;
                e6 = e;
                bluetoothSocketCreateInsecureRfcommSocketToServiceRecord = null;
                m1595i(AbstractC1387m.m2421h(new byte[]{-88, -62, -34, -60, ByteCompanionObject.MAX_VALUE, -47, -86, -9, -126, -114, -50, -45, 121, -47, -73, -71, -54}, new byte[]{-22, -82, -85, -95, 11, -66, -59, -125}).concat(m1588e(e6)));
                m1587b(bluetoothSocketCreateInsecureRfcommSocketToServiceRecord);
                return null;
            } catch (ExecutionException e19) {
                e = e19;
            }
        } catch (InterruptedException unused5) {
            bluetoothSocketCreateInsecureRfcommSocketToServiceRecord = null;
            futureSubmit = null;
        } catch (TimeoutException unused6) {
            bluetoothSocketCreateInsecureRfcommSocketToServiceRecord = null;
            futureSubmit = null;
        }
    }

    /* JADX INFO: renamed from: d */
    public final C1421s3 m1591d() {
        DhcpInfo dhcpInfo;
        String strM5819d = AbstractC3635m.m5819d(AbstractC3635m.m5818c(this).getString(AbstractC3635m.f10800c, ""));
        Context applicationContext = getApplicationContext();
        String str = AbstractC3635m.f10798a;
        if (applicationContext.getSharedPreferences(str, 0).getBoolean(AbstractC3635m.f10799b, true)) {
            WifiManager wifiManager = (WifiManager) getApplicationContext().getSystemService(AbstractC1387m.m2421h(new byte[]{-31, -86, -13, -53}, new byte[]{-106, -61, -107, -94, 113, -110, 107, -45}));
            strM5819d = (wifiManager == null || (dhcpInfo = wifiManager.getDhcpInfo()) == null || dhcpInfo.gateway == 0) ? null : String.format(Locale.US, AbstractC1387m.m2421h(new byte[]{95, 90, 84, 71, 23, 49, -100, 8, 84, 27, 30}, new byte[]{122, 62, 122, 98, 115, 31, -71, 108}), Integer.valueOf(dhcpInfo.gateway & 255), Integer.valueOf((dhcpInfo.gateway >> 8) & 255), Integer.valueOf((dhcpInfo.gateway >> 16) & 255), Integer.valueOf((dhcpInfo.gateway >> 24) & 255));
        }
        if (strM5819d != null && !strM5819d.trim().isEmpty()) {
            int i10 = 8897;
            int i11 = getApplicationContext().getSharedPreferences(str, 0).getInt(AbstractC3635m.f10801d, 8897);
            if (i11 > 0 && i11 <= 65535) {
                i10 = i11;
            }
            Socket socket = new Socket();
            try {
                socket.setTcpNoDelay(true);
                socket.connect(new InetSocketAddress(strM5819d.trim(), i10), 1200);
                socket.setSoTimeout(7000);
                String strM2421h = AbstractC1387m.m2421h(new byte[]{-63, 101, -54, -11, -2}, new byte[]{-106, 12, -25, -77, -105, 88, -120, 28});
                InputStream inputStream = socket.getInputStream();
                Charset charset = StandardCharsets.UTF_8;
                return new C1421s3(strM2421h, socket, new BufferedReader(new InputStreamReader(inputStream, charset)), new BufferedWriter(new OutputStreamWriter(socket.getOutputStream(), charset)));
            } catch (IOException unused) {
                m1587b(socket);
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: f */
    public final void m1592f() {
        Iterator it = this.f1664b.values().iterator();
        while (it.hasNext()) {
            m1597k((C3634l) it.next());
        }
        Iterator it2 = this.f1665c.values().iterator();
        while (it2.hasNext()) {
            m1597k((C3634l) it2.next());
        }
    }

    /* JADX INFO: renamed from: g */
    public final void m1593g(C1421s3 c1421s3, C3631i c3631i) {
        String str = c3631i.f10778a;
        String str2 = c3631i.f10782e;
        String str3 = c3631i.f10779b;
        long j10 = c3631i.f10780c;
        switch (str.hashCode()) {
            case 96393:
                if (str.equals(AbstractC1387m.m2421h(new byte[]{82, -24, 78}, new byte[]{51, -117, 37, 98, ByteCompanionObject.MAX_VALUE, -68, 55, 79}))) {
                    this.f1665c.remove(Long.valueOf(j10));
                    return;
                }
                return;
            case 3076010:
                if (str.equals(AbstractC1387m.m2421h(new byte[]{-124, -59, 17, -7}, new byte[]{-32, -92, 101, -104, 90, 114, 63, -109}))) {
                    if (!AbstractC1387m.m2421h(new byte[]{77, -31, -71, -10, -124, 84, -28, -8}, new byte[]{63, -124, -43, -97, -27, 54, -120, -99}).equals(c3631i.f10781d)) {
                        AbstractC3629g.m5802b(j10, str3, str2);
                        return;
                    }
                    if (this.f1666d.add(Long.valueOf(j10))) {
                        AbstractC3629g.m5802b(j10, str3, str2);
                    }
                    try {
                        c1421s3.m2470r(AbstractC3632j.m5810b(AbstractC3632j.f10790f).put(AbstractC1387m.m2421h(new byte[]{-14, -28, -5, 110, 11, 71, 123, 0}, new byte[]{-127, -127, -118, 27, 110, 41, 24, 101}), j10).toString());
                        return;
                    } catch (JSONException e) {
                        throw new IllegalStateException(e);
                    }
                }
                return;
            case 3441010:
                if (str.equals(AbstractC1387m.m2421h(new byte[]{-30, -90, -38, -21}, new byte[]{-110, -49, -76, -116, -36, 49, 87, -92}))) {
                    c1421s3.m2470r(AbstractC3632j.m5811c(AbstractC1387m.m2421h(new byte[]{66, 120, 108, 101}, new byte[]{50, 23, 2, 2, 74, 70, 32, 42}), AbstractC1387m.m2421h(new byte[]{107, -30, -20}, new byte[]{8, -125, -98, 69, -81, 30, -77, 60})));
                    return;
                }
                return;
            case 3446776:
                str.equals(AbstractC1387m.m2421h(new byte[]{-78, -61, -29, -96}, new byte[]{-62, -84, -115, -57, -28, -50, 8, -86}));
                return;
            default:
                return;
        }
    }

    /* JADX INFO: renamed from: h */
    public final void m1594h() {
        C1421s3 c1421s3 = this.f1674l;
        if (!this.f1668f.get() || c1421s3 == null) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.f1675m > 7000) {
            Log.i(f1653p, AbstractC1387m.m2421h(new byte[]{62, -110, 13, -101, 7, -3, 66, 6, 30, -64, 28, -112, 17, -1, 13, 0, 3, -115, 9, -111, 84, -30, 88, 0, 81, -64, 30, -112, 23, -30, 67, 26, 15, -125, 24, -100, 26, -22}, new byte[]{106, -32, 108, -11, 116, -115, 45, 116}));
            if (AbstractC1387m.m2421h(new byte[]{-44, 7, 46, -27, 96, 67, 0, 80, -2}, new byte[]{-106, 107, 91, ByteCompanionObject.MIN_VALUE, 20, 44, 111, 36}).equals((String) c1421s3.f3413c)) {
                m1595i(AbstractC1387m.m2421h(new byte[]{-80, 30, -110, -118, 43, 46, 49, 86, -112, 2, -41, -40, 40, 47, 46, 84, -34, 1, -38, -105, 32, 56, 97, 95, -111, 3, -110, -49, 110, 46}, new byte[]{-2, 113, -78, -8, 78, 93, 65, 57}));
            }
            c1421s3.m2458e();
            return;
        }
        if (f1661x.get()) {
            if (AbstractC1387m.m2421h(new byte[]{28, 88, -78, -21, -23, 107, -38, -66, 54}, new byte[]{94, 52, -57, -114, -99, 4, -75, -54}).equals((String) c1421s3.f3413c) && jCurrentTimeMillis - this.f1676n >= 5000) {
                this.f1676n = jCurrentTimeMillis;
                C1421s3 c1421s3M1591d = m1591d();
                if (c1421s3M1591d != null) {
                    c1421s3M1591d.m2458e();
                    c1421s3.m2458e();
                    return;
                }
            }
            try {
                c1421s3.m2470r(AbstractC3632j.m5811c(AbstractC1387m.m2421h(new byte[]{27, 23, 85, -14}, new byte[]{107, 126, 59, -107, -70, -5, 120, -34}), AbstractC1387m.m2421h(new byte[]{-77, -114, 123}, new byte[]{-48, -17, 9, 105, 66, 84, 78, 125})));
            } catch (IOException unused) {
                c1421s3.m2458e();
            }
        }
    }

    /* JADX INFO: renamed from: i */
    public final void m1595i(String str) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        ConcurrentHashMap concurrentHashMap = this.f1677o;
        Long l10 = (Long) concurrentHashMap.get(str);
        if (l10 == null || jCurrentTimeMillis - l10.longValue() >= 30000) {
            concurrentHashMap.put(str, Long.valueOf(jCurrentTimeMillis));
            String strConcat = AbstractC1387m.m2421h(new byte[]{117, 53, -59, 33, 123, 40, 60, -118, 79, 57, -61, 1, 41, 11, 62, -116, 90, 34, -34, 26, 125, 33, 104, -39}, new byte[]{63, 86, -79, 117, 9, 73, 82, -7}).concat(str);
            Log.i(f1653p, strConcat);
            C1652b.m2751w(strConcat, ColorText.GREEN);
        }
    }

    /* JADX WARN: Code duplicated, block: B:70:0x0243 A[Catch: all -> 0x00c6, TryCatch #1 {all -> 0x00c6, blocks: (B:3:0x0012, B:4:0x002b, B:6:0x0033, B:8:0x003d, B:9:0x0043, B:10:0x0047, B:12:0x005d, B:19:0x0072, B:21:0x00b2, B:28:0x00cf, B:29:0x00ef, B:32:0x010a, B:34:0x0129, B:36:0x0156, B:42:0x0174, B:43:0x0181, B:45:0x0199, B:47:0x01c6, B:48:0x01d7, B:55:0x01e9, B:57:0x01ff, B:60:0x0210, B:62:0x0216, B:68:0x023b, B:70:0x0243, B:72:0x028a), top: B:84:0x0012 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x028a A[Catch: all -> 0x00c6, TRY_LEAVE, TryCatch #1 {all -> 0x00c6, blocks: (B:3:0x0012, B:4:0x002b, B:6:0x0033, B:8:0x003d, B:9:0x0043, B:10:0x0047, B:12:0x005d, B:19:0x0072, B:21:0x00b2, B:28:0x00cf, B:29:0x00ef, B:32:0x010a, B:34:0x0129, B:36:0x0156, B:42:0x0174, B:43:0x0181, B:45:0x0199, B:47:0x01c6, B:48:0x01d7, B:55:0x01e9, B:57:0x01ff, B:60:0x0210, B:62:0x0216, B:68:0x023b, B:70:0x0243, B:72:0x028a), top: B:84:0x0012 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:70:0x0243, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:72:0x028a, please report this as an issue */
    /* JADX INFO: renamed from: j */
    public final void m1596j(C1421s3 c1421s3) {
        String line;
        this.f1674l = c1421s3;
        this.f1675m = System.currentTimeMillis();
        String strM5799b = AbstractC3625c.m5799b();
        try {
            try {
                String strM2421h = AbstractC1387m.m2421h(new byte[]{123, -2, -99}, new byte[]{24, -97, -17, 26, 90, 11, -112, -124});
                String str = Build.MODEL;
                c1421s3.m2470r(AbstractC3632j.m5813e(strM2421h, strM5799b));
                boolean z9 = false;
                String str2 = null;
                while (this.f1668f.get() && (line = ((BufferedReader) c1421s3.f3415e).readLine()) != null) {
                    this.f1675m = System.currentTimeMillis();
                    try {
                        C3631i c3631iM5815g = AbstractC3632j.m5815g(line);
                        if (AbstractC1387m.m2421h(new byte[]{-102, 79, 90, 80, -41, -15, -83, 44, -100}, new byte[]{-7, 39, 59, 60, -69, -108, -61, 75}).equals(c3631iM5815g.f10778a)) {
                            str2 = c3631iM5815g.f10783f;
                            if (str2.isEmpty()) {
                                if (this.f1674l == c1421s3) {
                                    this.f1674l = null;
                                    m1599m();
                                }
                                c1421s3.m2458e();
                                return;
                            }
                            Log.i(f1653p, AbstractC1387m.m2421h(new byte[]{60, 1, 0, -89, -58, -103, 96, 81, 17, 64, 13, -85, -44, -99, 109, 95, 26, 7, 11, -29, -57, -108, 98, 95, 29, 22, 11, -89, -107, -121, 104, 91, 84}, new byte[]{116, 96, 110, -61, -75, -15, 1, 58}) + ((String) c1421s3.f3413c));
                            if (AbstractC1387m.m2421h(new byte[]{107, 11, 123, 114, -33, 27, -24, -17, 65}, new byte[]{41, 103, 14, 23, -85, 116, -121, -101}).equals((String) c1421s3.f3413c)) {
                                m1595i(AbstractC1387m.m2421h(new byte[]{12, 46, -34, 67, 114, 27, -26, -127, Base64.padSymbol, 42, -35, 72, 121, 92, -32, -55, 46, 35, -46, 72, 126, 77, -32, -115, 103, 102, -57, 72, 101, 82, -29, -112, 53, 40, -42, 13, 99, 84, -18, -116, 50}, new byte[]{92, 70, -79, 45, 23, 59, -123, -23}));
                            }
                            c1421s3.m2470r(AbstractC3632j.m5809a(AbstractC3625c.m5800c(AbstractC3635m.m5816a(this), strM5799b, str2, AbstractC1387m.m2421h(new byte[]{-77, 39, Base64.padSymbol}, new byte[]{-48, 70, 79, -58, 88, 43, -39, 90}))));
                        } else if (!AbstractC1387m.m2421h(new byte[]{102, 0, 93, -38, 2, 88, 27}, new byte[]{7, 117, 41, -78, 93, 55, 112, 91}).equals(c3631iM5815g.f10778a) || str2 == null) {
                            if (AbstractC1387m.m2421h(new byte[]{-64, -24, -16, 83, -56, -105, -7, 90, -56, -8, -32}, new byte[]{-95, -99, -124, 59, -105, -13, -100, 52}).equals(c3631iM5815g.f10778a)) {
                                Log.w(f1653p, AbstractC1387m.m2421h(new byte[]{79, 30, -48, 105, 56, 28, -32, -123, 98, 95, -38, 104, 37, 29, -28, -118, 39, 29, -57, 45, 59, 28, -18, ByteCompanionObject.MIN_VALUE, 98, 69, -98, 126, 35, 21, -13, -117, 99, 95, -54, 98, 32, 17, -17, -50, 99, 16, -37, 126, 107, 26, -18, -102, 39, 18, -33, 121, 40, 28}, new byte[]{7, ByteCompanionObject.MAX_VALUE, -66, 13, 75, 116, -127, -18}));
                                if (AbstractC1387m.m2421h(new byte[]{-95, 47, 43, 68, -104, 33, -125, 13, -117}, new byte[]{-29, 67, 94, 33, -20, 78, -20, 121}).equals((String) c1421s3.f3413c)) {
                                    m1595i(AbstractC1387m.m2421h(new byte[]{74, 79, 78, -101, 90, 41, -92, 68, 112, 66, 66, -127, 90, 109, -10, 82, 114, 70, 83, -112, 91, 41, -94, 78, 113, 66, 79}, new byte[]{26, 39, 33, -11, 63, 9, -42, 33}));
                                }
                                AbstractC3636n.m5820a();
                                if (this.f1674l == c1421s3) {
                                    this.f1674l = null;
                                    m1599m();
                                }
                                c1421s3.m2458e();
                                return;
                            }
                            if (AbstractC1387m.m2421h(new byte[]{58, 105, 121, 82, 110, 84, ByteCompanionObject.MAX_VALUE, -47, 56, 109, 97, 85, 98, 73, 108}, new byte[]{74, 8, 16, 32, 7, 58, 24, -114}).equals(c3631iM5815g.f10778a)) {
                                c1421s3.m2470r(AbstractC3632j.m5814f(AbstractC3635m.m5816a(this)));
                            } else if (z9) {
                                m1593g(c1421s3, c3631iM5815g);
                            }
                        } else {
                            if (!AbstractC3625c.m5798a(AbstractC3625c.m5800c(AbstractC3635m.m5816a(this), strM5799b, str2, AbstractC1387m.m2421h(new byte[]{108, -92, -15, -79, 102}, new byte[]{28, -52, -98, -33, 3, 116, -101, ByteCompanionObject.MIN_VALUE})), c3631iM5815g.f10784g)) {
                                Log.w(f1653p, AbstractC1387m.m2421h(new byte[]{-76, 77, -111, -81, 19, -2, -116, -41, -103, 12, -101, -82, 14, -1, -120, -40, -58, 12, -113, -93, 15, -8, -120, -100, -116, 94, -112, -92, 6, -74, -119, -45, -103, 95, -33, -91, 15, -30, -51, -47, -99, 88, -100, -93}, new byte[]{-4, 44, -1, -53, 96, -106, -19, -68}));
                                if (AbstractC1387m.m2421h(new byte[]{-45, -100, -21, 25, -57, -66, -11, -40, -7}, new byte[]{-111, -16, -98, 124, -77, -47, -102, -84}).equals((String) c1421s3.f3413c)) {
                                    m1595i(AbstractC1387m.m2421h(new byte[]{15, -16, -38, -37, 2, 63, -24, -55, 43, -16, -48, -37, 19, 118, -22, -35, 43, -15, -38, -37, 71, 121, -24, -43, 51, -3, -47}, new byte[]{95, -104, -75, -75, 103, 31, -119, -68}));
                                }
                                if (this.f1674l == c1421s3) {
                                    this.f1674l = null;
                                    m1599m();
                                }
                                c1421s3.m2458e();
                                return;
                            }
                            m1598l((String) c1421s3.f3413c);
                            m1592f();
                            z9 = true;
                        }
                    } catch (JSONException e) {
                        Log.w(f1653p, AbstractC1387m.m2421h(new byte[]{14, 96, 121, -10, 33, -23, 23, -12, 103, 106, 118, -11, 53, -17, 11, -2, 34, 99, 55, -19, 33, -31, 23, -32, 55, 104, 101, -19, 115, -26, 11, -14, 42, 98}, new byte[]{71, 7, 23, -103, 83, ByteCompanionObject.MIN_VALUE, 121, -109}), e);
                    }
                }
                if (this.f1674l == c1421s3) {
                    this.f1674l = null;
                    m1599m();
                }
            } catch (IOException e6) {
                e = e6;
                if (this.f1668f.get()) {
                    Log.d(f1653p, ((String) c1421s3.f3413c) + AbstractC1387m.m2421h(new byte[]{-38, 75, -10, -127, 67, 7, -115, -4, -120, 75, -92, -124, 68, 7, -98, -4, -108, 81, -31, -125, 89, 17, -103, -87, -38}, new byte[]{-6, 63, -124, -32, 45, 116, -3, -109}) + e.getMessage());
                    if (AbstractC1387m.m2421h(new byte[]{77, -105, 39, 39, -18, 42, -49, 1, 103}, new byte[]{15, -5, 82, 66, -102, 69, -96, 117}).equals((String) c1421s3.f3413c)) {
                        m1595i(AbstractC1387m.m2421h(new byte[]{59, 80, -124, -49, -122, -25, -92, -39, 23, 81, -54, -51, -116, -9, -92, -118, 88}, new byte[]{120, 63, -22, -95, -29, -124, -48, -80}) + m1588e(e));
                    }
                }
                if (this.f1674l == c1421s3) {
                }
                c1421s3.m2458e();
            } catch (RuntimeException e10) {
                e = e10;
                if (this.f1668f.get()) {
                    Log.d(f1653p, ((String) c1421s3.f3413c) + AbstractC1387m.m2421h(new byte[]{-38, 75, -10, -127, 67, 7, -115, -4, -120, 75, -92, -124, 68, 7, -98, -4, -108, 81, -31, -125, 89, 17, -103, -87, -38}, new byte[]{-6, 63, -124, -32, 45, 116, -3, -109}) + e.getMessage());
                    if (AbstractC1387m.m2421h(new byte[]{77, -105, 39, 39, -18, 42, -49, 1, 103}, new byte[]{15, -5, 82, 66, -102, 69, -96, 117}).equals((String) c1421s3.f3413c)) {
                        m1595i(AbstractC1387m.m2421h(new byte[]{59, 80, -124, -49, -122, -25, -92, -39, 23, 81, -54, -51, -116, -9, -92, -118, 88}, new byte[]{120, 63, -22, -95, -29, -124, -48, -80}) + m1588e(e));
                    }
                }
                if (this.f1674l == c1421s3) {
                }
                c1421s3.m2458e();
            }
            c1421s3.m2458e();
        } catch (Throwable th) {
            if (this.f1674l == c1421s3) {
                this.f1674l = null;
                m1599m();
            }
            c1421s3.m2458e();
            throw th;
        }
    }

    /* JADX INFO: renamed from: k */
    public final void m1597k(C3634l c3634l) {
        C1421s3 c1421s3 = this.f1674l;
        if (c1421s3 == null || !f1661x.get()) {
            return;
        }
        try {
            c1421s3.m2470r(AbstractC3632j.m5812d(c3634l.f10797d, c3634l.f10794a, c3634l.f10796c, c3634l.f10795b));
            if (AbstractC1387m.m2421h(new byte[]{-2, -69, -73, -55, -56, -116}, new byte[]{-110, -38, -61, -84, -69, -8, -22, 34}).equals(c3634l.f10796c)) {
                this.f1664b.remove(c3634l.f10794a, c3634l);
            }
        } catch (IOException unused) {
            c1421s3.m2458e();
        }
    }

    /* JADX INFO: renamed from: l */
    public final void m1598l(String str) {
        f1661x.set(true);
        f1662y = str;
        Log.i(f1653p, AbstractC1387m.m2421h(new byte[]{-51, 1, 67, 28, -61, 45, -4, -126, -22, 78, 91, 27, -57, 110}, new byte[]{-114, 110, 45, 114, -90, 78, -120, -25}).concat(str));
        if (AbstractC1387m.m2421h(new byte[]{50, 64, 108, -39, 23, 12, 32, 108, 24}, new byte[]{112, 44, 25, -68, 99, 99, 79, 24}).equals(str)) {
            m1595i(AbstractC1387m.m2421h(new byte[]{102, -85, 58, -41, -10, -102, 121, -101, 65, -28, 53, -41, -9, -39, 108, -117, 81, -84, 49, -41, -25, -112, 110, -97, 81, -95, 48}, new byte[]{37, -60, 84, -71, -109, -7, 13, -2}));
        }
        startForeground(1907, m1589a(str));
        Iterator it = AbstractC3629g.f10775b.iterator();
        while (it.hasNext()) {
            try {
                ((C1345d2) it.next()).m2397a(true);
            } catch (RuntimeException unused) {
            }
        }
    }

    /* JADX INFO: renamed from: m */
    public final void m1599m() {
        String str = f1662y;
        if (f1661x.getAndSet(false)) {
            Log.i(f1653p, AbstractC1387m.m2421h(new byte[]{-90, 37, 120, 50, 12, -40, 114, -107, -122, 119, 125, 53, 12, -53, 114, -119, -100, 50, 122, 40, 26, -52}, new byte[]{-14, 87, 25, 92, ByteCompanionObject.MAX_VALUE, -88, 29, -25}));
            if (AbstractC1387m.m2421h(new byte[]{-104, 17, 116, 105, -100, 75, -81, -83, -78}, new byte[]{-38, 125, 1, 12, -24, 36, -64, -39}).equals(str)) {
                m1595i(AbstractC1387m.m2421h(new byte[]{76, -4, 79, 10, -90, -109, -28, -106, 96, -3, 1, 7, -81, -97, -29, -102, 107}, new byte[]{15, -109, 33, 100, -61, -16, -112, -1}));
            }
        }
        f1662y = "";
        Iterator it = AbstractC3629g.f10775b.iterator();
        while (it.hasNext()) {
            try {
                ((C1345d2) it.next()).m2397a(false);
            } catch (RuntimeException unused) {
            }
        }
        if (f1660w.get()) {
            startForeground(1907, m1589a(null));
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        NotificationManager notificationManager;
        super.onCreate();
        f1663z = this;
        this.f1669g = Executors.newSingleThreadExecutor();
        this.f1670h = Executors.newCachedThreadPool();
        this.f1671i = Executors.newSingleThreadExecutor();
        this.f1672j = Executors.newSingleThreadScheduledExecutor();
        if (Build.VERSION.SDK_INT >= 26 && (notificationManager = (NotificationManager) getSystemService(NotificationManager.class)) != null) {
            AbstractC3449d.m5381g();
            notificationManager.createNotificationChannel(AbstractC3449d.m5377c(f1659v, getString(R.string.transport_channel)));
        }
        this.f1673k = new C3624b(this);
    }

    @Override // android.app.Service
    public final void onDestroy() {
        C3624b c3624b = this.f1673k;
        if (c3624b != null) {
            c3624b.close();
        }
        this.f1668f.set(false);
        f1660w.set(false);
        Log.i(f1653p, AbstractC1387m.m2421h(new byte[]{-24, 20, -81, -112, -13, 125, -123, -115, -56, 70, -94, -105, -26, 104, -119, -122, -33, 10, -85, -34, -13, 121, -123, -113, -52, 3, -86}, new byte[]{-68, 102, -50, -2, ByteCompanionObject.MIN_VALUE, 13, -22, -1}));
        m1599m();
        C1421s3 c1421s3 = this.f1674l;
        this.f1674l = null;
        if (c1421s3 != null) {
            c1421s3.m2458e();
        }
        this.f1669g.shutdownNow();
        this.f1670h.shutdownNow();
        this.f1671i.shutdownNow();
        this.f1672j.shutdownNow();
        if (f1663z == this) {
            f1663z = null;
        }
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i10, int i11) {
        String action = intent == null ? null : intent.getAction();
        startForeground(1907, m1589a(null));
        final int i12 = 0;
        final int i13 = 1;
        boolean zCompareAndSet = this.f1668f.compareAndSet(false, true);
        String str = f1653p;
        if (zCompareAndSet) {
            f1660w.set(true);
            Log.i(str, AbstractC1387m.m2421h(new byte[]{-120, -82, 112, 93, -35, 11, 26, 41, -88, -4, 125, 90, -56, 30, 22, 34, -65, -80, 116, 19, -35, 15, 20, 41, -88, -71, 117}, new byte[]{-36, -36, 17, 51, -82, 123, 117, 91}));
            this.f1672j.scheduleWithFixedDelay(new Runnable(this) { // from class: y0.k

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ TransportService f10793c;

                {
                    this.f10793c = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    switch (i12) {
                        case 0:
                            TransportService transportService = this.f10793c;
                            String str2 = TransportService.f1653p;
                            try {
                                transportService.m1594h();
                            } catch (RuntimeException e) {
                                Log.w(TransportService.f1653p, AbstractC1387m.m2421h(new byte[]{59, 105, -80, 1, -123, -75, 3, -48, 27, 59, -71, 10, -105, -73, 24, -64, 10, 122, -91, 79, -112, -92, 5, -50, 10, ByteCompanionObject.MAX_VALUE, -22, 79, -99, -96, 9, -46, 6, 117, -74, 79, -102, -84, 10, -57, 12, 98, -78, 3, -109, -27, 13, -50, 6, 109, -76}, new byte[]{111, 27, -47, 111, -10, -59, 108, -94}), e);
                                C1421s3 c1421s3 = transportService.f1674l;
                                if (c1421s3 != null) {
                                    c1421s3.m2458e();
                                    return;
                                }
                                return;
                            }
                            break;
                        default:
                            TransportService transportService2 = this.f10793c;
                            while (transportService2.f1668f.get()) {
                                try {
                                    C1421s3 c1421s3M1591d = transportService2.m1591d();
                                    if (c1421s3M1591d == null) {
                                        c1421s3M1591d = transportService2.m1590c();
                                    }
                                    if (c1421s3M1591d != null) {
                                        transportService2.m1596j(c1421s3M1591d);
                                    }
                                } catch (RuntimeException e6) {
                                    Log.w(TransportService.f1653p, AbstractC1387m.m2421h(new byte[]{63, -50, 91, -84, -19, 122, -103, 59, 31, -100, 89, -83, -16, 100, -109, 42, 31, -43, 85, -84, -66, 105, -113, 42, 7, -39, 26, -92, -1, 99, -102, 44, 15, -121, 26, -80, -5, 126, -124, 48, 2, -46, 93}, new byte[]{107, -68, 58, -62, -98, 10, -10, 73}), e6);
                                    transportService2.m1599m();
                                    C1421s3 c1421s4 = transportService2.f1674l;
                                    transportService2.f1674l = null;
                                    if (c1421s4 != null) {
                                        c1421s4.m2458e();
                                    }
                                }
                                if (transportService2.f1668f.get()) {
                                    try {
                                        Thread.sleep(1500L);
                                    } catch (InterruptedException unused) {
                                        Thread.currentThread().interrupt();
                                    }
                                }
                            }
                            break;
                    }
                }
            }, 2000L, 2000L, TimeUnit.MILLISECONDS);
            this.f1669g.execute(new Runnable(this) { // from class: y0.k

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ TransportService f10793c;

                {
                    this.f10793c = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    switch (i13) {
                        case 0:
                            TransportService transportService = this.f10793c;
                            String str2 = TransportService.f1653p;
                            try {
                                transportService.m1594h();
                            } catch (RuntimeException e) {
                                Log.w(TransportService.f1653p, AbstractC1387m.m2421h(new byte[]{59, 105, -80, 1, -123, -75, 3, -48, 27, 59, -71, 10, -105, -73, 24, -64, 10, 122, -91, 79, -112, -92, 5, -50, 10, ByteCompanionObject.MAX_VALUE, -22, 79, -99, -96, 9, -46, 6, 117, -74, 79, -102, -84, 10, -57, 12, 98, -78, 3, -109, -27, 13, -50, 6, 109, -76}, new byte[]{111, 27, -47, 111, -10, -59, 108, -94}), e);
                                C1421s3 c1421s3 = transportService.f1674l;
                                if (c1421s3 != null) {
                                    c1421s3.m2458e();
                                    return;
                                }
                                return;
                            }
                            break;
                        default:
                            TransportService transportService2 = this.f10793c;
                            while (transportService2.f1668f.get()) {
                                try {
                                    C1421s3 c1421s3M1591d = transportService2.m1591d();
                                    if (c1421s3M1591d == null) {
                                        c1421s3M1591d = transportService2.m1590c();
                                    }
                                    if (c1421s3M1591d != null) {
                                        transportService2.m1596j(c1421s3M1591d);
                                    }
                                } catch (RuntimeException e6) {
                                    Log.w(TransportService.f1653p, AbstractC1387m.m2421h(new byte[]{63, -50, 91, -84, -19, 122, -103, 59, 31, -100, 89, -83, -16, 100, -109, 42, 31, -43, 85, -84, -66, 105, -113, 42, 7, -39, 26, -92, -1, 99, -102, 44, 15, -121, 26, -80, -5, 126, -124, 48, 2, -46, 93}, new byte[]{107, -68, 58, -62, -98, 10, -10, 73}), e6);
                                    transportService2.m1599m();
                                    C1421s3 c1421s4 = transportService2.f1674l;
                                    transportService2.f1674l = null;
                                    if (c1421s4 != null) {
                                        c1421s4.m2458e();
                                    }
                                }
                                if (transportService2.f1668f.get()) {
                                    try {
                                        Thread.sleep(1500L);
                                    } catch (InterruptedException unused) {
                                        Thread.currentThread().interrupt();
                                    }
                                }
                            }
                            break;
                    }
                }
            });
        }
        if (f1655r.equals(action)) {
            String stringExtra = intent.getStringExtra(f1656s);
            String stringExtra2 = intent.getStringExtra(f1657t);
            String stringExtra3 = intent.getStringExtra(f1658u);
            if (stringExtra != null && !stringExtra.trim().isEmpty()) {
                if (stringExtra2 == null) {
                    stringExtra2 = "";
                }
                String str2 = stringExtra2;
                String strM2421h = AbstractC1387m.m2421h(new byte[]{119, 122, 84, 45, 7, -104, -43, -32}, new byte[]{5, 31, 56, 68, 102, -6, -71, -123}).equals(stringExtra3) ? AbstractC1387m.m2421h(new byte[]{-66, -70, 27, -47, -11, -97, -124, 116}, new byte[]{-52, -33, 119, -72, -108, -3, -24, 17}) : AbstractC1387m.m2421h(new byte[]{-115, 115, -48, 110, -48, 1}, new byte[]{-31, 18, -92, 11, -93, 117, -104, 96});
                long jIncrementAndGet = this.f1667e.incrementAndGet();
                C3634l c3634l = new C3634l(jIncrementAndGet, stringExtra, str2, strM2421h);
                if (AbstractC1387m.m2421h(new byte[]{-114, 49, ByteCompanionObject.MAX_VALUE, 9, -61, 82, 52, 94}, new byte[]{-4, 84, 19, 96, -94, 48, 88, 59}).equals(strM2421h)) {
                    this.f1665c.put(Long.valueOf(jIncrementAndGet), c3634l);
                } else {
                    this.f1664b.put(stringExtra, c3634l);
                }
                try {
                    this.f1671i.execute(new RunnableC3180x0(16, this, c3634l));
                } catch (RuntimeException e) {
                    Log.w(str, AbstractC1387m.m2421h(new byte[]{75, 107, -15, 35, 62, -48, -60, 40, 113, 37, -31, 52, 55, -64, -127, 124, 106, 119, -15, 47, 33, -59, -117, 46, 106, 37, -3, 36, 33, -58, -123, 59, 123}, new byte[]{30, 5, -112, 65, 82, -75, -28, 92}), e);
                }
            }
        }
        return 1;
    }
}
