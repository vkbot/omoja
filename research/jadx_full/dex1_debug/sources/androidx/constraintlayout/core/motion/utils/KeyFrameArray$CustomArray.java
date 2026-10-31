package androidx.constraintlayout.core.motion.utils;

import androidx.constraintlayout.core.motion.CustomAttribute;
import java.io.PrintStream;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class KeyFrameArray$CustomArray {
    private static final int EMPTY = 999;
    int mCount;
    int[] mKeys = new int[TypedValues.TYPE_TARGET];
    CustomAttribute[] mValues = new CustomAttribute[TypedValues.TYPE_TARGET];

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public KeyFrameArray$CustomArray() {
        clear();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void append(int i9, CustomAttribute customAttribute) {
        if (this.mValues[i9] != null) {
            remove(i9);
        }
        this.mValues[i9] = customAttribute;
        int[] iArr = this.mKeys;
        int i10 = this.mCount;
        this.mCount = i10 + 1;
        iArr[i10] = i9;
        Arrays.sort(iArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void clear() {
        Arrays.fill(this.mKeys, EMPTY);
        Arrays.fill(this.mValues, (Object) null);
        this.mCount = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dump() {
        System.out.println("V: " + Arrays.toString(Arrays.copyOf(this.mKeys, this.mCount)));
        System.out.print("K: [");
        int i9 = 0;
        while (i9 < this.mCount) {
            PrintStream printStream = System.out;
            StringBuilder sb = new StringBuilder();
            sb.append(i9 == 0 ? "" : ", ");
            sb.append(valueAt(i9));
            printStream.print(sb.toString());
            i9++;
        }
        System.out.println("]");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int keyAt(int i9) {
        return this.mKeys[i9];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void remove(int i9) {
        this.mValues[i9] = null;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int i12 = this.mCount;
            if (i10 >= i12) {
                this.mCount = i12 - 1;
                return;
            }
            int[] iArr = this.mKeys;
            if (i9 == iArr[i10]) {
                iArr[i10] = EMPTY;
                i11++;
            }
            if (i10 != i11) {
                iArr[i10] = iArr[i11];
            }
            i11++;
            i10++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int size() {
        return this.mCount;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CustomAttribute valueAt(int i9) {
        return this.mValues[this.mKeys[i9]];
    }
}
