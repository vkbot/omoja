package androidx.core.view;

import android.content.ClipData;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class ContentInfoCompat$BuilderCompatImpl implements ContentInfoCompat$BuilderCompat {

    @NonNull
    ClipData mClip;

    @Nullable
    Bundle mExtras;
    int mFlags;

    @Nullable
    Uri mLinkUri;
    int mSource;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ContentInfoCompat$BuilderCompatImpl(@NonNull ContentInfoCompat contentInfoCompat) {
        this.mClip = contentInfoCompat.getClip();
        this.mSource = contentInfoCompat.getSource();
        this.mFlags = contentInfoCompat.getFlags();
        this.mLinkUri = contentInfoCompat.getLinkUri();
        this.mExtras = contentInfoCompat.getExtras();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ContentInfoCompat$BuilderCompat
    @NonNull
    public ContentInfoCompat build() {
        return new ContentInfoCompat(new ContentInfoCompat$CompatImpl(this));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ContentInfoCompat$BuilderCompat
    public void setClip(@NonNull ClipData clipData) {
        this.mClip = clipData;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ContentInfoCompat$BuilderCompat
    public void setExtras(@Nullable Bundle bundle) {
        this.mExtras = bundle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ContentInfoCompat$BuilderCompat
    public void setFlags(int i9) {
        this.mFlags = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ContentInfoCompat$BuilderCompat
    public void setLinkUri(@Nullable Uri uri) {
        this.mLinkUri = uri;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ContentInfoCompat$BuilderCompat
    public void setSource(int i9) {
        this.mSource = i9;
    }

    public ContentInfoCompat$BuilderCompatImpl(@NonNull ClipData clipData, int i9) {
        this.mClip = clipData;
        this.mSource = i9;
    }
}
