package p018b3;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.Log;
import androidx.collection.SimpleArrayMap;
import androidx.navigation.C0674b;
import java.util.ArrayList;
import p130l9.C2237i;

/* JADX INFO: renamed from: b3.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0888e {

    /* JADX INFO: renamed from: a */
    public final SimpleArrayMap f668a = new SimpleArrayMap();

    /* JADX INFO: renamed from: b */
    public final SimpleArrayMap f669b = new SimpleArrayMap();

    /* JADX INFO: renamed from: a */
    public static C0888e m1019a(Context context, TypedArray typedArray, int i10) {
        int resourceId;
        if (!typedArray.hasValue(i10) || (resourceId = typedArray.getResourceId(i10, 0)) == 0) {
            return null;
        }
        return m1020b(resourceId, context);
    }

    /* JADX INFO: renamed from: b */
    public static C0888e m1020b(int i10, Context context) {
        try {
            Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(context, i10);
            if (animatorLoadAnimator instanceof AnimatorSet) {
                return m1021c(((AnimatorSet) animatorLoadAnimator).getChildAnimations());
            }
            if (animatorLoadAnimator == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(animatorLoadAnimator);
            return m1021c(arrayList);
        } catch (Exception e) {
            Log.w("MotionSpec", "Can't load animation resource ID #0x" + Integer.toHexString(i10), e);
            return null;
        }
    }

    /* JADX INFO: renamed from: c */
    public static C0888e m1021c(ArrayList arrayList) {
        C0888e c0888e = new C0888e();
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            Animator animator = (Animator) arrayList.get(i10);
            if (!(animator instanceof ObjectAnimator)) {
                C0674b.m853t(animator, "Animator must be an ObjectAnimator: ");
                return null;
            }
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            c0888e.f669b.put(objectAnimator.getPropertyName(), objectAnimator.getValues());
            String propertyName = objectAnimator.getPropertyName();
            long startDelay = objectAnimator.getStartDelay();
            long duration = objectAnimator.getDuration();
            TimeInterpolator interpolator = objectAnimator.getInterpolator();
            C0889f c0889f = new C0889f();
            c0889f.f673d = 0;
            c0889f.f674e = 1;
            c0889f.f670a = startDelay;
            c0889f.f671b = duration;
            c0889f.f672c = interpolator;
            c0889f.f673d = objectAnimator.getRepeatCount();
            c0889f.f674e = objectAnimator.getRepeatMode();
            c0888e.f668a.put(propertyName, c0889f);
        }
        return c0888e;
    }

    /* JADX INFO: renamed from: d */
    public final C0889f m1022d(String str) {
        SimpleArrayMap simpleArrayMap = this.f668a;
        if (simpleArrayMap.get(str) != null) {
            return (C0889f) simpleArrayMap.get(str);
        }
        C2237i.m3594a();
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C0888e) {
            return this.f668a.equals(((C0888e) obj).f668a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f668a.hashCode();
    }

    public final String toString() {
        return "\n" + C0888e.class.getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " timings: " + this.f668a + "}\n";
    }
}
