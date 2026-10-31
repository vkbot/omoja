package e0;

import android.view.View;
import android.view.WindowManager;
import com.example.navistart.AllWidgetServices;
import java.util.Iterator;
import java.util.Map$Entry;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1815b;
    public final /* synthetic */ AllWidgetServices c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ c(AllWidgetServices allWidgetServices, int i9) {
        this.f1815b = i9;
        this.c = allWidgetServices;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1815b) {
            case 0:
                AllWidgetServices allWidgetServices = this.c;
                Iterator it = allWidgetServices.e.entrySet().iterator();
                while (it.hasNext()) {
                    View view = (View) ((Map$Entry) it.next()).getValue();
                    if (view instanceof x0.c) {
                        WindowManager windowManager = (WindowManager) allWidgetServices.f635f.remove(view);
                        if (windowManager != null) {
                            a.a.v(windowManager, view);
                        }
                        it.remove();
                    }
                }
                allWidgetServices.a();
                break;
            case 1:
                AllWidgetServices allWidgetServices2 = this.c;
                AllWidgetServices allWidgetServices3 = AllWidgetServices.f631g;
                for (h hVar : h.values()) {
                    String strConcat = m.h(new byte[]{112, -35, 105, 125, 123, 75, 56, -96, 69, -30, 96, 88, 100, 70, 60, -96, 66, -18}, new byte[]{49, -79, 5, 42, 18, 47, 95, -59}).concat(hVar.f1854b);
                    if (hVar == h.f1851h) {
                        allWidgetServices2.e(hVar, AllWidgetServices.f632h);
                    } else {
                        allWidgetServices2.b((View) allWidgetServices2.e.get(strConcat), strConcat);
                    }
                }
                for (Map$Entry map$Entry : allWidgetServices2.e.entrySet()) {
                    if (map$Entry.getValue() instanceof x0.c) {
                        allWidgetServices2.b((View) map$Entry.getValue(), (String) map$Entry.getKey());
                    }
                }
                break;
            default:
                View view2 = (View) this.c.e.get(m.h(new byte[]{56, -35, -19, 56, 71, 24, 97, 46, 13, -30, -28, 29, 88, 21, 101, 46, 10, -18, -57, 26, 75, 16, 84, 46, 20, -48, -24, 1, 71, 18, 97, 29, 16, -44, -10}, new byte[]{121, -79, -127, 111, 46, 124, 6, 75}));
                if (view2 instanceof t1.e) {
                    ((t1.e) view2).b();
                }
                break;
        }
    }
}
