package e0;

import android.view.View;
import android.view.View$OnClickListener;
import com.example.navistart.AutoVibVodActivity;
import com.example.navistart.mainview.HeatingButtonView;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class k implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AutoVibVodActivity f1873b;
    public final /* synthetic */ int c;
    public final /* synthetic */ HeatingButtonView d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ k(AutoVibVodActivity autoVibVodActivity, int i9, HeatingButtonView heatingButtonView) {
        this.f1873b = autoVibVodActivity;
        this.c = i9;
        this.d = heatingButtonView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        int i9 = AutoVibVodActivity.f653b;
        h0.b.a();
        h0.b.d().carsetvod(this.c);
        HeatingButtonView heatingButtonView = this.d;
        heatingButtonView.e = true;
        heatingButtonView.c(3);
        this.f1873b.finish();
    }
}
