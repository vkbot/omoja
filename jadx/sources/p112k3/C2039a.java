package p112k3;

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;

/* JADX INFO: renamed from: k3.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2039a extends Animatable2Compat.AnimationCallback {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C2041c f5564a;

    public C2039a(C2041c c2041c) {
        this.f5564a = c2041c;
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat.AnimationCallback
    public final void onAnimationEnd(Drawable drawable) {
        super.onAnimationEnd(drawable);
        ColorStateList colorStateList = this.f5564a.f5580l;
        if (colorStateList != null) {
            drawable.setTintList(colorStateList);
        }
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat.AnimationCallback
    public final void onAnimationStart(Drawable drawable) {
        super.onAnimationStart(drawable);
        C2041c c2041c = this.f5564a;
        ColorStateList colorStateList = c2041c.f5580l;
        if (colorStateList != null) {
            drawable.setTint(colorStateList.getColorForState(c2041c.f5584p, colorStateList.getDefaultColor()));
        }
    }
}
