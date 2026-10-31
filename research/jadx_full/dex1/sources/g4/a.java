package g4;

import android.R$attr;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.view.ContextThemeWrapper;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f2367a = {R$attr.theme, androidx.appcompat.R$attr.theme};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f2368b = {2130903971};

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Context a(Context context, AttributeSet attributeSet, int i9, int i10) {
        return b(context, attributeSet, new int[0], i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Context b(Context context, AttributeSet attributeSet, int[] iArr, int i9, int i10) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f2368b, i9, i10);
        int[] iArr2 = {typedArrayObtainStyledAttributes.getResourceId(0, 0)};
        typedArrayObtainStyledAttributes.recycle();
        int i11 = iArr2[0];
        boolean z8 = (context instanceof ContextThemeWrapper) && ((ContextThemeWrapper) context).getThemeResId() == i11;
        if (i11 == 0 || z8) {
            return context;
        }
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i11);
        int length = iArr.length;
        int[] iArr3 = new int[length];
        if (iArr.length > 0) {
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr, i9, i10);
            for (int i12 = 0; i12 < iArr.length; i12++) {
                iArr3[i12] = typedArrayObtainStyledAttributes2.getResourceId(i12, 0);
            }
            typedArrayObtainStyledAttributes2.recycle();
        }
        for (int i13 = 0; i13 < length; i13++) {
            int i14 = iArr3[i13];
            if (i14 != 0) {
                contextThemeWrapper.getTheme().applyStyle(i14, true);
            }
        }
        TypedArray typedArrayObtainStyledAttributes3 = context.obtainStyledAttributes(attributeSet, f2367a);
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
