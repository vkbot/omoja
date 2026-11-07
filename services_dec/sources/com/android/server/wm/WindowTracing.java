package com.android.server.wm;

import android.os.Build;
import android.os.ShellCommand;
import android.os.SystemClock;
import android.os.Trace;
import android.util.Log;
import android.util.proto.ProtoOutputStream;
import android.view.Choreographer;
import com.android.internal.util.TraceBuffer;
import com.android.server.protolog.ProtoLogImpl;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes2.dex */
class WindowTracing {
    private static final int BUFFER_CAPACITY_ALL = 4194304;
    private static final int BUFFER_CAPACITY_CRITICAL = 524288;
    private static final int BUFFER_CAPACITY_TRIM = 2097152;
    private static final long MAGIC_NUMBER_VALUE = 4990904633914181975L;
    private static final String TAG = "WindowTracing";
    private static final String TRACE_FILENAME = "/data/misc/wmtrace/wm_trace.pb";
    private final TraceBuffer mBuffer;
    private final Choreographer mChoreographer;
    private boolean mEnabled;
    private final Object mEnabledLock;
    private volatile boolean mEnabledLockFree;
    private final Choreographer.FrameCallback mFrameCallback;
    private final WindowManagerGlobalLock mGlobalLock;
    private int mLogLevel;
    private boolean mLogOnFrame;
    private boolean mScheduled;
    private final WindowManagerService mService;
    private final File mTraceFile;

    public /* synthetic */ void lambda$new$0$WindowTracing(long frameTimeNanos) {
        log("onFrame");
    }

    static WindowTracing createDefaultAndStartLooper(WindowManagerService service, Choreographer choreographer) {
        File file = new File(TRACE_FILENAME);
        return new WindowTracing(file, service, choreographer, 2097152);
    }

    private WindowTracing(File file, WindowManagerService service, Choreographer choreographer, int bufferCapacity) {
        this(file, service, choreographer, service.mGlobalLock, bufferCapacity);
    }

    WindowTracing(File file, WindowManagerService service, Choreographer choreographer, WindowManagerGlobalLock globalLock, int bufferCapacity) {
        this.mEnabledLock = new Object();
        this.mFrameCallback = new Choreographer.FrameCallback() { // from class: com.android.server.wm.-$$Lambda$WindowTracing$lz89IHzR4nKO_ZtXtwyNGkRleMY
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j) {
                this.f$0.lambda$new$0$WindowTracing(j);
            }
        };
        this.mLogLevel = 1;
        this.mLogOnFrame = false;
        this.mChoreographer = choreographer;
        this.mService = service;
        this.mGlobalLock = globalLock;
        this.mTraceFile = file;
        this.mBuffer = new TraceBuffer(bufferCapacity);
        setLogLevel(1, null);
    }

    void startTrace(PrintWriter pw) {
        if (Build.IS_USER) {
            logAndPrintln(pw, "Error: Tracing is not supported on user builds.");
            return;
        }
        synchronized (this.mEnabledLock) {
            ProtoLogImpl.getSingleInstance().startProtoLog(pw);
            logAndPrintln(pw, "Start tracing to " + this.mTraceFile + ".");
            this.mBuffer.resetBuffer();
            this.mEnabledLockFree = true;
            this.mEnabled = true;
        }
        log("trace.enable");
    }

    void stopTrace(PrintWriter pw) {
        stopTrace(pw, true);
    }

    void stopTrace(PrintWriter pw, boolean writeToFile) {
        if (Build.IS_USER) {
            logAndPrintln(pw, "Error: Tracing is not supported on user builds.");
            return;
        }
        synchronized (this.mEnabledLock) {
            logAndPrintln(pw, "Stop tracing to " + this.mTraceFile + ". Waiting for traces to flush.");
            this.mEnabledLockFree = false;
            this.mEnabled = false;
            if (0 != 0) {
                logAndPrintln(pw, "ERROR: tracing was re-enabled while waiting for flush.");
                throw new IllegalStateException("tracing enabled while waiting for flush.");
            }
            if (writeToFile) {
                writeTraceToFileLocked();
                logAndPrintln(pw, "Trace written to " + this.mTraceFile + ".");
            }
        }
        ProtoLogImpl.getSingleInstance().stopProtoLog(pw, writeToFile);
    }

    private void setLogLevel(int logLevel, PrintWriter pw) {
        logAndPrintln(pw, "Setting window tracing log level to " + logLevel);
        this.mLogLevel = logLevel;
        if (logLevel == 0) {
            setBufferCapacity(4194304, pw);
        } else if (logLevel == 1) {
            setBufferCapacity(2097152, pw);
        } else if (logLevel == 2) {
            setBufferCapacity(524288, pw);
        }
    }

    private void setLogFrequency(boolean onFrame, PrintWriter pw) {
        StringBuilder sb = new StringBuilder();
        sb.append("Setting window tracing log frequency to ");
        sb.append(onFrame ? "frame" : "transaction");
        logAndPrintln(pw, sb.toString());
        this.mLogOnFrame = onFrame;
    }

    private void setBufferCapacity(int capacity, PrintWriter pw) {
        logAndPrintln(pw, "Setting window tracing buffer capacity to " + capacity + "bytes");
        this.mBuffer.setCapacity(capacity);
    }

    boolean isEnabled() {
        return this.mEnabledLockFree;
    }

    int onShellCommand(ShellCommand shell) {
        PrintWriter pw = shell.getOutPrintWriter();
        String cmd = shell.getNextArgRequired();
        byte b = -1;
        switch (cmd) {
            case "start":
                startTrace(pw);
                return 0;
            case "stop":
                stopTrace(pw);
                return 0;
            case "status":
                logAndPrintln(pw, getStatus());
                return 0;
            case "frame":
                setLogFrequency(true, pw);
                this.mBuffer.resetBuffer();
                return 0;
            case "transaction":
                setLogFrequency(false, pw);
                this.mBuffer.resetBuffer();
                return 0;
            case "level":
                String logLevelStr = shell.getNextArgRequired().toLowerCase();
                int iHashCode = logLevelStr.hashCode();
                if (iHashCode != 96673) {
                    if (iHashCode != 3568674) {
                        if (iHashCode == 1952151455 && logLevelStr.equals("critical")) {
                            b = 2;
                        }
                    } else if (logLevelStr.equals("trim")) {
                        b = 1;
                    }
                } else if (logLevelStr.equals("all")) {
                    b = 0;
                }
                if (b == 0) {
                    setLogLevel(0, pw);
                } else if (b != 1 && b == 2) {
                    setLogLevel(2, pw);
                } else {
                    setLogLevel(1, pw);
                }
                this.mBuffer.resetBuffer();
                return 0;
            case "size":
                setBufferCapacity(Integer.parseInt(shell.getNextArgRequired()) * 1024, pw);
                this.mBuffer.resetBuffer();
                return 0;
            default:
                pw.println("Unknown command: " + cmd);
                pw.println("Window manager trace options:");
                pw.println("  start: Start logging");
                pw.println("  stop: Stop logging");
                pw.println("  frame: Log trace once per frame");
                pw.println("  transaction: Log each transaction");
                pw.println("  size: Set the maximum log size (in KB)");
                pw.println("  status: Print trace status");
                pw.println("  level [lvl]: Set the log level between");
                pw.println("    lvl may be one of:");
                pw.println("      critical: Only visible windows with reduced information");
                pw.println("      trim: All windows with reduced");
                pw.println("      all: All window and information");
                return -1;
        }
    }

    String getStatus() {
        StringBuilder sb = new StringBuilder();
        sb.append("Status: ");
        sb.append(isEnabled() ? "Enabled" : "Disabled");
        sb.append("\nLog level: ");
        sb.append(this.mLogLevel);
        sb.append("\n");
        sb.append(this.mBuffer.getStatus());
        return sb.toString();
    }

    void logState(String where) {
        if (!isEnabled()) {
            return;
        }
        if (this.mLogOnFrame) {
            schedule();
        } else {
            log(where);
        }
    }

    private void schedule() {
        if (this.mScheduled) {
            return;
        }
        this.mScheduled = true;
        this.mChoreographer.postFrameCallback(this.mFrameCallback);
    }

    private void log(String where) {
        Trace.traceBegin(32L, "traceStateLocked");
        try {
            try {
                ProtoOutputStream os = new ProtoOutputStream();
                long tokenOuter = os.start(2246267895810L);
                os.write(1125281431553L, SystemClock.elapsedRealtimeNanos());
                os.write(1138166333442L, where);
                long tokenInner = os.start(1146756268035L);
                synchronized (this.mGlobalLock) {
                    try {
                        WindowManagerService.boostPriorityForLockedSection();
                        Trace.traceBegin(32L, "dumpDebugLocked");
                        try {
                            this.mService.dumpDebugLocked(os, this.mLogLevel);
                            Trace.traceEnd(32L);
                        } finally {
                            Trace.traceEnd(32L);
                        }
                    } catch (Throwable th) {
                        WindowManagerService.resetPriorityAfterLockedSection();
                        throw th;
                    }
                }
                WindowManagerService.resetPriorityAfterLockedSection();
                os.end(tokenInner);
                os.end(tokenOuter);
                this.mBuffer.add(os);
                this.mScheduled = false;
            } catch (Exception e) {
                Log.wtf(TAG, "Exception while tracing state", e);
            }
        } catch (Throwable th2) {
            Trace.traceEnd(32L);
            throw th2;
        }
    }

    void writeTraceToFile() {
        synchronized (this.mEnabledLock) {
            writeTraceToFileLocked();
        }
        ProtoLogImpl.getSingleInstance().writeProtoLogToFile();
    }

    private void logAndPrintln(PrintWriter pw, String msg) {
        Log.i(TAG, msg);
        if (pw != null) {
            pw.println(msg);
            pw.flush();
        }
    }

    private void writeTraceToFileLocked() {
        try {
            try {
                Trace.traceBegin(32L, "writeTraceToFileLocked");
                ProtoOutputStream proto = new ProtoOutputStream();
                proto.write(1125281431553L, MAGIC_NUMBER_VALUE);
                this.mBuffer.writeTraceToFile(this.mTraceFile, proto);
            } catch (IOException e) {
                Log.e(TAG, "Unable to write buffer to file", e);
            }
        } finally {
            Trace.traceEnd(32L);
        }
    }
}
