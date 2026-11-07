package com.android.server.attention;

import android.attention.AttentionManagerInternal;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.hardware.tv.cec.V1_0.CecMessageType;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.ShellCallback;
import android.os.ShellCommand;
import android.os.SystemClock;
import android.os.UserHandle;
import android.provider.DeviceConfig;
import android.service.attention.IAttentionCallback;
import android.service.attention.IAttentionService;
import android.text.TextUtils;
import android.util.Slog;
import android.util.SparseArray;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.FrameworkStatsLog;
import com.android.internal.util.IndentingPrintWriter;
import com.android.server.SystemService;
import com.android.server.job.controllers.JobStatus;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class AttentionManagerService extends SystemService {
    protected static final int ATTENTION_CACHE_BUFFER_SIZE = 5;
    private static final long CONNECTION_TTL_MILLIS = 60000;
    private static final boolean DEBUG = false;
    private static final boolean DEFAULT_SERVICE_ENABLED = true;
    static final long DEFAULT_STALE_AFTER_MILLIS = 1000;
    private static final String KEY_SERVICE_ENABLED = "service_enabled";
    static final String KEY_STALE_AFTER_MILLIS = "stale_after_millis";
    private static final String LOG_TAG = "AttentionManagerService";
    private static String sTestAttentionServicePackage;
    private AttentionHandler mAttentionHandler;
    ComponentName mComponentName;
    private final Context mContext;
    private final Object mLock;
    private final PowerManager mPowerManager;
    private final SparseArray<UserState> mUserStates;

    public AttentionManagerService(Context context) {
        this(context, (PowerManager) context.getSystemService("power"), new Object(), null);
        this.mAttentionHandler = new AttentionHandler();
    }

    AttentionManagerService(Context context, PowerManager powerManager, Object lock, AttentionHandler handler) {
        super(context);
        this.mUserStates = new SparseArray<>();
        Objects.requireNonNull(context);
        this.mContext = context;
        this.mPowerManager = powerManager;
        this.mLock = lock;
        this.mAttentionHandler = handler;
    }

    @Override // com.android.server.SystemService
    public void onBootPhase(int phase) {
        if (phase == 500) {
            this.mContext.registerReceiver(new ScreenStateReceiver(), new IntentFilter("android.intent.action.SCREEN_OFF"));
        }
    }

    @Override // com.android.server.SystemService
    public void onStart() {
        publishBinderService("attention", new BinderService());
        publishLocalService(AttentionManagerInternal.class, new LocalService());
    }

    @Override // com.android.server.SystemService
    public void onSwitchUser(int userId) {
        cancelAndUnbindLocked(peekUserStateLocked(userId));
    }

    public static boolean isServiceConfigured(Context context) {
        return !TextUtils.isEmpty(getServiceConfigPackage(context));
    }

    private boolean isServiceAvailable() {
        if (this.mComponentName == null) {
            this.mComponentName = resolveAttentionService(this.mContext);
        }
        return this.mComponentName != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isAttentionServiceSupported() {
        return isServiceEnabled() && isServiceConfigured(this.mContext);
    }

    protected boolean isServiceEnabled() {
        return DeviceConfig.getBoolean("attention_manager_service", KEY_SERVICE_ENABLED, true);
    }

    protected long getStaleAfterMillis() {
        long millis = DeviceConfig.getLong("attention_manager_service", KEY_STALE_AFTER_MILLIS, 1000L);
        if (millis < 0 || millis > JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY) {
            Slog.w(LOG_TAG, "Bad flag value supplied for: stale_after_millis");
            return 1000L;
        }
        return millis;
    }

    boolean checkAttention(long timeout, AttentionManagerInternal.AttentionCallbackInternal callbackInternal) {
        Objects.requireNonNull(callbackInternal);
        if (!isAttentionServiceSupported()) {
            Slog.w(LOG_TAG, "Trying to call checkAttention() on an unsupported device.");
            return false;
        }
        if (!isServiceAvailable()) {
            Slog.w(LOG_TAG, "Service is not available at this moment.");
            return false;
        }
        if (!this.mPowerManager.isInteractive()) {
            return false;
        }
        synchronized (this.mLock) {
            long now = SystemClock.uptimeMillis();
            freeIfInactiveLocked();
            UserState userState = getOrCreateCurrentUserStateLocked();
            userState.bindLocked();
            AttentionCheckCache cache = userState.mAttentionCheckCacheBuffer == null ? null : userState.mAttentionCheckCacheBuffer.getLast();
            if (cache == null || now >= cache.mLastComputed + getStaleAfterMillis()) {
                if (userState.mCurrentAttentionCheck != null && (!userState.mCurrentAttentionCheck.mIsDispatched || !userState.mCurrentAttentionCheck.mIsFulfilled)) {
                    return false;
                }
                userState.mCurrentAttentionCheck = createAttentionCheck(callbackInternal, userState);
                if (userState.mService != null) {
                    try {
                        cancelAfterTimeoutLocked(timeout);
                        userState.mService.checkAttention(userState.mCurrentAttentionCheck.mIAttentionCallback);
                        userState.mCurrentAttentionCheck.mIsDispatched = true;
                    } catch (RemoteException e) {
                        Slog.e(LOG_TAG, "Cannot call into the AttentionService");
                        return false;
                    }
                }
                return true;
            }
            callbackInternal.onSuccess(cache.mResult, cache.mTimestamp);
            return true;
        }
    }

    private AttentionCheck createAttentionCheck(final AttentionManagerInternal.AttentionCallbackInternal callbackInternal, final UserState userState) {
        return new AttentionCheck(callbackInternal, new IAttentionCallback.Stub() { // from class: com.android.server.attention.AttentionManagerService.1
            public void onSuccess(int result, long timestamp) {
                if (userState.mCurrentAttentionCheck.mIsFulfilled) {
                    return;
                }
                userState.mCurrentAttentionCheck.mIsFulfilled = true;
                callbackInternal.onSuccess(result, timestamp);
                logStats(result);
                synchronized (AttentionManagerService.this.mLock) {
                    if (userState.mAttentionCheckCacheBuffer == null) {
                        userState.mAttentionCheckCacheBuffer = new AttentionCheckCacheBuffer();
                    }
                    userState.mAttentionCheckCacheBuffer.add(new AttentionCheckCache(SystemClock.uptimeMillis(), result, timestamp));
                }
            }

            public void onFailure(int error) {
                if (userState.mCurrentAttentionCheck.mIsFulfilled) {
                    return;
                }
                userState.mCurrentAttentionCheck.mIsFulfilled = true;
                callbackInternal.onFailure(error);
                logStats(error);
            }

            private void logStats(int result) {
                FrameworkStatsLog.write(CecMessageType.GIVE_DEVICE_POWER_STATUS, result);
            }
        });
    }

    void cancelAttentionCheck(AttentionManagerInternal.AttentionCallbackInternal callbackInternal) {
        synchronized (this.mLock) {
            UserState userState = peekCurrentUserStateLocked();
            if (userState == null) {
                return;
            }
            if (!userState.mCurrentAttentionCheck.mCallbackInternal.equals(callbackInternal)) {
                Slog.w(LOG_TAG, "Cannot cancel a non-current request");
            } else {
                cancel(userState);
            }
        }
    }

    protected void freeIfInactiveLocked() {
        this.mAttentionHandler.removeMessages(1);
        this.mAttentionHandler.sendEmptyMessageDelayed(1, 60000L);
    }

    private void cancelAfterTimeoutLocked(long timeout) {
        this.mAttentionHandler.sendEmptyMessageDelayed(2, timeout);
    }

    protected UserState getOrCreateCurrentUserStateLocked() {
        return getOrCreateUserStateLocked(0);
    }

    protected UserState getOrCreateUserStateLocked(int userId) {
        UserState result = this.mUserStates.get(userId);
        if (result == null) {
            UserState result2 = new UserState(userId, this.mContext, this.mLock, this.mAttentionHandler, this.mComponentName);
            this.mUserStates.put(userId, result2);
            return result2;
        }
        return result;
    }

    protected UserState peekCurrentUserStateLocked() {
        return peekUserStateLocked(0);
    }

    private UserState peekUserStateLocked(int userId) {
        return this.mUserStates.get(userId);
    }

    private static String getServiceConfigPackage(Context context) {
        return context.getPackageManager().getAttentionServicePackageName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ComponentName resolveAttentionService(Context context) {
        String resolvedPackage;
        String serviceConfigPackage = getServiceConfigPackage(context);
        int flags = 1048576;
        if (!TextUtils.isEmpty(sTestAttentionServicePackage)) {
            resolvedPackage = sTestAttentionServicePackage;
            flags = 128;
        } else {
            if (TextUtils.isEmpty(serviceConfigPackage)) {
                return null;
            }
            resolvedPackage = serviceConfigPackage;
        }
        Intent intent = new Intent("android.service.attention.AttentionService").setPackage(resolvedPackage);
        ResolveInfo resolveInfo = context.getPackageManager().resolveService(intent, flags);
        if (resolveInfo == null || resolveInfo.serviceInfo == null) {
            Slog.wtf(LOG_TAG, String.format("Service %s not found in package %s", "android.service.attention.AttentionService", serviceConfigPackage));
            return null;
        }
        ServiceInfo serviceInfo = resolveInfo.serviceInfo;
        String permission = serviceInfo.permission;
        if ("android.permission.BIND_ATTENTION_SERVICE".equals(permission)) {
            return serviceInfo.getComponentName();
        }
        Slog.e(LOG_TAG, String.format("Service %s should require %s permission. Found %s permission", serviceInfo.getComponentName(), "android.permission.BIND_ATTENTION_SERVICE", serviceInfo.permission));
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dumpInternal(IndentingPrintWriter ipw) {
        ipw.println("Attention Manager Service (dumpsys attention) state:\n");
        ipw.println("isServiceEnabled=" + isServiceEnabled());
        ipw.println("AttentionServicePackageName=" + getServiceConfigPackage(this.mContext));
        ipw.println("Resolved component:");
        if (this.mComponentName != null) {
            ipw.increaseIndent();
            ipw.println("Component=" + this.mComponentName.getPackageName());
            ipw.println("Class=" + this.mComponentName.getClassName());
            ipw.decreaseIndent();
        }
        synchronized (this.mLock) {
            int size = this.mUserStates.size();
            ipw.print("Number user states: ");
            ipw.println(size);
            if (size > 0) {
                ipw.increaseIndent();
                for (int i = 0; i < size; i++) {
                    UserState userState = this.mUserStates.valueAt(i);
                    ipw.print(i);
                    ipw.print(":");
                    userState.dump(ipw);
                    ipw.println();
                }
                ipw.decreaseIndent();
            }
        }
    }

    private final class LocalService extends AttentionManagerInternal {
        private LocalService() {
        }

        public boolean isAttentionServiceSupported() {
            return AttentionManagerService.this.isAttentionServiceSupported();
        }

        public boolean checkAttention(long timeout, AttentionManagerInternal.AttentionCallbackInternal callbackInternal) {
            return AttentionManagerService.this.checkAttention(timeout, callbackInternal);
        }

        public void cancelAttentionCheck(AttentionManagerInternal.AttentionCallbackInternal callbackInternal) {
            AttentionManagerService.this.cancelAttentionCheck(callbackInternal);
        }
    }

    protected static final class AttentionCheckCacheBuffer {
        private final AttentionCheckCache[] mQueue = new AttentionCheckCache[5];
        private int mStartIndex = 0;
        private int mSize = 0;

        AttentionCheckCacheBuffer() {
        }

        public AttentionCheckCache getLast() {
            int i = this.mStartIndex;
            int i2 = this.mSize;
            int lastIdx = ((i + i2) - 1) % 5;
            if (i2 == 0) {
                return null;
            }
            return this.mQueue[lastIdx];
        }

        public void add(AttentionCheckCache cache) {
            int i = this.mStartIndex;
            int i2 = this.mSize;
            int nextIndex = (i + i2) % 5;
            this.mQueue[nextIndex] = cache;
            if (i2 == 5) {
                this.mStartIndex = i + 1;
            } else {
                this.mSize = i2 + 1;
            }
        }

        public AttentionCheckCache get(int offset) {
            if (offset >= this.mSize) {
                return null;
            }
            return this.mQueue[(this.mStartIndex + offset) % 5];
        }
    }

    protected static final class AttentionCheckCache {
        private final long mLastComputed;
        private final int mResult;
        private final long mTimestamp;

        AttentionCheckCache(long lastComputed, int result, long timestamp) {
            this.mLastComputed = lastComputed;
            this.mResult = result;
            this.mTimestamp = timestamp;
        }
    }

    static final class AttentionCheck {
        private final AttentionManagerInternal.AttentionCallbackInternal mCallbackInternal;
        private final IAttentionCallback mIAttentionCallback;
        private boolean mIsDispatched;
        private boolean mIsFulfilled;

        AttentionCheck(AttentionManagerInternal.AttentionCallbackInternal callbackInternal, IAttentionCallback iAttentionCallback) {
            this.mCallbackInternal = callbackInternal;
            this.mIAttentionCallback = iAttentionCallback;
        }

        void cancelInternal() {
            this.mIsFulfilled = true;
            this.mCallbackInternal.onFailure(3);
        }
    }

    protected static class UserState {
        AttentionCheckCacheBuffer mAttentionCheckCacheBuffer;
        private final Handler mAttentionHandler;
        private boolean mBinding;
        private final ComponentName mComponentName;
        private final AttentionServiceConnection mConnection = new AttentionServiceConnection();
        private final Context mContext;
        AttentionCheck mCurrentAttentionCheck;
        private final Object mLock;
        IAttentionService mService;
        private final int mUserId;

        UserState(int userId, Context context, Object lock, Handler handler, ComponentName componentName) {
            this.mUserId = userId;
            Objects.requireNonNull(context);
            this.mContext = context;
            Objects.requireNonNull(lock);
            this.mLock = lock;
            Objects.requireNonNull(componentName);
            this.mComponentName = componentName;
            this.mAttentionHandler = handler;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void handlePendingCallbackLocked() {
            if (!this.mCurrentAttentionCheck.mIsDispatched) {
                IAttentionService iAttentionService = this.mService;
                if (iAttentionService != null) {
                    try {
                        iAttentionService.checkAttention(this.mCurrentAttentionCheck.mIAttentionCallback);
                        this.mCurrentAttentionCheck.mIsDispatched = true;
                        return;
                    } catch (RemoteException e) {
                        Slog.e(AttentionManagerService.LOG_TAG, "Cannot call into the AttentionService");
                        return;
                    }
                }
                this.mCurrentAttentionCheck.mCallbackInternal.onFailure(2);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void bindLocked() {
            if (this.mBinding || this.mService != null) {
                return;
            }
            this.mBinding = true;
            this.mAttentionHandler.post(new Runnable() { // from class: com.android.server.attention.-$$Lambda$AttentionManagerService$UserState$2cc0P7pJchsigKpbEq7IoxYFsSM
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$bindLocked$0$AttentionManagerService$UserState();
                }
            });
        }

        public /* synthetic */ void lambda$bindLocked$0$AttentionManagerService$UserState() {
            Intent serviceIntent = new Intent("android.service.attention.AttentionService").setComponent(this.mComponentName);
            this.mContext.bindServiceAsUser(serviceIntent, this.mConnection, 67112961, UserHandle.CURRENT);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void dump(IndentingPrintWriter pw) {
            pw.println("userId=" + this.mUserId);
            synchronized (this.mLock) {
                pw.println("binding=" + this.mBinding);
                pw.println("current attention check:");
                if (this.mCurrentAttentionCheck != null) {
                    pw.increaseIndent();
                    pw.println("is dispatched=" + this.mCurrentAttentionCheck.mIsDispatched);
                    pw.println("is fulfilled:=" + this.mCurrentAttentionCheck.mIsFulfilled);
                    pw.decreaseIndent();
                }
                if (this.mAttentionCheckCacheBuffer != null) {
                    pw.println("attention check cache:");
                    for (int i = 0; i < this.mAttentionCheckCacheBuffer.mSize; i++) {
                        pw.increaseIndent();
                        pw.println("timestamp=" + this.mAttentionCheckCacheBuffer.get(i).mTimestamp);
                        pw.println("result=" + this.mAttentionCheckCacheBuffer.get(i).mResult);
                        pw.decreaseIndent();
                    }
                }
            }
        }

        private class AttentionServiceConnection implements ServiceConnection {
            private AttentionServiceConnection() {
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName name, IBinder service) {
                init(IAttentionService.Stub.asInterface(service));
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName name) {
                cleanupService();
            }

            @Override // android.content.ServiceConnection
            public void onBindingDied(ComponentName name) {
                cleanupService();
            }

            @Override // android.content.ServiceConnection
            public void onNullBinding(ComponentName name) {
                cleanupService();
            }

            void cleanupService() {
                init(null);
            }

            private void init(IAttentionService service) {
                synchronized (UserState.this.mLock) {
                    UserState.this.mService = service;
                    UserState.this.mBinding = false;
                    UserState.this.handlePendingCallbackLocked();
                }
            }
        }
    }

    protected class AttentionHandler extends Handler {
        private static final int ATTENTION_CHECK_TIMEOUT = 2;
        private static final int CHECK_CONNECTION_EXPIRATION = 1;

        AttentionHandler() {
            super(Looper.myLooper());
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int i = msg.what;
            if (i != 1) {
                if (i == 2) {
                    synchronized (AttentionManagerService.this.mLock) {
                        AttentionManagerService.this.cancel(AttentionManagerService.this.peekCurrentUserStateLocked());
                    }
                    return;
                }
                return;
            }
            for (int i2 = 0; i2 < AttentionManagerService.this.mUserStates.size(); i2++) {
                AttentionManagerService attentionManagerService = AttentionManagerService.this;
                attentionManagerService.cancelAndUnbindLocked((UserState) attentionManagerService.mUserStates.valueAt(i2));
            }
        }
    }

    void cancel(UserState userState) {
        if (userState == null || userState.mCurrentAttentionCheck == null || userState.mCurrentAttentionCheck.mIsFulfilled) {
            return;
        }
        if (userState.mService == null) {
            userState.mCurrentAttentionCheck.cancelInternal();
            return;
        }
        try {
            userState.mService.cancelAttentionCheck(userState.mCurrentAttentionCheck.mIAttentionCallback);
        } catch (RemoteException e) {
            Slog.e(LOG_TAG, "Unable to cancel attention check");
            userState.mCurrentAttentionCheck.cancelInternal();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelAndUnbindLocked(final UserState userState) {
        synchronized (this.mLock) {
            try {
                if (userState == null) {
                    return;
                }
                cancel(userState);
                if (userState.mService == null) {
                    return;
                }
                this.mAttentionHandler.post(new Runnable() { // from class: com.android.server.attention.-$$Lambda$AttentionManagerService$2UthIuCIdjigpPv1U5Dxw_fo4nY
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$cancelAndUnbindLocked$0$AttentionManagerService(userState);
                    }
                });
                userState.mConnection.cleanupService();
                this.mUserStates.remove(userState.mUserId);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public /* synthetic */ void lambda$cancelAndUnbindLocked$0$AttentionManagerService(UserState userState) {
        this.mContext.unbindService(userState.mConnection);
    }

    private final class ScreenStateReceiver extends BroadcastReceiver {
        private ScreenStateReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                AttentionManagerService attentionManagerService = AttentionManagerService.this;
                attentionManagerService.cancelAndUnbindLocked(attentionManagerService.peekCurrentUserStateLocked());
            }
        }
    }

    private final class AttentionManagerServiceShellCommand extends ShellCommand {
        final TestableAttentionCallbackInternal mTestableAttentionCallback;

        class TestableAttentionCallbackInternal extends AttentionManagerInternal.AttentionCallbackInternal {
            private int mLastCallbackCode = -1;

            TestableAttentionCallbackInternal() {
            }

            public void onSuccess(int result, long timestamp) {
                this.mLastCallbackCode = result;
            }

            public void onFailure(int error) {
                this.mLastCallbackCode = error;
            }

            public void reset() {
                this.mLastCallbackCode = -1;
            }

            public int getLastCallbackCode() {
                return this.mLastCallbackCode;
            }
        }

        private AttentionManagerServiceShellCommand() {
            this.mTestableAttentionCallback = new TestableAttentionCallbackInternal();
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code duplicated, block: B:42:0x0081  */
        /* JADX WARN: Code duplicated, block: B:8:0x0018  */
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        public int onCommand(String cmd) {
            byte b;
            if (cmd == null) {
                return handleDefaultCommands(cmd);
            }
            PrintWriter err = getErrPrintWriter();
            try {
                byte b2 = 0;
                switch (cmd.hashCode()) {
                    case -1208709968:
                        b = !cmd.equals("getLastTestCallbackCode") ? (byte) -1 : (byte) 4;
                        break;
                    case -1002424240:
                        if (cmd.equals("getAttentionServiceComponent")) {
                            b = 0;
                        }
                        break;
                    case -415045819:
                        if (cmd.equals("setTestableAttentionService")) {
                            b = 2;
                        }
                        break;
                    case 3045982:
                        if (cmd.equals("call")) {
                            b = 1;
                        }
                        break;
                    case 1193447472:
                        if (cmd.equals("clearTestableAttentionService")) {
                            b = 3;
                        }
                        break;
                    default:
                        break;
                }
                if (b == 0) {
                    return cmdResolveAttentionServiceComponent();
                }
                if (b != 1) {
                    if (b == 2) {
                        return cmdSetTestableAttentionService(getNextArgRequired());
                    }
                    if (b == 3) {
                        return cmdClearTestableAttentionService();
                    }
                    if (b == 4) {
                        return cmdGetLastTestCallbackCode();
                    }
                    return handleDefaultCommands(cmd);
                }
                String nextArgRequired = getNextArgRequired();
                int iHashCode = nextArgRequired.hashCode();
                if (iHashCode == 763077136) {
                    b2 = nextArgRequired.equals("cancelCheckAttention") ? (byte) 1 : (byte) -1;
                } else if (iHashCode == 1485997302 && nextArgRequired.equals("checkAttention")) {
                }
                if (b2 == 0) {
                    return cmdCallCheckAttention();
                }
                if (b2 == 1) {
                    return cmdCallCancelAttention();
                }
                throw new IllegalArgumentException("Invalid argument");
            } catch (IllegalArgumentException e) {
                err.println("Error: " + e.getMessage());
                return -1;
            }
        }

        private int cmdSetTestableAttentionService(String testingServicePackage) {
            PrintWriter out = getOutPrintWriter();
            if (!TextUtils.isEmpty(testingServicePackage)) {
                String unused = AttentionManagerService.sTestAttentionServicePackage = testingServicePackage;
                resetStates();
                out.println(AttentionManagerService.this.mComponentName != null ? "true" : "false");
                return 0;
            }
            out.println("false");
            return 0;
        }

        private int cmdClearTestableAttentionService() {
            String unused = AttentionManagerService.sTestAttentionServicePackage = "";
            this.mTestableAttentionCallback.reset();
            resetStates();
            return 0;
        }

        private int cmdCallCheckAttention() {
            PrintWriter out = getOutPrintWriter();
            boolean calledSuccessfully = AttentionManagerService.this.checkAttention(2000L, this.mTestableAttentionCallback);
            out.println(calledSuccessfully ? "true" : "false");
            return 0;
        }

        private int cmdCallCancelAttention() {
            PrintWriter out = getOutPrintWriter();
            AttentionManagerService.this.cancelAttentionCheck(this.mTestableAttentionCallback);
            out.println("true");
            return 0;
        }

        private int cmdResolveAttentionServiceComponent() {
            PrintWriter out = getOutPrintWriter();
            ComponentName resolvedComponent = AttentionManagerService.resolveAttentionService(AttentionManagerService.this.mContext);
            out.println(resolvedComponent != null ? resolvedComponent.flattenToShortString() : "");
            return 0;
        }

        private int cmdGetLastTestCallbackCode() {
            PrintWriter out = getOutPrintWriter();
            out.println(this.mTestableAttentionCallback.getLastCallbackCode());
            return 0;
        }

        private void resetStates() {
            AttentionManagerService attentionManagerService = AttentionManagerService.this;
            attentionManagerService.mComponentName = AttentionManagerService.resolveAttentionService(attentionManagerService.mContext);
            AttentionManagerService.this.mUserStates.clear();
        }

        public void onHelp() {
            PrintWriter out = getOutPrintWriter();
            out.println("Attention commands: ");
            out.println("  setTestableAttentionService <service_package>: Bind to a custom implementation of attention service");
            out.println("  ---<service_package>:");
            out.println("       := Package containing the Attention Service implementation to bind to");
            out.println("  ---returns:");
            out.println("       := true, if was bound successfully");
            out.println("       := false, if was not bound successfully");
            out.println("  clearTestableAttentionService: Undo custom bindings. Revert to previous behavior");
            out.println("  getAttentionServiceComponent: Get the current service component string");
            out.println("  ---returns:");
            out.println("       := If valid, the component string (in shorten form) for the currently bound service.");
            out.println("       := else, empty string");
            out.println("  call checkAttention: Calls check attention");
            out.println("  ---returns:");
            out.println("       := true, if the call was successfully dispatched to the service implementation. (to see the result, call getLastTestCallbackCode)");
            out.println("       := false, otherwise");
            out.println("  call cancelCheckAttention: Cancels check attention");
            out.println("  getLastTestCallbackCode");
            out.println("  ---returns:");
            out.println("       := An integer, representing the last callback code received from the bounded implementation. If none, it will return -1");
        }
    }

    private final class BinderService extends Binder {
        AttentionManagerServiceShellCommand mAttentionManagerServiceShellCommand;

        private BinderService() {
            this.mAttentionManagerServiceShellCommand = new AttentionManagerServiceShellCommand();
        }

        public void onShellCommand(FileDescriptor in, FileDescriptor out, FileDescriptor err, String[] args, ShellCallback callback, ResultReceiver resultReceiver) {
            this.mAttentionManagerServiceShellCommand.exec(this, in, out, err, args, callback, resultReceiver);
        }

        @Override // android.os.Binder
        protected void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
            if (DumpUtils.checkDumpPermission(AttentionManagerService.this.mContext, AttentionManagerService.LOG_TAG, pw)) {
                AttentionManagerService.this.dumpInternal(new IndentingPrintWriter(pw, "  "));
            }
        }
    }
}
