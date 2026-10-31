package androidx.core.view;

import android.content.ClipData;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface ContentInfoCompat$BuilderCompat {
    @NonNull
    ContentInfoCompat build();

    void setClip(@NonNull ClipData clipData);

    void setExtras(@Nullable Bundle bundle);

    void setFlags(int i9);

    void setLinkUri(@Nullable Uri uri);

    void setSource(int i9);
}
