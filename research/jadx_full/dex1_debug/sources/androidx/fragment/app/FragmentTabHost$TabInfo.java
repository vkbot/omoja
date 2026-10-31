package androidx.fragment.app;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class FragmentTabHost$TabInfo {

    @Nullable
    final Bundle args;

    @NonNull
    final Class<?> clss;
    Fragment fragment;

    @NonNull
    final String tag;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FragmentTabHost$TabInfo(@NonNull String str, @NonNull Class<?> cls, @Nullable Bundle bundle) {
        this.tag = str;
        this.clss = cls;
        this.args = bundle;
    }
}
