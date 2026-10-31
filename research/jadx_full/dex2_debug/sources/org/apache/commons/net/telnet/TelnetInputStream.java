package org.apache.commons.net.telnet;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TelnetInputStream(InputStream inputStream, TelnetClient telnetClient, boolean z) {
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
        if (z) {
            this.thread = new Thread(this);
        } else {
            this.thread = null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean processChar(int i) {
        boolean z;
        synchronized (this.queue) {
            z = this.bytesAvailable == 0;
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
            int i2 = this.queueTail;
            iArr[i2] = i;
            this.bytesAvailable++;
            int i3 = i2 + 1;
            this.queueTail = i3;
            if (i3 >= iArr.length) {
                this.queueTail = 0;
            }
        }
        return z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int read(boolean z) throws IOException {
        while (true) {
            if (!z && super.available() == 0) {
                return WOULD_BLOCK;
            }
            int i = super.read();
            if (i < 0) {
                return -1;
            }
            int i2 = i & 255;
            synchronized (this.client) {
                this.client.processAYTResponse();
            }
            this.client.spyRead(i2);
            switch (this.receiveState) {
                case 0:
                    break;
                case 1:
                    if (i2 != 240) {
                        switch (i2) {
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
                            case TelnetCommand.DO /* 253 */:
                                this.receiveState = 4;
                                break;
                            case TelnetCommand.DONT /* 254 */:
                                this.receiveState = 5;
                                break;
                            case 255:
                                this.receiveState = 0;
                                return i2;
                            default:
                                this.receiveState = 0;
                                this.client.processCommand(i2);
                                break;
                        }
                    } else {
                        this.receiveState = 0;
                        continue;
                    }
                    break;
                case 2:
                    synchronized (this.client) {
                        this.client.processWill(i2);
                        this.client.flushOutputStream();
                        break;
                    }
                    this.receiveState = 0;
                    continue;
                case 3:
                    synchronized (this.client) {
                        this.client.processWont(i2);
                        this.client.flushOutputStream();
                        break;
                    }
                    this.receiveState = 0;
                    continue;
                case 4:
                    synchronized (this.client) {
                        this.client.processDo(i2);
                        this.client.flushOutputStream();
                        break;
                    }
                    this.receiveState = 0;
                    continue;
                case 5:
                    synchronized (this.client) {
                        this.client.processDont(i2);
                        this.client.flushOutputStream();
                        break;
                    }
                    this.receiveState = 0;
                    continue;
                case 6:
                    if (i2 != 255) {
                        int i3 = this.suboptionCount;
                        int[] iArr = this.suboption;
                        if (i3 < iArr.length) {
                            this.suboptionCount = i3 + 1;
                            iArr[i3] = i2;
                        }
                        this.receiveState = 6;
                    } else {
                        this.receiveState = 9;
                        continue;
                    }
                    break;
                case 7:
                default:
                    return i2;
                case 8:
                    if (i2 == 0) {
                        continue;
                    }
                    break;
                case 9:
                    if (i2 != 240) {
                        if (i2 == 255) {
                            int i4 = this.suboptionCount;
                            int[] iArr2 = this.suboption;
                            if (i4 < iArr2.length) {
                                this.suboptionCount = i4 + 1;
                                iArr2[i4] = i2;
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
            if (i2 != 255) {
                if (i2 != 13) {
                    this.receiveState = 0;
                    return i2;
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
                return i2;
            }
            this.receiveState = 1;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public int available() {
        synchronized (this.queue) {
            try {
                boolean z = this.threaded;
                int i = this.bytesAvailable;
                if (z) {
                    return i;
                }
                return i + super.available();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:61:0x0061 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Runnable
    public void run() {
        boolean zProcessChar;
        while (!this.isClosed) {
            try {
                try {
                    int i = read(true);
                    if (i < 0) {
                        break;
                    }
                    try {
                        zProcessChar = processChar(i);
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
            } catch (IOException e2) {
                synchronized (this.queue) {
                    this.ioException = e2;
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
                        int i = this.bytesAvailable;
                        if (i == 0) {
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
                                boolean z = true;
                                while (true) {
                                    try {
                                        int i2 = read(z);
                                        if (i2 < 0 && i2 != WOULD_BLOCK) {
                                            return i2;
                                        }
                                        if (i2 != WOULD_BLOCK) {
                                            try {
                                                processChar(i2);
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
                                        z = false;
                                    } catch (InterruptedIOException e2) {
                                        synchronized (this.queue) {
                                            this.ioException = e2;
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
                            int i3 = this.queueHead;
                            int i4 = iArr[i3];
                            int i5 = i3 + 1;
                            this.queueHead = i5;
                            if (i5 >= iArr.length) {
                                this.queueHead = 0;
                            }
                            int i6 = i - 1;
                            this.bytesAvailable = i6;
                            if (i6 == 0 && this.threaded) {
                                this.queue.notify();
                            }
                            return i4;
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
    public int read(byte[] bArr, int i, int i2) {
        int i3;
        if (i2 < 1) {
            return 0;
        }
        synchronized (this.queue) {
            int i4 = this.bytesAvailable;
            if (i2 > i4) {
                i2 = i4;
            }
        }
        int i5 = read();
        if (i5 == -1) {
            return -1;
        }
        int i6 = i;
        while (true) {
            i3 = i6 + 1;
            bArr[i6] = (byte) i5;
            i2--;
            if (i2 <= 0 || (i5 = read()) == -1) {
                break;
            }
            i6 = i3;
        }
        return i3 - i;
    }
}
