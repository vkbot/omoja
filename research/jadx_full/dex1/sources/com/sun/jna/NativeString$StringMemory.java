package com.sun.jna;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class NativeString$StringMemory extends Memory {
    final /* synthetic */ NativeString this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeString$StringMemory(NativeString nativeString, long j9) {
        super(j9);
        this.this$0 = nativeString;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Memory, com.sun.jna.Pointer
    public String toString() {
        return this.this$0.toString();
    }
}
