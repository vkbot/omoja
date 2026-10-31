package c3;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.content.res.ColorStateList;
import com.google.android.material.appbar.AppBarLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import z3.k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class a implements ValueAnimator$AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AppBarLayout f473a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ColorStateList f474b;
    public final /* synthetic */ k c;
    public final /* synthetic */ Integer d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(AppBarLayout appBarLayout, ColorStateList colorStateList, k kVar, Integer num) {
        this.f473a = appBarLayout;
        this.f474b = colorStateList;
        this.c = kVar;
        this.d = num;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.ValueAnimator$AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        Integer num;
        AppBarLayout appBarLayout = this.f473a;
        LinkedHashSet linkedHashSet = appBarLayout.f1115s;
        ArrayList arrayList = appBarLayout.r;
        int iC = m3.a.c(((Float) valueAnimator.getAnimatedValue()).floatValue(), appBarLayout.w, this.f474b.getDefaultColor());
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(iC);
        k kVar = this.c;
        kVar.q(colorStateListValueOf);
        if (appBarLayout.f1118x != null && (num = appBarLayout.f1119y) != null && num.equals(this.d)) {
            appBarLayout.f1118x.setTint(iC);
        }
        if (!arrayList.isEmpty()) {
            int size = arrayList.size();
            int i9 = 0;
            while (i9 < size) {
                Object obj = arrayList.get(i9);
                i9++;
                if (obj != null) {
                    n0.b.a();
                    return;
                } else if (kVar.c.d != null) {
                    throw null;
                }
            }
        }
        if (linkedHashSet.isEmpty()) {
            return;
        }
        Iterator it = linkedHashSet.iterator();
        if (it.hasNext()) {
            throw com.bumptech.glide.g.b(it);
        }
    }
}
