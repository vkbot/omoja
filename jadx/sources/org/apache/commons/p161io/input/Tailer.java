package org.apache.commons.p161io.input;

import ai.onnxruntime.AbstractC0074a;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.attribute.FileTime;
import java.time.Duration;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.internal.jdk8.AbstractC2109a;
import org.apache.commons.p161io.IOUtils;
import org.apache.commons.p161io.ThreadUtils;
import org.apache.commons.p161io.build.AbstractOrigin;
import org.apache.commons.p161io.build.AbstractOriginSupplier;
import org.apache.commons.p161io.build.AbstractStreamBuilder;
import org.apache.commons.p161io.file.PathUtils;
import org.apache.commons.p161io.file.attribute.FileTimes;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class Tailer implements Runnable, AutoCloseable {
    private static final Charset DEFAULT_CHARSET = Charset.defaultCharset();
    private static final int DEFAULT_DELAY_MILLIS = 1000;
    private static final boolean DEFAULT_IGNORE_TOUCH = false;
    private static final String RAF_READ_ONLY_MODE = "r";
    private final Charset charset;
    private final Duration delayDuration;
    private final boolean ignoreTouch;
    private final byte[] inbuf;
    private final TailerListener listener;
    private final boolean reOpen;
    private volatile boolean run;
    private final boolean tailFromEnd;
    private final Tailable tailable;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static final class RandomAccessFileBridge implements RandomAccessResourceBridge {
        private final RandomAccessFile randomAccessFile;

        private RandomAccessFileBridge(File file, String str) {
            this.randomAccessFile = new RandomAccessFile(file, str);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.randomAccessFile.close();
        }

        @Override // org.apache.commons.io.input.Tailer.RandomAccessResourceBridge
        public long getPointer() {
            return this.randomAccessFile.getFilePointer();
        }

        @Override // org.apache.commons.io.input.Tailer.RandomAccessResourceBridge
        public int read(byte[] bArr) {
            return this.randomAccessFile.read(bArr);
        }

        @Override // org.apache.commons.io.input.Tailer.RandomAccessResourceBridge
        public void seek(long j10) throws IOException {
            this.randomAccessFile.seek(j10);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public interface RandomAccessResourceBridge extends Closeable {
        long getPointer();

        int read(byte[] bArr);

        void seek(long j10);
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public interface Tailable {
        RandomAccessResourceBridge getRandomAccess(String str);

        boolean isNewer(FileTime fileTime);

        FileTime lastModifiedFileTime();

        long size();
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static final class TailablePath implements Tailable {
        private final LinkOption[] linkOptions;
        private final Path path;

        private TailablePath(Path path, LinkOption... linkOptionArr) {
            Objects.requireNonNull(path, "path");
            this.path = AbstractC2109a.m3281m(path);
            this.linkOptions = linkOptionArr;
        }

        public Path getPath() {
            return this.path;
        }

        @Override // org.apache.commons.io.input.Tailer.Tailable
        public RandomAccessResourceBridge getRandomAccess(String str) {
            return new RandomAccessFileBridge(this.path.toFile(), str);
        }

        @Override // org.apache.commons.io.input.Tailer.Tailable
        public boolean isNewer(FileTime fileTime) {
            return PathUtils.isNewer(this.path, fileTime, this.linkOptions);
        }

        @Override // org.apache.commons.io.input.Tailer.Tailable
        public FileTime lastModifiedFileTime() {
            return Files.getLastModifiedTime(this.path, this.linkOptions);
        }

        @Override // org.apache.commons.io.input.Tailer.Tailable
        public long size() {
            return Files.size(this.path);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("TailablePath [file=");
            sb.append(this.path);
            sb.append(", linkOptions=");
            return AbstractC0074a.m165p(sb, Arrays.toString(this.linkOptions), "]");
        }
    }

    private Tailer(Builder builder) {
        this.run = true;
        Tailable tailable = builder.tailable;
        Objects.requireNonNull(tailable, "tailable");
        this.tailable = tailable;
        TailerListener tailerListener = builder.tailerListener;
        Objects.requireNonNull(tailerListener, "listener");
        this.listener = tailerListener;
        this.delayDuration = builder.delayDuration;
        this.tailFromEnd = builder.tailFromEnd;
        this.inbuf = IOUtils.byteArray(builder.getBufferSize());
        tailerListener.init(this);
        this.reOpen = builder.reOpen;
        this.charset = builder.getCharset();
        this.ignoreTouch = builder.ignoreTouch;
    }

    public static Builder builder() {
        return new Builder();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public static Tailer create(File file, Charset charset, TailerListener tailerListener, long j10, boolean z9, boolean z10, int i10) {
        return ((Builder) builder().setFile(file)).setTailerListener(tailerListener).setCharset(charset).setDelayDuration(Duration.ofMillis(j10)).setTailFromEnd(z9).setReOpen(z10).setBufferSize(i10).get();
    }

    private long readLines(RandomAccessResourceBridge randomAccessResourceBridge) throws IOException {
        int i10;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(64);
        try {
            long pointer = randomAccessResourceBridge.getPointer();
            long pointer2 = pointer;
            boolean z9 = false;
            while (getRun() && (i10 = randomAccessResourceBridge.read(this.inbuf)) != -1) {
                for (int i11 = 0; i11 < i10; i11++) {
                    byte b10 = this.inbuf[i11];
                    if (b10 == 10) {
                        this.listener.handle(new String(byteArrayOutputStream.toByteArray(), this.charset));
                        byteArrayOutputStream.reset();
                        pointer = ((long) i11) + pointer2 + 1;
                        z9 = false;
                    } else if (b10 != 13) {
                        if (z9) {
                            this.listener.handle(new String(byteArrayOutputStream.toByteArray(), this.charset));
                            byteArrayOutputStream.reset();
                            pointer = ((long) i11) + pointer2 + 1;
                            z9 = false;
                        }
                        byteArrayOutputStream.write(b10);
                    } else {
                        if (z9) {
                            byteArrayOutputStream.write(13);
                        }
                        z9 = true;
                    }
                }
                pointer2 = randomAccessResourceBridge.getPointer();
            }
            randomAccessResourceBridge.seek(pointer);
            TailerListener tailerListener = this.listener;
            if (tailerListener instanceof TailerListenerAdapter) {
                ((TailerListenerAdapter) tailerListener).endOfFileReached();
            }
            byteArrayOutputStream.close();
            return pointer;
        } catch (Throwable th) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.run = false;
    }

    @Deprecated
    public long getDelay() {
        return this.delayDuration.toMillis();
    }

    public Duration getDelayDuration() {
        return this.delayDuration;
    }

    public File getFile() {
        Tailable tailable = this.tailable;
        if (tailable instanceof TailablePath) {
            return ((TailablePath) tailable).getPath().toFile();
        }
        C1929i.m3030l("Cannot extract java.io.File from ".concat(tailable.getClass().getName()));
        return null;
    }

    public boolean getRun() {
        return this.run;
    }

    public Tailable getTailable() {
        return this.tailable;
    }

    @Override // java.lang.Runnable
    public void run() throws Throwable {
        RandomAccessResourceBridge randomAccess;
        RandomAccessResourceBridge randomAccess2 = null;
        try {
            try {
                FileTime fileTimeLastModifiedFileTime = FileTimes.EPOCH;
                long lines = 0;
                while (getRun() && randomAccess2 == null) {
                    try {
                        randomAccess2 = this.tailable.getRandomAccess(RAF_READ_ONLY_MODE);
                    } catch (FileNotFoundException unused) {
                        this.listener.fileNotFound();
                    }
                    if (randomAccess2 == null) {
                        ThreadUtils.sleep(this.delayDuration);
                    } else {
                        lines = this.tailFromEnd ? this.tailable.size() : 0L;
                        fileTimeLastModifiedFileTime = this.tailable.lastModifiedFileTime();
                        randomAccess2.seek(lines);
                    }
                }
                while (getRun()) {
                    boolean zIsNewer = this.tailable.isNewer(fileTimeLastModifiedFileTime);
                    long size = this.tailable.size();
                    if (size < lines) {
                        this.listener.fileRotated();
                        try {
                            randomAccess = this.tailable.getRandomAccess(RAF_READ_ONLY_MODE);
                            try {
                                try {
                                    readLines(randomAccess2);
                                } catch (IOException e) {
                                    this.listener.handle(e);
                                }
                                if (randomAccess2 != null) {
                                    try {
                                        try {
                                            randomAccess2.close();
                                        } catch (InterruptedException e6) {
                                            e = e6;
                                            randomAccess2 = randomAccess;
                                            Thread.currentThread().interrupt();
                                            this.listener.handle(e);
                                            IOUtils.close(randomAccess2);
                                            close();
                                        } catch (Exception e10) {
                                            e = e10;
                                            randomAccess2 = randomAccess;
                                            this.listener.handle(e);
                                            IOUtils.close(randomAccess2);
                                            close();
                                        } catch (Throwable th) {
                                            th = th;
                                            randomAccess2 = randomAccess;
                                            try {
                                                IOUtils.close(randomAccess2);
                                            } catch (IOException e11) {
                                                this.listener.handle(e11);
                                            }
                                            close();
                                            throw th;
                                        }
                                    } catch (FileNotFoundException unused2) {
                                        lines = 0;
                                        randomAccess2 = randomAccess;
                                        this.listener.fileNotFound();
                                        ThreadUtils.sleep(this.delayDuration);
                                    }
                                }
                                lines = 0;
                                randomAccess2 = randomAccess;
                            } catch (Throwable th2) {
                                th = th2;
                                if (randomAccess2 != null) {
                                    try {
                                        randomAccess2.close();
                                    } catch (Throwable th3) {
                                        try {
                                            th.addSuppressed(th3);
                                        } catch (FileNotFoundException unused3) {
                                            randomAccess2 = randomAccess;
                                            this.listener.fileNotFound();
                                            ThreadUtils.sleep(this.delayDuration);
                                        }
                                    }
                                }
                                throw th;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            randomAccess = randomAccess2;
                        }
                    } else {
                        if (size > lines) {
                            lines = readLines(randomAccess2);
                            fileTimeLastModifiedFileTime = this.tailable.lastModifiedFileTime();
                        } else if (zIsNewer) {
                            if (!this.ignoreTouch) {
                                randomAccess2.seek(0L);
                                lines = readLines(randomAccess2);
                            }
                            fileTimeLastModifiedFileTime = this.tailable.lastModifiedFileTime();
                        }
                        if (this.reOpen && randomAccess2 != null) {
                            randomAccess2.close();
                        }
                        ThreadUtils.sleep(this.delayDuration);
                        if (getRun() && this.reOpen) {
                            randomAccess2 = this.tailable.getRandomAccess(RAF_READ_ONLY_MODE);
                            randomAccess2.seek(lines);
                        }
                    }
                }
            } catch (InterruptedException e12) {
                e = e12;
            } catch (Exception e13) {
                e = e13;
            }
            try {
                IOUtils.close(randomAccess2);
            } catch (IOException e14) {
                this.listener.handle(e14);
            }
            close();
        } catch (Throwable th5) {
            th = th5;
        }
    }

    @Deprecated
    public void stop() {
        close();
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Builder extends AbstractStreamBuilder<Tailer, Builder> {
        private static final Duration DEFAULT_DELAY_DURATION = Duration.ofMillis(1000);
        private boolean reOpen;
        private boolean tailFromEnd;
        private Tailable tailable;
        private TailerListener tailerListener;
        private Duration delayDuration = DEFAULT_DELAY_DURATION;
        private boolean startThread = true;
        private boolean ignoreTouch = false;
        private ExecutorService executorService = Executors.newSingleThreadExecutor(new ThreadFactoryC2881k(1));

        /* JADX INFO: Access modifiers changed from: private */
        public static Thread newDaemonThread(Runnable runnable) {
            Thread thread = new Thread(runnable, "commons-io-tailer");
            thread.setDaemon(true);
            return thread;
        }

        @Override // org.apache.commons.p161io.function.IOSupplier
        public Tailer get() {
            Tailer tailer = new Tailer(this);
            if (this.startThread) {
                this.executorService.submit(tailer);
            }
            return tailer;
        }

        public Builder setDelayDuration(Duration duration) {
            if (duration == null) {
                duration = DEFAULT_DELAY_DURATION;
            }
            this.delayDuration = duration;
            return this;
        }

        public Builder setExecutorService(ExecutorService executorService) {
            Objects.requireNonNull(executorService, "executorService");
            this.executorService = executorService;
            return this;
        }

        public Builder setIgnoreTouch(boolean z9) {
            this.ignoreTouch = z9;
            return this;
        }

        @Override // org.apache.commons.p161io.build.AbstractOriginSupplier
        public Builder setOrigin(AbstractOrigin<?, ?> abstractOrigin) {
            setTailable(new TailablePath(abstractOrigin.getPath(), new LinkOption[0]));
            return (Builder) super.setOrigin(abstractOrigin);
        }

        public Builder setReOpen(boolean z9) {
            this.reOpen = z9;
            return this;
        }

        public Builder setStartThread(boolean z9) {
            this.startThread = z9;
            return this;
        }

        public Builder setTailFromEnd(boolean z9) {
            this.tailFromEnd = z9;
            return this;
        }

        public Builder setTailable(Tailable tailable) {
            Objects.requireNonNull(tailable, "tailable");
            this.tailable = tailable;
            return this;
        }

        public Builder setTailerListener(TailerListener tailerListener) {
            Objects.requireNonNull(tailerListener, "tailerListener");
            this.tailerListener = tailerListener;
            return this;
        }

        @Override // org.apache.commons.p161io.build.AbstractOriginSupplier
        public /* bridge */ /* synthetic */ AbstractOriginSupplier setOrigin(AbstractOrigin abstractOrigin) {
            return setOrigin((AbstractOrigin<?, ?>) abstractOrigin);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public static Tailer create(File file, TailerListener tailerListener) {
        return ((Builder) builder().setFile(file)).setTailerListener(tailerListener).get();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public static Tailer create(File file, TailerListener tailerListener, long j10) {
        return ((Builder) builder().setFile(file)).setTailerListener(tailerListener).setDelayDuration(Duration.ofMillis(j10)).get();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public static Tailer create(File file, TailerListener tailerListener, long j10, boolean z9) {
        return ((Builder) builder().setFile(file)).setTailerListener(tailerListener).setDelayDuration(Duration.ofMillis(j10)).setTailFromEnd(z9).get();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public static Tailer create(File file, TailerListener tailerListener, long j10, boolean z9, boolean z10) {
        return ((Builder) builder().setFile(file)).setTailerListener(tailerListener).setDelayDuration(Duration.ofMillis(j10)).setTailFromEnd(z9).setReOpen(z10).get();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public static Tailer create(File file, TailerListener tailerListener, long j10, boolean z9, boolean z10, int i10) {
        return ((Builder) builder().setFile(file)).setTailerListener(tailerListener).setDelayDuration(Duration.ofMillis(j10)).setTailFromEnd(z9).setReOpen(z10).setBufferSize(i10).get();
    }

    @Deprecated
    public Tailer(File file, Charset charset, TailerListener tailerListener, long j10, boolean z9, boolean z10, int i10) {
        this(new TailablePath(file.toPath(), new LinkOption[0]), charset, tailerListener, Duration.ofMillis(j10), z9, z10, i10, false);
    }

    @Deprecated
    public Tailer(File file, TailerListener tailerListener) {
        this(file, tailerListener, 1000L);
    }

    @Deprecated
    public Tailer(File file, TailerListener tailerListener, long j10) {
        this(file, tailerListener, j10, false);
    }

    @Deprecated
    public Tailer(File file, TailerListener tailerListener, long j10, boolean z9) {
        this(file, tailerListener, j10, z9, 8192);
    }

    @Deprecated
    public Tailer(File file, TailerListener tailerListener, long j10, boolean z9, boolean z10) {
        this(file, tailerListener, j10, z9, z10, 8192);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public static Tailer create(File file, TailerListener tailerListener, long j10, boolean z9, int i10) {
        return ((Builder) builder().setFile(file)).setTailerListener(tailerListener).setDelayDuration(Duration.ofMillis(j10)).setTailFromEnd(z9).setBufferSize(i10).get();
    }

    @Deprecated
    public Tailer(File file, TailerListener tailerListener, long j10, boolean z9, boolean z10, int i10) {
        this(file, DEFAULT_CHARSET, tailerListener, j10, z9, z10, i10);
    }

    @Deprecated
    public Tailer(File file, TailerListener tailerListener, long j10, boolean z9, int i10) {
        this(file, tailerListener, j10, z9, false, i10);
    }

    private Tailer(Tailable tailable, Charset charset, TailerListener tailerListener, Duration duration, boolean z9, boolean z10, int i10, boolean z11) {
        this.run = true;
        Objects.requireNonNull(tailable, "tailable");
        this.tailable = tailable;
        Objects.requireNonNull(tailerListener, "listener");
        this.listener = tailerListener;
        this.delayDuration = duration;
        this.tailFromEnd = z9;
        this.inbuf = IOUtils.byteArray(i10);
        tailerListener.init(this);
        this.reOpen = z10;
        this.charset = charset;
        this.ignoreTouch = z11;
    }
}
