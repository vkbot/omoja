package com.android.server;

import android.os.StrictMode;
import android.util.Slog;
import java.io.File;
import java.io.IOException;
import java.io.StringWriter;
import libcore.io.IoUtils;

/* JADX INFO: loaded from: classes.dex */
public final class MemoryPressureUtil {
    private static final String FILE = "/proc/pressure/memory";
    private static final String TAG = "MemoryPressure";

    public static String currentPsiState() {
        StrictMode.ThreadPolicy savedPolicy = StrictMode.allowThreadDiskReads();
        StringWriter contents = new StringWriter();
        try {
            try {
                if (new File(FILE).exists()) {
                    contents.append((CharSequence) "----- Output from /proc/pressure/memory -----\n");
                    contents.append((CharSequence) IoUtils.readFileAsString(FILE));
                    contents.append((CharSequence) "----- End output from /proc/pressure/memory -----\n\n");
                }
            } catch (IOException e) {
                Slog.e(TAG, "Could not read /proc/pressure/memory", e);
            }
            return contents.toString();
        } finally {
            StrictMode.setThreadPolicy(savedPolicy);
        }
    }

    private MemoryPressureUtil() {
    }
}
