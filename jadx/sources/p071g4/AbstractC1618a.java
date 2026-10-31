package p071g4;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.C0148R;
import androidx.appcompat.view.ContextThemeWrapper;

/* JADX INFO: renamed from: g4.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1618a {

    /* JADX INFO: renamed from: a */
    public static final int[] f4072a = {R.attr.theme, C0148R.attr.theme};

    /* JADX INFO: renamed from: b */
    public static final int[] f4073b = {com.example.navistart.R.attr.materialThemeOverlay};

    /* JADX INFO: renamed from: a */
    public static Context m2696a(Context context, AttributeSet attributeSet, int i10, int i11) {
        return m2697b(context, attributeSet, new int[0], i10, i11);
    }

    /* JADX INFO: renamed from: b */
    public static Context m2697b(Context context, AttributeSet attributeSet, int[] iArr, int i10, int i11) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f4073b, i10, i11);
        int[] iArr2 = {typedArrayObtainStyledAttributes.getResourceId(0, 0)};
        typedArrayObtainStyledAttributes.recycle();
        int i12 = iArr2[0];
        boolean z9 = (context instanceof ContextThemeWrapper) && ((ContextThemeWrapper) context).getThemeResId() == i12;
        if (i12 == 0 || z9) {
            return context;
        }
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i12);
        int length = iArr.length;
        int[] iArr3 = new int[length];
        if (iArr.length > 0) {
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr, i10, i11);
            for (int i13 = 0; i13 < iArr.length; i13++) {
                iArr3[i13] = typedArrayObtainStyledAttributes2.getResourceId(i13, 0);
            }
            typedArrayObtainStyledAttributes2.recycle();
        }
        for (int i14 = 0; i14 < length; i14++) {
            int i15 = iArr3[i14];
            if (i15 != 0) {
                contextThemeWrapper.getTheme().applyStyle(i15, true);
            }
        }
        TypedArray typedArrayObtainStyledAttributes3 = context.obtainStyledAttributes(attributeSet, f4072a);
        int resourceId = typedArrayObtainStyledAttributes3.getResourceId(0, 0);
        int resourceId2 = typedArrayObtainStyledAttributes3.getResourceId(1, 0);
        typedArrayObtainStyledAttributes3.recycle();
        if (resourceId == 0) {
            resourceId = resourceId2;
        }
        if (resourceId != 0) {
            contextThemeWrapper.getTheme().applyStyle(resourceId, true);
        }
        return contextThemeWrapper;
    }
}
