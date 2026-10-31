package e0;

import android.view.View;
import com.example.navistart.ModernMainActivity;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class l1 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1883b;
    public final /* synthetic */ ModernMainActivity c;
    public final /* synthetic */ View d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ l1(ModernMainActivity modernMainActivity, View view, int i9) {
        this.f1883b = i9;
        this.c = modernMainActivity;
        this.d = view;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        int i9 = this.f1883b;
        View view = this.d;
        ModernMainActivity modernMainActivity = this.c;
        switch (i9) {
            case 0:
                String str = ModernMainActivity.B1;
                modernMainActivity.T(view);
                break;
            case 1:
                String str2 = ModernMainActivity.B1;
                modernMainActivity.R(view.getWidth(), view.getHeight());
                modernMainActivity.T(view);
                break;
            default:
                String str3 = ModernMainActivity.B1;
                modernMainActivity.R(view.getWidth(), view.getHeight());
                break;
        }
    }
}
