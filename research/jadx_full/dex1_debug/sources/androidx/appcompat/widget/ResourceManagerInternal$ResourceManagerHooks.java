package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff$Mode;
import android.graphics.drawable.Drawable;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
public interface ResourceManagerInternal$ResourceManagerHooks {
    @Nullable
    Drawable createDrawableFor(@NonNull ResourceManagerInternal resourceManagerInternal, @NonNull Context context, @DrawableRes int i9);

    @Nullable
    ColorStateList getTintListForDrawableRes(@NonNull Context context, @DrawableRes int i9);

    @Nullable
    PorterDuff$Mode getTintModeForDrawableRes(int i9);

    boolean tintDrawable(@NonNull Context context, @DrawableRes int i9, @NonNull Drawable drawable);

    boolean tintDrawableUsingColorFilter(@NonNull Context context, @DrawableRes int i9, @NonNull Drawable drawable);
}
