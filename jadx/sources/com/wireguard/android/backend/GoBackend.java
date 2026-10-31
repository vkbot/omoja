package com.wireguard.android.backend;

import ai.onnxruntime.AbstractC0074a;
import ai.onnxruntime.C0077d;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.os.SystemClock;
import android.support.v4.media.C0090h;
import android.system.OsConstants;
import android.util.Log;
import androidx.annotation.Nullable;
import com.bumptech.glide.C1033f;
import java.io.File;
import java.io.IOException;
import java.net.InetAddress;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p044d7.C1310a;
import p044d7.C1312c;
import p053e7.AbstractC1497a;
import p064f7.C1586c;
import p064f7.C1588e;
import p064f7.C1589f;
import p064f7.C1590g;
import p064f7.C1591h;
import p064f7.C1593j;
import p074g7.C1623b;
import p074g7.C1624c;
import p142n0.C2467b;
import p184r5.C3105c;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class GoBackend {

    /* JADX INFO: renamed from: e */
    public static C0090h f2832e = new C0090h(5);

    /* JADX INFO: renamed from: a */
    public final Context f2833a;

    /* JADX INFO: renamed from: b */
    public C1586c f2834b;

    /* JADX INFO: renamed from: c */
    public C3105c f2835c;

    /* JADX INFO: renamed from: d */
    public int f2836d = -1;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class VpnService extends android.net.VpnService {

        /* JADX INFO: renamed from: b */
        public GoBackend f2837b;

        @Override // android.app.Service
        public final void onCreate() {
            C0090h c0090h = GoBackend.f2832e;
            if (((LinkedBlockingQueue) c0090h.f191c).offer(this)) {
                ((FutureTask) c0090h.f192d).run();
            }
            super.onCreate();
        }

        @Override // android.app.Service
        public final void onDestroy() {
            C3105c c3105c;
            GoBackend goBackend = this.f2837b;
            if (goBackend != null && (c3105c = goBackend.f2835c) != null) {
                int i10 = goBackend.f2836d;
                if (i10 != -1) {
                    GoBackend.wgTurnOff(i10);
                }
                GoBackend goBackend2 = this.f2837b;
                goBackend2.f2835c = null;
                goBackend2.f2836d = -1;
                goBackend2.f2834b = null;
                c3105c.m4943l(1);
            }
            GoBackend.f2832e.getClass();
            GoBackend.f2832e = new C0090h(5);
            super.onDestroy();
        }

        @Override // android.app.Service
        public final int onStartCommand(Intent intent, int i10, int i11) {
            C0090h c0090h = GoBackend.f2832e;
            if (((LinkedBlockingQueue) c0090h.f191c).offer(this)) {
                ((FutureTask) c0090h.f192d).run();
            }
            if (intent == null || intent.getComponent() == null || !intent.getComponent().getPackageName().equals(getPackageName())) {
                Log.d("WireGuard/GoBackend", "Service started by Always-on VPN feature");
            }
            return super.onStartCommand(intent, i10, i11);
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003b A[PHI: r0 r1
  0x003b: PHI (r0v6 'e' java.lang.Throwable) = (r0v3 'e' java.lang.Throwable), (r0v2 'e' java.lang.Throwable) binds: [B:20:0x0044, B:17:0x0039] A[DONT_GENERATE, DONT_INLINE]
  0x003b: PHI (r1v4 java.io.File) = (r1v2 java.io.File), (r1v5 java.io.File) binds: [B:20:0x0044, B:17:0x0039] A[DONT_GENERATE, DONT_INLINE]] */
    public GoBackend(Context context) {
        try {
            System.loadLibrary("wg-go");
        } catch (UnsatisfiedLinkError e) {
            e = e;
            Log.d("WireGuard/SharedLibraryLoader", "Failed to load library normally, so attempting to extract from apk", e);
            File fileCreateTempFile = null;
            try {
                try {
                    fileCreateTempFile = File.createTempFile("lib", ".so", context.getCodeCacheDir());
                    if (!AbstractC1497a.m2579a(context, fileCreateTempFile)) {
                        if (fileCreateTempFile != null) {
                            fileCreateTempFile.delete();
                        }
                        if (e instanceof RuntimeException) {
                            throw ((RuntimeException) e);
                        }
                        C2467b.m3833w(e);
                        throw null;
                    }
                    System.load(fileCreateTempFile.getAbsolutePath());
                    fileCreateTempFile.delete();
                } catch (Exception e6) {
                    e = e6;
                    Log.d("WireGuard/SharedLibraryLoader", "Failed to load library apk:/wg-go", e);
                    if (fileCreateTempFile != null) {
                        fileCreateTempFile.delete();
                    }
                }
            } catch (Throwable th) {
                if (fileCreateTempFile != null) {
                    fileCreateTempFile.delete();
                }
                throw th;
            }
        }
        this.f2833a = context;
    }

    @Nullable
    private static native String wgGetConfig(int i10);

    private static native int wgGetSocketV4(int i10);

    private static native int wgGetSocketV6(int i10);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void wgTurnOff(int i10);

    private static native int wgTurnOn(String str, int i10, String str2);

    private static native String wgVersion();

    /* JADX INFO: renamed from: b */
    public final C1033f m2192b(C3105c c3105c) {
        int i10;
        String strWgGetConfig;
        C1033f c1033f = new C1033f(1);
        if (c3105c == this.f2835c && (i10 = this.f2836d) != -1 && (strWgGetConfig = wgGetConfig(i10)) != null) {
            String[] strArrSplit = strWgGetConfig.split("\\n");
            int length = strArrSplit.length;
            int i11 = 0;
            C1623b c1623b = null;
            long j10 = 0;
            long j11 = 0;
            long j12 = 0;
            while (true) {
                HashMap map = c1033f.f1089a;
                if (i11 >= length) {
                    if (c1623b == null) {
                        break;
                    }
                    map.put(c1623b, new C1312c(j10, j11, j12));
                    SystemClock.elapsedRealtime();
                    break;
                }
                String str = strArrSplit[i11];
                if (str.startsWith("public_key=")) {
                    if (c1623b != null) {
                        map.put(c1623b, new C1312c(j10, j11, j12));
                        SystemClock.elapsedRealtime();
                    }
                    try {
                        char[] charArray = str.substring(11).toCharArray();
                        if (charArray.length != 64) {
                            throw new C1624c();
                        }
                        byte[] bArr = new byte[32];
                        int i12 = 0;
                        int i13 = 0;
                        for (int i14 = 32; i12 < i14; i14 = 32) {
                            int i15 = i12 * 2;
                            char c = charArray[i15];
                            int i16 = c ^ '0';
                            int i17 = i16 - 10;
                            int i18 = c & (-33);
                            int i19 = i18 - 55;
                            int i20 = (i18 - 65) ^ (i18 - 71);
                            int i21 = (((((i17 | i20) >>> 8) & 255) - 1) >>> 8) | i13;
                            int i22 = (((i17 >>> 8) & 255 & i16) | ((i20 >>> 8) & 255 & i19)) * 16;
                            char c10 = charArray[i15 + 1];
                            int i23 = c10 ^ '0';
                            int i24 = i23 - 10;
                            int i25 = c10 & (-33);
                            int i26 = i25 - 55;
                            int i27 = (i25 - 71) ^ (i25 - 65);
                            bArr[i12] = (byte) (i22 | ((i24 >>> 8) & 255 & i23) | ((i27 >>> 8) & 255 & i26));
                            i12++;
                            i13 = (((((i27 | i24) >>> 8) & 255) - 1) >>> 8) | i21;
                        }
                        if (i13 != 0) {
                            throw new C1624c();
                        }
                        c1623b = new C1623b(bArr);
                        j10 = 0;
                        j11 = 0;
                    } catch (C1624c unused) {
                        c1623b = null;
                    }
                } else {
                    if (str.startsWith("rx_bytes=")) {
                        if (c1623b != null) {
                            try {
                                j10 = Long.parseLong(str.substring(9));
                            } catch (NumberFormatException unused2) {
                                j10 = 0;
                            }
                        }
                    } else if (str.startsWith("tx_bytes=")) {
                        if (c1623b != null) {
                            try {
                                j11 = Long.parseLong(str.substring(9));
                            } catch (NumberFormatException unused3) {
                                j11 = 0;
                            }
                        }
                    } else if (str.startsWith("last_handshake_time_sec=")) {
                        if (c1623b != null) {
                            try {
                                j12 += Long.parseLong(str.substring(24)) * 1000;
                            } catch (NumberFormatException unused4) {
                                j12 = 0;
                            }
                        }
                    } else if (str.startsWith("last_handshake_time_nsec=") && c1623b != null) {
                        j12 += Long.parseLong(str.substring(25)) / 1000000;
                    }
                    i11++;
                }
                j12 = 0;
                i11++;
            }
        }
        return c1033f;
    }

    /* JADX INFO: renamed from: c */
    public final void m2193c(int i10, C1586c c1586c, C3105c c3105c) {
        C3105c c3105c2 = this.f2835c;
        int i11 = c3105c2 == c3105c ? 3 : 1;
        if (i10 == 2) {
            i10 = i11 == 3 ? 1 : 3;
        }
        if (i10 == i11 && c3105c == c3105c2 && c1586c == this.f2834b) {
            return;
        }
        if (i10 != 3) {
            if (i10 == 1 && c3105c == c3105c2) {
                m2194d(1, null, c3105c);
                return;
            }
            return;
        }
        C1586c c1586c2 = this.f2834b;
        if (c3105c2 != null) {
            m2194d(1, null, c3105c2);
        }
        try {
            m2194d(i10, c1586c, c3105c);
        } catch (Exception e) {
            if (c3105c2 != null) {
                m2194d(3, c1586c2, c3105c2);
            }
            throw e;
        }
    }

    /* JADX INFO: renamed from: d */
    public final void m2194d(int i10, C1586c c1586c, C3105c c3105c) throws InterruptedException, PackageManager.NameNotFoundException, C1310a, IOException {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder("Bringing tunnel ");
        c3105c.getClass();
        sb.append(C3105c.m4940i());
        sb.append(' ');
        if (i10 == 1) {
            str = "DOWN";
        } else if (i10 != 2) {
            str = i10 != 3 ? "null" : "UP";
        } else {
            str = "TOGGLE";
        }
        sb.append(str);
        Log.i("WireGuard/GoBackend", sb.toString());
        if (i10 != 3) {
            int i11 = this.f2836d;
            if (i11 == -1) {
                Log.w("WireGuard/GoBackend", "Tunnel already down");
                return;
            }
            this.f2835c = null;
            this.f2836d = -1;
            this.f2834b = null;
            wgTurnOff(i11);
            try {
                ((VpnService) ((FutureTask) f2832e.f192d).get(0L, TimeUnit.NANOSECONDS)).stopSelf();
            } catch (TimeoutException unused) {
            }
        } else {
            if (c1586c == null) {
                throw new C1310a(new Object[0]);
            }
            List<C1593j> list = c1586c.f3937b;
            C1591h c1591h = c1586c.f3936a;
            Context context = this.f2833a;
            if (android.net.VpnService.prepare(context) != null) {
                throw new C1310a(new Object[0]);
            }
            if (((LinkedBlockingQueue) f2832e.f191c).isEmpty()) {
                Log.d("WireGuard/GoBackend", "Requesting to start VpnService");
                context.startService(new Intent(context, (Class<?>) VpnService.class));
            }
            try {
                VpnService vpnService = (VpnService) ((FutureTask) f2832e.f192d).get(2L, TimeUnit.SECONDS);
                vpnService.f2837b = this;
                if (this.f2836d != -1) {
                    Log.w("WireGuard/GoBackend", "Tunnel already up");
                    return;
                }
                loop0: for (int i12 = 0; i12 < 10; i12++) {
                    Iterator it = list.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break loop0;
                        }
                        C1588e c1588e = (C1588e) ((C1593j) it.next()).f3963b.orElse(null);
                        if (c1588e != null) {
                            str2 = c1588e.f3943a;
                            if (c1588e.m2673a().orElse(null) == null) {
                                break;
                            }
                        }
                    }
                    if (i12 >= 9) {
                        throw new C1310a(str2);
                    }
                    Log.w("WireGuard/GoBackend", "DNS host \"" + str2 + "\" failed to resolve; trying again");
                    Thread.sleep(1000L);
                }
                StringBuilder sb2 = new StringBuilder();
                c1591h.getClass();
                StringBuilder sbM170u = AbstractC0074a.m170u("private_key=");
                sbM170u.append(((C1623b) c1591h.f3958f.f191c).m2714e());
                sbM170u.append('\n');
                c1591h.f3959g.ifPresent(new C1590g(sbM170u, 1));
                sb2.append(sbM170u.toString());
                sb2.append("replace_peers=true\n");
                for (C1593j c1593j : list) {
                    c1593j.getClass();
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("public_key=");
                    sb3.append(c1593j.f3966e.m2714e());
                    sb3.append('\n');
                    for (C1589f c1589f : c1593j.f3962a) {
                        sb3.append("allowed_ip=");
                        sb3.append(c1589f);
                        sb3.append('\n');
                    }
                    c1593j.f3963b.flatMap(new C0077d(2)).ifPresent(new C1590g(sb3, 3));
                    c1593j.f3964c.ifPresent(new C1590g(sb3, 4));
                    c1593j.f3965d.ifPresent(new C1590g(sb3, 5));
                    sb2.append(sb3.toString());
                }
                String string = sb2.toString();
                android.net.VpnService.Builder builder = new android.net.VpnService.Builder(vpnService);
                builder.setSession(C3105c.m4940i());
                Iterator it2 = c1591h.f3956d.iterator();
                while (it2.hasNext()) {
                    builder.addDisallowedApplication((String) it2.next());
                }
                Iterator it3 = c1591h.f3957e.iterator();
                while (it3.hasNext()) {
                    builder.addAllowedApplication((String) it3.next());
                }
                for (C1589f c1589f2 : c1591h.f3953a) {
                    builder.addAddress(c1589f2.f3949a, c1589f2.f3950b);
                }
                Iterator it4 = c1591h.f3954b.iterator();
                while (it4.hasNext()) {
                    builder.addDnsServer(((InetAddress) it4.next()).getHostAddress());
                }
                Iterator it5 = c1591h.f3955c.iterator();
                while (it5.hasNext()) {
                    builder.addSearchDomain((String) it5.next());
                }
                Iterator it6 = list.iterator();
                boolean z9 = false;
                while (it6.hasNext()) {
                    for (C1589f c1589f3 : ((C1593j) it6.next()).f3962a) {
                        int i13 = c1589f3.f3950b;
                        if (i13 == 0) {
                            z9 = true;
                        }
                        builder.addRoute(c1589f3.f3949a, i13);
                    }
                }
                if (!z9 || list.size() != 1) {
                    builder.allowFamily(OsConstants.AF_INET);
                    builder.allowFamily(OsConstants.AF_INET6);
                }
                builder.setMtu(((Integer) c1591h.f3960h.orElse(1280)).intValue());
                if (Build.VERSION.SDK_INT >= 29) {
                    builder.setMetered(false);
                }
                vpnService.setUnderlyingNetworks(null);
                builder.setBlocking(true);
                ParcelFileDescriptor parcelFileDescriptorEstablish = builder.establish();
                try {
                    if (parcelFileDescriptorEstablish == null) {
                        throw new C1310a(new Object[0]);
                    }
                    Log.d("WireGuard/GoBackend", "Go backend " + wgVersion());
                    this.f2836d = wgTurnOn(C3105c.m4940i(), parcelFileDescriptorEstablish.detachFd(), string);
                    parcelFileDescriptorEstablish.close();
                    int i14 = this.f2836d;
                    if (i14 < 0) {
                        throw new C1310a(Integer.valueOf(this.f2836d));
                    }
                    this.f2835c = c3105c;
                    this.f2834b = c1586c;
                    vpnService.protect(wgGetSocketV4(i14));
                    vpnService.protect(wgGetSocketV6(this.f2836d));
                } catch (Throwable th) {
                    if (parcelFileDescriptorEstablish == null) {
                        throw th;
                    }
                    try {
                        parcelFileDescriptorEstablish.close();
                        throw th;
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                        throw th;
                    }
                }
            } catch (TimeoutException e) {
                C1310a c1310a = new C1310a(new Object[0]);
                c1310a.initCause(e);
                throw c1310a;
            }
        }
        c3105c.m4943l(i10);
    }
}
