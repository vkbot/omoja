package com.sun.jna;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Function$NativeMappedArray extends Memory implements Function$PostCallRead {
    private final NativeMapped[] original;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Function$NativeMappedArray(NativeMapped[] nativeMappedArr) {
        super(Native.getNativeSize(nativeMappedArr.getClass(), nativeMappedArr));
        this.original = nativeMappedArr;
        setValue(0L, nativeMappedArr, nativeMappedArr.getClass());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Function$PostCallRead
    public void read() {
        getValue(0L, this.original.getClass(), this.original);
    }
}
