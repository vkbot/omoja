package p047e0;

import android.view.View;
import com.example.navistart.ActivityC1081W;

/* JADX INFO: renamed from: e0.m3 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC1391m3 implements View.OnClickListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3331b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ ActivityC1081W f3332c;

    public /* synthetic */ ViewOnClickListenerC1391m3(ActivityC1081W activityC1081W, int i10) {
        this.f3331b = i10;
        this.f3332c = activityC1081W;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i10 = this.f3331b;
        ActivityC1081W activityC1081W = this.f3332c;
        switch (i10) {
            case 0:
                int i11 = ActivityC1081W.f1706c;
                activityC1081W.finish();
                break;
            default:
                int i12 = ActivityC1081W.f1706c;
                activityC1081W.finish();
                break;
        }
    }
}
