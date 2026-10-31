package org.apache.commons.p161io;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.util.Objects;
import org.apache.commons.p161io.function.IOConsumer;
import org.apache.commons.p161io.function.IOFunction;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public enum RandomAccessFileMode {
    READ_ONLY(f7931R, 1),
    READ_WRITE(f7932RW, 2),
    READ_WRITE_SYNC_ALL(RWS, 4),
    READ_WRITE_SYNC_CONTENT(RWD, 3);


    /* JADX INFO: renamed from: R */
    private static final String f7931R = "r";

    /* JADX INFO: renamed from: RW */
    private static final String f7932RW = "rw";
    private static final String RWD = "rwd";
    private static final String RWS = "rws";
    private final int level;
    private final String mode;

    /* JADX INFO: renamed from: org.apache.commons.io.RandomAccessFileMode$1 */
    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static /* synthetic */ class C27781 {
        static final /* synthetic */ int[] $SwitchMap$java$nio$file$StandardOpenOption;

        static {
            int[] iArr = new int[StandardOpenOption.values().length];
            $SwitchMap$java$nio$file$StandardOpenOption = iArr;
            try {
                StandardOpenOption unused = StandardOpenOption.WRITE;
                iArr[StandardOpenOption.WRITE.ordinal()] = 1;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr2 = $SwitchMap$java$nio$file$StandardOpenOption;
                StandardOpenOption unused3 = StandardOpenOption.DSYNC;
                iArr2[StandardOpenOption.DSYNC.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                int[] iArr3 = $SwitchMap$java$nio$file$StandardOpenOption;
                StandardOpenOption unused5 = StandardOpenOption.SYNC;
                iArr3[StandardOpenOption.SYNC.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    RandomAccessFileMode(String str, int i10) {
        this.mode = str;
        this.level = i10;
    }

    private int getLevel() {
        return this.level;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002c A[PHI: r3
  0x002c: PHI (r3v5 org.apache.commons.io.RandomAccessFileMode) = 
  (r3v4 org.apache.commons.io.RandomAccessFileMode)
  (r3v6 org.apache.commons.io.RandomAccessFileMode)
  (r3v7 org.apache.commons.io.RandomAccessFileMode)
 binds: [B:20:0x003d, B:17:0x0034, B:14:0x002a] A[DONT_GENERATE, DONT_INLINE]] */
    public static RandomAccessFileMode valueOf(OpenOption... openOptionArr) {
        RandomAccessFileMode randomAccessFileMode;
        RandomAccessFileMode randomAccessFileMode2 = READ_ONLY;
        for (OpenOption openOption : openOptionArr) {
            if (AbstractC2785d.m4346v(openOption)) {
                int i10 = C27781.$SwitchMap$java$nio$file$StandardOpenOption[AbstractC2785d.m4335k(openOption).ordinal()];
                if (i10 == 1) {
                    randomAccessFileMode = READ_WRITE;
                    if (!randomAccessFileMode2.implies(randomAccessFileMode)) {
                        randomAccessFileMode2 = randomAccessFileMode;
                    }
                } else if (i10 == 2) {
                    randomAccessFileMode = READ_WRITE_SYNC_CONTENT;
                    if (!randomAccessFileMode2.implies(randomAccessFileMode)) {
                        randomAccessFileMode2 = randomAccessFileMode;
                    }
                } else if (i10 == 3) {
                    randomAccessFileMode = READ_WRITE_SYNC_ALL;
                    if (!randomAccessFileMode2.implies(randomAccessFileMode)) {
                        randomAccessFileMode2 = randomAccessFileMode;
                    }
                }
            }
        }
        return randomAccessFileMode2;
    }

    public static RandomAccessFileMode valueOfMode(String str) {
        str.getClass();
        switch (str) {
            case "r":
                return READ_ONLY;
            case "rw":
                return READ_WRITE;
            case "rwd":
                return READ_WRITE_SYNC_CONTENT;
            case "rws":
                return READ_WRITE_SYNC_ALL;
            default:
                C1929i.m3029k(str);
                return null;
        }
    }

    public void accept(Path path, IOConsumer<RandomAccessFile> iOConsumer) throws IOException {
        RandomAccessFile randomAccessFileCreate = create(path);
        try {
            iOConsumer.accept(randomAccessFileCreate);
            if (randomAccessFileCreate != null) {
                randomAccessFileCreate.close();
            }
        } catch (Throwable th) {
            if (randomAccessFileCreate != null) {
                try {
                    randomAccessFileCreate.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public <T> T apply(Path path, IOFunction<RandomAccessFile, T> iOFunction) throws IOException {
        RandomAccessFile randomAccessFileCreate = create(path);
        try {
            T tApply = iOFunction.apply(randomAccessFileCreate);
            if (randomAccessFileCreate != null) {
                randomAccessFileCreate.close();
            }
            return tApply;
        } catch (Throwable th) {
            if (randomAccessFileCreate != null) {
                try {
                    randomAccessFileCreate.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public RandomAccessFile create(Path path) {
        File file = path.toFile();
        Objects.requireNonNull(file, "file");
        return create(file);
    }

    public String getMode() {
        return this.mode;
    }

    public boolean implies(RandomAccessFileMode randomAccessFileMode) {
        return getLevel() >= randomAccessFileMode.getLevel();
    }

    /* JADX INFO: renamed from: io */
    public IORandomAccessFile m4314io(String str) {
        return new IORandomAccessFile(str, this.mode);
    }

    public RandomAccessFile create(File file) {
        return new IORandomAccessFile(file, this.mode);
    }

    public RandomAccessFile create(String str) {
        return new IORandomAccessFile(str, this.mode);
    }
}
