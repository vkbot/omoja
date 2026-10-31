package org.apache.commons.io.input;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.file.LinkOption;
import java.nio.file.attribute.FileTime;
import java.time.Duration;
import java.util.Objects;
import org.apache.commons.io.IOUtils;
import org.apache.commons.io.ThreadUtils;
import org.apache.commons.io.file.attribute.FileTimes;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
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
    private final Tailer$Tailable tailable;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Tailer(Tailer$Builder tailer$Builder) {
        this.run = true;
        Tailer$Tailable tailer$TailableAccess$300 = Tailer$Builder.access$300(tailer$Builder);
        Objects.requireNonNull(tailer$TailableAccess$300, "tailable");
        this.tailable = tailer$TailableAccess$300;
        TailerListener tailerListenerAccess$400 = Tailer$Builder.access$400(tailer$Builder);
        Objects.requireNonNull(tailerListenerAccess$400, "listener");
        this.listener = tailerListenerAccess$400;
        this.delayDuration = Tailer$Builder.access$500(tailer$Builder);
        this.tailFromEnd = Tailer$Builder.access$600(tailer$Builder);
        this.inbuf = IOUtils.byteArray(tailer$Builder.getBufferSize());
        tailerListenerAccess$400.init(this);
        this.reOpen = Tailer$Builder.access$700(tailer$Builder);
        this.charset = tailer$Builder.getCharset();
        this.ignoreTouch = Tailer$Builder.access$800(tailer$Builder);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Tailer$Builder builder() {
        return new Tailer$Builder();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r1v1, resolved type: B */
    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public static Tailer create(File file, Charset charset, TailerListener tailerListener, long j, boolean z, boolean z2, int i) {
        return ((Tailer$Builder) builder().setFile(file)).setTailerListener(tailerListener).setCharset(charset).setDelayDuration(org.apache.commons.io.file.e.o(j)).setTailFromEnd(z).setReOpen(z2).setBufferSize(i).get();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private long readLines(Tailer$RandomAccessResourceBridge tailer$RandomAccessResourceBridge) throws IOException {
        int i;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(64);
        try {
            long pointer = tailer$RandomAccessResourceBridge.getPointer();
            long pointer2 = pointer;
            boolean z = false;
            while (getRun() && (i = tailer$RandomAccessResourceBridge.read(this.inbuf)) != -1) {
                for (int i2 = 0; i2 < i; i2++) {
                    byte b = this.inbuf[i2];
                    if (b == 10) {
                        this.listener.handle(new String(byteArrayOutputStream.toByteArray(), this.charset));
                        byteArrayOutputStream.reset();
                        pointer = ((long) i2) + pointer2 + 1;
                        z = false;
                    } else if (b != 13) {
                        if (z) {
                            this.listener.handle(new String(byteArrayOutputStream.toByteArray(), this.charset));
                            byteArrayOutputStream.reset();
                            pointer = ((long) i2) + pointer2 + 1;
                            z = false;
                        }
                        byteArrayOutputStream.write(b);
                    } else {
                        if (z) {
                            byteArrayOutputStream.write(13);
                        }
                        z = true;
                    }
                }
                pointer2 = tailer$RandomAccessResourceBridge.getPointer();
            }
            tailer$RandomAccessResourceBridge.seek(pointer);
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.AutoCloseable
    public void close() {
        this.run = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public long getDelay() {
        return kotlin.io.path.f.c(this.delayDuration);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Duration getDelayDuration() {
        return this.delayDuration;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public File getFile() {
        Tailer$Tailable tailer$Tailable = this.tailable;
        if (tailer$Tailable instanceof Tailer$TailablePath) {
            return ai.onnxruntime.c.r(((Tailer$TailablePath) tailer$Tailable).getPath());
        }
        j1.i.l("Cannot extract java.io.File from ".concat(tailer$Tailable.getClass().getName()));
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getRun() {
        return this.run;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Tailer$Tailable getTailable() {
        return this.tailable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() throws Throwable {
        Tailer$RandomAccessResourceBridge randomAccess;
        Tailer$RandomAccessResourceBridge randomAccess2 = null;
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
                                } catch (Throwable th) {
                                    th = th;
                                    if (randomAccess2 != null) {
                                        try {
                                            randomAccess2.close();
                                        } catch (Throwable th2) {
                                            try {
                                                th.addSuppressed(th2);
                                            } catch (FileNotFoundException unused2) {
                                                randomAccess2 = randomAccess;
                                                this.listener.fileNotFound();
                                                ThreadUtils.sleep(this.delayDuration);
                                            }
                                        }
                                    }
                                    throw th;
                                }
                            } catch (IOException e) {
                                this.listener.handle(e);
                            }
                            if (randomAccess2 != null) {
                                try {
                                    try {
                                        randomAccess2.close();
                                    } catch (FileNotFoundException unused3) {
                                        lines = 0;
                                        randomAccess2 = randomAccess;
                                        this.listener.fileNotFound();
                                        ThreadUtils.sleep(this.delayDuration);
                                    }
                                } catch (InterruptedException e2) {
                                    e = e2;
                                    randomAccess2 = randomAccess;
                                    Thread.currentThread().interrupt();
                                    this.listener.handle(e);
                                    IOUtils.close(randomAccess2);
                                    close();
                                } catch (Exception e3) {
                                    e = e3;
                                    randomAccess2 = randomAccess;
                                    this.listener.handle(e);
                                    IOUtils.close(randomAccess2);
                                    close();
                                } catch (Throwable th3) {
                                    th = th3;
                                    randomAccess2 = randomAccess;
                                    try {
                                        IOUtils.close(randomAccess2);
                                    } catch (IOException e4) {
                                        this.listener.handle(e4);
                                    }
                                    close();
                                    throw th;
                                }
                            }
                            lines = 0;
                            randomAccess2 = randomAccess;
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
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (InterruptedException e5) {
            e = e5;
        } catch (Exception e6) {
            e = e6;
        }
        try {
            IOUtils.close(randomAccess2);
        } catch (IOException e7) {
            this.listener.handle(e7);
        }
        close();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void stop() {
        close();
    }

    /* JADX DEBUG: Multi-variable search result rejected for r1v1, resolved type: B */
    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public static Tailer create(File file, TailerListener tailerListener) {
        return ((Tailer$Builder) builder().setFile(file)).setTailerListener(tailerListener).get();
    }

    /* JADX DEBUG: Multi-variable search result rejected for r1v1, resolved type: B */
    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public static Tailer create(File file, TailerListener tailerListener, long j) {
        return ((Tailer$Builder) builder().setFile(file)).setTailerListener(tailerListener).setDelayDuration(org.apache.commons.io.file.e.o(j)).get();
    }

    /* JADX DEBUG: Multi-variable search result rejected for r1v1, resolved type: B */
    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public static Tailer create(File file, TailerListener tailerListener, long j, boolean z) {
        return ((Tailer$Builder) builder().setFile(file)).setTailerListener(tailerListener).setDelayDuration(org.apache.commons.io.file.e.o(j)).setTailFromEnd(z).get();
    }

    /* JADX DEBUG: Multi-variable search result rejected for r1v1, resolved type: B */
    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public static Tailer create(File file, TailerListener tailerListener, long j, boolean z, boolean z2) {
        return ((Tailer$Builder) builder().setFile(file)).setTailerListener(tailerListener).setDelayDuration(org.apache.commons.io.file.e.o(j)).setTailFromEnd(z).setReOpen(z2).get();
    }

    /* JADX DEBUG: Multi-variable search result rejected for r1v1, resolved type: B */
    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public static Tailer create(File file, TailerListener tailerListener, long j, boolean z, boolean z2, int i) {
        return ((Tailer$Builder) builder().setFile(file)).setTailerListener(tailerListener).setDelayDuration(org.apache.commons.io.file.e.o(j)).setTailFromEnd(z).setReOpen(z2).setBufferSize(i).get();
    }

    public /* synthetic */ Tailer(Tailer$Builder tailer$Builder, Tailer$1 tailer$1) {
        this(tailer$Builder);
    }

    @Deprecated
    public Tailer(File file, Charset charset, TailerListener tailerListener, long j, boolean z, boolean z2, int i) {
        this(new Tailer$TailablePath(c5.h.i(file), new LinkOption[0], null), charset, tailerListener, org.apache.commons.io.file.e.o(j), z, z2, i, false);
    }

    @Deprecated
    public Tailer(File file, TailerListener tailerListener) {
        this(file, tailerListener, 1000L);
    }

    @Deprecated
    public Tailer(File file, TailerListener tailerListener, long j) {
        this(file, tailerListener, j, false);
    }

    @Deprecated
    public Tailer(File file, TailerListener tailerListener, long j, boolean z) {
        this(file, tailerListener, j, z, 8192);
    }

    @Deprecated
    public Tailer(File file, TailerListener tailerListener, long j, boolean z, boolean z2) {
        this(file, tailerListener, j, z, z2, 8192);
    }

    /* JADX DEBUG: Multi-variable search result rejected for r1v1, resolved type: B */
    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public static Tailer create(File file, TailerListener tailerListener, long j, boolean z, int i) {
        return ((Tailer$Builder) builder().setFile(file)).setTailerListener(tailerListener).setDelayDuration(org.apache.commons.io.file.e.o(j)).setTailFromEnd(z).setBufferSize(i).get();
    }

    @Deprecated
    public Tailer(File file, TailerListener tailerListener, long j, boolean z, boolean z2, int i) {
        this(file, DEFAULT_CHARSET, tailerListener, j, z, z2, i);
    }

    @Deprecated
    public Tailer(File file, TailerListener tailerListener, long j, boolean z, int i) {
        this(file, tailerListener, j, z, false, i);
    }

    private Tailer(Tailer$Tailable tailer$Tailable, Charset charset, TailerListener tailerListener, Duration duration, boolean z, boolean z2, int i, boolean z3) {
        this.run = true;
        Objects.requireNonNull(tailer$Tailable, "tailable");
        this.tailable = tailer$Tailable;
        Objects.requireNonNull(tailerListener, "listener");
        this.listener = tailerListener;
        this.delayDuration = duration;
        this.tailFromEnd = z;
        this.inbuf = IOUtils.byteArray(i);
        tailerListener.init(this);
        this.reOpen = z2;
        this.charset = charset;
        this.ignoreTouch = z3;
    }
}
