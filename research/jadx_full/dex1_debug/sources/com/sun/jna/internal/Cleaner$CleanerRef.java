package com.sun.jna.internal;

import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Cleaner$CleanerRef extends PhantomReference<Object> implements Cleaner$Cleanable {
    private final Cleaner cleaner;
    private final Runnable cleanupTask;
    private Cleaner$CleanerRef next;
    private Cleaner$CleanerRef previous;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Cleaner$CleanerRef(Cleaner cleaner, Object obj, ReferenceQueue<? super Object> referenceQueue, Runnable runnable) {
        super(obj, referenceQueue);
        this.cleaner = cleaner;
        this.cleanupTask = runnable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.internal.Cleaner$Cleanable
    public void clean() {
        if (Cleaner.access$100(this.cleaner, this)) {
            this.cleanupTask.run();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Cleaner$CleanerRef getNext() {
        return this.next;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Cleaner$CleanerRef getPrevious() {
        return this.previous;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setNext(Cleaner$CleanerRef cleaner$CleanerRef) {
        this.next = cleaner$CleanerRef;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPrevious(Cleaner$CleanerRef cleaner$CleanerRef) {
        this.previous = cleaner$CleanerRef;
    }
}
