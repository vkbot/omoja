package com.android.server;

import android.net.LocalSocketAddress;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.util.LocalLog;
import android.util.Slog;
import com.android.internal.util.Preconditions;
import com.android.server.power.ShutdownThread;
import com.google.android.collect.Lists;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Objects;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
final class NativeDaemonConnector implements Runnable, Handler.Callback, Watchdog.Monitor {
    private static final long DEFAULT_TIMEOUT = 60000;
    private static final boolean VDBG = false;
    private static final long WARN_EXECUTE_DELAY_MS = 500;
    private final int BUFFER_SIZE;
    private final String TAG;
    private Handler mCallbackHandler;
    private INativeDaemonConnectorCallbacks mCallbacks;
    private final Object mDaemonLock;
    private volatile boolean mDebug;
    private LocalLog mLocalLog;
    private final Looper mLooper;
    private OutputStream mOutputStream;
    private final ResponseQueue mResponseQueue;
    private AtomicInteger mSequenceNumber;
    private String mSocket;
    private final PowerManager.WakeLock mWakeLock;
    private volatile Object mWarnIfHeld;

    NativeDaemonConnector(INativeDaemonConnectorCallbacks callbacks, String socket, int responseQueueSize, String logTag, int maxLogSize, PowerManager.WakeLock wl) {
        this(callbacks, socket, responseQueueSize, logTag, maxLogSize, wl, FgThread.get().getLooper());
    }

    NativeDaemonConnector(INativeDaemonConnectorCallbacks callbacks, String socket, int responseQueueSize, String logTag, int maxLogSize, PowerManager.WakeLock wl, Looper looper) {
        this.mDebug = false;
        this.mDaemonLock = new Object();
        this.BUFFER_SIZE = 4096;
        this.mCallbacks = callbacks;
        this.mSocket = socket;
        this.mResponseQueue = new ResponseQueue(responseQueueSize);
        this.mWakeLock = wl;
        if (wl != null) {
            wl.setReferenceCounted(true);
        }
        this.mLooper = looper;
        this.mSequenceNumber = new AtomicInteger(0);
        this.TAG = logTag != null ? logTag : "NativeDaemonConnector";
        this.mLocalLog = new LocalLog(maxLogSize);
    }

    public void setDebug(boolean debug) {
        this.mDebug = debug;
    }

    private int uptimeMillisInt() {
        return ((int) SystemClock.uptimeMillis()) & Integer.MAX_VALUE;
    }

    public void setWarnIfHeld(Object warnIfHeld) {
        Preconditions.checkState(this.mWarnIfHeld == null);
        Objects.requireNonNull(warnIfHeld);
        this.mWarnIfHeld = warnIfHeld;
    }

    @Override // java.lang.Runnable
    public void run() throws Throwable {
        this.mCallbackHandler = new Handler(this.mLooper, this);
        while (!isShuttingDown()) {
            try {
                listenToSocket();
            } catch (Exception e) {
                loge("Error in NativeDaemonConnector: " + e);
                if (!isShuttingDown()) {
                    SystemClock.sleep(5000L);
                } else {
                    return;
                }
            }
        }
    }

    private static boolean isShuttingDown() {
        String shutdownAct = SystemProperties.get(ShutdownThread.SHUTDOWN_ACTION_PROPERTY, "");
        return shutdownAct != null && shutdownAct.length() > 0;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message msg) {
        int end;
        PowerManager.WakeLock wakeLock;
        long j;
        String str;
        PowerManager.WakeLock wakeLock2;
        PowerManager.WakeLock wakeLock3;
        String event = (String) msg.obj;
        int start = uptimeMillisInt();
        int sent = msg.arg1;
        try {
            if (!this.mCallbacks.onEvent(msg.what, event, NativeDaemonEvent.unescapeArgs(event))) {
                log(String.format("Unhandled event '%s'", event));
            }
            if (this.mCallbacks.onCheckHoldWakeLock(msg.what) && (wakeLock3 = this.mWakeLock) != null) {
                wakeLock3.release();
            }
            end = uptimeMillisInt();
            if (start > sent && start - sent > 500) {
                loge(String.format("NDC event {%s} processed too late: %dms", event, Integer.valueOf(start - sent)));
            }
            if (end > start) {
                if ((j > j ? 1 : (j == j ? 0 : -1)) > 0) {
                    str = String.format("NDC event {%s} took too long: %dms", event, Integer.valueOf(end - start));
                    loge(str);
                }
            }
        } catch (Exception e) {
            loge("Error handling '" + event + "': " + e);
            if (this.mCallbacks.onCheckHoldWakeLock(msg.what) && (wakeLock2 = this.mWakeLock) != null) {
                wakeLock2.release();
            }
            end = uptimeMillisInt();
            if (start > sent && start - sent > 500) {
                loge(String.format("NDC event {%s} processed too late: %dms", event, Integer.valueOf(start - sent)));
            }
            if (end > start) {
                if ((j > j ? 1 : (j == j ? 0 : -1)) > 0) {
                    str = String.format("NDC event {%s} took too long: %dms", event, Integer.valueOf(end - start));
                }
            }
        } finally {
            if (this.mCallbacks.onCheckHoldWakeLock(msg.what) && (wakeLock = this.mWakeLock) != null) {
                wakeLock.release();
            }
            end = uptimeMillisInt();
            if (start > sent && start - sent > 500) {
                loge(String.format("NDC event {%s} processed too late: %dms", event, Integer.valueOf(start - sent)));
            }
            if (end > start && end - start > 500) {
                loge(String.format("NDC event {%s} took too long: %dms", event, Integer.valueOf(end - start)));
            }
        }
        return true;
    }

    private LocalSocketAddress determineSocketAddress() {
        if (this.mSocket.startsWith("__test__") && Build.IS_DEBUGGABLE) {
            return new LocalSocketAddress(this.mSocket);
        }
        return new LocalSocketAddress(this.mSocket, LocalSocketAddress.Namespace.RESERVED);
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x01a0 */
    /* JADX WARN: Code duplicated, block: B:68:0x015c A[Catch: all -> 0x0197, IOException -> 0x019c, TRY_ENTER, TryCatch #17 {IOException -> 0x019c, all -> 0x0197, blocks: (B:57:0x0137, B:58:0x0139, B:69:0x015f, B:76:0x016f, B:68:0x015c, B:72:0x0166, B:74:0x016c, B:79:0x017a, B:81:0x0181, B:88:0x0196, B:7:0x001a, B:8:0x0020), top: B:140:0x001a, inners: #13 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x0166 A[Catch: all -> 0x0197, IOException -> 0x019c, TryCatch #17 {IOException -> 0x019c, all -> 0x0197, blocks: (B:57:0x0137, B:58:0x0139, B:69:0x015f, B:76:0x016f, B:68:0x015c, B:72:0x0166, B:74:0x016c, B:79:0x017a, B:81:0x0181, B:88:0x0196, B:7:0x001a, B:8:0x0020), top: B:140:0x001a, inners: #13 }] */
    /* JADX WARN: Not initialized variable reg: 16, insn: 0x0199: MOVE (r2 I:??[OBJECT, ARRAY]) = (r16 I:??[OBJECT, ARRAY] A[D('socket' android.net.LocalSocket)]), block:B:90:0x0198 */
    /* JADX WARN: Not initialized variable reg: 16, insn: 0x019d: MOVE (r2 I:??[OBJECT, ARRAY]) = (r16 I:??[OBJECT, ARRAY] A[D('socket' android.net.LocalSocket)]), block:B:92:0x019d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void listenToSocket() throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 548
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.NativeDaemonConnector.listenToSocket():void");
    }

    public static class SensitiveArg {
        private final Object mArg;

        public SensitiveArg(Object arg) {
            this.mArg = arg;
        }

        public String toString() {
            return String.valueOf(this.mArg);
        }
    }

    static void makeCommand(StringBuilder rawBuilder, StringBuilder logBuilder, int sequenceNumber, String cmd, Object... args) {
        if (cmd.indexOf(0) >= 0) {
            throw new IllegalArgumentException("Unexpected command: " + cmd);
        }
        if (cmd.indexOf(32) >= 0) {
            throw new IllegalArgumentException("Arguments must be separate from command");
        }
        rawBuilder.append(sequenceNumber);
        rawBuilder.append(' ');
        rawBuilder.append(cmd);
        logBuilder.append(sequenceNumber);
        logBuilder.append(' ');
        logBuilder.append(cmd);
        for (Object arg : args) {
            String argString = String.valueOf(arg);
            if (argString.indexOf(0) >= 0) {
                throw new IllegalArgumentException("Unexpected argument: " + arg);
            }
            rawBuilder.append(' ');
            logBuilder.append(' ');
            appendEscaped(rawBuilder, argString);
            if (arg instanceof SensitiveArg) {
                logBuilder.append("[scrubbed]");
            } else {
                appendEscaped(logBuilder, argString);
            }
        }
        rawBuilder.append((char) 0);
    }

    public void waitForCallbacks() {
        if (Thread.currentThread() == this.mLooper.getThread()) {
            throw new IllegalStateException("Must not call this method on callback thread");
        }
        final CountDownLatch latch = new CountDownLatch(1);
        this.mCallbackHandler.post(new Runnable() { // from class: com.android.server.NativeDaemonConnector.1
            @Override // java.lang.Runnable
            public void run() {
                latch.countDown();
            }
        });
        try {
            latch.await();
        } catch (InterruptedException e) {
            Slog.wtf(this.TAG, "Interrupted while waiting for unsolicited response handling", e);
        }
    }

    public NativeDaemonEvent execute(Command cmd) throws NativeDaemonConnectorException {
        return execute(cmd.mCmd, cmd.mArguments.toArray());
    }

    public NativeDaemonEvent execute(String cmd, Object... args) throws NativeDaemonConnectorException {
        return execute(60000L, cmd, args);
    }

    public NativeDaemonEvent execute(long timeoutMs, String cmd, Object... args) throws Throwable {
        NativeDaemonEvent[] events = executeForList(timeoutMs, cmd, args);
        if (events.length != 1) {
            throw new NativeDaemonConnectorException("Expected exactly one response, but received " + events.length);
        }
        return events[0];
    }

    public NativeDaemonEvent[] executeForList(Command cmd) throws NativeDaemonConnectorException {
        return executeForList(cmd.mCmd, cmd.mArguments.toArray());
    }

    public NativeDaemonEvent[] executeForList(String cmd, Object... args) throws NativeDaemonConnectorException {
        return executeForList(60000L, cmd, args);
    }

    public NativeDaemonEvent[] executeForList(long timeoutMs, String cmd, Object... args) throws Throwable {
        NativeDaemonEvent event;
        if (this.mWarnIfHeld != null && Thread.holdsLock(this.mWarnIfHeld)) {
            Slog.wtf(this.TAG, "Calling thread " + Thread.currentThread().getName() + " is holding 0x" + Integer.toHexString(System.identityHashCode(this.mWarnIfHeld)), new Throwable());
        }
        long startTime = SystemClock.elapsedRealtime();
        ArrayList<NativeDaemonEvent> events = Lists.newArrayList();
        StringBuilder rawBuilder = new StringBuilder();
        StringBuilder logBuilder = new StringBuilder();
        int sequenceNumber = this.mSequenceNumber.incrementAndGet();
        makeCommand(rawBuilder, logBuilder, sequenceNumber, cmd, args);
        String rawCmd = rawBuilder.toString();
        String logCmd = logBuilder.toString();
        log("SND -> {" + logCmd + "}");
        synchronized (this.mDaemonLock) {
            try {
                try {
                    if (this.mOutputStream == null) {
                        throw new NativeDaemonConnectorException("missing output stream");
                    }
                    try {
                        this.mOutputStream.write(rawCmd.getBytes(StandardCharsets.UTF_8));
                        do {
                            event = this.mResponseQueue.remove(sequenceNumber, timeoutMs, logCmd);
                            if (event == null) {
                                loge("timed-out waiting for response to " + logCmd);
                                throw new NativeDaemonTimeoutException(logCmd, event);
                            }
                            events.add(event);
                        } while (event.isClassContinue());
                        long endTime = SystemClock.elapsedRealtime();
                        if (endTime - startTime > 500) {
                            loge("NDC Command {" + logCmd + "} took too long (" + (endTime - startTime) + "ms)");
                        }
                        if (event.isClassClientError()) {
                            throw new NativeDaemonArgumentException(logCmd, event);
                        }
                        if (event.isClassServerError()) {
                            throw new NativeDaemonFailureException(logCmd, event);
                        }
                        return (NativeDaemonEvent[]) events.toArray(new NativeDaemonEvent[events.size()]);
                    } catch (IOException e) {
                        throw new NativeDaemonConnectorException("problem sending command", e);
                    }
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                throw th;
            }
        }
    }

    static void appendEscaped(StringBuilder builder, String arg) {
        boolean hasSpaces = arg.indexOf(32) >= 0;
        if (hasSpaces) {
            builder.append('\"');
        }
        int length = arg.length();
        for (int i = 0; i < length; i++) {
            char c = arg.charAt(i);
            if (c == '\"') {
                builder.append("\\\"");
            } else if (c == '\\') {
                builder.append("\\\\");
            } else {
                builder.append(c);
            }
        }
        if (hasSpaces) {
            builder.append('\"');
        }
    }

    private static class NativeDaemonArgumentException extends NativeDaemonConnectorException {
        public NativeDaemonArgumentException(String command, NativeDaemonEvent event) {
            super(command, event);
        }

        @Override // com.android.server.NativeDaemonConnectorException
        public IllegalArgumentException rethrowAsParcelableException() {
            throw new IllegalArgumentException(getMessage(), this);
        }
    }

    private static class NativeDaemonFailureException extends NativeDaemonConnectorException {
        public NativeDaemonFailureException(String command, NativeDaemonEvent event) {
            super(command, event);
        }
    }

    public static class Command {
        private ArrayList<Object> mArguments = Lists.newArrayList();
        private String mCmd;

        public Command(String cmd, Object... args) {
            this.mCmd = cmd;
            for (Object arg : args) {
                appendArg(arg);
            }
        }

        public Command appendArg(Object arg) {
            this.mArguments.add(arg);
            return this;
        }
    }

    @Override // com.android.server.Watchdog.Monitor
    public void monitor() {
        synchronized (this.mDaemonLock) {
        }
    }

    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        this.mLocalLog.dump(fd, pw, args);
        pw.println();
        this.mResponseQueue.dump(fd, pw, args);
    }

    private void log(String logstring) {
        if (this.mDebug) {
            Slog.d(this.TAG, logstring);
        }
        this.mLocalLog.log(logstring);
    }

    private void loge(String logstring) {
        Slog.e(this.TAG, logstring);
        this.mLocalLog.log(logstring);
    }

    private static class ResponseQueue {
        private int mMaxCount;
        private final LinkedList<PendingCmd> mPendingCmds = new LinkedList<>();

        private static class PendingCmd {
            public int availableResponseCount;
            public final int cmdNum;
            public final String logCmd;
            public BlockingQueue<NativeDaemonEvent> responses = new ArrayBlockingQueue(10);

            public PendingCmd(int cmdNum, String logCmd) {
                this.cmdNum = cmdNum;
                this.logCmd = logCmd;
            }
        }

        ResponseQueue(int maxCount) {
            this.mMaxCount = maxCount;
        }

        public void add(int cmdNum, NativeDaemonEvent response) {
            PendingCmd found = null;
            synchronized (this.mPendingCmds) {
                for (PendingCmd pendingCmd : this.mPendingCmds) {
                    if (pendingCmd.cmdNum == cmdNum) {
                        found = pendingCmd;
                        break;
                    }
                }
                if (found == null) {
                    while (this.mPendingCmds.size() >= this.mMaxCount) {
                        Slog.e("NativeDaemonConnector.ResponseQueue", "more buffered than allowed: " + this.mPendingCmds.size() + " >= " + this.mMaxCount);
                        PendingCmd pendingCmd2 = this.mPendingCmds.remove();
                        Slog.e("NativeDaemonConnector.ResponseQueue", "Removing request: " + pendingCmd2.logCmd + " (" + pendingCmd2.cmdNum + ")");
                    }
                    found = new PendingCmd(cmdNum, null);
                    this.mPendingCmds.add(found);
                }
                found.availableResponseCount++;
                if (found.availableResponseCount == 0) {
                    this.mPendingCmds.remove(found);
                }
            }
            try {
                found.responses.put(response);
            } catch (InterruptedException e) {
            }
        }

        public NativeDaemonEvent remove(int cmdNum, long timeoutMs, String logCmd) throws InterruptedException {
            PendingCmd found = null;
            synchronized (this.mPendingCmds) {
                for (PendingCmd pendingCmd : this.mPendingCmds) {
                    if (pendingCmd.cmdNum == cmdNum) {
                        found = pendingCmd;
                        break;
                    }
                }
                if (found == null) {
                    found = new PendingCmd(cmdNum, logCmd);
                    this.mPendingCmds.add(found);
                }
                found.availableResponseCount--;
                if (found.availableResponseCount == 0) {
                    this.mPendingCmds.remove(found);
                }
            }
            NativeDaemonEvent result = null;
            try {
                result = found.responses.poll(timeoutMs, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e) {
            }
            if (result == null) {
                Slog.e("NativeDaemonConnector.ResponseQueue", "Timeout waiting for response");
            }
            return result;
        }

        public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
            pw.println("Pending requests:");
            synchronized (this.mPendingCmds) {
                for (PendingCmd pendingCmd : this.mPendingCmds) {
                    pw.println("  Cmd " + pendingCmd.cmdNum + " - " + pendingCmd.logCmd);
                }
            }
        }
    }
}
