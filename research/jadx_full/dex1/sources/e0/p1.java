package e0;

import android.view.View;
import android.view.View$OnLayoutChangeListener;
import com.example.navistart.ModernMainActivity;
import com.google.android.flexbox.FlexboxLayout;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class p1 implements View$OnLayoutChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ModernMainActivity f1922a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ FlexboxLayout f1923b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ p1(ModernMainActivity modernMainActivity, FlexboxLayout flexboxLayout) {
        this.f1922a = modernMainActivity;
        this.f1923b = flexboxLayout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnLayoutChangeListener
    public final void onLayoutChange(View view, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        String str = ModernMainActivity.B1;
        this.f1922a.Z(this.f1923b);
    }
}
