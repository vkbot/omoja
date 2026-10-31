package org.apache.commons.io.input;

import e0.j2;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.nio.ByteBuffer;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import org.apache.commons.io.IOUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class ReadAheadInputStream extends FilterInputStream {
    private static final ThreadLocal<byte[]> BYTE_ARRAY_1 = new androidx.emoji2.text.flatbuffer.b(new androidx.emoji2.text.flatbuffer.a(6), 1);
    private ByteBuffer activeBuffer;
    private final Condition asyncReadComplete;
    private boolean endOfStream;
    private final ExecutorService executorService;
    private boolean isClosed;
    private boolean isReading;
    private boolean isUnderlyingInputStreamBeingClosed;
    private final AtomicBoolean isWaiting;
    private boolean readAborted;
    private ByteBuffer readAheadBuffer;
    private Throwable readException;
    private boolean readInProgress;
    private final boolean shutdownExecutorService;
    private final ReentrantLock stateChangeLock;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private ReadAheadInputStream(InputStream inputStream, int i, ExecutorService executorService, boolean z) {
        super(inputStream);
        Objects.requireNonNull(inputStream, "inputStream");
        ReentrantLock reentrantLock = new ReentrantLock();
        this.stateChangeLock = reentrantLock;
        this.isWaiting = new AtomicBoolean();
        this.asyncReadComplete = reentrantLock.newCondition();
        if (i <= 0) {
            n0.b.v("bufferSizeInBytes <= 0, bufferSizeInBytes = %,d", new Object[]{Integer.valueOf(i)});
            throw null;
        }
        Objects.requireNonNull(executorService, "executorService");
        this.executorService = executorService;
        this.shutdownExecutorService = z;
        this.activeBuffer = ByteBuffer.allocate(i);
        this.readAheadBuffer = ByteBuffer.allocate(i);
        this.activeBuffer.flip();
        this.readAheadBuffer.flip();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void b(ReadAheadInputStream readAheadInputStream, byte[] bArr) {
        readAheadInputStream.lambda$readAsync$1(bArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ReadAheadInputStream$Builder builder() {
        return new ReadAheadInputStream$Builder();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Thread c(Runnable runnable) {
        return newDaemonThread(runnable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void checkReadException() throws IOException {
        if (this.readAborted) {
            Throwable th = this.readException;
            if (!(th instanceof IOException)) {
                throw new IOException(th);
            }
            throw ((IOException) th);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void closeUnderlyingInputStreamIfNecessary() {
        this.stateChangeLock.lock();
        boolean z = false;
        try {
            this.isReading = false;
            if (this.isClosed && !this.isUnderlyingInputStreamBeingClosed) {
                z = true;
            }
            this.stateChangeLock.unlock();
            if (z) {
                try {
                    super.close();
                } catch (IOException unused) {
                }
            }
        } catch (Throwable th) {
            this.stateChangeLock.unlock();
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean isEndOfStream() {
        return (this.activeBuffer.hasRemaining() || this.readAheadBuffer.hasRemaining() || !this.endOfStream) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$readAsync$1(byte[] bArr) {
        this.stateChangeLock.lock();
        try {
            if (this.isClosed) {
                this.readInProgress = false;
                this.stateChangeLock.unlock();
                return;
            }
            this.isReading = true;
            this.stateChangeLock.unlock();
            int length = bArr.length;
            int i = 0;
            int i2 = 0;
            do {
                try {
                    i2 = ((FilterInputStream) this).in.read(bArr, i, length);
                    if (i2 > 0) {
                        i += i2;
                        length -= i2;
                        if (length <= 0) {
                            break;
                        }
                    } else {
                        break;
                    }
                } catch (Throwable th) {
                    try {
                        if (th instanceof Error) {
                            throw th;
                        }
                        this.stateChangeLock.lock();
                        try {
                            this.readAheadBuffer.limit(i);
                            if (i2 < 0 || (th instanceof EOFException)) {
                                this.endOfStream = true;
                            } else {
                                this.readAborted = true;
                                this.readException = th;
                            }
                            this.readInProgress = false;
                            signalAsyncReadComplete();
                            this.stateChangeLock.unlock();
                            closeUnderlyingInputStreamIfNecessary();
                            return;
                        } catch (Throwable th2) {
                            this.stateChangeLock.unlock();
                            throw th2;
                        }
                    } catch (Throwable th3) {
                        this.stateChangeLock.lock();
                        try {
                            this.readAheadBuffer.limit(i);
                            if (i2 < 0 || (th instanceof EOFException)) {
                                this.endOfStream = true;
                            } else {
                                this.readAborted = true;
                                this.readException = th;
                            }
                            this.readInProgress = false;
                            signalAsyncReadComplete();
                            this.stateChangeLock.unlock();
                            closeUnderlyingInputStreamIfNecessary();
                            throw th3;
                        } catch (Throwable th4) {
                            this.stateChangeLock.unlock();
                            throw th4;
                        }
                    }
                }
            } while (!this.isWaiting.get());
            this.stateChangeLock.lock();
            try {
                this.readAheadBuffer.limit(i);
                if (i2 < 0) {
                    this.endOfStream = true;
                }
                this.readInProgress = false;
                signalAsyncReadComplete();
                this.stateChangeLock.unlock();
                closeUnderlyingInputStreamIfNecessary();
            } catch (Throwable th5) {
                this.stateChangeLock.unlock();
                throw th5;
            }
        } catch (Throwable th6) {
            this.stateChangeLock.unlock();
            throw th6;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ byte[] lambda$static$0() {
        return new byte[1];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static Thread newDaemonThread(Runnable runnable) {
        Thread thread = new Thread(runnable, "commons-io-read-ahead");
        thread.setDaemon(true);
        return thread;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static ExecutorService newExecutorService() {
        return Executors.newSingleThreadExecutor(new k(0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void readAsync() {
        this.stateChangeLock.lock();
        try {
            byte[] bArrArray = this.readAheadBuffer.array();
            if (!this.endOfStream && !this.readInProgress) {
                checkReadException();
                this.readAheadBuffer.position(0);
                this.readAheadBuffer.flip();
                this.readInProgress = true;
                this.stateChangeLock.unlock();
                this.executorService.execute(new j2(22, this, bArrArray));
                return;
            }
            this.stateChangeLock.unlock();
        } catch (Throwable th) {
            this.stateChangeLock.unlock();
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void signalAsyncReadComplete() {
        this.stateChangeLock.lock();
        try {
            this.asyncReadComplete.signalAll();
        } finally {
            this.stateChangeLock.unlock();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private long skipInternal(long j) throws IOException {
        if (!this.stateChangeLock.isLocked()) {
            j1.i.l("Expected stateChangeLock to be locked");
            return 0L;
        }
        waitForAsyncReadComplete();
        if (isEndOfStream()) {
            return 0L;
        }
        if (available() < j) {
            long jAvailable = available();
            this.activeBuffer.position(0);
            this.activeBuffer.flip();
            this.readAheadBuffer.position(0);
            this.readAheadBuffer.flip();
            long jSkip = ((FilterInputStream) this).in.skip(j - jAvailable);
            readAsync();
            return jAvailable + jSkip;
        }
        int iRemaining = ((int) j) - this.activeBuffer.remaining();
        if (iRemaining <= 0) {
            j1.i.l(ai.onnxruntime.a.e(iRemaining, "Expected toSkip > 0, actual: "));
            return 0L;
        }
        this.activeBuffer.position(0);
        this.activeBuffer.flip();
        ByteBuffer byteBuffer = this.readAheadBuffer;
        byteBuffer.position(byteBuffer.position() + iRemaining);
        swapBuffers();
        readAsync();
        return j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void swapBuffers() {
        ByteBuffer byteBuffer = this.activeBuffer;
        this.activeBuffer = this.readAheadBuffer;
        this.readAheadBuffer = byteBuffer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void waitForAsyncReadComplete() throws IOException {
        this.stateChangeLock.lock();
        try {
            try {
                this.isWaiting.set(true);
                while (this.readInProgress) {
                    this.asyncReadComplete.await();
                }
                try {
                    this.isWaiting.set(false);
                    this.stateChangeLock.unlock();
                    checkReadException();
                } catch (Throwable th) {
                    this.stateChangeLock.unlock();
                    throw th;
                }
            } catch (Throwable th2) {
                try {
                    this.isWaiting.set(false);
                    throw th2;
                } finally {
                    this.stateChangeLock.unlock();
                }
            }
        } catch (InterruptedException e) {
            InterruptedIOException interruptedIOException = new InterruptedIOException(e.getMessage());
            interruptedIOException.initCause(e);
            throw interruptedIOException;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ byte[] y() {
        return lambda$static$0();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() {
        this.stateChangeLock.lock();
        try {
            return (int) Math.min(2147483647L, ((long) this.activeBuffer.remaining()) + ((long) this.readAheadBuffer.remaining()));
        } finally {
            this.stateChangeLock.unlock();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Bottom block not found for handler: all -> 0x003c */
    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void close() throws IOException {
        this.stateChangeLock.lock();
        try {
            if (this.isClosed) {
                this.stateChangeLock.unlock();
                return;
            }
            boolean z = true;
            this.isClosed = true;
            if (this.isReading) {
                z = false;
            } else {
                this.isUnderlyingInputStreamBeingClosed = true;
            }
            this.stateChangeLock.unlock();
            if (this.shutdownExecutorService) {
                try {
                    this.executorService.shutdownNow();
                    this.executorService.awaitTermination(Long.MAX_VALUE, TimeUnit.SECONDS);
                    if (z) {
                        super.close();
                    }
                } catch (InterruptedException e) {
                    InterruptedIOException interruptedIOException = new InterruptedIOException(e.getMessage());
                    interruptedIOException.initCause(e);
                    throw interruptedIOException;
                }
            }
        } catch (Throwable th) {
            this.stateChangeLock.unlock();
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        IOUtils.checkFromIndexSize(bArr, i, i2);
        if (i2 == 0) {
            return 0;
        }
        if (!this.activeBuffer.hasRemaining()) {
            this.stateChangeLock.lock();
            try {
                waitForAsyncReadComplete();
                if (!this.readAheadBuffer.hasRemaining()) {
                    readAsync();
                    waitForAsyncReadComplete();
                    if (isEndOfStream()) {
                        this.stateChangeLock.unlock();
                        return -1;
                    }
                }
                swapBuffers();
                readAsync();
                this.stateChangeLock.unlock();
            } catch (Throwable th) {
                this.stateChangeLock.unlock();
                throw th;
            }
        }
        int iMin = Math.min(i2, this.activeBuffer.remaining());
        this.activeBuffer.get(bArr, i, iMin);
        return iMin;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) {
        if (j <= 0) {
            return 0L;
        }
        if (j <= this.activeBuffer.remaining()) {
            ByteBuffer byteBuffer = this.activeBuffer;
            byteBuffer.position(byteBuffer.position() + ((int) j));
            return j;
        }
        this.stateChangeLock.lock();
        try {
            return skipInternal(j);
        } finally {
            this.stateChangeLock.unlock();
        }
    }

    private ReadAheadInputStream(ReadAheadInputStream$Builder readAheadInputStream$Builder) {
        this(readAheadInputStream$Builder.getInputStream(), readAheadInputStream$Builder.getBufferSize(), ReadAheadInputStream$Builder.access$100(readAheadInputStream$Builder) != null ? ReadAheadInputStream$Builder.access$100(readAheadInputStream$Builder) : newExecutorService(), ReadAheadInputStream$Builder.access$100(readAheadInputStream$Builder) == null);
    }

    @Deprecated
    public ReadAheadInputStream(InputStream inputStream, int i) {
        this(inputStream, i, newExecutorService(), true);
    }

    @Deprecated
    public ReadAheadInputStream(InputStream inputStream, int i, ExecutorService executorService) {
        this(inputStream, i, executorService, false);
    }

    public /* synthetic */ ReadAheadInputStream(ReadAheadInputStream$Builder readAheadInputStream$Builder, ReadAheadInputStream$1 readAheadInputStream$1) {
        this(readAheadInputStream$Builder);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() {
        byte b;
        if (this.activeBuffer.hasRemaining()) {
            b = this.activeBuffer.get();
        } else {
            byte[] bArr = BYTE_ARRAY_1.get();
            bArr[0] = 0;
            if (read(bArr, 0, 1) == -1) {
                return -1;
            }
            b = bArr[0];
        }
        return b & 255;
    }
}
