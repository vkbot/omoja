package p155o4;

import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;
import p030c5.C0989d;

/* JADX INFO: renamed from: o4.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2589d {

    /* JADX INFO: renamed from: a */
    public static final AtomicReference f7203a = new AtomicReference();

    /* JADX INFO: renamed from: a */
    public static void m4060a(boolean z9) {
        synchronized (C2591f.f7206j) {
            try {
                ArrayList arrayList = new ArrayList(C2591f.f7207k.values());
                int size = arrayList.size();
                int i10 = 0;
                while (i10 < size) {
                    Object obj = arrayList.get(i10);
                    i10++;
                    C2591f c2591f = (C2591f) obj;
                    if (c2591f.f7212e.get()) {
                        Log.d("FirebaseApp", "Notifying background state change listeners.");
                        Iterator it = c2591f.f7216i.iterator();
                        while (it.hasNext()) {
                            C2591f c2591f2 = ((C2588c) it.next()).f7202a;
                            if (!z9) {
                                ((C0989d) c2591f2.f7215h.get()).m1132b();
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
