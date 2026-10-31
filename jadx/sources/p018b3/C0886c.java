package p018b3;

import android.util.Property;
import android.view.ViewGroup;
import com.example.navistart.R;

/* JADX INFO: renamed from: b3.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0886c extends Property {

    /* JADX INFO: renamed from: a */
    public static final C0886c f666a = new C0886c(Float.class, "childrenAlpha");

    @Override // android.util.Property
    public final Object get(Object obj) {
        Float f8 = (Float) ((ViewGroup) obj).getTag(R.id.mtrl_internal_children_alpha_tag);
        return f8 != null ? f8 : Float.valueOf(1.0f);
    }

    @Override // android.util.Property
    public final void set(Object obj, Object obj2) {
        ViewGroup viewGroup = (ViewGroup) obj;
        Float f8 = (Float) obj2;
        float fFloatValue = f8.floatValue();
        viewGroup.setTag(R.id.mtrl_internal_children_alpha_tag, f8);
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            viewGroup.getChildAt(i10).setAlpha(fFloatValue);
        }
    }
}
