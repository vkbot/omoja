package androidx.core.text.util;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FindAddress$ZipRange {
    int mException1;
    int mException2;
    int mHigh;
    int mLow;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FindAddress$ZipRange(int i9, int i10, int i11, int i12) {
        this.mLow = i9;
        this.mHigh = i10;
        this.mException1 = i11;
        this.mException2 = i12;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean matches(String str) {
        int i9 = Integer.parseInt(str.substring(0, 2));
        return (this.mLow <= i9 && i9 <= this.mHigh) || i9 == this.mException1 || i9 == this.mException2;
    }
}
