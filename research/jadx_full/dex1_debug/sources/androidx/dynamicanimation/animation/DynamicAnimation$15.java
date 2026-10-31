package androidx.dynamicanimation.animation;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class DynamicAnimation$15 extends FloatPropertyCompat {
    final /* synthetic */ DynamicAnimation this$0;
    final /* synthetic */ FloatValueHolder val$floatValueHolder;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DynamicAnimation$15(DynamicAnimation dynamicAnimation, String str, FloatValueHolder floatValueHolder) {
        super(str);
        this.this$0 = dynamicAnimation;
        this.val$floatValueHolder = floatValueHolder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
    public float getValue(Object obj) {
        return this.val$floatValueHolder.getValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
    public void setValue(Object obj, float f8) {
        this.val$floatValueHolder.setValue(f8);
    }
}
