package m0;

import android.content.Context;
import android.content.Intent;
import android.os.Build$VERSION;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import com.example.navistart.boot;
import kotlin.io.encoding.Base64;
import o7.i4;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class p2 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ q2 f3562b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ boolean d;
    public final /* synthetic */ i4 e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Context f3563f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ p2(q2 q2Var, boolean z8, boolean z9, i4 i4Var, Context context) {
        this.f3562b = q2Var;
        this.c = z8;
        this.d = z9;
        this.e = i4Var;
        this.f3563f = context;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        TextView textView;
        q2 q2Var = this.f3562b;
        if (q2Var.f3573h == null || (textView = q2Var.f3571f) == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        i4 i4Var = this.e;
        int i9 = i4Var.c;
        String str = (String) i4Var.d;
        sb.append(q2Var.getString(i9 == 0 ? 2131952679 : 2131952680, Integer.valueOf(i4Var.f4283b), Integer.valueOf(i9)));
        sb.append(str == null ? "" : "\n".concat(str));
        textView.setText(sb.toString());
        if (this.c || !this.d || i9 != 0) {
            q2Var.f3576k = false;
            q2Var.v();
            return;
        }
        ProgressBar progressBar = q2Var.f3572g;
        if (progressBar != null) {
            progressBar.setProgress(100);
        }
        Context context = this.f3563f;
        Intent intent = new Intent(context, (Class<?>) boot.class);
        intent.putExtra(e0.m.h(new byte[]{56}, new byte[]{92, 119, -25, -90, 86, Base64.padSymbol, -12, -91}), -1);
        if (Build$VERSION.SDK_INT >= 26) {
            c5.h.r(context, intent);
        } else {
            context.startService(intent);
        }
        if (q2Var.getParentFragment() instanceof l0.a) {
            ((l0.a) q2Var.getParentFragment()).dismissAllowingStateLoss();
        }
        FragmentActivity activity = q2Var.getActivity();
        if (activity != null) {
            activity.finishAndRemoveTask();
        }
    }
}
