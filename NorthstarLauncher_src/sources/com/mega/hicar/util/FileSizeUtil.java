package com.mega.hicar.util;

/* JADX INFO: loaded from: classes2.dex */
public class FileSizeUtil {
    private static final long GB = 1073741824;
    private static final long KB = 1024;
    private static final long MB = 1048576;

    public static String formatFileSize(long j) {
        if (j >= 1073741824) {
            return String.format("%.2f GB", Double.valueOf(j / 1.073741824E9d));
        }
        if (j >= MB) {
            return String.format("%.2f MB", Double.valueOf(j / 1048576.0d));
        }
        if (j >= KB) {
            return String.format("%.2f KB", Double.valueOf(j / 1024.0d));
        }
        return j + " B";
    }
}
