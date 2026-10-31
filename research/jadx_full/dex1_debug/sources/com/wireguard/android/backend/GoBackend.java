package com.wireguard.android.backend;

import ai.onnxruntime.d;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager$NameNotFoundException;
import android.net.VpnService;
import android.net.VpnService$Builder;
import android.os.Build$VERSION;
import android.os.ParcelFileDescriptor;
import android.os.SystemClock;
import android.support.v4.media.h;
import android.system.OsConstants;
import android.util.Log;
import androidx.annotation.Nullable;
import com.bumptech.glide.f;
import e7.a;
import f7.c;
import f7.e;
import f7.g;
import f7.j;
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
import n0.b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class GoBackend {
    public static h e = new h(5);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f1598a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public c f1599b;
    public r5.c c;
    public int d = -1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:18:0x003b A[PHI: r0 r1
  0x003b: PHI (r0v6 'e' java.lang.Throwable) = (r0v3 'e' java.lang.Throwable), (r0v2 'e' java.lang.Throwable) binds: [B:20:0x0044, B:17:0x0039] A[DONT_GENERATE, DONT_INLINE]
  0x003b: PHI (r1v4 java.io.File) = (r1v2 java.io.File), (r1v5 java.io.File) binds: [B:20:0x0044, B:17:0x0039] A[DONT_GENERATE, DONT_INLINE]] */
    public GoBackend(Context context) {
        try {
            System.loadLibrary("wg-go");
        } catch (UnsatisfiedLinkError e6) {
            e = e6;
            Log.d("WireGuard/SharedLibraryLoader", "Failed to load library normally, so attempting to extract from apk", e);
            File fileCreateTempFile = null;
            try {
                try {
                    fileCreateTempFile = File.createTempFile("lib", ".so", context.getCodeCacheDir());
                    if (!a.a(context, fileCreateTempFile)) {
                        if (fileCreateTempFile != null) {
                            fileCreateTempFile.delete();
                        }
                        if (e instanceof RuntimeException) {
                            throw ((RuntimeException) e);
                        }
                        b.w(e);
                        throw null;
                    }
                    System.load(fileCreateTempFile.getAbsolutePath());
                    fileCreateTempFile.delete();
                } catch (Exception e9) {
                    e = e9;
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
        this.f1598a = context;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void a(int i9) {
        wgTurnOff(i9);
    }

    @Nullable
    private static native String wgGetConfig(int i9);

    private static native int wgGetSocketV4(int i9);

    private static native int wgGetSocketV6(int i9);

    private static native void wgTurnOff(int i9);

    private static native int wgTurnOn(String str, int i9, String str2);

    private static native String wgVersion();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final f b(r5.c cVar) {
        int i9;
        String strWgGetConfig;
        f fVar = new f(1);
        if (cVar == this.c && (i9 = this.d) != -1 && (strWgGetConfig = wgGetConfig(i9)) != null) {
            String[] strArrSplit = strWgGetConfig.split("\\n");
            int length = strArrSplit.length;
            int i10 = 0;
            g7.b bVar = null;
            long j9 = 0;
            long j10 = 0;
            long j11 = 0;
            while (true) {
                HashMap map = fVar.f564a;
                if (i10 >= length) {
                    if (bVar == null) {
                        break;
                    }
                    map.put(bVar, new d7.c(j9, j10, j11));
                    SystemClock.elapsedRealtime();
                    break;
                }
                String str = strArrSplit[i10];
                if (str.startsWith("public_key=")) {
                    if (bVar != null) {
                        map.put(bVar, new d7.c(j9, j10, j11));
                        SystemClock.elapsedRealtime();
                    }
                    try {
                        char[] charArray = str.substring(11).toCharArray();
                        if (charArray.length != 64) {
                            throw new g7.c();
                        }
                        byte[] bArr = new byte[32];
                        int i11 = 0;
                        int i12 = 0;
                        for (int i13 = 32; i11 < i13; i13 = 32) {
                            int i14 = i11 * 2;
                            char c = charArray[i14];
                            int i15 = c ^ '0';
                            int i16 = i15 - 10;
                            int i17 = c & (-33);
                            int i18 = i17 - 55;
                            int i19 = (i17 - 65) ^ (i17 - 71);
                            int i20 = (((((i16 | i19) >>> 8) & 255) - 1) >>> 8) | i12;
                            int i21 = (((i16 >>> 8) & 255 & i15) | ((i19 >>> 8) & 255 & i18)) * 16;
                            char c9 = charArray[i14 + 1];
                            int i22 = c9 ^ '0';
                            int i23 = i22 - 10;
                            int i24 = c9 & (-33);
                            int i25 = i24 - 55;
                            int i26 = (i24 - 71) ^ (i24 - 65);
                            bArr[i11] = (byte) (i21 | ((i23 >>> 8) & 255 & i22) | ((i26 >>> 8) & 255 & i25));
                            i11++;
                            i12 = (((((i26 | i23) >>> 8) & 255) - 1) >>> 8) | i20;
                        }
                        if (i12 != 0) {
                            throw new g7.c();
                        }
                        bVar = new g7.b(bArr);
                        j9 = 0;
                        j10 = 0;
                    } catch (g7.c unused) {
                        bVar = null;
                    }
                } else {
                    if (str.startsWith("rx_bytes=")) {
                        if (bVar != null) {
                            try {
                                j9 = Long.parseLong(str.substring(9));
                            } catch (NumberFormatException unused2) {
                                j9 = 0;
                            }
                        }
                    } else if (str.startsWith("tx_bytes=")) {
                        if (bVar != null) {
                            try {
                                j10 = Long.parseLong(str.substring(9));
                            } catch (NumberFormatException unused3) {
                                j10 = 0;
                            }
                        }
                    } else if (str.startsWith("last_handshake_time_sec=")) {
                        if (bVar != null) {
                            try {
                                j11 += Long.parseLong(str.substring(24)) * 1000;
                            } catch (NumberFormatException unused4) {
                                j11 = 0;
                            }
                        }
                    } else if (str.startsWith("last_handshake_time_nsec=") && bVar != null) {
                        j11 += Long.parseLong(str.substring(25)) / 1000000;
                    }
                    i10++;
                }
                j11 = 0;
                i10++;
            }
        }
        return fVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c(int i9, c cVar, r5.c cVar2) throws Exception {
        r5.c cVar3 = this.c;
        int i10 = cVar3 == cVar2 ? 3 : 1;
        if (i9 == 2) {
            i9 = i10 == 3 ? 1 : 3;
        }
        if (i9 == i10 && cVar2 == cVar3 && cVar == this.f1599b) {
            return;
        }
        if (i9 != 3) {
            if (i9 == 1 && cVar2 == cVar3) {
                d(1, null, cVar2);
                return;
            }
            return;
        }
        c cVar4 = this.f1599b;
        if (cVar3 != null) {
            d(1, null, cVar3);
        }
        try {
            d(i9, cVar, cVar2);
        } catch (Exception e6) {
            if (cVar3 != null) {
                d(3, cVar4, cVar3);
            }
            throw e6;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(int i9, c cVar, r5.c cVar2) throws InterruptedException, PackageManager$NameNotFoundException, d7.a, IOException {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder("Bringing tunnel ");
        cVar2.getClass();
        sb.append(r5.c.i());
        sb.append(' ');
        if (i9 == 1) {
            str = "DOWN";
        } else if (i9 != 2) {
            str = i9 != 3 ? "null" : "UP";
        } else {
            str = "TOGGLE";
        }
        sb.append(str);
        Log.i("WireGuard/GoBackend", sb.toString());
        if (i9 != 3) {
            int i10 = this.d;
            if (i10 == -1) {
                Log.w("WireGuard/GoBackend", "Tunnel already down");
                return;
            }
            this.c = null;
            this.d = -1;
            this.f1599b = null;
            wgTurnOff(i10);
            try {
                ((GoBackend$VpnService) ((FutureTask) e.d).get(0L, TimeUnit.NANOSECONDS)).stopSelf();
            } catch (TimeoutException unused) {
            }
        } else {
            if (cVar == null) {
                throw new d7.a(new Object[0]);
            }
            List<j> list = cVar.f2278b;
            f7.h hVar = cVar.f2277a;
            Context context = this.f1598a;
            if (VpnService.prepare(context) != null) {
                throw new d7.a(new Object[0]);
            }
            if (((LinkedBlockingQueue) e.c).isEmpty()) {
                Log.d("WireGuard/GoBackend", "Requesting to start VpnService");
                context.startService(new Intent(context, (Class<?>) GoBackend$VpnService.class));
            }
            try {
                GoBackend$VpnService goBackend$VpnService = (GoBackend$VpnService) ((FutureTask) e.d).get(2L, TimeUnit.SECONDS);
                goBackend$VpnService.f1600b = this;
                if (this.d != -1) {
                    Log.w("WireGuard/GoBackend", "Tunnel already up");
                    return;
                }
                loop0: for (int i11 = 0; i11 < 10; i11++) {
                    Iterator it = list.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break loop0;
                        }
                        e eVar = (e) ((j) it.next()).f2296b.orElse(null);
                        if (eVar != null) {
                            str2 = eVar.f2283a;
                            if (eVar.a().orElse(null) == null) {
                                break;
                            }
                        }
                    }
                    if (i11 >= 9) {
                        throw new d7.a(str2);
                    }
                    Log.w("WireGuard/GoBackend", "DNS host \"" + str2 + "\" failed to resolve; trying again");
                    Thread.sleep(1000L);
                }
                StringBuilder sb2 = new StringBuilder();
                hVar.getClass();
                StringBuilder sbU = ai.onnxruntime.a.u("private_key=");
                sbU.append(((g7.b) hVar.f2291f.c).e());
                sbU.append('\n');
                hVar.f2292g.ifPresent(new g(sbU, 1));
                sb2.append(sbU.toString());
                sb2.append("replace_peers=true\n");
                for (j jVar : list) {
                    jVar.getClass();
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("public_key=");
                    sb3.append(jVar.e.e());
                    sb3.append('\n');
                    for (f7.f fVar : jVar.f2295a) {
                        sb3.append("allowed_ip=");
                        sb3.append(fVar);
                        sb3.append('\n');
                    }
                    jVar.f2296b.flatMap(new d(2)).ifPresent(new g(sb3, 3));
                    jVar.c.ifPresent(new g(sb3, 4));
                    jVar.d.ifPresent(new g(sb3, 5));
                    sb2.append(sb3.toString());
                }
                String string = sb2.toString();
                VpnService$Builder vpnService$Builder = new VpnService$Builder(goBackend$VpnService);
                vpnService$Builder.setSession(r5.c.i());
                Iterator it2 = hVar.d.iterator();
                while (it2.hasNext()) {
                    vpnService$Builder.addDisallowedApplication((String) it2.next());
                }
                Iterator it3 = hVar.e.iterator();
                while (it3.hasNext()) {
                    vpnService$Builder.addAllowedApplication((String) it3.next());
                }
                for (f7.f fVar2 : hVar.f2289a) {
                    vpnService$Builder.addAddress(fVar2.f2286a, fVar2.f2287b);
                }
                Iterator it4 = hVar.f2290b.iterator();
                while (it4.hasNext()) {
                    vpnService$Builder.addDnsServer(((InetAddress) it4.next()).getHostAddress());
                }
                Iterator it5 = hVar.c.iterator();
                while (it5.hasNext()) {
                    vpnService$Builder.addSearchDomain((String) it5.next());
                }
                Iterator it6 = list.iterator();
                boolean z8 = false;
                while (it6.hasNext()) {
                    for (f7.f fVar3 : ((j) it6.next()).f2295a) {
                        int i12 = fVar3.f2287b;
                        if (i12 == 0) {
                            z8 = true;
                        }
                        vpnService$Builder.addRoute(fVar3.f2286a, i12);
                    }
                }
                if (!z8 || list.size() != 1) {
                    vpnService$Builder.allowFamily(OsConstants.AF_INET);
                    vpnService$Builder.allowFamily(OsConstants.AF_INET6);
                }
                vpnService$Builder.setMtu(((Integer) hVar.f2293h.orElse(1280)).intValue());
                if (Build$VERSION.SDK_INT >= 29) {
                    androidx.transition.d.k(vpnService$Builder);
                }
                goBackend$VpnService.setUnderlyingNetworks(null);
                vpnService$Builder.setBlocking(true);
                ParcelFileDescriptor parcelFileDescriptorEstablish = vpnService$Builder.establish();
                try {
                    if (parcelFileDescriptorEstablish == null) {
                        throw new d7.a(new Object[0]);
                    }
                    Log.d("WireGuard/GoBackend", "Go backend " + wgVersion());
                    this.d = wgTurnOn(r5.c.i(), parcelFileDescriptorEstablish.detachFd(), string);
                    parcelFileDescriptorEstablish.close();
                    int i13 = this.d;
                    if (i13 < 0) {
                        throw new d7.a(Integer.valueOf(this.d));
                    }
                    this.c = cVar2;
                    this.f1599b = cVar;
                    goBackend$VpnService.protect(wgGetSocketV4(i13));
                    goBackend$VpnService.protect(wgGetSocketV6(this.d));
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
            } catch (TimeoutException e6) {
                d7.a aVar = new d7.a(new Object[0]);
                aVar.initCause(e6);
                throw aVar;
            }
        }
        cVar2.l(i9);
    }
}
