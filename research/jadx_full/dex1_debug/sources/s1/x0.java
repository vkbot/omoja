package s1;

import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory$Options;
import android.os.Process;
import android.os.StrictMode;
import android.os.StrictMode$ThreadPolicy;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.widget.EditText;
import androidx.core.content.ContextCompat;
import androidx.core.internal.view.SupportMenu;
import com.example.navistart.OverlayService;
import com.example.navistart.PermActivity;
import com.example.navistart.SpeedBoard.PPSView;
import com.example.navistart.SuperWidgets.WidgetBuilderFragment;
import com.example.navistart.Transport.TransportService;
import com.example.navistart.cores.BTProxy;
import com.example.navistart.cores.HUDMassageObj$HudSenderType;
import com.example.navistart.cores.InterC;
import com.example.navistart.home.WebLauncherActivity;
import com.example.navistart.mainview.FireballView;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.Callable;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class x0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5233b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ x0(int i9, Object obj, Object obj2) {
        this.f5233b = i9;
        this.c = obj;
        this.d = obj2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:102:0x025d  */
    @Override // java.lang.Runnable
    public final void run() {
        k5.a aVar;
        boolean z8 = true;
        String strOptString = null;
        switch (this.f5233b) {
            case 0:
                WebLauncherActivity webLauncherActivity = (WebLauncherActivity) this.c;
                j0.e eVar = (j0.e) this.d;
                String str = WebLauncherActivity.f910l;
                try {
                    h0.b.a();
                    h0.b.f().j(eVar, null);
                    return;
                } catch (RuntimeException unused) {
                    webLauncherActivity.runOnUiThread(new v0(webLauncherActivity, 2));
                    return;
                }
            case 1:
                WebLauncherActivity webLauncherActivity2 = (WebLauncherActivity) this.c;
                String str2 = (String) this.d;
                String str3 = WebLauncherActivity.f910l;
                Context applicationContext = webLauncherActivity2.getApplicationContext();
                String str4 = q0.K;
                if (TextUtils.isEmpty(str2)) {
                    z8 = false;
                } else {
                    File file = new File(str2);
                    if (file.isFile()) {
                        long j9 = 0;
                        if (file.length() > 0) {
                            long j10 = 31457280;
                            if (file.length() > 31457280) {
                                z8 = false;
                            } else {
                                File file2 = new File(applicationContext.getCacheDir(), e0.m.h(new byte[]{89, -109, -26, 117, 25, -116, -114, -55, 86, -121, -4, ByteCompanionObject.MAX_VALUE, 7, -116, -93, -6, 64, -109, -2, 112, 31, -120, -95, -64, 69, -36, -8, 108, 8, -57, -78, -48, 68, -122, -3, 113}, new byte[]{55, -14, -110, 28, 111, -23, -47, -91}));
                                if (file2.exists()) {
                                    file2.delete();
                                }
                                try {
                                    BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                                    try {
                                        FileOutputStream fileOutputStream = new FileOutputStream(file2, false);
                                        try {
                                            byte[] bArr = new byte[16384];
                                            while (true) {
                                                int i9 = bufferedInputStream.read(bArr);
                                                if (i9 != -1) {
                                                    long j11 = j10;
                                                    j9 += (long) i9;
                                                    if (j9 > j11) {
                                                        file2.delete();
                                                        fileOutputStream.close();
                                                        bufferedInputStream.close();
                                                    } else {
                                                        fileOutputStream.write(bArr, 0, i9);
                                                        j10 = j11;
                                                    }
                                                } else {
                                                    fileOutputStream.flush();
                                                    fileOutputStream.close();
                                                    bufferedInputStream.close();
                                                    BitmapFactory$Options bitmapFactory$Options = new BitmapFactory$Options();
                                                    bitmapFactory$Options.inJustDecodeBounds = true;
                                                    BitmapFactory.decodeFile(file2.getAbsolutePath(), bitmapFactory$Options);
                                                    if (bitmapFactory$Options.outWidth <= 0 || bitmapFactory$Options.outHeight <= 0) {
                                                        file2.delete();
                                                    } else {
                                                        File file3 = new File(applicationContext.getFilesDir(), q0.L);
                                                        File file4 = new File(applicationContext.getFilesDir(), e0.m.h(new byte[]{-56, 121, -77, 49, -89, 30, -126, 124, -57, 109, -87, 59, -71, 30, -81, 79, -47, 121, -85, 52, -95, 26, -83, 117, -44, 54, -83, 40, -74, 85, -83, 98, -61, 110, -82, 55, -92, 8}, new byte[]{-90, 24, -57, 88, -47, 123, -35, 16}));
                                                        if (file4.exists()) {
                                                            file4.delete();
                                                        }
                                                        boolean z9 = file3.exists() && file3.renameTo(file4);
                                                        if (file2.renameTo(file3)) {
                                                            if (file4.exists()) {
                                                                file4.delete();
                                                            }
                                                            file3.setLastModified(System.currentTimeMillis());
                                                            h0.b.o().saveString(q0.M, q0.N);
                                                        } else {
                                                            if (z9) {
                                                                file4.renameTo(file3);
                                                            }
                                                            file2.delete();
                                                        }
                                                    }
                                                }
                                            }
                                            z8 = false;
                                        } catch (Throwable th) {
                                            try {
                                                fileOutputStream.close();
                                                throw th;
                                            } catch (Throwable th2) {
                                                th.addSuppressed(th2);
                                                throw th;
                                            }
                                        }
                                    } catch (Throwable th3) {
                                        try {
                                            bufferedInputStream.close();
                                            throw th3;
                                        } catch (Throwable th4) {
                                            th3.addSuppressed(th4);
                                            throw th3;
                                        }
                                    }
                                } catch (Exception unused2) {
                                    file2.delete();
                                }
                            }
                        } else {
                            z8 = false;
                        }
                    } else {
                        z8 = false;
                    }
                }
                webLauncherActivity2.runOnUiThread(new c7.e(webLauncherActivity2, z8, 9));
                return;
            case 2:
                ((t1.a) this.c).d.setText((String) this.d);
                return;
            case 3:
                t1.a aVar2 = (t1.a) this.c;
                OverlayService overlayService = (OverlayService) this.d;
                if (ContextCompat.checkSelfPermission(overlayService, e0.m.h(new byte[]{38, 118, -91, -10, 89, 10, 21, 120, 55, 125, -77, -23, 95, 16, 2, 63, 40, 118, -17, -42, 115, 32, 62, 4, 3, 71, ByteCompanionObject.MIN_VALUE, -47, 114, 42, 62}, new byte[]{71, 24, -63, -124, 54, 99, 113, 86})) != 0) {
                    String[] strArr = {e0.m.h(new byte[]{85, 85, 23, 48, 7, 107, -8, 27, 68, 94, 1, 47, 1, 113, -17, 92, 91, 85, 93, 16, 45, 65, -45, 103, 112, 100, 50, 23, 44, 75, -45}, new byte[]{52, 59, 115, 66, 104, 2, -100, 53})};
                    String str5 = PermActivity.c;
                    Intent intent = new Intent(overlayService, (Class<?>) PermActivity.class);
                    intent.putExtra(PermActivity.d, strArr);
                    y5.k.u(overlayService, intent.addFlags(268435456), null);
                    return;
                }
                if (h0.b.o().loadBoolean(e0.m.h(new byte[]{-122, 36, 41, 84, 42, 63, 31, 51, -125, 53, 52, 110, 20, 39, 28, 5, -90, 3}, new byte[]{-11, 84, 64, 11, 75, 84, 107, 90}), false)) {
                    h0.b.a();
                    h0.b.q().c();
                    OverlayService overlayService2 = aVar2.f5335f;
                    if (overlayService2 != null) {
                        overlayService2.b();
                        return;
                    }
                    return;
                }
                return;
            case 4:
                t1.a aVar3 = (t1.a) this.c;
                w0.b bVar = (w0.b) this.d;
                FireballView fireballView = aVar3.e;
                int iOrdinal = bVar.ordinal();
                if (iOrdinal == 0) {
                    fireballView.d = -12303292;
                    fireballView.e = -3355444;
                    return;
                } else if (iOrdinal == 1) {
                    fireballView.d = -16711681;
                    fireballView.e = -16776961;
                    return;
                } else {
                    if (iOrdinal != 2) {
                        return;
                    }
                    fireballView.d = -23296;
                    fireballView.e = SupportMenu.CATEGORY_MASK;
                    return;
                }
            case 5:
                t4.n nVar = (t4.n) this.c;
                k5.b bVar2 = (k5.b) this.d;
                if (nVar.f5406b != t4.n.d) {
                    j1.i.l("provide() can be called only once.");
                    return;
                }
                synchronized (nVar) {
                    aVar = nVar.f5405a;
                    nVar.f5405a = null;
                    nVar.f5406b = bVar2;
                    break;
                }
                aVar.e(bVar2);
                return;
            case 6:
                t4.m mVar = (t4.m) this.c;
                k5.b bVar3 = (k5.b) this.d;
                synchronized (mVar) {
                    try {
                        if (mVar.f5404b == null) {
                            mVar.f5403a.add(bVar3);
                        } else {
                            mVar.f5404b.add(bVar3.get());
                        }
                    } catch (Throwable th5) {
                        throw th5;
                    }
                }
                return;
            case 7:
                u4.a aVar4 = (u4.a) this.c;
                Runnable runnable = (Runnable) this.d;
                Process.setThreadPriority(aVar4.d);
                StrictMode$ThreadPolicy strictMode$ThreadPolicy = aVar4.e;
                if (strictMode$ThreadPolicy != null) {
                    StrictMode.setThreadPolicy(strictMode$ThreadPolicy);
                }
                runnable.run();
                return;
            case 8:
                Callable callable = (Callable) this.c;
                u4.h hVar = (u4.h) ((n.p) this.d).c;
                try {
                    hVar.set(callable.call());
                    return;
                } catch (Exception e) {
                    hVar.setException(e);
                    return;
                }
            case 9:
                PPSView.j((PPSView) this.c, (HUDMassageObj$HudSenderType) this.d);
                return;
            case 10:
                ((InterC) this.c).releaseBluetoothPhone((BTProxy) this.d);
                return;
            case 11:
                t1.l lVar = (t1.l) this.c;
                HashMap map = (HashMap) this.d;
                x0.c cVar = (x0.c) lVar.c;
                if (cVar.f5965f) {
                    if (cVar.f5966g == 0 && SystemClock.uptimeMillis() - cVar.f5967h >= 900) {
                        cVar.f5968i.putAll(map);
                        cVar.j();
                    }
                    cVar.f5964b.postDelayed(lVar, 1200L);
                    return;
                }
                return;
            case 12:
                WidgetBuilderFragment.S((WidgetBuilderFragment) this.c, (EditText) this.d);
                return;
            case 13:
                WidgetBuilderFragment.J((WidgetBuilderFragment) this.c, (ArrayList) this.d);
                return;
            case 14:
                WidgetBuilderFragment.G((WidgetBuilderFragment) this.c, (Context) this.d);
                return;
            case 15:
                y0.b bVar4 = (y0.b) this.c;
                String str6 = (String) this.d;
                if (bVar4.f6084f || str6 == null) {
                    return;
                }
                try {
                    if (str6.length() > 8192) {
                        return;
                    }
                    strOptString = new JSONObject(str6).optString(e0.m.h(new byte[]{30, -122, -99, 42, -14, -45, 86, 91, 8}, new byte[]{108, -29, -20, 95, -105, -96, 34, 18}), "");
                    if (strOptString.length() != 36) {
                        return;
                    }
                    bVar4.b(bVar4.e.k(System.currentTimeMillis(), str6));
                    return;
                } catch (Exception e6) {
                    Log.w(e0.m.h(new byte[]{25, -80, 3, -100, -115, -122, -107, 51, 56, -65, 39, -112, -119, -126, -120, 44, 50, -93}, new byte[]{87, -47, 117, -11, -22, -25, -31, 90}), e0.m.h(new byte[]{22, -10, 91, 78, -32, 59, 41, -52, 55, -7, 13, 85, -30, 43, 40, -64, 43, -29, 13, 65, -26, 51, 49, -64, 60}, new byte[]{88, -105, 45, 39, -121, 90, 93, -91}), e6);
                    if (strOptString == null || strOptString.length() != 36) {
                        return;
                    }
                    try {
                        bVar4.b(j7.b.b(strOptString, e0.m.h(new byte[]{107, 99, 10, -64, 5, -70, -5, -113, 112, 104, 13, -44, 12, -96, -21}, new byte[]{2, 13, 124, -95, 105, -45, -97, -48})));
                        return;
                    } catch (Exception unused3) {
                        return;
                    }
                }
            default:
                TransportService transportService = (TransportService) this.c;
                y0.l lVar2 = (y0.l) this.d;
                String str7 = TransportService.f852p;
                transportService.k(lVar2);
                return;
        }
    }
}
