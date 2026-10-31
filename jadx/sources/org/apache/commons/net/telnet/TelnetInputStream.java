package org.apache.commons.net.telnet;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
final class TelnetInputStream extends BufferedInputStream implements Runnable {
    private static final int EOF = -1;
    static final int STATE_CR = 8;
    static final int STATE_DATA = 0;
    static final int STATE_DO = 4;
    static final int STATE_DONT = 5;
    static final int STATE_IAC = 1;
    static final int STATE_IAC_SB = 9;
    static final int STATE_SB = 6;
    static final int STATE_SE = 7;
    static final int STATE_WILL = 2;
    static final int STATE_WONT = 3;
    private static final int WOULD_BLOCK = -2;
    private int bytesAvailable;
    private final TelnetClient client;
    private boolean hasReachedEOF;
    private IOException ioException;
    private volatile boolean isClosed;
    private final int[] queue;
    private int queueHead;
    private int queueTail;
    private boolean readIsWaiting;
    private int receiveState;
    private final int[] suboption;
    private int suboptionCount;
    private final Thread thread;
    private volatile boolean threaded;

    public TelnetInputStream(InputStream inputStream, TelnetClient telnetClient, boolean z9) {
        super(inputStream);
        this.client = telnetClient;
        this.receiveState = 0;
        this.isClosed = true;
        this.hasReachedEOF = false;
        this.queue = new int[2049];
        this.queueHead = 0;
        this.queueTail = 0;
        this.suboption = new int[telnetClient.maxSubnegotiationLength];
        this.bytesAvailable = 0;
        this.ioException = null;
        this.readIsWaiting = false;
        this.threaded = false;
        if (z9) {
            this.thread = new Thread(this);
        } else {
            this.thread = null;
        }
    }

    private boolean processChar(int i10) {
        boolean z9;
        synchronized (this.queue) {
            z9 = this.bytesAvailable == 0;
            while (this.bytesAvailable >= this.queue.length - 1) {
                if (!this.threaded) {
                    throw new IllegalStateException("Queue is full! Cannot process another character.");
                }
                this.queue.notify();
                try {
                    this.queue.wait();
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    throw e;
                }
            }
            if (this.readIsWaiting && this.threaded) {
                this.queue.notify();
            }
            int[] iArr = this.queue;
            int i11 = this.queueTail;
            iArr[i11] = i10;
            this.bytesAvailable++;
            int i12 = i11 + 1;
            this.queueTail = i12;
            if (i12 >= iArr.length) {
                this.queueTail = 0;
            }
        }
        return z9;
    }

    private int read(boolean z9) throws IOException {
        while (true) {
            if (!z9 && super.available() == 0) {
                return -2;
            }
            int i10 = super.read();
            if (i10 < 0) {
                return -1;
            }
            int i11 = i10 & 255;
            synchronized (this.client) {
                this.client.processAYTResponse();
            }
            this.client.spyRead(i11);
            switch (this.receiveState) {
                case 0:
                    break;
                case 1:
                    if (i11 != 240) {
                        switch (i11) {
                            case 250:
                                this.suboptionCount = 0;
                                this.receiveState = 6;
                                break;
                            case 251:
                                this.receiveState = 2;
                                break;
                            case TelnetCommand.WONT /* 252 */:
                                this.receiveState = 3;
                                break;
                            case TelnetCommand.f8149DO /* 253 */:
                                this.receiveState = 4;
                                break;
                            case TelnetCommand.DONT /* 254 */:
                                this.receiveState = 5;
                                break;
                            case 255:
                                this.receiveState = 0;
                                return i11;
                            default:
                                this.receiveState = 0;
                                this.client.processCommand(i11);
                                break;
                        }
                    } else {
                        this.receiveState = 0;
                        continue;
                    }
                    break;
                case 2:
                    synchronized (this.client) {
                        this.client.processWill(i11);
                        this.client.flushOutputStream();
                        break;
                    }
                    this.receiveState = 0;
                    continue;
                case 3:
                    synchronized (this.client) {
                        this.client.processWont(i11);
                        this.client.flushOutputStream();
                        break;
                    }
                    this.receiveState = 0;
                    continue;
                case 4:
                    synchronized (this.client) {
                        this.client.processDo(i11);
                        this.client.flushOutputStream();
                        break;
                    }
                    this.receiveState = 0;
                    continue;
                case 5:
                    synchronized (this.client) {
                        this.client.processDont(i11);
                        this.client.flushOutputStream();
                        break;
                    }
                    this.receiveState = 0;
                    continue;
                case 6:
                    if (i11 != 255) {
                        int i12 = this.suboptionCount;
                        int[] iArr = this.suboption;
                        if (i12 < iArr.length) {
                            this.suboptionCount = i12 + 1;
                            iArr[i12] = i11;
                        }
                        this.receiveState = 6;
                    } else {
                        this.receiveState = 9;
                        continue;
                    }
                    break;
                case 7:
                default:
                    return i11;
                case 8:
                    if (i11 == 0) {
                        continue;
                    }
                    break;
                case 9:
                    if (i11 != 240) {
                        if (i11 == 255) {
                            int i13 = this.suboptionCount;
                            int[] iArr2 = this.suboption;
                            if (i13 < iArr2.length) {
                                this.suboptionCount = i13 + 1;
                                iArr2[i13] = i11;
                            }
                        }
                        this.receiveState = 6;
                    } else {
                        synchronized (this.client) {
                            this.client.processSuboption(this.suboption, this.suboptionCount);
                            this.client.flushOutputStream();
                            break;
                        }
                        this.receiveState = 0;
                        continue;
                    }
                    break;
            }
            if (i11 != 255) {
                if (i11 != 13) {
                    this.receiveState = 0;
                    return i11;
                }
                synchronized (this.client) {
                    try {
                        if (this.client.requestedDont(0)) {
                            this.receiveState = 8;
                        } else {
                            this.receiveState = 0;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return i11;
            }
            this.receiveState = 1;
        }
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public int available() {
        synchronized (this.queue) {
            try {
                boolean z9 = this.threaded;
                int i10 = this.bytesAvailable;
                if (z9) {
                    return i10;
                }
                return i10 + super.available();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        synchronized (this.queue) {
            try {
                this.hasReachedEOF = true;
                this.isClosed = true;
                Thread thread = this.thread;
                if (thread != null && thread.isAlive()) {
                    this.thread.interrupt();
                }
                this.queue.notifyAll();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:61:0x0061 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Runnable
    public void run() {
        boolean zProcessChar;
        while (!this.isClosed) {
            try {
                try {
                    int i10 = read(true);
                    if (i10 < 0) {
                        break;
                    }
                    try {
                        zProcessChar = processChar(i10);
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        if (this.isClosed) {
                            synchronized (this.queue) {
                                this.isClosed = true;
                                this.hasReachedEOF = true;
                                this.queue.notify();
                                this.threaded = false;
                            }
                        }
                        zProcessChar = false;
                    }
                    if (zProcessChar) {
                        this.client.notifyInputListener();
                    }
                } catch (InterruptedIOException e) {
                    synchronized (this.queue) {
                        this.ioException = e;
                        this.queue.notifyAll();
                        try {
                            this.queue.wait(100L);
                        } catch (InterruptedException unused2) {
                            Thread.currentThread().interrupt();
                            if (this.isClosed) {
                                synchronized (this.queue) {
                                    this.isClosed = true;
                                    this.hasReachedEOF = true;
                                    this.queue.notify();
                                    this.threaded = false;
                                }
                            }
                        }
                    }
                } catch (RuntimeException unused3) {
                    super.close();
                }
            } catch (IOException e6) {
                synchronized (this.queue) {
                    this.ioException = e6;
                    this.client.notifyInputListener();
                }
            }
        }
        synchronized (this.queue) {
            this.isClosed = true;
            this.hasReachedEOF = true;
            this.queue.notify();
        }
        this.threaded = false;
    }

    public void start() {
        if (this.thread == null) {
            return;
        }
        this.isClosed = false;
        int priority = Thread.currentThread().getPriority() + 1;
        if (priority > 10) {
            priority = 10;
        }
        this.thread.setPriority(priority);
        this.thread.setDaemon(true);
        this.thread.start();
        this.threaded = true;
    }

    public TelnetInputStream(InputStream inputStream, TelnetClient telnetClient) {
        this(inputStream, telnetClient, true);
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() {
        synchronized (this.queue) {
            while (true) {
                try {
                    IOException iOException = this.ioException;
                    if (iOException == null) {
                        int i10 = this.bytesAvailable;
                        if (i10 == 0) {
                            if (this.hasReachedEOF) {
                                return -1;
                            }
                            if (this.threaded) {
                                this.queue.notify();
                                try {
                                    this.readIsWaiting = true;
                                    this.queue.wait();
                                    this.readIsWaiting = false;
                                } catch (InterruptedException e) {
                                    Thread.currentThread().interrupt();
                                    InterruptedIOException interruptedIOException = new InterruptedIOException("Fatal thread interruption during read.");
                                    interruptedIOException.initCause(e);
                                    throw interruptedIOException;
                                }
                            } else {
                                this.readIsWaiting = true;
                                boolean z9 = true;
                                while (true) {
                                    try {
                                        int i11 = read(z9);
                                        if (i11 < 0 && i11 != -2) {
                                            return i11;
                                        }
                                        if (i11 != -2) {
                                            try {
                                                processChar(i11);
                                            } catch (InterruptedException unused) {
                                                Thread.currentThread().interrupt();
                                                if (this.isClosed) {
                                                    return -1;
                                                }
                                            }
                                        }
                                        if (super.available() <= 0 || this.bytesAvailable >= this.queue.length - 1) {
                                            break;
                                            break;
                                        }
                                        z9 = false;
                                    } catch (InterruptedIOException e6) {
                                        synchronized (this.queue) {
                                            this.ioException = e6;
                                            this.queue.notifyAll();
                                            try {
                                                this.queue.wait(100L);
                                            } catch (InterruptedException unused2) {
                                                Thread.currentThread().interrupt();
                                            }
                                            return -1;
                                        }
                                    }
                                }
                                this.readIsWaiting = false;
                            }
                        } else {
                            int[] iArr = this.queue;
                            int i12 = this.queueHead;
                            int i13 = iArr[i12];
                            int i14 = i12 + 1;
                            this.queueHead = i14;
                            if (i14 >= iArr.length) {
                                this.queueHead = 0;
                            }
                            int i15 = i10 - 1;
                            this.bytesAvailable = i15;
                            if (i15 == 0 && this.threaded) {
                                this.queue.notify();
                            }
                            return i13;
                        }
                    } else {
                        this.ioException = null;
                        throw iOException;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) {
        int i12;
        if (i11 < 1) {
            return 0;
        }
        synchronized (this.queue) {
            int i13 = this.bytesAvailable;
            if (i11 > i13) {
                i11 = i13;
            }
        }
        int i14 = read();
        if (i14 == -1) {
            return -1;
        }
        int i15 = i10;
        while (true) {
            i12 = i15 + 1;
            bArr[i15] = (byte) i14;
            i11--;
            if (i11 <= 0 || (i14 = read()) == -1) {
                break;
            }
            i15 = i12;
        }
        return i12 - i10;
    }
}
