package org.libpag;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;

/* JADX INFO: loaded from: classes2.dex */
class d extends Handler {

    private static final class a implements Runnable {
        private final b a;
        private boolean b;
        private boolean c = false;

        public a(b bVar) {
            this.a = bVar;
        }

        public boolean a(Handler handler, long j) {
            if (!handler.post(this)) {
                return false;
            }
            synchronized (this) {
                try {
                    if (j > 0) {
                        long jUptimeMillis = SystemClock.uptimeMillis() + j;
                        while (!this.b) {
                            long jUptimeMillis2 = jUptimeMillis - SystemClock.uptimeMillis();
                            if (jUptimeMillis2 <= 0) {
                                this.c = true;
                                return false;
                            }
                            try {
                                wait(jUptimeMillis2);
                            } catch (InterruptedException unused) {
                            }
                        }
                    } else {
                        while (!this.b) {
                            try {
                                wait();
                            } catch (InterruptedException unused2) {
                            }
                        }
                    }
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.a.run();
                synchronized (this) {
                    this.b = true;
                    notifyAll();
                    this.a.a(this.c);
                }
            } catch (Throwable th) {
                synchronized (this) {
                    this.b = true;
                    notifyAll();
                    this.a.a(this.c);
                    throw th;
                }
            }
        }
    }

    interface b extends Runnable {
        void a(boolean z);
    }

    public d(Looper looper) {
        super(looper);
    }

    public final boolean a(b bVar, long j) {
        if (bVar == null) {
            throw new IllegalArgumentException("runnable must not be null");
        }
        if (j < 0) {
            throw new IllegalArgumentException("timeout must be non-negative");
        }
        if (Looper.myLooper() != getLooper()) {
            return new a(bVar).a(this, j);
        }
        bVar.run();
        return true;
    }
}
