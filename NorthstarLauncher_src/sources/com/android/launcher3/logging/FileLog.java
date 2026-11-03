package com.android.launcher3.logging;

import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.IOUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.PrintWriter;
import java.text.DateFormat;

/* JADX INFO: loaded from: classes.dex */
public final class FileLog {
    protected static final boolean ENABLED = false;
    private static final String FILE_NAME_PREFIX = "log-";
    public static final int LOG_DAYS;
    private static final long MAX_LOG_FILE_SIZE = 8388608;
    private static final DateFormat DATE_FORMAT = DateFormat.getDateTimeInstance(3, 3);
    private static Handler sHandler = null;
    private static File sLogsDirectory = null;

    public static boolean flushAll(PrintWriter out) throws InterruptedException {
        return false;
    }

    public static void print(String tag, String msg, Exception e) {
    }

    public static void setDir(File logsDir) {
        sLogsDirectory = logsDir;
    }

    static {
        LOG_DAYS = FeatureFlags.ENABLE_HYBRID_HOTSEAT.get() ? 10 : 4;
    }

    public static void d(String tag, String msg, Exception e) {
        print(tag, msg, e);
    }

    public static void d(String tag, String msg) {
        print(tag, msg);
    }

    public static void e(String tag, String msg, Exception e) {
        Log.e(tag, msg, e);
        print(tag, msg, e);
    }

    public static void e(String tag, String msg) {
        Log.e(tag, msg);
        print(tag, msg);
    }

    public static void print(String tag, String msg) {
        print(tag, msg, null);
    }

    static Handler getHandler() {
        synchronized (DATE_FORMAT) {
            if (sHandler == null) {
                sHandler = new Handler(Executors.createAndStartNewLooper("file-logger"), new LogWriterCallback());
            }
        }
        return sHandler;
    }

    private static class LogWriterCallback implements Handler.Callback {
        private static final long CLOSE_DELAY = 5000;
        private static final int MSG_CLOSE = 2;
        private static final int MSG_FLUSH = 3;
        private static final int MSG_WRITE = 1;
        private String mCurrentFileName;
        private PrintWriter mCurrentWriter;

        private LogWriterCallback() {
            this.mCurrentFileName = null;
            this.mCurrentWriter = null;
        }

        private void closeWriter() {
            IOUtils.closeSilently(this.mCurrentWriter);
            this.mCurrentWriter = null;
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message msg) {
            File unused = FileLog.sLogsDirectory;
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void dumpFile(PrintWriter out, String fileName) throws Throwable {
        File file = new File(sLogsDirectory, fileName);
        if (!file.exists()) {
            return;
        }
        BufferedReader bufferedReader = null;
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new FileReader(file));
            try {
                out.println();
                out.println("--- logfile: " + fileName + " ---");
                while (true) {
                    String line = bufferedReader2.readLine();
                    if (line != null) {
                        out.println(line);
                    } else {
                        IOUtils.closeSilently(bufferedReader2);
                        return;
                    }
                }
            } catch (Exception unused) {
                bufferedReader = bufferedReader2;
                IOUtils.closeSilently(bufferedReader);
            } catch (Throwable th) {
                th = th;
                bufferedReader = bufferedReader2;
                IOUtils.closeSilently(bufferedReader);
                throw th;
            }
        } catch (Exception unused2) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static File[] getLogFiles() {
        try {
            flushAll(null);
        } catch (InterruptedException unused) {
        }
        File[] fileArr = new File[LOG_DAYS];
        for (int i = 0; i < LOG_DAYS; i++) {
            fileArr[i] = new File(sLogsDirectory, FILE_NAME_PREFIX + i);
        }
        return fileArr;
    }
}
