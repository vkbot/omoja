package com.sun.jna;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Function$PointerArray extends Memory implements Function$PostCallRead {
    private final Pointer[] original;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Function$PointerArray(Pointer[] pointerArr) {
        super((pointerArr.length + 1) * Native.POINTER_SIZE);
        this.original = pointerArr;
        for (int i9 = 0; i9 < pointerArr.length; i9++) {
            setPointer(Native.POINTER_SIZE * i9, pointerArr[i9]);
        }
        setPointer(Native.POINTER_SIZE * pointerArr.length, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Function$PostCallRead
    public void read() {
        Pointer[] pointerArr = this.original;
        read(0L, pointerArr, 0, pointerArr.length);
    }
}
