package androidx.core.view;

import android.content.ClipData;
import android.net.Uri;
import android.os.Bundle;
import android.view.ContentInfo$Builder;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_WIDTH_DEFAULT)
public final class ContentInfoCompat$BuilderCompat31Impl implements ContentInfoCompat$BuilderCompat {

    @NonNull
    private final ContentInfo$Builder mPlatformBuilder;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ContentInfoCompat$BuilderCompat31Impl(@NonNull ContentInfoCompat contentInfoCompat) {
        androidx.core.app.c.p();
        this.mPlatformBuilder = androidx.core.app.c.k(contentInfoCompat.toContentInfo());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ContentInfoCompat$BuilderCompat
    @NonNull
    public ContentInfoCompat build() {
        return new ContentInfoCompat(new ContentInfoCompat$Compat31Impl(androidx.core.app.c.l(this.mPlatformBuilder)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ContentInfoCompat$BuilderCompat
    public void setClip(@NonNull ClipData clipData) {
        androidx.core.app.c.w(this.mPlatformBuilder, clipData);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ContentInfoCompat$BuilderCompat
    public void setExtras(@Nullable Bundle bundle) {
        androidx.core.app.c.y(this.mPlatformBuilder, bundle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ContentInfoCompat$BuilderCompat
    public void setFlags(int i9) {
        androidx.core.app.c.C(this.mPlatformBuilder, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ContentInfoCompat$BuilderCompat
    public void setLinkUri(@Nullable Uri uri) {
        androidx.core.app.c.x(this.mPlatformBuilder, uri);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ContentInfoCompat$BuilderCompat
    public void setSource(int i9) {
        androidx.core.app.c.v(this.mPlatformBuilder, i9);
    }

    public ContentInfoCompat$BuilderCompat31Impl(@NonNull ClipData clipData, int i9) {
        this.mPlatformBuilder = androidx.core.app.c.j(clipData, i9);
    }
}
