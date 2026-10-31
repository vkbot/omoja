package g3;

import android.view.View;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsAnimationCompat$BoundsCompat;
import androidx.core.view.WindowInsetsAnimationCompat$Callback;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsCompat$Type;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f extends WindowInsetsAnimationCompat$Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f2365a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f2366b;
    public int c;
    public final int[] d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public f(View view) {
        super(0);
        this.d = new int[2];
        this.f2365a = view;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsAnimationCompat$Callback
    public final void onEnd(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        this.f2365a.setTranslationY(0.0f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsAnimationCompat$Callback
    public final void onPrepare(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        View view = this.f2365a;
        int[] iArr = this.d;
        view.getLocationOnScreen(iArr);
        this.f2366b = iArr[1];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsAnimationCompat$Callback
    public final WindowInsetsCompat onProgress(WindowInsetsCompat windowInsetsCompat, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            WindowInsetsAnimationCompat windowInsetsAnimationCompat = (WindowInsetsAnimationCompat) it.next();
            if ((windowInsetsAnimationCompat.getTypeMask() & WindowInsetsCompat$Type.ime()) != 0) {
                this.f2365a.setTranslationY(b3.a.c(windowInsetsAnimationCompat.getInterpolatedFraction(), this.c, 0));
                break;
            }
        }
        return windowInsetsCompat;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.WindowInsetsAnimationCompat$Callback
    public final WindowInsetsAnimationCompat$BoundsCompat onStart(WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsetsAnimationCompat$BoundsCompat windowInsetsAnimationCompat$BoundsCompat) {
        View view = this.f2365a;
        int[] iArr = this.d;
        view.getLocationOnScreen(iArr);
        int i9 = this.f2366b - iArr[1];
        this.c = i9;
        view.setTranslationY(i9);
        return windowInsetsAnimationCompat$BoundsCompat;
    }
}
