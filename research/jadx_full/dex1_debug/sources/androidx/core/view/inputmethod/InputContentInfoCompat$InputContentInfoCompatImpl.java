package androidx.core.view.inputmethod;

import android.content.ClipDescription;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface InputContentInfoCompat$InputContentInfoCompatImpl {
    @NonNull
    Uri getContentUri();

    @NonNull
    ClipDescription getDescription();

    @Nullable
    Object getInputContentInfo();

    @Nullable
    Uri getLinkUri();

    void releasePermission();

    void requestPermission();
}
