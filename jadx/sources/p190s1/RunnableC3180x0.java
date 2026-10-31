package p190s1;

import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.os.Process;
import android.os.StrictMode;
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
import com.example.navistart.cores.HUDMassageObj;
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
import p032c7.RunnableC1001e;
import p047e0.AbstractC1387m;
import p078h0.C1652b;
import p098j0.C1919e;
import p099j1.C1929i;
import p105j7.C1997b;
import p114k5.InterfaceC2049a;
import p114k5.InterfaceC2050b;
import p141n.C2455p;
import p198t1.C3223a;
import p198t1.RunnableC3234l;
import p200t4.C3252m;
import p200t4.C3253n;
import p211u4.ScheduledFutureC3295h;
import p211u4.ThreadFactoryC3288a;
import p225w0.EnumC3443b;
import p235x0.C3549c;
import p245y0.C3624b;
import p245y0.C3634l;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: s1.x0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC3180x0 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f9259b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f9260c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f9261d;

    public /* synthetic */ RunnableC3180x0(int i10, Object obj, Object obj2) {
        this.f9259b = i10;
        this.f9260c = obj;
        this.f9261d = obj2;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x025d  */
    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC2049a interfaceC2049a;
        boolean z9 = true;
        String strOptString = null;
        int i10 = 2;
        switch (this.f9259b) {
            case 0:
                WebLauncherActivity webLauncherActivity = (WebLauncherActivity) this.f9260c;
                C1919e c1919e = (C1919e) this.f9261d;
                String str = WebLauncherActivity.f1739l;
                try {
                    C1652b.m2734a();
                    C1652b.m2737f().m2994j(c1919e, null);
                    return;
                } catch (RuntimeException unused) {
                    webLauncherActivity.runOnUiThread(new RunnableC3176v0(webLauncherActivity, i10));
                    return;
                }
            case 1:
                WebLauncherActivity webLauncherActivity2 = (WebLauncherActivity) this.f9260c;
                String str2 = (String) this.f9261d;
                String str3 = WebLauncherActivity.f1739l;
                Context applicationContext = webLauncherActivity2.getApplicationContext();
                String str4 = C3166q0.f9151K;
                if (TextUtils.isEmpty(str2)) {
                    z9 = false;
                } else {
                    File file = new File(str2);
                    if (file.isFile()) {
                        long j10 = 0;
                        if (file.length() > 0) {
                            long j11 = 31457280;
                            if (file.length() > 31457280) {
                                z9 = false;
                            } else {
                                File file2 = new File(applicationContext.getCacheDir(), AbstractC1387m.m2421h(new byte[]{89, -109, -26, 117, 25, -116, -114, -55, 86, -121, -4, ByteCompanionObject.MAX_VALUE, 7, -116, -93, -6, 64, -109, -2, 112, 31, -120, -95, -64, 69, -36, -8, 108, 8, -57, -78, -48, 68, -122, -3, 113}, new byte[]{55, -14, -110, 28, 111, -23, -47, -91}));
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
                                                int i11 = bufferedInputStream.read(bArr);
                                                if (i11 != -1) {
                                                    long j12 = j11;
                                                    j10 += (long) i11;
                                                    if (j10 > j12) {
                                                        file2.delete();
                                                        fileOutputStream.close();
                                                        bufferedInputStream.close();
                                                    } else {
                                                        fileOutputStream.write(bArr, 0, i11);
                                                        j11 = j12;
                                                    }
                                                } else {
                                                    fileOutputStream.flush();
                                                    fileOutputStream.close();
                                                    bufferedInputStream.close();
                                                    BitmapFactory.Options options = new BitmapFactory.Options();
                                                    options.inJustDecodeBounds = true;
                                                    BitmapFactory.decodeFile(file2.getAbsolutePath(), options);
                                                    if (options.outWidth <= 0 || options.outHeight <= 0) {
                                                        file2.delete();
                                                    } else {
                                                        File file3 = new File(applicationContext.getFilesDir(), C3166q0.f9152L);
                                                        File file4 = new File(applicationContext.getFilesDir(), AbstractC1387m.m2421h(new byte[]{-56, 121, -77, 49, -89, 30, -126, 124, -57, 109, -87, 59, -71, 30, -81, 79, -47, 121, -85, 52, -95, 26, -83, 117, -44, 54, -83, 40, -74, 85, -83, 98, -61, 110, -82, 55, -92, 8}, new byte[]{-90, 24, -57, 88, -47, 123, -35, 16}));
                                                        if (file4.exists()) {
                                                            file4.delete();
                                                        }
                                                        boolean z10 = file3.exists() && file3.renameTo(file4);
                                                        if (file2.renameTo(file3)) {
                                                            if (file4.exists()) {
                                                                file4.delete();
                                                            }
                                                            file3.setLastModified(System.currentTimeMillis());
                                                            C1652b.m2745o().saveString(C3166q0.f9153M, C3166q0.f9154N);
                                                        } else {
                                                            if (z10) {
                                                                file4.renameTo(file3);
                                                            }
                                                            file2.delete();
                                                        }
                                                    }
                                                }
                                            }
                                            z9 = false;
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
                            z9 = false;
                        }
                    } else {
                        z9 = false;
                    }
                }
                webLauncherActivity2.runOnUiThread(new RunnableC1001e(webLauncherActivity2, z9, 9));
                return;
            case 2:
                ((C3223a) this.f9260c).f9429d.setText((String) this.f9261d);
                return;
            case 3:
                C3223a c3223a = (C3223a) this.f9260c;
                OverlayService overlayService = (OverlayService) this.f9261d;
                if (ContextCompat.checkSelfPermission(overlayService, AbstractC1387m.m2421h(new byte[]{38, 118, -91, -10, 89, 10, 21, 120, 55, 125, -77, -23, 95, 16, 2, 63, 40, 118, -17, -42, 115, 32, 62, 4, 3, 71, ByteCompanionObject.MIN_VALUE, -47, 114, 42, 62}, new byte[]{71, 24, -63, -124, 54, 99, 113, 86})) != 0) {
                    String[] strArr = {AbstractC1387m.m2421h(new byte[]{85, 85, 23, 48, 7, 107, -8, 27, 68, 94, 1, 47, 1, 113, -17, 92, 91, 85, 93, 16, 45, 65, -45, 103, 112, 100, 50, 23, 44, 75, -45}, new byte[]{52, 59, 115, 66, 104, 2, -100, 53})};
                    String str5 = PermActivity.f1507c;
                    Intent intent = new Intent(overlayService, (Class<?>) PermActivity.class);
                    intent.putExtra(PermActivity.f1508d, strArr);
                    AbstractC3656k.m5875u(overlayService, intent.addFlags(268435456), null);
                    return;
                }
                if (C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-122, 36, 41, 84, 42, 63, 31, 51, -125, 53, 52, 110, 20, 39, 28, 5, -90, 3}, new byte[]{-11, 84, 64, 11, 75, 84, 107, 90}), false)) {
                    C1652b.m2734a();
                    C1652b.m2747q().mo5404c();
                    OverlayService overlayService2 = c3223a.f9431f;
                    if (overlayService2 != null) {
                        overlayService2.m1514b();
                        return;
                    }
                    return;
                }
                return;
            case 4:
                C3223a c3223a2 = (C3223a) this.f9260c;
                EnumC3443b enumC3443b = (EnumC3443b) this.f9261d;
                FireballView fireballView = c3223a2.f9430e;
                int iOrdinal = enumC3443b.ordinal();
                if (iOrdinal == 0) {
                    fireballView.f1795d = -12303292;
                    fireballView.f1796e = -3355444;
                    return;
                } else if (iOrdinal == 1) {
                    fireballView.f1795d = -16711681;
                    fireballView.f1796e = -16776961;
                    return;
                } else {
                    if (iOrdinal != 2) {
                        return;
                    }
                    fireballView.f1795d = -23296;
                    fireballView.f1796e = SupportMenu.CATEGORY_MASK;
                    return;
                }
            case 5:
                C3253n c3253n = (C3253n) this.f9260c;
                InterfaceC2050b interfaceC2050b = (InterfaceC2050b) this.f9261d;
                if (c3253n.f9543b != C3253n.f9541d) {
                    C1929i.m3030l("provide() can be called only once.");
                    return;
                }
                synchronized (c3253n) {
                    interfaceC2049a = c3253n.f9542a;
                    c3253n.f9542a = null;
                    c3253n.f9543b = interfaceC2050b;
                    break;
                }
                interfaceC2049a.mo819e(interfaceC2050b);
                return;
            case 6:
                C3252m c3252m = (C3252m) this.f9260c;
                InterfaceC2050b interfaceC2050b2 = (InterfaceC2050b) this.f9261d;
                synchronized (c3252m) {
                    try {
                        if (c3252m.f9539b == null) {
                            c3252m.f9538a.add(interfaceC2050b2);
                        } else {
                            c3252m.f9539b.add(interfaceC2050b2.get());
                        }
                    } catch (Throwable th5) {
                        throw th5;
                    }
                }
                return;
            case 7:
                ThreadFactoryC3288a threadFactoryC3288a = (ThreadFactoryC3288a) this.f9260c;
                Runnable runnable = (Runnable) this.f9261d;
                Process.setThreadPriority(threadFactoryC3288a.f9623d);
                StrictMode.ThreadPolicy threadPolicy = threadFactoryC3288a.f9624e;
                if (threadPolicy != null) {
                    StrictMode.setThreadPolicy(threadPolicy);
                }
                runnable.run();
                return;
            case 8:
                Callable callable = (Callable) this.f9260c;
                ScheduledFutureC3295h scheduledFutureC3295h = (ScheduledFutureC3295h) ((C2455p) this.f9261d).f6648c;
                try {
                    scheduledFutureC3295h.set(callable.call());
                    return;
                } catch (Exception e) {
                    scheduledFutureC3295h.setException(e);
                    return;
                }
            case 9:
                PPSView.m1531j((PPSView) this.f9260c, (HUDMassageObj.HudSenderType) this.f9261d);
                return;
            case 10:
                ((InterC) this.f9260c).releaseBluetoothPhone((BTProxy) this.f9261d);
                return;
            case 11:
                RunnableC3234l runnableC3234l = (RunnableC3234l) this.f9260c;
                HashMap map = (HashMap) this.f9261d;
                C3549c c3549c = (C3549c) runnableC3234l.f9493c;
                if (c3549c.f10538f) {
                    if (c3549c.f10539g == 0 && SystemClock.uptimeMillis() - c3549c.f10540h >= 900) {
                        c3549c.f10541i.putAll(map);
                        c3549c.m5664j();
                    }
                    c3549c.f10534b.postDelayed(runnableC3234l, 1200L);
                    return;
                }
                return;
            case 12:
                ((WidgetBuilderFragment) this.f9260c).lambda$editor$11((EditText) this.f9261d);
                return;
            case 13:
                ((WidgetBuilderFragment) this.f9260c).lambda$onCreateView$0((ArrayList) this.f9261d);
                return;
            case 14:
                ((WidgetBuilderFragment) this.f9260c).lambda$onCreateView$1((Context) this.f9261d);
                return;
            case 15:
                C3624b c3624b = (C3624b) this.f9260c;
                String str6 = (String) this.f9261d;
                if (c3624b.f10767f || str6 == null) {
                    return;
                }
                try {
                    if (str6.length() > 8192) {
                        return;
                    }
                    strOptString = new JSONObject(str6).optString(AbstractC1387m.m2421h(new byte[]{30, -122, -99, 42, -14, -45, 86, 91, 8}, new byte[]{108, -29, -20, 95, -105, -96, 34, 18}), "");
                    if (strOptString.length() != 36) {
                        return;
                    }
                    c3624b.m5797b(c3624b.f10766e.m246k(System.currentTimeMillis(), str6));
                    return;
                } catch (Exception e6) {
                    Log.w(AbstractC1387m.m2421h(new byte[]{25, -80, 3, -100, -115, -122, -107, 51, 56, -65, 39, -112, -119, -126, -120, 44, 50, -93}, new byte[]{87, -47, 117, -11, -22, -25, -31, 90}), AbstractC1387m.m2421h(new byte[]{22, -10, 91, 78, -32, 59, 41, -52, 55, -7, 13, 85, -30, 43, 40, -64, 43, -29, 13, 65, -26, 51, 49, -64, 60}, new byte[]{88, -105, 45, 39, -121, 90, 93, -91}), e6);
                    if (strOptString == null || strOptString.length() != 36) {
                        return;
                    }
                    try {
                        c3624b.m5797b(C1997b.m3089b(strOptString, AbstractC1387m.m2421h(new byte[]{107, 99, 10, -64, 5, -70, -5, -113, 112, 104, 13, -44, 12, -96, -21}, new byte[]{2, 13, 124, -95, 105, -45, -97, -48})));
                        return;
                    } catch (Exception unused3) {
                        return;
                    }
                }
            default:
                TransportService transportService = (TransportService) this.f9260c;
                C3634l c3634l = (C3634l) this.f9261d;
                String str7 = TransportService.f1653p;
                transportService.m1597k(c3634l);
                return;
        }
    }
}
