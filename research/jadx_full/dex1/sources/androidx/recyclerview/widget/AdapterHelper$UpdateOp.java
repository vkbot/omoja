package androidx.recyclerview.widget;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class AdapterHelper$UpdateOp {
    static final int ADD = 1;
    static final int MOVE = 8;
    static final int POOL_SIZE = 30;
    static final int REMOVE = 2;
    static final int UPDATE = 4;
    int cmd;
    int itemCount;
    Object payload;
    int positionStart;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AdapterHelper$UpdateOp(int i9, int i10, int i11, Object obj) {
        this.cmd = i9;
        this.positionStart = i10;
        this.itemCount = i11;
        this.payload = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String cmdToString() {
        int i9 = this.cmd;
        if (i9 == 1) {
            return "add";
        }
        if (i9 == 2) {
            return "rm";
        }
        if (i9 != 4) {
            return i9 != 8 ? "??" : "mv";
        }
        return "up";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdapterHelper$UpdateOp)) {
            return false;
        }
        AdapterHelper$UpdateOp adapterHelper$UpdateOp = (AdapterHelper$UpdateOp) obj;
        int i9 = this.cmd;
        if (i9 != adapterHelper$UpdateOp.cmd) {
            return false;
        }
        if (i9 == 8 && Math.abs(this.itemCount - this.positionStart) == 1 && this.itemCount == adapterHelper$UpdateOp.positionStart && this.positionStart == adapterHelper$UpdateOp.itemCount) {
            return true;
        }
        if (this.itemCount != adapterHelper$UpdateOp.itemCount || this.positionStart != adapterHelper$UpdateOp.positionStart) {
            return false;
        }
        Object obj2 = this.payload;
        Object obj3 = adapterHelper$UpdateOp.payload;
        if (obj2 != null) {
            if (!obj2.equals(obj3)) {
                return false;
            }
        } else if (obj3 != null) {
            return false;
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        return (((this.cmd * 31) + this.positionStart) * 31) + this.itemCount;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return Integer.toHexString(System.identityHashCode(this)) + "[" + cmdToString() + ",s:" + this.positionStart + "c:" + this.itemCount + ",p:" + this.payload + "]";
    }
}
