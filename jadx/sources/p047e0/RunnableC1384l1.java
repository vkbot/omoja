package p047e0;

import android.view.View;
import com.example.navistart.ModernMainActivity;

/* JADX INFO: renamed from: e0.l1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1384l1 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3300b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ ModernMainActivity f3301c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ View f3302d;

    public /* synthetic */ RunnableC1384l1(ModernMainActivity modernMainActivity, View view, int i10) {
        this.f3300b = i10;
        this.f3301c = modernMainActivity;
        this.f3302d = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i10 = this.f3300b;
        View view = this.f3302d;
        ModernMainActivity modernMainActivity = this.f3301c;
        switch (i10) {
            case 0:
                String str = ModernMainActivity.f1436B1;
                modernMainActivity.m1464T(view);
                break;
            case 1:
                String str2 = ModernMainActivity.f1436B1;
                modernMainActivity.m1462R(view.getWidth(), view.getHeight());
                modernMainActivity.m1464T(view);
                break;
            default:
                String str3 = ModernMainActivity.f1436B1;
                modernMainActivity.m1462R(view.getWidth(), view.getHeight());
                break;
        }
    }
}
