package p070g3;

import android.view.View;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.Iterator;
import java.util.List;
import p018b3.AbstractC0884a;

/* JADX INFO: renamed from: g3.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1617f extends WindowInsetsAnimationCompat.Callback {

    /* JADX INFO: renamed from: a */
    public final View f4068a;

    /* JADX INFO: renamed from: b */
    public int f4069b;

    /* JADX INFO: renamed from: c */
    public int f4070c;

    /* JADX INFO: renamed from: d */
    public final int[] f4071d;

    public C1617f(View view) {
        super(0);
        this.f4071d = new int[2];
        this.f4068a = view;
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public final void onEnd(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        this.f4068a.setTranslationY(0.0f);
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public final void onPrepare(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        View view = this.f4068a;
        int[] iArr = this.f4071d;
        view.getLocationOnScreen(iArr);
        this.f4069b = iArr[1];
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public final WindowInsetsCompat onProgress(WindowInsetsCompat windowInsetsCompat, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            WindowInsetsAnimationCompat windowInsetsAnimationCompat = (WindowInsetsAnimationCompat) it.next();
            if ((windowInsetsAnimationCompat.getTypeMask() & WindowInsetsCompat.Type.ime()) != 0) {
                this.f4068a.setTranslationY(AbstractC0884a.m1017c(windowInsetsAnimationCompat.getInterpolatedFraction(), this.f4070c, 0));
                break;
            }
        }
        return windowInsetsCompat;
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public final WindowInsetsAnimationCompat.BoundsCompat onStart(WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsetsAnimationCompat.BoundsCompat boundsCompat) {
        View view = this.f4068a;
        int[] iArr = this.f4071d;
        view.getLocationOnScreen(iArr);
        int i10 = this.f4069b - iArr[1];
        this.f4070c = i10;
        view.setTranslationY(i10);
        return boundsCompat;
    }
}
