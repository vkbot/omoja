package com.sun.jna.internal;

import java.lang.ref.ReferenceQueue;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Cleaner {
    private static final Cleaner INSTANCE = new Cleaner();
    private final Thread cleanerThread;
    private Cleaner$CleanerRef firstCleanable;
    private final ReferenceQueue<Object> referenceQueue = new ReferenceQueue<>();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Cleaner() {
        Cleaner$1 cleaner$1 = new Cleaner$1(this);
        this.cleanerThread = cleaner$1;
        cleaner$1.setName("JNA Cleaner");
        cleaner$1.setDaemon(true);
        cleaner$1.start();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ ReferenceQueue access$000(Cleaner cleaner) {
        return cleaner.referenceQueue;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean access$100(Cleaner cleaner, Cleaner$CleanerRef cleaner$CleanerRef) {
        return cleaner.remove(cleaner$CleanerRef);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private synchronized Cleaner$CleanerRef add(Cleaner$CleanerRef cleaner$CleanerRef) {
        try {
            Cleaner$CleanerRef cleaner$CleanerRef2 = this.firstCleanable;
            if (cleaner$CleanerRef2 == null) {
                this.firstCleanable = cleaner$CleanerRef;
            } else {
                cleaner$CleanerRef.setNext(cleaner$CleanerRef2);
                this.firstCleanable.setPrevious(cleaner$CleanerRef);
                this.firstCleanable = cleaner$CleanerRef;
            }
        } catch (Throwable th) {
            throw th;
        }
        return cleaner$CleanerRef;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Cleaner getCleaner() {
        return INSTANCE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private synchronized boolean remove(Cleaner$CleanerRef cleaner$CleanerRef) {
        boolean z8;
        boolean z9;
        try {
            z8 = true;
            if (cleaner$CleanerRef == this.firstCleanable) {
                this.firstCleanable = cleaner$CleanerRef.getNext();
                z9 = true;
            } else {
                z9 = false;
            }
            if (cleaner$CleanerRef.getPrevious() != null) {
                cleaner$CleanerRef.getPrevious().setNext(cleaner$CleanerRef.getNext());
            }
            if (cleaner$CleanerRef.getNext() != null) {
                cleaner$CleanerRef.getNext().setPrevious(cleaner$CleanerRef.getPrevious());
            }
            if (cleaner$CleanerRef.getPrevious() == null && cleaner$CleanerRef.getNext() == null) {
                z8 = z9;
            }
            cleaner$CleanerRef.setNext(null);
            cleaner$CleanerRef.setPrevious(null);
        } catch (Throwable th) {
            throw th;
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public synchronized Cleaner$Cleanable register(Object obj, Runnable runnable) {
        return add(new Cleaner$CleanerRef(this, obj, this.referenceQueue, runnable));
    }
}
