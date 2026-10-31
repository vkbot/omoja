package i7;

import android.widget.TextView;
import com.woha.atir.RadarActivity;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class p implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2708b;
    public final /* synthetic */ RadarActivity c;
    public final /* synthetic */ String d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ p(RadarActivity radarActivity, String str, int i9) {
        this.f2708b = i9;
        this.c = radarActivity;
        this.d = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2708b) {
            case 0:
                TextView textView = this.c.e;
                if (textView != null) {
                    textView.setText(this.d);
                }
                break;
            case 1:
                TextView textView2 = this.c.d;
                if (textView2 != null) {
                    textView2.setText(this.d);
                }
                break;
            default:
                RadarActivity radarActivity = this.c;
                TextView textView3 = radarActivity.c;
                if (textView3 != null) {
                    textView3.setVisibility(0);
                    radarActivity.c.setText(this.d);
                }
                break;
        }
    }
}
