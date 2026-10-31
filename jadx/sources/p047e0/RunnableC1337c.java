package p047e0;

import android.view.View;
import android.view.WindowManager;
import com.example.navistart.AllWidgetServices;
import java.util.Iterator;
import java.util.Map;
import p000a.AbstractC0000a;
import p198t1.C3227e;
import p235x0.C3549c;

/* JADX INFO: renamed from: e0.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1337c implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3190b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ AllWidgetServices f3191c;

    public /* synthetic */ RunnableC1337c(AllWidgetServices allWidgetServices, int i10) {
        this.f3190b = i10;
        this.f3191c = allWidgetServices;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3190b) {
            case 0:
                AllWidgetServices allWidgetServices = this.f3191c;
                Iterator it = allWidgetServices.f1214e.entrySet().iterator();
                while (it.hasNext()) {
                    View view = (View) ((Map.Entry) it.next()).getValue();
                    if (view instanceof C3549c) {
                        WindowManager windowManager = (WindowManager) allWidgetServices.f1215f.remove(view);
                        if (windowManager != null) {
                            AbstractC0000a.m21v(windowManager, view);
                        }
                        it.remove();
                    }
                }
                allWidgetServices.m1385a();
                break;
            case 1:
                AllWidgetServices allWidgetServices2 = this.f3191c;
                AllWidgetServices allWidgetServices3 = AllWidgetServices.f1208g;
                for (EnumC1362h enumC1362h : EnumC1362h.values()) {
                    String strConcat = AbstractC1387m.m2421h(new byte[]{112, -35, 105, 125, 123, 75, 56, -96, 69, -30, 96, 88, 100, 70, 60, -96, 66, -18}, new byte[]{49, -79, 5, 42, 18, 47, 95, -59}).concat(enumC1362h.f3256b);
                    if (enumC1362h == EnumC1362h.f3253h) {
                        allWidgetServices2.m1388e(enumC1362h, AllWidgetServices.f1209h);
                    } else {
                        allWidgetServices2.m1386b((View) allWidgetServices2.f1214e.get(strConcat), strConcat);
                    }
                }
                for (Map.Entry entry : allWidgetServices2.f1214e.entrySet()) {
                    if (entry.getValue() instanceof C3549c) {
                        allWidgetServices2.m1386b((View) entry.getValue(), (String) entry.getKey());
                    }
                }
                break;
            default:
                View view2 = (View) this.f3191c.f1214e.get(AbstractC1387m.m2421h(new byte[]{56, -35, -19, 56, 71, 24, 97, 46, 13, -30, -28, 29, 88, 21, 101, 46, 10, -18, -57, 26, 75, 16, 84, 46, 20, -48, -24, 1, 71, 18, 97, 29, 16, -44, -10}, new byte[]{121, -79, -127, 111, 46, 124, 6, 75}));
                if (view2 instanceof C3227e) {
                    ((C3227e) view2).m5162b();
                }
                break;
        }
    }
}
