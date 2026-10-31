package androidx.core.provider;

import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SelfDestructiveThread$3 implements Runnable {
    final /* synthetic */ SelfDestructiveThread this$0;
    final /* synthetic */ Callable val$callable;
    final /* synthetic */ Condition val$cond;
    final /* synthetic */ AtomicReference val$holder;
    final /* synthetic */ ReentrantLock val$lock;
    final /* synthetic */ AtomicBoolean val$running;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public SelfDestructiveThread$3(SelfDestructiveThread selfDestructiveThread, AtomicReference atomicReference, Callable callable, ReentrantLock reentrantLock, AtomicBoolean atomicBoolean, Condition condition) {
        this.this$0 = selfDestructiveThread;
        this.val$holder = atomicReference;
        this.val$callable = callable;
        this.val$lock = reentrantLock;
        this.val$running = atomicBoolean;
        this.val$cond = condition;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        try {
            this.val$holder.set(this.val$callable.call());
        } catch (Exception unused) {
        }
        this.val$lock.lock();
        try {
            this.val$running.set(false);
            this.val$cond.signal();
        } finally {
            this.val$lock.unlock();
        }
    }
}
