package i7;

import android.widget.TextView;
import com.woha.atir.RadarActivity;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class q implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2709b;
    public final /* synthetic */ RadarActivity c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ q(RadarActivity radarActivity, int i9) {
        this.f2709b = i9;
        this.c = radarActivity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2709b) {
            case 0:
                RadarActivity radarActivity = this.c;
                TextView textView = radarActivity.c;
                if (textView != null) {
                    textView.setVisibility(8);
                    radarActivity.c.setText("");
                }
                break;
            default:
                this.c.f1612f = 0;
                break;
        }
    }
}
