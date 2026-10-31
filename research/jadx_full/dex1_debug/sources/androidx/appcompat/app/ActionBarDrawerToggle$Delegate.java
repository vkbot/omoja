package androidx.appcompat.app;

import android.content.Context;
import android.graphics.drawable.Drawable;
import androidx.annotation.StringRes;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface ActionBarDrawerToggle$Delegate {
    Context getActionBarThemedContext();

    Drawable getThemeUpIndicator();

    boolean isNavigationVisible();

    void setActionBarDescription(@StringRes int i9);

    void setActionBarUpIndicator(Drawable drawable, @StringRes int i9);
}
