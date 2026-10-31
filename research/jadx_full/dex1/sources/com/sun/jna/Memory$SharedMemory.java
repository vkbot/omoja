package com.sun.jna;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Memory$SharedMemory extends Memory {
    final /* synthetic */ Memory this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Memory$SharedMemory(Memory memory, long j9, long j10) {
        this.this$0 = memory;
        this.size = j10;
        this.peer = memory.peer + j9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Memory
    public void boundsCheck(long j9, long j10) {
        Memory memory = this.this$0;
        memory.boundsCheck((this.peer - memory.peer) + j9, j10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Memory
    public synchronized void dispose() {
        this.peer = 0L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Memory, com.sun.jna.Pointer
    public String toString() {
        return super.toString() + " (shared from " + this.this$0.toString() + ")";
    }
}
