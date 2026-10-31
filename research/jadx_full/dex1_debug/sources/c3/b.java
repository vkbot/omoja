package c3;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.graphics.drawable.Drawable;
import com.google.android.material.appbar.AppBarLayout;
import java.util.Iterator;
import z3.k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class b implements ValueAnimator$AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AppBarLayout f475a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ k f476b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(AppBarLayout appBarLayout, k kVar) {
        this.f475a = appBarLayout;
        this.f476b = kVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.ValueAnimator$AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int i9 = AppBarLayout.B;
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.f476b.p(fFloatValue);
        AppBarLayout appBarLayout = this.f475a;
        Drawable drawable = appBarLayout.f1118x;
        if (drawable instanceof k) {
            ((k) drawable).p(fFloatValue);
        }
        Iterator it = appBarLayout.r.iterator();
        if (it.hasNext()) {
            throw com.bumptech.glide.g.b(it);
        }
        Iterator it2 = appBarLayout.f1115s.iterator();
        if (it2.hasNext()) {
            throw com.bumptech.glide.g.b(it2);
        }
    }
}
