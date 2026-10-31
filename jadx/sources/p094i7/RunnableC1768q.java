package p094i7;

import android.widget.TextView;
import com.woha.atir.RadarActivity;

/* JADX INFO: renamed from: i7.q */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1768q implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f4634b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ RadarActivity f4635c;

    public /* synthetic */ RunnableC1768q(RadarActivity radarActivity, int i10) {
        this.f4634b = i10;
        this.f4635c = radarActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4634b) {
            case 0:
                RadarActivity radarActivity = this.f4635c;
                TextView textView = radarActivity.f2858c;
                if (textView != null) {
                    textView.setVisibility(8);
                    radarActivity.f2858c.setText("");
                }
                break;
            default:
                this.f4635c.f2861f = 0;
                break;
        }
    }
}
