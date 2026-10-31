package androidx.core.view;

import android.content.ClipData;
import android.net.Uri;
import android.os.Build$VERSION;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class ContentInfoCompat$Builder {

    @NonNull
    private final ContentInfoCompat$BuilderCompat mBuilderCompat;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ContentInfoCompat$Builder(@NonNull ContentInfoCompat contentInfoCompat) {
        if (Build$VERSION.SDK_INT >= 31) {
            this.mBuilderCompat = new ContentInfoCompat$BuilderCompat31Impl(contentInfoCompat);
        } else {
            this.mBuilderCompat = new ContentInfoCompat$BuilderCompatImpl(contentInfoCompat);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ContentInfoCompat build() {
        return this.mBuilderCompat.build();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ContentInfoCompat$Builder setClip(@NonNull ClipData clipData) {
        this.mBuilderCompat.setClip(clipData);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ContentInfoCompat$Builder setExtras(@Nullable Bundle bundle) {
        this.mBuilderCompat.setExtras(bundle);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ContentInfoCompat$Builder setFlags(int i9) {
        this.mBuilderCompat.setFlags(i9);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ContentInfoCompat$Builder setLinkUri(@Nullable Uri uri) {
        this.mBuilderCompat.setLinkUri(uri);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ContentInfoCompat$Builder setSource(int i9) {
        this.mBuilderCompat.setSource(i9);
        return this;
    }

    public ContentInfoCompat$Builder(@NonNull ClipData clipData, int i9) {
        if (Build$VERSION.SDK_INT >= 31) {
            this.mBuilderCompat = new ContentInfoCompat$BuilderCompat31Impl(clipData, i9);
        } else {
            this.mBuilderCompat = new ContentInfoCompat$BuilderCompatImpl(clipData, i9);
        }
    }
}
