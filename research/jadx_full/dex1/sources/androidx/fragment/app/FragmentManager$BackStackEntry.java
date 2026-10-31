package androidx.fragment.app;

import androidx.annotation.Nullable;
import androidx.annotation.StringRes;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface FragmentManager$BackStackEntry {
    @Nullable
    @Deprecated
    CharSequence getBreadCrumbShortTitle();

    @StringRes
    @Deprecated
    int getBreadCrumbShortTitleRes();

    @Nullable
    @Deprecated
    CharSequence getBreadCrumbTitle();

    @StringRes
    @Deprecated
    int getBreadCrumbTitleRes();

    int getId();

    @Nullable
    String getName();
}
