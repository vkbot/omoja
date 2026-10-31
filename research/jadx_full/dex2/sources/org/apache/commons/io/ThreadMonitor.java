package org.apache.commons.io;

import java.time.Duration;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
final class ThreadMonitor implements Runnable {
    private final Thread thread;
    private final Duration timeout;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ThreadMonitor(Thread thread, Duration duration) {
        this.thread = thread;
        this.timeout = duration;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Thread start(Thread thread, Duration duration) {
        if (d.x(duration) || d.B(duration)) {
            return null;
        }
        Thread thread2 = new Thread(new ThreadMonitor(thread, duration), "ThreadMonitor");
        thread2.setDaemon(true);
        thread2.start();
        return thread2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void stop(Thread thread) {
        if (thread != null) {
            thread.interrupt();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        try {
            ThreadUtils.sleep(this.timeout);
            this.thread.interrupt();
        } catch (InterruptedException unused) {
        }
    }

    public static Thread start(Duration duration) {
        return start(Thread.currentThread(), duration);
    }
}
