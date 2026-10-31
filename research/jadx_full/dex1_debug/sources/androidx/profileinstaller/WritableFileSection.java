package androidx.profileinstaller;

import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class WritableFileSection {
    final byte[] mContents;
    final int mExpectedInflateSize;
    final boolean mNeedsCompression;
    final FileSectionType mType;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public WritableFileSection(@NonNull FileSectionType fileSectionType, int i9, @NonNull byte[] bArr, boolean z8) {
        this.mType = fileSectionType;
        this.mExpectedInflateSize = i9;
        this.mContents = bArr;
        this.mNeedsCompression = z8;
    }
}
