package org.apache.commons.io;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.util.Objects;
import org.apache.commons.io.function.IOConsumer;
import org.apache.commons.io.function.IOFunction;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public enum RandomAccessFileMode {
    READ_ONLY(R, 1),
    READ_WRITE(RW, 2),
    READ_WRITE_SYNC_ALL(RWS, 4),
    READ_WRITE_SYNC_CONTENT(RWD, 3);

    private static final String R = "r";
    private static final String RW = "rw";
    private static final String RWD = "rwd";
    private static final String RWS = "rws";
    private final int level;
    private final String mode;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    RandomAccessFileMode(String str, int i) {
        this.mode = str;
        this.level = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getLevel() {
        return this.level;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
            if (d.v(openOption)) {
                int i = RandomAccessFileMode$1.$SwitchMap$java$nio$file$StandardOpenOption[d.b(d.k(openOption))];
                if (i == 1) {
                    randomAccessFileMode = READ_WRITE;
                    if (!randomAccessFileMode2.implies(randomAccessFileMode)) {
                        randomAccessFileMode2 = randomAccessFileMode;
                    }
                } else if (i == 2) {
                    randomAccessFileMode = READ_WRITE_SYNC_CONTENT;
                    if (!randomAccessFileMode2.implies(randomAccessFileMode)) {
                        randomAccessFileMode2 = randomAccessFileMode;
                    }
                } else if (i == 3) {
                    randomAccessFileMode = READ_WRITE_SYNC_ALL;
                    if (!randomAccessFileMode2.implies(randomAccessFileMode)) {
                        randomAccessFileMode2 = randomAccessFileMode;
                    }
                }
            }
        }
        return randomAccessFileMode2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
                j1.i.k(str);
                return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RandomAccessFile create(Path path) {
        File fileR = ai.onnxruntime.c.r(path);
        Objects.requireNonNull(fileR, "file");
        return create(fileR);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getMode() {
        return this.mode;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean implies(RandomAccessFileMode randomAccessFileMode) {
        return getLevel() >= randomAccessFileMode.getLevel();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public IORandomAccessFile io(String str) {
        return new IORandomAccessFile(str, this.mode);
    }

    public RandomAccessFile create(File file) {
        return new IORandomAccessFile(file, this.mode);
    }

    public RandomAccessFile create(String str) {
        return new IORandomAccessFile(str, this.mode);
    }
}
