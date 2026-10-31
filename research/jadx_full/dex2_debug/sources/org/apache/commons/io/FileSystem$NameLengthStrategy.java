package org.apache.commons.io;

import java.nio.charset.Charset;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class FileSystem$NameLengthStrategy {
    public static final FileSystem$NameLengthStrategy BYTES = new FileSystem$NameLengthStrategy$1("BYTES", 0);
    public static final FileSystem$NameLengthStrategy UTF16_CODE_UNITS = new FileSystem$NameLengthStrategy$2("UTF16_CODE_UNITS", 1);
    private static final /* synthetic */ FileSystem$NameLengthStrategy[] $VALUES = $values();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ FileSystem$NameLengthStrategy[] $values() {
        return new FileSystem$NameLengthStrategy[]{BYTES, UTF16_CODE_UNITS};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private FileSystem$NameLengthStrategy(String str, int i) {
        super(str, i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FileSystem$NameLengthStrategy valueOf(String str) {
        return (FileSystem$NameLengthStrategy) Enum.valueOf(FileSystem$NameLengthStrategy.class, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FileSystem$NameLengthStrategy[] values() {
        return (FileSystem$NameLengthStrategy[]) $VALUES.clone();
    }

    public abstract int getLength(CharSequence charSequence, Charset charset);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean isWithinLimit(CharSequence charSequence, int i, Charset charset) {
        return getLength(charSequence, charset) <= i;
    }

    public abstract CharSequence truncate(CharSequence charSequence, int i, Charset charset);

    public /* synthetic */ FileSystem$NameLengthStrategy(String str, int i, FileSystem$1 fileSystem$1) {
        this(str, i);
    }
}
