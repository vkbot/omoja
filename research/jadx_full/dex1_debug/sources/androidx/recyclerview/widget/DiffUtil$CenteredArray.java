package androidx.recyclerview.widget;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class DiffUtil$CenteredArray {
    private final int[] mData;
    private final int mMid;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DiffUtil$CenteredArray(int i9) {
        int[] iArr = new int[i9];
        this.mData = iArr;
        this.mMid = iArr.length / 2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int[] backingData() {
        return this.mData;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void fill(int i9) {
        Arrays.fill(this.mData, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int get(int i9) {
        return this.mData[i9 + this.mMid];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void set(int i9, int i10) {
        this.mData[i9 + this.mMid] = i10;
    }
}
