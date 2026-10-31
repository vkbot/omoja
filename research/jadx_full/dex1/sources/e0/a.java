package e0;

import android.os.Handler;
import android.os.Looper;
import android.widget.Button;
import android.widget.ProgressBar;
import androidx.lifecycle.Observer;
import com.example.navistart.APInAct;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class a implements Observer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1797a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ APInAct f1798b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(APInAct aPInAct, int i9) {
        this.f1797a = i9;
        this.f1798b = aPInAct;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.lifecycle.Observer
    public final void onChanged(Object obj) {
        int i9 = this.f1797a;
        APInAct aPInAct = this.f1798b;
        switch (i9) {
            case 0:
                String str = APInAct.f628f;
                new Handler(Looper.getMainLooper()).post(new a1.a(14, aPInAct, (String) obj));
                break;
            default:
                String str2 = APInAct.f628f;
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                Button button = aPInAct.c;
                if (!zBooleanValue) {
                    if (button != null) {
                        button.setVisibility(8);
                    }
                    ProgressBar progressBar = aPInAct.d;
                    if (progressBar != null) {
                        progressBar.setVisibility(0);
                    }
                } else {
                    if (button != null) {
                        button.setVisibility(0);
                    }
                    ProgressBar progressBar2 = aPInAct.d;
                    if (progressBar2 != null) {
                        progressBar2.setVisibility(8);
                    }
                }
                break;
        }
    }
}
