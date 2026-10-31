package com.sun.jna.internal;

import java.lang.ref.PhantomReference;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class Cleaner {
    private static final Cleaner INSTANCE = new Cleaner();
    private final Thread cleanerThread;
    private CleanerRef firstCleanable;
    private final ReferenceQueue<Object> referenceQueue = new ReferenceQueue<>();

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public interface Cleanable {
        void clean();
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class CleanerRef extends PhantomReference<Object> implements Cleanable {
        private final Cleaner cleaner;
        private final Runnable cleanupTask;
        private CleanerRef next;
        private CleanerRef previous;

        public CleanerRef(Cleaner cleaner, Object obj, ReferenceQueue<? super Object> referenceQueue, Runnable runnable) {
            super(obj, referenceQueue);
            this.cleaner = cleaner;
            this.cleanupTask = runnable;
        }

        @Override // com.sun.jna.internal.Cleaner.Cleanable
        public void clean() {
            if (this.cleaner.remove(this)) {
                this.cleanupTask.run();
            }
        }

        public CleanerRef getNext() {
            return this.next;
        }

        public CleanerRef getPrevious() {
            return this.previous;
        }

        public void setNext(CleanerRef cleanerRef) {
            this.next = cleanerRef;
        }

        public void setPrevious(CleanerRef cleanerRef) {
            this.previous = cleanerRef;
        }
    }

    private Cleaner() {
        Thread thread = new Thread() { // from class: com.sun.jna.internal.Cleaner.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                while (true) {
                    try {
                        Reference referenceRemove = Cleaner.this.referenceQueue.remove();
                        if (referenceRemove instanceof CleanerRef) {
                            ((CleanerRef) referenceRemove).clean();
                        }
                    } catch (InterruptedException unused) {
                        return;
                    } catch (Exception e) {
                        Logger.getLogger(Cleaner.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
                    }
                }
            }
        };
        this.cleanerThread = thread;
        thread.setName("JNA Cleaner");
        thread.setDaemon(true);
        thread.start();
    }

    private synchronized CleanerRef add(CleanerRef cleanerRef) {
        try {
            CleanerRef cleanerRef2 = this.firstCleanable;
            if (cleanerRef2 == null) {
                this.firstCleanable = cleanerRef;
            } else {
                cleanerRef.setNext(cleanerRef2);
                this.firstCleanable.setPrevious(cleanerRef);
                this.firstCleanable = cleanerRef;
            }
        } catch (Throwable th) {
            throw th;
        }
        return cleanerRef;
    }

    public static Cleaner getCleaner() {
        return INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean remove(CleanerRef cleanerRef) {
        boolean z9;
        boolean z10;
        try {
            z9 = true;
            if (cleanerRef == this.firstCleanable) {
                this.firstCleanable = cleanerRef.getNext();
                z10 = true;
            } else {
                z10 = false;
            }
            if (cleanerRef.getPrevious() != null) {
                cleanerRef.getPrevious().setNext(cleanerRef.getNext());
            }
            if (cleanerRef.getNext() != null) {
                cleanerRef.getNext().setPrevious(cleanerRef.getPrevious());
            }
            if (cleanerRef.getPrevious() == null && cleanerRef.getNext() == null) {
                z9 = z10;
            }
            cleanerRef.setNext(null);
            cleanerRef.setPrevious(null);
        } catch (Throwable th) {
            throw th;
        }
        return z9;
    }

    public synchronized Cleanable register(Object obj, Runnable runnable) {
        return add(new CleanerRef(this, obj, this.referenceQueue, runnable));
    }
}
