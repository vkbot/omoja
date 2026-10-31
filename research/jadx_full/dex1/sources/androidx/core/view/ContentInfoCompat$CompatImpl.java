package androidx.core.view;

import android.content.ClipData;
import android.net.Uri;
import android.os.Bundle;
import android.view.ContentInfo;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Preconditions;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class ContentInfoCompat$CompatImpl implements ContentInfoCompat$Compat {

    @NonNull
    private final ClipData mClip;

    @Nullable
    private final Bundle mExtras;
    private final int mFlags;

    @Nullable
    private final Uri mLinkUri;
    private final int mSource;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ContentInfoCompat$CompatImpl(ContentInfoCompat$BuilderCompatImpl contentInfoCompat$BuilderCompatImpl) {
        this.mClip = (ClipData) Preconditions.checkNotNull(contentInfoCompat$BuilderCompatImpl.mClip);
        this.mSource = Preconditions.checkArgumentInRange(contentInfoCompat$BuilderCompatImpl.mSource, 0, 5, "source");
        this.mFlags = Preconditions.checkFlagsArgument(contentInfoCompat$BuilderCompatImpl.mFlags, 1);
        this.mLinkUri = contentInfoCompat$BuilderCompatImpl.mLinkUri;
        this.mExtras = contentInfoCompat$BuilderCompatImpl.mExtras;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ContentInfoCompat$Compat
    @NonNull
    public ClipData getClip() {
        return this.mClip;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ContentInfoCompat$Compat
    @Nullable
    public Bundle getExtras() {
        return this.mExtras;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ContentInfoCompat$Compat
    public int getFlags() {
        return this.mFlags;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ContentInfoCompat$Compat
    @Nullable
    public Uri getLinkUri() {
        return this.mLinkUri;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ContentInfoCompat$Compat
    public int getSource() {
        return this.mSource;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.ContentInfoCompat$Compat
    @Nullable
    public ContentInfo getWrapped() {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder("ContentInfoCompat{clip=");
        sb.append(this.mClip.getDescription());
        sb.append(", source=");
        sb.append(ContentInfoCompat.sourceToString(this.mSource));
        sb.append(", flags=");
        sb.append(ContentInfoCompat.flagsToString(this.mFlags));
        if (this.mLinkUri == null) {
            str = "";
        } else {
            str = ", hasLinkUri(" + this.mLinkUri.toString().length() + ")";
        }
        sb.append(str);
        return ai.onnxruntime.a.p(sb, this.mExtras != null ? ", hasExtras" : "", "}");
    }
}
