package com.android.server.power.batterysaver;

import android.content.Context;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemProperties;
import android.util.ArrayMap;
import android.util.AtomicFile;
import android.util.Slog;
import android.util.Xml;
import com.android.internal.util.FastXmlSerializer;
import com.android.internal.util.XmlUtils;
import com.android.server.IoThread;
import com.android.server.wm.ActivityTaskManagerService;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Map;
import libcore.io.IoUtils;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class FileUpdater {
    private static final boolean DEBUG = false;
    private static final String PROP_SKIP_WRITE = "debug.batterysaver.no_write_files";
    private static final String TAG = "BatterySaverController";
    private static final String TAG_DEFAULT_ROOT = "defaults";
    private final int MAX_RETRIES;
    private final long RETRY_INTERVAL_MS;
    private final Context mContext;
    private final ArrayMap<String, String> mDefaultValues;
    private Runnable mHandleWriteOnHandlerRunnable;
    private final Handler mHandler;
    private final Object mLock;
    private final ArrayMap<String, String> mPendingWrites;
    private int mRetries;

    public FileUpdater(Context context) {
        this(context, IoThread.get().getLooper(), 10, ActivityTaskManagerService.KEY_DISPATCHING_TIMEOUT_MS);
    }

    FileUpdater(Context context, Looper looper, int maxRetries, int retryIntervalMs) {
        this.mLock = new Object();
        this.mPendingWrites = new ArrayMap<>();
        this.mDefaultValues = new ArrayMap<>();
        this.mRetries = 0;
        this.mHandleWriteOnHandlerRunnable = new Runnable() { // from class: com.android.server.power.batterysaver.-$$Lambda$FileUpdater$NUmipjKCJwbgmFbIcGS3uaz3QFk
            @Override // java.lang.Runnable
            public final void run() throws Exception {
                this.f$0.lambda$new$0$FileUpdater();
            }
        };
        this.mContext = context;
        this.mHandler = new Handler(looper);
        this.MAX_RETRIES = maxRetries;
        this.RETRY_INTERVAL_MS = retryIntervalMs;
    }

    public void systemReady(boolean runtimeRestarted) {
        synchronized (this.mLock) {
            try {
                if (runtimeRestarted) {
                    if (loadDefaultValuesLocked()) {
                        Slog.d(TAG, "Default values loaded after runtime restart; writing them...");
                        restoreDefault();
                    }
                } else {
                    injectDefaultValuesFilename().delete();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void writeFiles(ArrayMap<String, String> fileValues) {
        synchronized (this.mLock) {
            for (int i = fileValues.size() - 1; i >= 0; i--) {
                String file = fileValues.keyAt(i);
                String value = fileValues.valueAt(i);
                this.mPendingWrites.put(file, value);
            }
            this.mRetries = 0;
            this.mHandler.removeCallbacks(this.mHandleWriteOnHandlerRunnable);
            this.mHandler.post(this.mHandleWriteOnHandlerRunnable);
        }
    }

    public void restoreDefault() {
        synchronized (this.mLock) {
            this.mPendingWrites.clear();
            writeFiles(this.mDefaultValues);
        }
    }

    private String getKeysString(Map<String, String> source) {
        return new ArrayList(source.keySet()).toString();
    }

    private ArrayMap<String, String> cloneMap(ArrayMap<String, String> source) {
        return new ArrayMap<>(source);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: handleWriteOnHandler, reason: merged with bridge method [inline-methods] */
    public void lambda$new$0$FileUpdater() throws Exception {
        synchronized (this.mLock) {
            if (this.mPendingWrites.size() == 0) {
                return;
            }
            ArrayMap<String, String> writes = cloneMap(this.mPendingWrites);
            boolean needRetry = false;
            int size = writes.size();
            for (int i = 0; i < size; i++) {
                String file = writes.keyAt(i);
                String value = writes.valueAt(i);
                if (ensureDefaultLoaded(file)) {
                    try {
                        injectWriteToFile(file, value);
                        removePendingWrite(file);
                    } catch (IOException e) {
                        needRetry = true;
                    }
                }
            }
            if (needRetry) {
                scheduleRetry();
            }
        }
    }

    private void removePendingWrite(String file) {
        synchronized (this.mLock) {
            this.mPendingWrites.remove(file);
        }
    }

    private void scheduleRetry() {
        synchronized (this.mLock) {
            if (this.mPendingWrites.size() == 0) {
                return;
            }
            int i = this.mRetries + 1;
            this.mRetries = i;
            if (i > this.MAX_RETRIES) {
                doWtf("Gave up writing files: " + getKeysString(this.mPendingWrites));
                return;
            }
            this.mHandler.removeCallbacks(this.mHandleWriteOnHandlerRunnable);
            this.mHandler.postDelayed(this.mHandleWriteOnHandlerRunnable, this.RETRY_INTERVAL_MS);
        }
    }

    private boolean ensureDefaultLoaded(String file) {
        synchronized (this.mLock) {
            if (this.mDefaultValues.containsKey(file)) {
                return true;
            }
            try {
                String originalValue = injectReadFromFileTrimmed(file);
                synchronized (this.mLock) {
                    this.mDefaultValues.put(file, originalValue);
                    saveDefaultValuesLocked();
                }
                return true;
            } catch (IOException e) {
                injectWtf("Unable to read from file", e);
                removePendingWrite(file);
                return false;
            }
        }
    }

    String injectReadFromFileTrimmed(String file) throws IOException {
        return IoUtils.readFileAsString(file).trim();
    }

    void injectWriteToFile(String file, String value) throws Exception {
        if (injectShouldSkipWrite()) {
            Slog.i(TAG, "Skipped writing to '" + file + "'");
            return;
        }
        try {
            FileWriter out = new FileWriter(file);
            try {
                out.write(value);
                out.close();
            } catch (Throwable th) {
                try {
                    out.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException | RuntimeException e) {
            Slog.w(TAG, "Failed writing '" + value + "' to '" + file + "': " + e.getMessage());
            throw e;
        }
    }

    private void saveDefaultValuesLocked() {
        AtomicFile file = new AtomicFile(injectDefaultValuesFilename());
        FileOutputStream outs = null;
        try {
            file.getBaseFile().getParentFile().mkdirs();
            outs = file.startWrite();
            FastXmlSerializer fastXmlSerializer = new FastXmlSerializer();
            fastXmlSerializer.setOutput(outs, StandardCharsets.UTF_8.name());
            fastXmlSerializer.startDocument(null, true);
            fastXmlSerializer.startTag(null, TAG_DEFAULT_ROOT);
            XmlUtils.writeMapXml(this.mDefaultValues, fastXmlSerializer, (XmlUtils.WriteMapCallback) null);
            fastXmlSerializer.endTag(null, TAG_DEFAULT_ROOT);
            fastXmlSerializer.endDocument();
            file.finishWrite(outs);
        } catch (IOException | RuntimeException | XmlPullParserException e) {
            Slog.e(TAG, "Failed to write to file " + file.getBaseFile(), e);
            file.failWrite(outs);
        }
    }

    boolean loadDefaultValuesLocked() {
        AtomicFile file = new AtomicFile(injectDefaultValuesFilename());
        Map<String, String> read = null;
        try {
            try {
                FileInputStream in = file.openRead();
                try {
                    XmlPullParser parser = Xml.newPullParser();
                    parser.setInput(in, StandardCharsets.UTF_8.name());
                    while (true) {
                        int type = parser.next();
                        if (type != 1) {
                            if (type == 2) {
                                int depth = parser.getDepth();
                                String tag = parser.getName();
                                if (depth == 1) {
                                    if (!TAG_DEFAULT_ROOT.equals(tag)) {
                                        Slog.e(TAG, "Invalid root tag: " + tag);
                                        if (in != null) {
                                            in.close();
                                        }
                                        return false;
                                    }
                                } else {
                                    String[] tagName = new String[1];
                                    read = XmlUtils.readThisArrayMapXml(parser, TAG_DEFAULT_ROOT, tagName, (XmlUtils.ReadMapCallback) null);
                                }
                            }
                        } else {
                            if (in == null) {
                                break;
                            }
                            in.close();
                            break;
                        }
                    }
                } catch (Throwable th) {
                    if (in != null) {
                        try {
                            in.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } catch (IOException | RuntimeException | XmlPullParserException e) {
                Slog.e(TAG, "Failed to read file " + file.getBaseFile(), e);
            }
        } catch (FileNotFoundException e2) {
            read = null;
        }
        if (read == null) {
            return false;
        }
        this.mDefaultValues.clear();
        this.mDefaultValues.putAll(read);
        return true;
    }

    private void doWtf(String message) {
        injectWtf(message, null);
    }

    void injectWtf(String message, Throwable e) {
        Slog.wtf(TAG, message, e);
    }

    File injectDefaultValuesFilename() {
        File dir = new File(Environment.getDataSystemDirectory(), "battery-saver");
        dir.mkdirs();
        return new File(dir, "default-values.xml");
    }

    boolean injectShouldSkipWrite() {
        return SystemProperties.getBoolean(PROP_SKIP_WRITE, false);
    }

    ArrayMap<String, String> getDefaultValuesForTest() {
        return this.mDefaultValues;
    }
}
