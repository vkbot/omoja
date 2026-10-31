package com.sun.jna;

import androidx.navigation.b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class IntegerType extends Number implements NativeMapped {
    private static final long serialVersionUID = 1;
    private Number number;
    private int size;
    private boolean unsigned;
    private long value;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public IntegerType(int i9, long j9, boolean z8) {
        this.size = i9;
        this.unsigned = z8;
        setValue(j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static <T extends IntegerType> int compare(T t, T t3) {
        if (t == t3) {
            return 0;
        }
        if (t == null) {
            return 1;
        }
        if (t3 == null) {
            return -1;
        }
        return compare(t.longValue(), t3.longValue());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Number
    public double doubleValue() {
        return this.number.doubleValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean equals(Object obj) {
        return (obj instanceof IntegerType) && this.number.equals(((IntegerType) obj).number);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Number
    public float floatValue() {
        return this.number.floatValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.NativeMapped
    public Object fromNative(Object obj, FromNativeContext fromNativeContext) {
        long jLongValue = obj == null ? 0L : ((Number) obj).longValue();
        IntegerType integerType = (IntegerType) Klass.newInstance(getClass());
        integerType.setValue(jLongValue);
        return integerType;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        return this.number.hashCode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Number
    public int intValue() {
        return (int) this.value;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Number
    public long longValue() {
        return this.value;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.NativeMapped
    public Class<?> nativeType() {
        return this.number.getClass();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setValue(long j9) {
        long j10;
        this.value = j9;
        int i9 = this.size;
        if (i9 == 1) {
            if (this.unsigned) {
                this.value = 255 & j9;
            }
            byte b9 = (byte) j9;
            j10 = b9;
            this.number = Byte.valueOf(b9);
        } else if (i9 == 2) {
            if (this.unsigned) {
                this.value = 65535 & j9;
            }
            short s5 = (short) j9;
            j10 = s5;
            this.number = Short.valueOf(s5);
        } else if (i9 == 4) {
            if (this.unsigned) {
                this.value = 4294967295L & j9;
            }
            int i10 = (int) j9;
            j10 = i10;
            this.number = Integer.valueOf(i10);
        } else if (i9 != 8) {
            b.b(this.size, "Unsupported size: ");
            return;
        } else {
            this.number = Long.valueOf(j9);
            j10 = j9;
        }
        int i11 = this.size;
        if (i11 < 8) {
            long j11 = ~((1 << (i11 * 8)) - 1);
            if ((j9 >= 0 || j10 == j9) && (j9 < 0 || (j11 & j9) == 0)) {
                return;
            }
            throw new IllegalArgumentException("Argument value 0x" + Long.toHexString(j9) + " exceeds native capacity (" + this.size + " bytes) mask=0x" + Long.toHexString(j11));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.NativeMapped
    public Object toNative() {
        return this.number;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return this.number.toString();
    }

    public IntegerType(int i9, boolean z8) {
        this(i9, 0L, z8);
    }

    public IntegerType(int i9, long j9) {
        this(i9, j9, false);
    }

    public IntegerType(int i9) {
        this(i9, 0L, false);
    }

    public static final int compare(long j9, long j10) {
        if (j9 == j10) {
            return 0;
        }
        return j9 < j10 ? -1 : 1;
    }

    public static int compare(IntegerType integerType, long j9) {
        if (integerType == null) {
            return 1;
        }
        return compare(integerType.longValue(), j9);
    }
}
