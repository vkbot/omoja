package androidx.core.view;

import android.content.ClipData;
import android.net.Uri;
import android.os.Bundle;
import android.view.ContentInfo;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.core.util.Preconditions;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_WIDTH_DEFAULT)
public final class ContentInfoCompat$Compat31Impl implements ContentInfoCompat$Compat {

    @NonNull
    private final ContentInfo mWrapped;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ContentInfoCompat$Compat31Impl(@NonNull ContentInfo contentInfo) {
        this.mWrapped = androidx.core.app.c.m(Preconditions.checkNotNull(contentInfo));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ContentInfoCompat$Compat
    @NonNull
    public ClipData getClip() {
        return androidx.core.app.c.e(this.mWrapped);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ContentInfoCompat$Compat
    @Nullable
    public Bundle getExtras() {
        return androidx.core.app.c.h(this.mWrapped);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ContentInfoCompat$Compat
    public int getFlags() {
        return androidx.core.app.c.a(this.mWrapped);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ContentInfoCompat$Compat
    @Nullable
    public Uri getLinkUri() {
        return androidx.core.app.c.g(this.mWrapped);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ContentInfoCompat$Compat
    public int getSource() {
        return androidx.core.app.c.A(this.mWrapped);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ContentInfoCompat$Compat
    @NonNull
    public ContentInfo getWrapped() {
        return this.mWrapped;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public String toString() {
        return "ContentInfoCompat{" + this.mWrapped + "}";
    }
}
