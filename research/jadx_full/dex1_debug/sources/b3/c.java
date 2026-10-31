package b3;

import android.util.Property;
import android.view.ViewGroup;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c extends Property {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f307a = new c(Float.class, "childrenAlpha");

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.util.Property
    public final Object get(Object obj) {
        Float f8 = (Float) ((ViewGroup) obj).getTag(2131297105);
        return f8 != null ? f8 : Float.valueOf(1.0f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.util.Property
    public final void set(Object obj, Object obj2) {
        ViewGroup viewGroup = (ViewGroup) obj;
        Float f8 = (Float) obj2;
        float fFloatValue = f8.floatValue();
        viewGroup.setTag(2131297105, f8);
        int childCount = viewGroup.getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            viewGroup.getChildAt(i9).setAlpha(fFloatValue);
        }
    }
}
