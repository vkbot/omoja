package p245y0;

import ai.onnxruntime.AbstractC0074a;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import com.example.navistart.Transport.TransportService;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;
import p047e0.AbstractC1387m;

/* JADX INFO: renamed from: y0.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3629g {

    /* JADX INFO: renamed from: a */
    public static final CopyOnWriteArrayList f10774a = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: b */
    public static final CopyOnWriteArrayList f10775b = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: a */
    public static C3630h m5801a(Context context, String str) {
        Context applicationContext = context.getApplicationContext();
        StringBuilder sbM170u = AbstractC0074a.m170u(str);
        sbM170u.append(AbstractC1387m.m2421h(new byte[]{113}, new byte[]{75, -4, -124, 87, -103, -16, 69, -67}));
        sbM170u.append(UUID.randomUUID());
        String string = sbM170u.toString();
        m5804d(applicationContext);
        return new C3630h(applicationContext, string);
    }

    /* JADX INFO: renamed from: b */
    public static void m5802b(long j10, String str, String str2) {
        for (C3628f c3628f : f10774a) {
            if (c3628f.f10772a.equals(str)) {
                try {
                    c3628f.f10773b.mo2385a(str2);
                } catch (RuntimeException unused) {
                }
            }
        }
    }

    /* JADX INFO: renamed from: c */
    public static void m5803c(Context context, String str, String str2, String str3) {
        String str4 = TransportService.f1653p;
        context.startService(new Intent(context, (Class<?>) TransportService.class).setAction(TransportService.f1655r).putExtra(TransportService.f1656s, str).putExtra(TransportService.f1657t, str2).putExtra(TransportService.f1658u, str3));
    }

    /* JADX INFO: renamed from: d */
    public static void m5804d(Context context) {
        Context applicationContext = context.getApplicationContext();
        String str = TransportService.f1653p;
        Intent action = new Intent(applicationContext, (Class<?>) TransportService.class).setAction(TransportService.f1654q);
        if (Build.VERSION.SDK_INT >= 26) {
            applicationContext.startForegroundService(action);
        } else {
            applicationContext.startService(action);
        }
    }

    /* JADX INFO: renamed from: e */
    public static C3626d m5805e(String str, InterfaceC3627e interfaceC3627e) {
        C3628f c3628f = new C3628f(str, interfaceC3627e);
        f10774a.add(c3628f);
        return new C3626d(0, c3628f);
    }
}
