package androidx.constraintlayout.core.motion.utils;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class TypedBundle {
    private static final int INITIAL_BOOLEAN = 4;
    private static final int INITIAL_FLOAT = 10;
    private static final int INITIAL_INT = 10;
    private static final int INITIAL_STRING = 5;
    int[] mTypeInt = new int[10];
    int[] mValueInt = new int[10];
    int mCountInt = 0;
    int[] mTypeFloat = new int[10];
    float[] mValueFloat = new float[10];
    int mCountFloat = 0;
    int[] mTypeString = new int[5];
    String[] mValueString = new String[5];
    int mCountString = 0;
    int[] mTypeBoolean = new int[4];
    boolean[] mValueBoolean = new boolean[4];
    int mCountBoolean = 0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void add(int i9, String str) {
        int i10 = this.mCountString;
        int[] iArr = this.mTypeString;
        if (i10 >= iArr.length) {
            this.mTypeString = Arrays.copyOf(iArr, iArr.length * 2);
            String[] strArr = this.mValueString;
            this.mValueString = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
        }
        int[] iArr2 = this.mTypeString;
        int i11 = this.mCountString;
        iArr2[i11] = i9;
        String[] strArr2 = this.mValueString;
        this.mCountString = i11 + 1;
        strArr2[i11] = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addIfNotNull(int i9, String str) {
        if (str != null) {
            add(i9, str);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void applyDelta(TypedValues typedValues) {
        for (int i9 = 0; i9 < this.mCountInt; i9++) {
            typedValues.setValue(this.mTypeInt[i9], this.mValueInt[i9]);
        }
        for (int i10 = 0; i10 < this.mCountFloat; i10++) {
            typedValues.setValue(this.mTypeFloat[i10], this.mValueFloat[i10]);
        }
        for (int i11 = 0; i11 < this.mCountString; i11++) {
            typedValues.setValue(this.mTypeString[i11], this.mValueString[i11]);
        }
        for (int i12 = 0; i12 < this.mCountBoolean; i12++) {
            typedValues.setValue(this.mTypeBoolean[i12], this.mValueBoolean[i12]);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void clear() {
        this.mCountBoolean = 0;
        this.mCountString = 0;
        this.mCountFloat = 0;
        this.mCountInt = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getInteger(int i9) {
        for (int i10 = 0; i10 < this.mCountInt; i10++) {
            if (this.mTypeInt[i10] == i9) {
                return this.mValueInt[i10];
            }
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return "TypedBundle{mCountInt=" + this.mCountInt + ", mCountFloat=" + this.mCountFloat + ", mCountString=" + this.mCountString + ", mCountBoolean=" + this.mCountBoolean + '}';
    }

    public void add(int i9, float f8) {
        int i10 = this.mCountFloat;
        int[] iArr = this.mTypeFloat;
        if (i10 >= iArr.length) {
            this.mTypeFloat = Arrays.copyOf(iArr, iArr.length * 2);
            float[] fArr = this.mValueFloat;
            this.mValueFloat = Arrays.copyOf(fArr, fArr.length * 2);
        }
        int[] iArr2 = this.mTypeFloat;
        int i11 = this.mCountFloat;
        iArr2[i11] = i9;
        float[] fArr2 = this.mValueFloat;
        this.mCountFloat = i11 + 1;
        fArr2[i11] = f8;
    }

    public void add(int i9, int i10) {
        int i11 = this.mCountInt;
        int[] iArr = this.mTypeInt;
        if (i11 >= iArr.length) {
            this.mTypeInt = Arrays.copyOf(iArr, iArr.length * 2);
            int[] iArr2 = this.mValueInt;
            this.mValueInt = Arrays.copyOf(iArr2, iArr2.length * 2);
        }
        int[] iArr3 = this.mTypeInt;
        int i12 = this.mCountInt;
        iArr3[i12] = i9;
        int[] iArr4 = this.mValueInt;
        this.mCountInt = i12 + 1;
        iArr4[i12] = i10;
    }

    public void add(int i9, boolean z8) {
        int i10 = this.mCountBoolean;
        int[] iArr = this.mTypeBoolean;
        if (i10 >= iArr.length) {
            this.mTypeBoolean = Arrays.copyOf(iArr, iArr.length * 2);
            boolean[] zArr = this.mValueBoolean;
            this.mValueBoolean = Arrays.copyOf(zArr, zArr.length * 2);
        }
        int[] iArr2 = this.mTypeBoolean;
        int i11 = this.mCountBoolean;
        iArr2[i11] = i9;
        boolean[] zArr2 = this.mValueBoolean;
        this.mCountBoolean = i11 + 1;
        zArr2[i11] = z8;
    }

    public void applyDelta(TypedBundle typedBundle) {
        for (int i9 = 0; i9 < this.mCountInt; i9++) {
            typedBundle.add(this.mTypeInt[i9], this.mValueInt[i9]);
        }
        for (int i10 = 0; i10 < this.mCountFloat; i10++) {
            typedBundle.add(this.mTypeFloat[i10], this.mValueFloat[i10]);
        }
        for (int i11 = 0; i11 < this.mCountString; i11++) {
            typedBundle.add(this.mTypeString[i11], this.mValueString[i11]);
        }
        for (int i12 = 0; i12 < this.mCountBoolean; i12++) {
            typedBundle.add(this.mTypeBoolean[i12], this.mValueBoolean[i12]);
        }
    }
}
