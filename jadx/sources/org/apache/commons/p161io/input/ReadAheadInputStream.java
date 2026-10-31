package org.apache.commons.p161io.input;

import ai.onnxruntime.AbstractC0074a;
import androidx.emoji2.text.flatbuffer.C0489a;
import androidx.emoji2.text.flatbuffer.C0490b;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.nio.ByteBuffer;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.UByte;
import org.apache.commons.p161io.IOUtils;
import org.apache.commons.p161io.build.AbstractStreamBuilder;
import p047e0.RunnableC1375j2;
import p099j1.C1929i;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class ReadAheadInputStream extends FilterInputStream {
    private static final ThreadLocal<byte[]> BYTE_ARRAY_1 = new C0490b(new C0489a(6), 1);
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

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Builder extends AbstractStreamBuilder<ReadAheadInputStream, Builder> {
        private ExecutorService executorService;

        @Override // org.apache.commons.p161io.function.IOSupplier
        public ReadAheadInputStream get() {
            return new ReadAheadInputStream(this);
        }

        public Builder setExecutorService(ExecutorService executorService) {
            this.executorService = executorService;
            return this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private ReadAheadInputStream(InputStream inputStream, int i10, ExecutorService executorService, boolean z9) {
        super(inputStream);
        Objects.requireNonNull(inputStream, "inputStream");
        ReentrantLock reentrantLock = new ReentrantLock();
        this.stateChangeLock = reentrantLock;
        this.isWaiting = new AtomicBoolean();
        this.asyncReadComplete = reentrantLock.newCondition();
        if (i10 <= 0) {
            C2467b.m3832v("bufferSizeInBytes <= 0, bufferSizeInBytes = %,d", new Object[]{Integer.valueOf(i10)});
            throw null;
        }
        Objects.requireNonNull(executorService, "executorService");
        this.executorService = executorService;
        this.shutdownExecutorService = z9;
        this.activeBuffer = ByteBuffer.allocate(i10);
        this.readAheadBuffer = ByteBuffer.allocate(i10);
        this.activeBuffer.flip();
        this.readAheadBuffer.flip();
    }

    public static Builder builder() {
        return new Builder();
    }

    private void checkReadException() throws IOException {
        if (this.readAborted) {
            Throwable th = this.readException;
            if (!(th instanceof IOException)) {
                throw new IOException(th);
            }
            throw ((IOException) th);
        }
    }

    private void closeUnderlyingInputStreamIfNecessary() {
        this.stateChangeLock.lock();
        boolean z9 = false;
        try {
            this.isReading = false;
            if (this.isClosed && !this.isUnderlyingInputStreamBeingClosed) {
                z9 = true;
            }
            this.stateChangeLock.unlock();
            if (z9) {
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

    private boolean isEndOfStream() {
        return (this.activeBuffer.hasRemaining() || this.readAheadBuffer.hasRemaining() || !this.endOfStream) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$readAsync$1(byte[] bArr) {
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
            int i10 = 0;
            int i11 = 0;
            do {
                try {
                    i11 = ((FilterInputStream) this).in.read(bArr, i10, length);
                    if (i11 > 0) {
                        i10 += i11;
                        length -= i11;
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
                            this.readAheadBuffer.limit(i10);
                            if (i11 < 0 || (th instanceof EOFException)) {
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
                            this.readAheadBuffer.limit(i10);
                            if (i11 < 0 || (th instanceof EOFException)) {
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
                this.readAheadBuffer.limit(i10);
                if (i11 < 0) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ byte[] lambda$static$0() {
        return new byte[1];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Thread newDaemonThread(Runnable runnable) {
        Thread thread = new Thread(runnable, "commons-io-read-ahead");
        thread.setDaemon(true);
        return thread;
    }

    private static ExecutorService newExecutorService() {
        return Executors.newSingleThreadExecutor(new ThreadFactoryC2881k(0));
    }

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
                this.executorService.execute(new RunnableC1375j2(22, this, bArrArray));
                return;
            }
            this.stateChangeLock.unlock();
        } catch (Throwable th) {
            this.stateChangeLock.unlock();
            throw th;
        }
    }

    private void signalAsyncReadComplete() {
        this.stateChangeLock.lock();
        try {
            this.asyncReadComplete.signalAll();
        } finally {
            this.stateChangeLock.unlock();
        }
    }

    private long skipInternal(long j10) throws IOException {
        if (!this.stateChangeLock.isLocked()) {
            C1929i.m3030l("Expected stateChangeLock to be locked");
            return 0L;
        }
        waitForAsyncReadComplete();
        if (isEndOfStream()) {
            return 0L;
        }
        if (available() < j10) {
            long jAvailable = available();
            this.activeBuffer.position(0);
            this.activeBuffer.flip();
            this.readAheadBuffer.position(0);
            this.readAheadBuffer.flip();
            long jSkip = ((FilterInputStream) this).in.skip(j10 - jAvailable);
            readAsync();
            return jAvailable + jSkip;
        }
        int iRemaining = ((int) j10) - this.activeBuffer.remaining();
        if (iRemaining <= 0) {
            C1929i.m3030l(AbstractC0074a.m154e(iRemaining, "Expected toSkip > 0, actual: "));
            return 0L;
        }
        this.activeBuffer.position(0);
        this.activeBuffer.flip();
        ByteBuffer byteBuffer = this.readAheadBuffer;
        byteBuffer.position(byteBuffer.position() + iRemaining);
        swapBuffers();
        readAsync();
        return j10;
    }

    private void swapBuffers() {
        ByteBuffer byteBuffer = this.activeBuffer;
        this.activeBuffer = this.readAheadBuffer;
        this.readAheadBuffer = byteBuffer;
    }

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
            } catch (InterruptedException e) {
                InterruptedIOException interruptedIOException = new InterruptedIOException(e.getMessage());
                interruptedIOException.initCause(e);
                throw interruptedIOException;
            }
        } catch (Throwable th2) {
            try {
                this.isWaiting.set(false);
                throw th2;
            } finally {
                this.stateChangeLock.unlock();
            }
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() {
        this.stateChangeLock.lock();
        try {
            return (int) Math.min(2147483647L, ((long) this.activeBuffer.remaining()) + ((long) this.readAheadBuffer.remaining()));
        } finally {
            this.stateChangeLock.unlock();
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x003c */
    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void close() throws java.io.IOException {
        /*
            r5 = this;
            java.util.concurrent.locks.ReentrantLock r0 = r5.stateChangeLock
            r0.lock()
            boolean r0 = r5.isClosed     // Catch: java.lang.Throwable -> L19
            if (r0 == 0) goto Lf
            java.util.concurrent.locks.ReentrantLock r0 = r5.stateChangeLock
            r0.unlock()
            return
        Lf:
            r0 = 1
            r5.isClosed = r0     // Catch: java.lang.Throwable -> L19
            boolean r1 = r5.isReading     // Catch: java.lang.Throwable -> L19
            if (r1 != 0) goto L1b
            r5.isUnderlyingInputStreamBeingClosed = r0     // Catch: java.lang.Throwable -> L19
            goto L1c
        L19:
            r0 = move-exception
            goto L53
        L1b:
            r0 = 0
        L1c:
            java.util.concurrent.locks.ReentrantLock r1 = r5.stateChangeLock
            r1.unlock()
            boolean r1 = r5.shutdownExecutorService
            if (r1 == 0) goto L52
            java.util.concurrent.ExecutorService r1 = r5.executorService     // Catch: java.lang.Throwable -> L3c java.lang.InterruptedException -> L3e
            r1.shutdownNow()     // Catch: java.lang.Throwable -> L3c java.lang.InterruptedException -> L3e
            java.util.concurrent.ExecutorService r1 = r5.executorService     // Catch: java.lang.Throwable -> L3c java.lang.InterruptedException -> L3e
            java.util.concurrent.TimeUnit r2 = java.util.concurrent.TimeUnit.SECONDS     // Catch: java.lang.Throwable -> L3c java.lang.InterruptedException -> L3e
            r3 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r1.awaitTermination(r3, r2)     // Catch: java.lang.Throwable -> L3c java.lang.InterruptedException -> L3e
            if (r0 == 0) goto L52
            super.close()
            return
        L3c:
            r1 = move-exception
            goto L4c
        L3e:
            r1 = move-exception
            java.io.InterruptedIOException r2 = new java.io.InterruptedIOException     // Catch: java.lang.Throwable -> L3c
            java.lang.String r3 = r1.getMessage()     // Catch: java.lang.Throwable -> L3c
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L3c
            r2.initCause(r1)     // Catch: java.lang.Throwable -> L3c
            throw r2     // Catch: java.lang.Throwable -> L3c
        L4c:
            if (r0 == 0) goto L51
            super.close()
        L51:
            throw r1
        L52:
            return
        L53:
            java.util.concurrent.locks.ReentrantLock r1 = r5.stateChangeLock
            r1.unlock()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.p161io.input.ReadAheadInputStream.close():void");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) {
        IOUtils.checkFromIndexSize(bArr, i10, i11);
        if (i11 == 0) {
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
        int iMin = Math.min(i11, this.activeBuffer.remaining());
        this.activeBuffer.get(bArr, i10, iMin);
        return iMin;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j10) {
        if (j10 <= 0) {
            return 0L;
        }
        if (j10 <= this.activeBuffer.remaining()) {
            ByteBuffer byteBuffer = this.activeBuffer;
            byteBuffer.position(byteBuffer.position() + ((int) j10));
            return j10;
        }
        this.stateChangeLock.lock();
        try {
            return skipInternal(j10);
        } finally {
            this.stateChangeLock.unlock();
        }
    }

    private ReadAheadInputStream(Builder builder) {
        this(builder.getInputStream(), builder.getBufferSize(), builder.executorService != null ? builder.executorService : newExecutorService(), builder.executorService == null);
    }

    @Deprecated
    public ReadAheadInputStream(InputStream inputStream, int i10) {
        this(inputStream, i10, newExecutorService(), true);
    }

    @Deprecated
    public ReadAheadInputStream(InputStream inputStream, int i10, ExecutorService executorService) {
        this(inputStream, i10, executorService, false);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() {
        byte b10;
        if (this.activeBuffer.hasRemaining()) {
            b10 = this.activeBuffer.get();
        } else {
            byte[] bArr = BYTE_ARRAY_1.get();
            bArr[0] = 0;
            if (read(bArr, 0, 1) == -1) {
                return -1;
            }
            b10 = bArr[0];
        }
        return b10 & UByte.MAX_VALUE;
    }
}
