package androidx.core.view.inputmethod;

import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build$VERSION;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class InputContentInfoCompat {
    private final InputContentInfoCompat$InputContentInfoCompatImpl mImpl;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public InputContentInfoCompat(@NonNull Uri uri, @NonNull ClipDescription clipDescription, @Nullable Uri uri2) {
        if (Build$VERSION.SDK_INT >= 25) {
            this.mImpl = new InputContentInfoCompat$InputContentInfoCompatApi25Impl(uri, clipDescription, uri2);
        } else {
            this.mImpl = new InputContentInfoCompat$InputContentInfoCompatBaseImpl(uri, clipDescription, uri2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static InputContentInfoCompat wrap(@Nullable Object obj) {
        if (obj != null && Build$VERSION.SDK_INT >= 25) {
            return new InputContentInfoCompat(new InputContentInfoCompat$InputContentInfoCompatApi25Impl(obj));
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Uri getContentUri() {
        return this.mImpl.getContentUri();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ClipDescription getDescription() {
        return this.mImpl.getDescription();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Uri getLinkUri() {
        return this.mImpl.getLinkUri();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void releasePermission() {
        this.mImpl.releasePermission();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void requestPermission() {
        this.mImpl.requestPermission();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Object unwrap() {
        return this.mImpl.getInputContentInfo();
    }

    private InputContentInfoCompat(@NonNull InputContentInfoCompat$InputContentInfoCompatImpl inputContentInfoCompat$InputContentInfoCompatImpl) {
        this.mImpl = inputContentInfoCompat$InputContentInfoCompatImpl;
    }
}
