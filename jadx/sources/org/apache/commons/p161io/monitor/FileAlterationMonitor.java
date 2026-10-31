package org.apache.commons.p161io.monitor;

import java.time.Duration;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ThreadFactory;
import java.util.stream.Stream;
import org.apache.commons.p161io.ThreadUtils;
import org.apache.commons.p161io.filefilter.C2806b;
import p094i7.C1754c;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class FileAlterationMonitor implements Runnable {
    private static final FileAlterationObserver[] EMPTY_ARRAY = new FileAlterationObserver[0];
    private final long intervalMillis;
    private final List<FileAlterationObserver> observers;
    private volatile boolean running;
    private Thread thread;
    private ThreadFactory threadFactory;

    public FileAlterationMonitor(long j10, Collection<FileAlterationObserver> collection) {
        this(j10, (FileAlterationObserver[]) ((Collection) Optional.ofNullable(collection).orElse(Collections.EMPTY_LIST)).toArray(EMPTY_ARRAY));
    }

    public void addObserver(FileAlterationObserver fileAlterationObserver) {
        if (fileAlterationObserver != null) {
            this.observers.add(fileAlterationObserver);
        }
    }

    public long getInterval() {
        return this.intervalMillis;
    }

    public Iterable<FileAlterationObserver> getObservers() {
        return new ArrayList(this.observers);
    }

    public void removeObserver(FileAlterationObserver fileAlterationObserver) {
        if (fileAlterationObserver != null) {
            this.observers.removeIf(new C1754c(6, fileAlterationObserver));
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        while (this.running) {
            this.observers.forEach(new C2894a());
            if (!this.running) {
                return;
            } else {
                try {
                    ThreadUtils.sleep(Duration.ofMillis(this.intervalMillis));
                } catch (InterruptedException unused) {
                }
            }
        }
    }

    public synchronized void setThreadFactory(ThreadFactory threadFactory) {
        this.threadFactory = threadFactory;
    }

    public synchronized void start() {
        try {
            if (this.running) {
                throw new IllegalStateException("Monitor is already running");
            }
            Iterator<FileAlterationObserver> it = this.observers.iterator();
            while (it.hasNext()) {
                it.next().initialize();
            }
            this.running = true;
            ThreadFactory threadFactory = this.threadFactory;
            if (threadFactory != null) {
                this.thread = threadFactory.newThread(this);
            } else {
                this.thread = new Thread(this);
            }
            this.thread.start();
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void stop(long j10) {
        if (!this.running) {
            throw new IllegalStateException("Monitor is not running");
        }
        this.running = false;
        try {
            this.thread.interrupt();
            this.thread.join(j10);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
        Iterator<FileAlterationObserver> it = this.observers.iterator();
        while (it.hasNext()) {
            it.next().destroy();
        }
    }

    public FileAlterationMonitor(long j10) {
        this.observers = new CopyOnWriteArrayList();
        this.intervalMillis = j10;
    }

    public FileAlterationMonitor() {
        this(10000L);
    }

    public FileAlterationMonitor(long j10, FileAlterationObserver... fileAlterationObserverArr) {
        this(j10);
        if (fileAlterationObserverArr != null) {
            Stream.of((Object[]) fileAlterationObserverArr).forEach(new C2806b(2, this));
        }
    }

    public synchronized void stop() {
        stop(this.intervalMillis);
    }
}
