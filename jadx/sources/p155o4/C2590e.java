package p155o4;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: renamed from: o4.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2590e extends BroadcastReceiver {

    /* JADX INFO: renamed from: b */
    public static final AtomicReference f7204b = new AtomicReference();

    /* JADX INFO: renamed from: a */
    public final Context f7205a;

    public C2590e(Context context) {
        this.f7205a = context;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        synchronized (C2591f.f7206j) {
            try {
                Iterator it = C2591f.f7207k.values().iterator();
                while (it.hasNext()) {
                    ((C2591f) it.next()).m4066d();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f7205a.unregisterReceiver(this);
    }
}
