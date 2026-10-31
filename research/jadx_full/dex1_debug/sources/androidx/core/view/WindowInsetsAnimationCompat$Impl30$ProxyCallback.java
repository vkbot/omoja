package androidx.core.view;

import android.view.WindowInsets;
import android.view.WindowInsetsAnimation;
import android.view.WindowInsetsAnimation$Bounds;
import android.view.WindowInsetsAnimation$Callback;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_BIAS)
public class WindowInsetsAnimationCompat$Impl30$ProxyCallback extends WindowInsetsAnimation$Callback {
    private final HashMap<WindowInsetsAnimation, WindowInsetsAnimationCompat> mAnimations;
    private final WindowInsetsAnimationCompat$Callback mCompat;
    private List<WindowInsetsAnimationCompat> mRORunningAnimations;
    private ArrayList<WindowInsetsAnimationCompat> mTmpRunningAnimations;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public WindowInsetsAnimationCompat$Impl30$ProxyCallback(@NonNull WindowInsetsAnimationCompat$Callback windowInsetsAnimationCompat$Callback) {
        super(windowInsetsAnimationCompat$Callback.getDispatchMode());
        this.mAnimations = new HashMap<>();
        this.mCompat = windowInsetsAnimationCompat$Callback;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    private WindowInsetsAnimationCompat getWindowInsetsAnimationCompat(@NonNull WindowInsetsAnimation windowInsetsAnimation) {
        WindowInsetsAnimationCompat windowInsetsAnimationCompat = this.mAnimations.get(windowInsetsAnimation);
        if (windowInsetsAnimationCompat != null) {
            return windowInsetsAnimationCompat;
        }
        WindowInsetsAnimationCompat windowInsetsAnimationCompat2 = WindowInsetsAnimationCompat.toWindowInsetsAnimationCompat(windowInsetsAnimation);
        this.mAnimations.put(windowInsetsAnimation, windowInsetsAnimationCompat2);
        return windowInsetsAnimationCompat2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onEnd(@NonNull WindowInsetsAnimation windowInsetsAnimation) {
        this.mCompat.onEnd(getWindowInsetsAnimationCompat(windowInsetsAnimation));
        this.mAnimations.remove(windowInsetsAnimation);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onPrepare(@NonNull WindowInsetsAnimation windowInsetsAnimation) {
        this.mCompat.onPrepare(getWindowInsetsAnimationCompat(windowInsetsAnimation));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public WindowInsets onProgress(@NonNull WindowInsets windowInsets, @NonNull List<WindowInsetsAnimation> list) {
        ArrayList<WindowInsetsAnimationCompat> arrayList = this.mTmpRunningAnimations;
        if (arrayList == null) {
            ArrayList<WindowInsetsAnimationCompat> arrayList2 = new ArrayList<>(list.size());
            this.mTmpRunningAnimations = arrayList2;
            this.mRORunningAnimations = Collections.unmodifiableList(arrayList2);
        } else {
            arrayList.clear();
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            WindowInsetsAnimation windowInsetsAnimationK = androidx.core.content.pm.b.k(list.get(size));
            WindowInsetsAnimationCompat windowInsetsAnimationCompat = getWindowInsetsAnimationCompat(windowInsetsAnimationK);
            windowInsetsAnimationCompat.setFraction(androidx.core.content.pm.b.a(windowInsetsAnimationK));
            this.mTmpRunningAnimations.add(windowInsetsAnimationCompat);
        }
        return this.mCompat.onProgress(WindowInsetsCompat.toWindowInsetsCompat(windowInsets), this.mRORunningAnimations).toWindowInsets();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public WindowInsetsAnimation$Bounds onStart(@NonNull WindowInsetsAnimation windowInsetsAnimation, @NonNull WindowInsetsAnimation$Bounds windowInsetsAnimation$Bounds) {
        return this.mCompat.onStart(getWindowInsetsAnimationCompat(windowInsetsAnimation), WindowInsetsAnimationCompat$BoundsCompat.toBoundsCompat(windowInsetsAnimation$Bounds)).toBounds();
    }
}
