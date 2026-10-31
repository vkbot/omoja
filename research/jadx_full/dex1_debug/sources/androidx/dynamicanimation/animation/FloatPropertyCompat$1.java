package androidx.dynamicanimation.animation;

import android.util.FloatProperty;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FloatPropertyCompat$1<T> extends FloatPropertyCompat<T> {
    final /* synthetic */ FloatProperty val$property;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FloatPropertyCompat$1(String str, FloatProperty floatProperty) {
        super(str);
        this.val$property = floatProperty;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
    public float getValue(T t) {
        return ((Float) this.val$property.get(t)).floatValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
    public void setValue(T t, float f8) {
        this.val$property.setValue(t, f8);
    }
}
