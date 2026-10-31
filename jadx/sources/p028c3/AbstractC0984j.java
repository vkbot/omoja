package p028c3;

import android.R;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import com.google.android.material.appbar.AppBarLayout;

/* JADX INFO: renamed from: c3.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0984j {

    /* JADX INFO: renamed from: a */
    public static final int[] f933a = {R.attr.stateListAnimator};

    /* JADX INFO: renamed from: a */
    public static void m1130a(AppBarLayout appBarLayout, float f8) {
        int integer = appBarLayout.getResources().getInteger(com.example.navistart.R.integer.app_bar_elevation_anim_duration);
        StateListAnimator stateListAnimator = new StateListAnimator();
        long j10 = integer;
        stateListAnimator.addState(new int[]{R.attr.state_enabled, com.example.navistart.R.attr.state_liftable, -2130904331}, ObjectAnimator.ofFloat(appBarLayout, "elevation", 0.0f).setDuration(j10));
        stateListAnimator.addState(new int[]{R.attr.state_enabled}, ObjectAnimator.ofFloat(appBarLayout, "elevation", f8).setDuration(j10));
        stateListAnimator.addState(new int[0], ObjectAnimator.ofFloat(appBarLayout, "elevation", 0.0f).setDuration(0L));
        appBarLayout.setStateListAnimator(stateListAnimator);
    }
}
