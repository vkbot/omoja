package y0;

import android.content.Context;
import android.content.Intent;
import android.os.Build$VERSION;
import com.example.navistart.Transport.TransportService;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CopyOnWriteArrayList f6090a = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final CopyOnWriteArrayList f6091b = new CopyOnWriteArrayList();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static h a(Context context, String str) {
        Context applicationContext = context.getApplicationContext();
        StringBuilder sbU = ai.onnxruntime.a.u(str);
        sbU.append(e0.m.h(new byte[]{113}, new byte[]{75, -4, -124, 87, -103, -16, 69, -67}));
        sbU.append(UUID.randomUUID());
        String string = sbU.toString();
        d(applicationContext);
        return new h(applicationContext, string);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void b(long j9, String str, String str2) {
        for (f fVar : f6090a) {
            if (fVar.f6088a.equals(str)) {
                try {
                    fVar.f6089b.a(str2);
                } catch (RuntimeException unused) {
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void c(Context context, String str, String str2, String str3) {
        String str4 = TransportService.f852p;
        context.startService(new Intent(context, (Class<?>) TransportService.class).setAction(TransportService.r).putExtra(TransportService.f854s, str).putExtra(TransportService.t, str2).putExtra(TransportService.f855u, str3));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void d(Context context) {
        Context applicationContext = context.getApplicationContext();
        String str = TransportService.f852p;
        Intent action = new Intent(applicationContext, (Class<?>) TransportService.class).setAction(TransportService.f853q);
        if (Build$VERSION.SDK_INT >= 26) {
            c5.h.r(applicationContext, action);
        } else {
            applicationContext.startService(action);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static d e(String str, e eVar) {
        f fVar = new f(str, eVar);
        f6090a.add(fVar);
        return new d(0, fVar);
    }
}
