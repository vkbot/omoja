package c3;

import android.R$attr;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import com.google.android.material.appbar.AppBarLayout;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f489a = {R$attr.stateListAnimator};

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void a(AppBarLayout appBarLayout, float f8) {
        int integer = appBarLayout.getResources().getInteger(2131361794);
        StateListAnimator stateListAnimator = new StateListAnimator();
        long j9 = integer;
        stateListAnimator.addState(new int[]{R$attr.state_enabled, 2130904330, -2130904331}, ObjectAnimator.ofFloat(appBarLayout, "elevation", 0.0f).setDuration(j9));
        stateListAnimator.addState(new int[]{R$attr.state_enabled}, ObjectAnimator.ofFloat(appBarLayout, "elevation", f8).setDuration(j9));
        stateListAnimator.addState(new int[0], ObjectAnimator.ofFloat(appBarLayout, "elevation", 0.0f).setDuration(0L));
        appBarLayout.setStateListAnimator(stateListAnimator);
    }
}
