package androidx.recyclerview.widget;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ChildHelper$Bucket {
    static final int BITS_PER_WORD = 64;
    static final long LAST_BIT = Long.MIN_VALUE;
    long mData = 0;
    ChildHelper$Bucket mNext;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void ensureNext() {
        if (this.mNext == null) {
            this.mNext = new ChildHelper$Bucket();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void clear(int i9) {
        if (i9 < 64) {
            this.mData &= ~(1 << i9);
            return;
        }
        ChildHelper$Bucket childHelper$Bucket = this.mNext;
        if (childHelper$Bucket != null) {
            childHelper$Bucket.clear(i9 - 64);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int countOnesBefore(int i9) {
        ChildHelper$Bucket childHelper$Bucket = this.mNext;
        if (childHelper$Bucket == null) {
            long j9 = this.mData;
            return i9 >= 64 ? Long.bitCount(j9) : Long.bitCount(((1 << i9) - 1) & j9);
        }
        if (i9 < 64) {
            return Long.bitCount(this.mData & ((1 << i9) - 1));
        }
        return Long.bitCount(this.mData) + childHelper$Bucket.countOnesBefore(i9 - 64);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean get(int i9) {
        if (i9 < 64) {
            return (this.mData & (1 << i9)) != 0;
        }
        ensureNext();
        return this.mNext.get(i9 - 64);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void insert(int i9, boolean z8) {
        if (i9 >= 64) {
            ensureNext();
            this.mNext.insert(i9 - 64, z8);
            return;
        }
        long j9 = this.mData;
        boolean z9 = (Long.MIN_VALUE & j9) != 0;
        long j10 = (1 << i9) - 1;
        this.mData = ((j9 & (~j10)) << 1) | (j9 & j10);
        if (z8) {
            set(i9);
        } else {
            clear(i9);
        }
        if (z9 || this.mNext != null) {
            ensureNext();
            this.mNext.insert(0, z9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean remove(int i9) {
        if (i9 >= 64) {
            ensureNext();
            return this.mNext.remove(i9 - 64);
        }
        long j9 = 1 << i9;
        long j10 = this.mData;
        boolean z8 = (j10 & j9) != 0;
        long j11 = j10 & (~j9);
        this.mData = j11;
        long j12 = j9 - 1;
        this.mData = (j11 & j12) | Long.rotateRight((~j12) & j11, 1);
        ChildHelper$Bucket childHelper$Bucket = this.mNext;
        if (childHelper$Bucket != null) {
            if (childHelper$Bucket.get(0)) {
                set(63);
            }
            this.mNext.remove(0);
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void reset() {
        this.mData = 0L;
        ChildHelper$Bucket childHelper$Bucket = this.mNext;
        if (childHelper$Bucket != null) {
            childHelper$Bucket.reset();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void set(int i9) {
        if (i9 < 64) {
            this.mData |= 1 << i9;
        } else {
            ensureNext();
            this.mNext.set(i9 - 64);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        if (this.mNext == null) {
            return Long.toBinaryString(this.mData);
        }
        return this.mNext.toString() + "xx" + Long.toBinaryString(this.mData);
    }
}
