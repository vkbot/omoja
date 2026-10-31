package androidx.core.view.accessibility;

import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class AccessibilityViewCommand$CommandArguments {
    Bundle mBundle;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void setBundle(@Nullable Bundle bundle) {
        this.mBundle = bundle;
    }
}
