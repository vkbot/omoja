package com.android.server.protolog;

import android.os.ShellCommand;
import android.os.SystemClock;
import android.util.Slog;
import android.util.proto.ProtoOutputStream;
import com.android.internal.util.TraceBuffer;
import com.android.server.protolog.common.IProtoLogGroup;
import com.android.server.protolog.common.LogDataType;
import com.android.server.wm.ProtoLogGroup;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.IllegalFormatConversionException;
import java.util.TreeMap;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.ToDoubleFunction;
import java.util.function.ToLongFunction;
import java.util.stream.Collectors;

/* JADX INFO: loaded from: classes.dex */
public class ProtoLogImpl {
    private static final int BUFFER_CAPACITY = 1048576;
    private static final String LOG_FILENAME = "/data/misc/wmtrace/wm_log.pb";
    private static final long MAGIC_NUMBER_VALUE = 5138409603453637200L;
    static final String PROTOLOG_VERSION = "1.0.0";
    private static final String TAG = "ProtoLog";
    private static final String VIEWER_CONFIG_FILENAME = "/system/etc/protolog.conf.json.gz";
    private static ProtoLogImpl sServiceInstance;
    private final TraceBuffer mBuffer;
    private final File mLogFile;
    private boolean mProtoLogEnabled;
    private final Object mProtoLogEnabledLock = new Object();
    private boolean mProtoLogEnabledLockFree;
    private final ProtoLogViewerConfigReader mViewerConfig;
    private static final TreeMap<String, IProtoLogGroup> LOG_GROUPS = new TreeMap<>();
    static Runnable sCacheUpdater = new Runnable() { // from class: com.android.server.protolog.-$$Lambda$ProtoLogImpl$W1-9aFv3AkmuxF_FKhP3IYl2IMA
        @Override // java.lang.Runnable
        public final void run() {
            ProtoLogImpl.lambda$static$0();
        }
    };

    public enum LogLevel {
        DEBUG,
        VERBOSE,
        INFO,
        WARN,
        ERROR,
        WTF
    }

    static {
        addLogGroupEnum(ProtoLogGroup.values());
        sServiceInstance = null;
    }

    static /* synthetic */ void lambda$static$0() {
    }

    private static void addLogGroupEnum(IProtoLogGroup[] config) {
        for (IProtoLogGroup group : config) {
            LOG_GROUPS.put(group.name(), group);
        }
    }

    public static void d(IProtoLogGroup group, int messageHash, int paramsMask, String messageString, Object... args) {
        getSingleInstance().log(LogLevel.DEBUG, group, messageHash, paramsMask, messageString, args);
    }

    public static void v(IProtoLogGroup group, int messageHash, int paramsMask, String messageString, Object... args) {
        getSingleInstance().log(LogLevel.VERBOSE, group, messageHash, paramsMask, messageString, args);
    }

    public static void i(IProtoLogGroup group, int messageHash, int paramsMask, String messageString, Object... args) {
        getSingleInstance().log(LogLevel.INFO, group, messageHash, paramsMask, messageString, args);
    }

    public static void w(IProtoLogGroup group, int messageHash, int paramsMask, String messageString, Object... args) {
        getSingleInstance().log(LogLevel.WARN, group, messageHash, paramsMask, messageString, args);
    }

    public static void e(IProtoLogGroup group, int messageHash, int paramsMask, String messageString, Object... args) {
        getSingleInstance().log(LogLevel.ERROR, group, messageHash, paramsMask, messageString, args);
    }

    public static void wtf(IProtoLogGroup group, int messageHash, int paramsMask, String messageString, Object... args) {
        getSingleInstance().log(LogLevel.WTF, group, messageHash, paramsMask, messageString, args);
    }

    public static boolean isEnabled(IProtoLogGroup group) {
        return group.isLogToLogcat() || (group.isLogToProto() && getSingleInstance().isProtoEnabled());
    }

    public static synchronized ProtoLogImpl getSingleInstance() {
        if (sServiceInstance == null) {
            sServiceInstance = new ProtoLogImpl(new File(LOG_FILENAME), 1048576, new ProtoLogViewerConfigReader());
        }
        return sServiceInstance;
    }

    public static synchronized void setSingleInstance(ProtoLogImpl instance) {
        sServiceInstance = instance;
    }

    public void log(LogLevel level, IProtoLogGroup group, int messageHash, int paramsMask, String messageString, Object[] args) {
        if (group.isLogToProto()) {
            logToProto(messageHash, paramsMask, args);
        }
        if (group.isLogToLogcat()) {
            logToLogcat(group.getTag(), level, messageHash, messageString, args);
        }
    }

    private void logToLogcat(String tag, LogLevel level, int messageHash, String messageString, Object[] args) {
        String message = null;
        if (messageString == null) {
            messageString = this.mViewerConfig.getViewerString(messageHash);
        }
        if (messageString != null) {
            try {
                message = String.format(messageString, args);
            } catch (IllegalFormatConversionException ex) {
                Slog.w(TAG, "Invalid ProtoLog format string.", ex);
            }
        }
        if (message == null) {
            StringBuilder builder = new StringBuilder("UNKNOWN MESSAGE (" + messageHash + ")");
            for (Object o : args) {
                builder.append(" ");
                builder.append(o);
            }
            message = builder.toString();
        }
        passToLogcat(tag, level, message);
    }

    /* JADX INFO: renamed from: com.android.server.protolog.ProtoLogImpl$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$android$server$protolog$ProtoLogImpl$LogLevel;

        static {
            int[] iArr = new int[LogLevel.values().length];
            $SwitchMap$com$android$server$protolog$ProtoLogImpl$LogLevel = iArr;
            try {
                iArr[LogLevel.DEBUG.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$android$server$protolog$ProtoLogImpl$LogLevel[LogLevel.VERBOSE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$android$server$protolog$ProtoLogImpl$LogLevel[LogLevel.INFO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$android$server$protolog$ProtoLogImpl$LogLevel[LogLevel.WARN.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$android$server$protolog$ProtoLogImpl$LogLevel[LogLevel.ERROR.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$android$server$protolog$ProtoLogImpl$LogLevel[LogLevel.WTF.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    public void passToLogcat(String tag, LogLevel level, String message) {
        switch (AnonymousClass1.$SwitchMap$com$android$server$protolog$ProtoLogImpl$LogLevel[level.ordinal()]) {
            case 1:
                Slog.d(tag, message);
                break;
            case 2:
                Slog.v(tag, message);
                break;
            case 3:
                Slog.i(tag, message);
                break;
            case 4:
                Slog.w(tag, message);
                break;
            case 5:
                Slog.e(tag, message);
                break;
            case 6:
                Slog.wtf(tag, message);
                break;
        }
    }

    private void logToProto(int messageHash, int paramsMask, Object[] args) {
        long token;
        if (!isProtoEnabled()) {
            return;
        }
        try {
            ProtoOutputStream os = new ProtoOutputStream();
            long token2 = os.start(2246267895812L);
            try {
                os.write(1163936137217L, messageHash);
                os.write(1125281431554L, SystemClock.elapsedRealtimeNanos());
                if (args == null) {
                    token = token2;
                } else {
                    ArrayList<Long> longParams = new ArrayList<>();
                    ArrayList<Double> doubleParams = new ArrayList<>();
                    ArrayList<Boolean> booleanParams = new ArrayList<>();
                    int length = args.length;
                    int i = 0;
                    int argIndex = 0;
                    while (i < length) {
                        Object o = args[i];
                        int type = LogDataType.bitmaskToLogDataType(paramsMask, argIndex);
                        long token3 = token2;
                        if (type == 0) {
                            os.write(2237677961219L, o.toString());
                        } else if (type == 1) {
                            longParams.add(Long.valueOf(((Number) o).longValue()));
                        } else if (type == 2) {
                            doubleParams.add(Double.valueOf(((Number) o).doubleValue()));
                        } else if (type == 3) {
                            try {
                                booleanParams.add(Boolean.valueOf(((Boolean) o).booleanValue()));
                            } catch (ClassCastException ex) {
                                os.write(2237677961219L, "(INVALID PARAMS_MASK) " + o.toString());
                                Slog.e(TAG, "Invalid ProtoLog paramsMask", ex);
                            }
                        }
                        argIndex++;
                        i++;
                        token2 = token3;
                    }
                    token = token2;
                    if (longParams.size() > 0) {
                        os.writePackedSInt64(5574867550212L, longParams.stream().mapToLong(new ToLongFunction() { // from class: com.android.server.protolog.-$$Lambda$ProtoLogImpl$u2ST5Fi0HXPt_TWW4vWXOLOmOOU
                            @Override // java.util.function.ToLongFunction
                            public final long applyAsLong(Object obj) {
                                return ((Long) obj).longValue();
                            }
                        }).toArray());
                    }
                    if (doubleParams.size() > 0) {
                        os.writePackedDouble(5501853106181L, doubleParams.stream().mapToDouble(new ToDoubleFunction() { // from class: com.android.server.protolog.-$$Lambda$ProtoLogImpl$mcAeBX3AFrWeIaIbVZQdFHsbH1E
                            @Override // java.util.function.ToDoubleFunction
                            public final double applyAsDouble(Object obj) {
                                return ((Double) obj).doubleValue();
                            }
                        }).toArray());
                    }
                    if (booleanParams.size() > 0) {
                        boolean[] arr = new boolean[booleanParams.size()];
                        for (int i2 = 0; i2 < booleanParams.size(); i2++) {
                            arr[i2] = booleanParams.get(i2).booleanValue();
                        }
                        os.writePackedBool(5531917877254L, arr);
                    }
                }
                os.end(token);
                try {
                    this.mBuffer.add(os);
                } catch (Exception e) {
                    e = e;
                    Slog.e(TAG, "Exception while logging to proto", e);
                }
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Exception e3) {
            e = e3;
        }
    }

    ProtoLogImpl(File file, int bufferCapacity, ProtoLogViewerConfigReader viewerConfig) {
        this.mLogFile = file;
        this.mBuffer = new TraceBuffer(bufferCapacity);
        this.mViewerConfig = viewerConfig;
    }

    public void startProtoLog(PrintWriter pw) {
        if (isProtoEnabled()) {
            return;
        }
        synchronized (this.mProtoLogEnabledLock) {
            logAndPrintln(pw, "Start logging to " + this.mLogFile + ".");
            this.mBuffer.resetBuffer();
            this.mProtoLogEnabled = true;
            this.mProtoLogEnabledLockFree = true;
        }
        sCacheUpdater.run();
    }

    public void stopProtoLog(PrintWriter pw, boolean writeToFile) {
        if (!isProtoEnabled()) {
            return;
        }
        synchronized (this.mProtoLogEnabledLock) {
            logAndPrintln(pw, "Stop logging to " + this.mLogFile + ". Waiting for log to flush.");
            this.mProtoLogEnabledLockFree = false;
            this.mProtoLogEnabled = false;
            if (writeToFile) {
                writeProtoLogToFileLocked();
                logAndPrintln(pw, "Log written to " + this.mLogFile + ".");
            }
            if (this.mProtoLogEnabled) {
                logAndPrintln(pw, "ERROR: logging was re-enabled while waiting for flush.");
                throw new IllegalStateException("logging enabled while waiting for flush.");
            }
        }
        sCacheUpdater.run();
    }

    public boolean isProtoEnabled() {
        return this.mProtoLogEnabledLockFree;
    }

    private int setLogging(ShellCommand shell, boolean setTextLogging, boolean value) {
        while (true) {
            String group = shell.getNextArg();
            if (group != null) {
                IProtoLogGroup g = LOG_GROUPS.get(group);
                if (g != null) {
                    if (setTextLogging) {
                        g.setLogToLogcat(value);
                    } else {
                        g.setLogToProto(value);
                    }
                } else {
                    logAndPrintln(shell.getOutPrintWriter(), "No IProtoLogGroup named " + group);
                    return -1;
                }
            } else {
                sCacheUpdater.run();
                return 0;
            }
        }
    }

    private int unknownCommand(PrintWriter pw) {
        pw.println("Unknown command");
        pw.println("Window manager logging options:");
        pw.println("  start: Start proto logging");
        pw.println("  stop: Stop proto logging");
        pw.println("  enable [group...]: Enable proto logging for given groups");
        pw.println("  disable [group...]: Disable proto logging for given groups");
        pw.println("  enable-text [group...]: Enable logcat logging for given groups");
        pw.println("  disable-text [group...]: Disable logcat logging for given groups");
        return -1;
    }

    public int onShellCommand(ShellCommand shell) {
        PrintWriter pw = shell.getOutPrintWriter();
        String cmd = shell.getNextArg();
        if (cmd == null) {
            return unknownCommand(pw);
        }
        switch (cmd) {
            case "start":
                startProtoLog(pw);
                return 0;
            case "stop":
                stopProtoLog(pw, true);
                return 0;
            case "status":
                logAndPrintln(pw, getStatus());
                return 0;
            case "enable":
                return setLogging(shell, false, true);
            case "enable-text":
                this.mViewerConfig.loadViewerConfig(pw, VIEWER_CONFIG_FILENAME);
                return setLogging(shell, true, true);
            case "disable":
                return setLogging(shell, false, false);
            case "disable-text":
                return setLogging(shell, true, false);
            default:
                return unknownCommand(pw);
        }
    }

    public String getStatus() {
        StringBuilder sb = new StringBuilder();
        sb.append("ProtoLog status: ");
        sb.append(isProtoEnabled() ? "Enabled" : "Disabled");
        sb.append("\nEnabled log groups: \n  Proto: ");
        sb.append((String) LOG_GROUPS.values().stream().filter(new Predicate() { // from class: com.android.server.protolog.-$$Lambda$ProtoLogImpl$dhk0iBKAK3ywNSTqD4XUL3Oq0hM
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ProtoLogImpl.lambda$getStatus$3((IProtoLogGroup) obj);
            }
        }).map(new Function() { // from class: com.android.server.protolog.-$$Lambda$PfxMAktVLMbQMPp_FRkrQxibSKE
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((IProtoLogGroup) obj).name();
            }
        }).collect(Collectors.joining(" ")));
        sb.append("\n  Logcat: ");
        sb.append((String) LOG_GROUPS.values().stream().filter(new Predicate() { // from class: com.android.server.protolog.-$$Lambda$ProtoLogImpl$G6yKiHAdF7lI4aTCybTMCes5zyI
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ProtoLogImpl.lambda$getStatus$4((IProtoLogGroup) obj);
            }
        }).map(new Function() { // from class: com.android.server.protolog.-$$Lambda$PfxMAktVLMbQMPp_FRkrQxibSKE
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((IProtoLogGroup) obj).name();
            }
        }).collect(Collectors.joining(" ")));
        sb.append("\nLogging definitions loaded: ");
        sb.append(this.mViewerConfig.knownViewerStringsNumber());
        return sb.toString();
    }

    static /* synthetic */ boolean lambda$getStatus$3(IProtoLogGroup it) {
        return it.isEnabled() && it.isLogToProto();
    }

    static /* synthetic */ boolean lambda$getStatus$4(IProtoLogGroup it) {
        return it.isEnabled() && it.isLogToLogcat();
    }

    public void writeProtoLogToFile() {
        synchronized (this.mProtoLogEnabledLock) {
            writeProtoLogToFileLocked();
        }
    }

    private void writeProtoLogToFileLocked() {
        try {
            long offset = System.currentTimeMillis() - (SystemClock.elapsedRealtimeNanos() / 1000000);
            ProtoOutputStream proto = new ProtoOutputStream();
            proto.write(1125281431553L, MAGIC_NUMBER_VALUE);
            proto.write(1138166333442L, PROTOLOG_VERSION);
            proto.write(1125281431555L, offset);
            this.mBuffer.writeTraceToFile(this.mLogFile, proto);
        } catch (IOException e) {
            Slog.e(TAG, "Unable to write buffer to file", e);
        }
    }

    static void logAndPrintln(PrintWriter pw, String msg) {
        Slog.i(TAG, msg);
        if (pw != null) {
            pw.println(msg);
            pw.flush();
        }
    }
}
