package com.android.server.pm;

import android.util.Slog;
import com.android.internal.util.ArrayUtils;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.Function;

/* JADX INFO: loaded from: classes.dex */
public class ShortcutDumpFiles {
    private static final boolean DEBUG = false;
    private static final String TAG = "ShortcutService";
    private final ShortcutService mService;

    public ShortcutDumpFiles(ShortcutService service) {
        this.mService = service;
    }

    public boolean save(String filename, Consumer<PrintWriter> dumper) {
        try {
            File directory = this.mService.getDumpPath();
            directory.mkdirs();
            if (!directory.exists()) {
                Slog.e(TAG, "Failed to create directory: " + directory);
                return false;
            }
            File path = new File(directory, filename);
            PrintWriter pw = new PrintWriter(new BufferedOutputStream(new FileOutputStream(path)));
            try {
                dumper.accept(pw);
                pw.close();
                return true;
            } catch (Throwable th) {
                try {
                    pw.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException | RuntimeException e) {
            Slog.w(TAG, "Failed to create dump file: " + filename, e);
            return false;
        }
    }

    public boolean save(String filename, final byte[] utf8bytes) {
        return save(filename, new Consumer() { // from class: com.android.server.pm.-$$Lambda$ShortcutDumpFiles$rwmVVp6PnQCcurF7D6VzrdNqEdk
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((PrintWriter) obj).println(StandardCharsets.UTF_8.decode(ByteBuffer.wrap(utf8bytes)).toString());
            }
        });
    }

    public void dumpAll(PrintWriter pw) {
        try {
            File directory = this.mService.getDumpPath();
            File[] files = directory.listFiles(new FileFilter() { // from class: com.android.server.pm.-$$Lambda$ShortcutDumpFiles$v6wMz6MRa9pgSnEDM_9bjvrLaKY
                @Override // java.io.FileFilter
                public final boolean accept(File file) {
                    return file.isFile();
                }
            });
            if (directory.exists() && !ArrayUtils.isEmpty(files)) {
                Arrays.sort(files, Comparator.comparing(new Function() { // from class: com.android.server.pm.-$$Lambda$ShortcutDumpFiles$stGgHzhh-NVWPgDSwmH2ybAWRE8
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return ((File) obj).getName();
                    }
                }));
                for (File path : files) {
                    pw.print("*** Dumping: ");
                    pw.println(path.getName());
                    pw.print("mtime: ");
                    pw.println(ShortcutService.formatTime(path.lastModified()));
                    BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(path)));
                    while (true) {
                        try {
                            String line = reader.readLine();
                            if (line == null) {
                                break;
                            } else {
                                pw.println(line);
                            }
                        } catch (Throwable th) {
                            try {
                                reader.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    }
                    reader.close();
                }
                return;
            }
            pw.print("  No dump files found.");
        } catch (IOException | RuntimeException e) {
            Slog.w(TAG, "Failed to print dump files", e);
        }
    }
}
