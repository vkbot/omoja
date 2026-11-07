package com.android.server.inputmethod;

import android.R;
import android.app.ActivityManager;
import android.app.ActivityManagerInternal;
import android.app.ActivityThread;
import android.app.AlertDialog;
import android.app.AppGlobals;
import android.app.AppOpsManager;
import android.app.KeyguardManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentProvider;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageManager;
import android.content.pm.PackageManager;
import android.content.pm.PackageManagerInternal;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.ContentObserver;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.hardware.display.DisplayManagerInternal;
import android.hardware.input.InputManagerInternal;
import android.media.AudioManagerInternal;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.Debug;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.LocaleList;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.Process;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.ServiceManager;
import android.os.ShellCallback;
import android.os.ShellCommand;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.UserManager;
import android.os.UserManagerInternal;
import android.provider.Settings;
import android.text.TextUtils;
import android.text.style.SuggestionSpan;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.EventLog;
import android.util.LruCache;
import android.util.Pair;
import android.util.PrintWriterPrinter;
import android.util.Printer;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.view.ContextThemeWrapper;
import android.view.DisplayInfo;
import android.view.IWindowManager;
import android.view.InputChannel;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.autofill.AutofillId;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InlineSuggestionsRequest;
import android.view.inputmethod.InputBinding;
import android.view.inputmethod.InputConnectionInspector;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodSubtype;
import android.widget.ArrayAdapter;
import android.widget.CompoundButton;
import android.widget.RadioButton;
import android.widget.Switch;
import android.widget.TextView;
import com.android.internal.content.PackageMonitor;
import com.android.internal.inputmethod.IInputContentUriToken;
import com.android.internal.inputmethod.IInputMethodPrivilegedOperations;
import com.android.internal.inputmethod.InputMethodDebug;
import com.android.internal.notification.SystemNotificationChannels;
import com.android.internal.os.HandlerCaller;
import com.android.internal.os.SomeArgs;
import com.android.internal.os.TransferPipe;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.FunctionalUtils;
import com.android.internal.util.IndentingPrintWriter;
import com.android.internal.view.IInlineSuggestionsRequestCallback;
import com.android.internal.view.IInlineSuggestionsResponseCallback;
import com.android.internal.view.IInputContext;
import com.android.internal.view.IInputMethod;
import com.android.internal.view.IInputMethodClient;
import com.android.internal.view.IInputMethodManager;
import com.android.internal.view.IInputMethodSession;
import com.android.internal.view.IInputSessionCallback;
import com.android.internal.view.InlineSuggestionsRequestInfo;
import com.android.internal.view.InputBindResult;
import com.android.server.EventLogTags;
import com.android.server.LocalServices;
import com.android.server.SystemService;
import com.android.server.statusbar.StatusBarManagerService;
import com.android.server.wm.ActivityTaskManagerInternal;
import com.android.server.wm.WindowManagerInternal;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.security.InvalidParameterException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
public class InputMethodManagerService extends IInputMethodManager.Stub implements ServiceConnection, Handler.Callback {
    private static final String ACTION_SHOW_INPUT_METHOD_PICKER = "com.android.server.inputmethod.InputMethodManagerService.SHOW_INPUT_METHOD_PICKER";
    static final boolean DEBUG = true;
    private static final int FALLBACK_DISPLAY_ID = 0;
    private static final int IME_CONNECTION_BIND_FLAGS = 1082130437;
    private static final int IME_VISIBLE_BIND_FLAGS = 738725889;
    static final int MSG_APPLY_IME_VISIBILITY = 3070;
    static final int MSG_BIND_CLIENT = 3010;
    static final int MSG_BIND_INPUT = 1010;
    static final int MSG_CREATE_SESSION = 1050;
    static final int MSG_DISPATCH_ON_INPUT_METHOD_LIST_UPDATED = 5010;
    static final int MSG_HARD_KEYBOARD_SWITCH_CHANGED = 4000;
    static final int MSG_HIDE_CURRENT_INPUT_METHOD = 1035;
    static final int MSG_HIDE_SOFT_INPUT = 1030;
    static final int MSG_INITIALIZE_IME = 1040;
    static final int MSG_INLINE_SUGGESTIONS_REQUEST = 6000;
    static final int MSG_NOTIFY_IME_UID_TO_AUDIO_SERVICE = 7000;
    static final int MSG_REMOVE_IME_SURFACE = 1060;
    static final int MSG_REMOVE_IME_SURFACE_FROM_WINDOW = 1061;
    static final int MSG_REPORT_FULLSCREEN_MODE = 3045;
    static final int MSG_REPORT_PRE_RENDERED = 3060;
    static final int MSG_SET_ACTIVE = 3020;
    static final int MSG_SET_INTERACTIVE = 3030;
    static final int MSG_SHOW_IM_CONFIG = 3;
    static final int MSG_SHOW_IM_SUBTYPE_ENABLER = 2;
    static final int MSG_SHOW_IM_SUBTYPE_PICKER = 1;
    static final int MSG_SHOW_SOFT_INPUT = 1020;
    static final int MSG_START_INPUT = 2000;
    static final int MSG_SYSTEM_UNLOCK_USER = 5000;
    static final int MSG_UNBIND_CLIENT = 3000;
    static final int MSG_UNBIND_INPUT = 1000;
    private static final int NOT_A_SUBTYPE_ID = -1;
    static final int SECURE_SUGGESTION_SPANS_MAX_SIZE = 20;
    static final String TAG = "InputMethodManagerService";
    private static final String TAG_TRY_SUPPRESSING_IME_SWITCHER = "TrySuppressingImeSwitcher";
    static final long TIME_TO_RECONNECT = 3000;
    private boolean mAccessibilityRequestingNoSoftKeyboard;
    private final AppOpsManager mAppOpsManager;
    boolean mBoundToMethod;
    final HandlerCaller mCaller;
    final Context mContext;
    EditorInfo mCurAttribute;
    ClientState mCurClient;
    private boolean mCurClientInKeyguard;
    IBinder mCurFocusedWindow;
    ClientState mCurFocusedWindowClient;
    int mCurFocusedWindowSoftInputMode;
    private IBinder mCurHostInputToken;
    String mCurId;
    IInputContext mCurInputContext;
    int mCurInputContextMissingMethods;
    Intent mCurIntent;
    IInputMethod mCurMethod;
    String mCurMethodId;
    private boolean mCurPerceptible;
    int mCurSeq;
    IBinder mCurToken;
    private InputMethodSubtype mCurrentSubtype;
    private AlertDialog.Builder mDialogBuilder;
    SessionState mEnabledSession;
    private final HardKeyboardListener mHardKeyboardListener;
    final boolean mHasFeature;
    boolean mHaveConnection;
    private PendingIntent mImeSwitchPendingIntent;
    private Notification.Builder mImeSwitcherNotification;
    int mImeWindowVis;
    private InputMethodInfo[] mIms;
    boolean mInFullscreenMode;
    boolean mInputShown;
    private KeyguardManager mKeyguardManager;
    long mLastBindTime;
    IBinder mLastImeTargetWindow;
    private int mLastSwitchUserId;
    private LocaleList mLastSystemLocales;
    private NotificationManager mNotificationManager;
    private boolean mNotificationShown;
    final Resources mRes;
    final InputMethodUtils.InputMethodSettings mSettings;
    boolean mShowExplicitlyRequested;
    boolean mShowForced;
    private boolean mShowImeWithHardKeyboard;
    private boolean mShowOngoingImeSwitcherForPhones;
    boolean mShowRequested;
    private final String mSlotIme;
    private final SoftInputShowHideHistory mSoftInputShowHideHistory;
    private final StartInputHistory mStartInputHistory;
    private StatusBarManagerService mStatusBar;
    private int[] mSubtypeIds;
    private final InputMethodSubtypeSwitchingController mSwitchingController;
    private AlertDialog mSwitchingDialog;
    private View mSwitchingDialogTitleView;
    boolean mSystemReady;
    private final UserManager mUserManager;
    private UserSwitchHandlerTask mUserSwitchHandlerTask;
    private final SparseBooleanArray mLoggedDeniedGetInputMethodWindowVisibleHeightForUid = new SparseBooleanArray(0);
    private final ArrayMap<String, List<InputMethodSubtype>> mAdditionalSubtypeMap = new ArrayMap<>();
    private AudioManagerInternal mAudioManagerInternal = null;
    final ArrayList<InputMethodInfo> mMethodList = new ArrayList<>();
    final ArrayMap<String, InputMethodInfo> mMethodMap = new ArrayMap<>();
    private final LruCache<SuggestionSpan, InputMethodInfo> mSecureSuggestionSpans = new LruCache<>(20);
    private int mMethodMapUpdateCount = 0;
    final ServiceConnection mVisibleConnection = new ServiceConnection() { // from class: com.android.server.inputmethod.InputMethodManagerService.1
        @Override // android.content.ServiceConnection
        public void onBindingDied(ComponentName name) {
            synchronized (InputMethodManagerService.this.mMethodMap) {
                if (InputMethodManagerService.this.mVisibleBound) {
                    InputMethodManagerService.this.mContext.unbindService(InputMethodManagerService.this.mVisibleConnection);
                    InputMethodManagerService.this.mVisibleBound = false;
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName name, IBinder service) {
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName name) {
        }
    };
    boolean mVisibleBound = false;
    final ArrayMap<IBinder, ClientState> mClients = new ArrayMap<>();
    private SparseArray<ActivityViewInfo> mActivityViewDisplayIdToParentMap = new SparseArray<>();
    private Matrix mCurActivityViewToScreenMatrix = null;
    int mCurTokenDisplayId = -1;
    int mCurMethodUid = -1;
    boolean mIsInteractive = true;
    int mBackDisposition = 0;
    private IBinder mSwitchingDialogToken = new Binder();
    private final MyPackageMonitor mMyPackageMonitor = new MyPackageMonitor();
    private final CopyOnWriteArrayList<InputMethodManagerInternal.InputMethodListListener> mInputMethodListListeners = new CopyOnWriteArrayList<>();
    private final WeakHashMap<IBinder, IBinder> mImeTargetWindowMap = new WeakHashMap<>();
    private final WeakHashMap<IBinder, IBinder> mShowRequestWindowMap = new WeakHashMap<>();
    private final WeakHashMap<IBinder, IBinder> mHideRequestWindowMap = new WeakHashMap<>();
    private final IPackageManager mIPackageManager = AppGlobals.getPackageManager();
    final Handler mHandler = new Handler(this);
    final SettingsObserver mSettingsObserver = new SettingsObserver(this.mHandler);
    final IWindowManager mIWindowManager = IWindowManager.Stub.asInterface(ServiceManager.getService("window"));
    final WindowManagerInternal mWindowManagerInternal = (WindowManagerInternal) LocalServices.getService(WindowManagerInternal.class);
    final PackageManagerInternal mPackageManagerInternal = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
    final InputManagerInternal mInputManagerInternal = (InputManagerInternal) LocalServices.getService(InputManagerInternal.class);
    private final DisplayManagerInternal mDisplayManagerInternal = (DisplayManagerInternal) LocalServices.getService(DisplayManagerInternal.class);
    final ImeDisplayValidator mImeDisplayValidator = new ImeDisplayValidator() { // from class: com.android.server.inputmethod.-$$Lambda$InputMethodManagerService$oxpSIwENeEjKtHbxqUXuaXD0Gn8
        @Override // com.android.server.inputmethod.InputMethodManagerService.ImeDisplayValidator
        public final boolean displayCanShowIme(int i) {
            return this.f$0.lambda$new$0$InputMethodManagerService(i);
        }
    };
    private final UserManagerInternal mUserManagerInternal = (UserManagerInternal) LocalServices.getService(UserManagerInternal.class);
    private final boolean mIsLowRam = ActivityManager.isLowRamDeviceStatic();

    @FunctionalInterface
    interface ImeDisplayValidator {
        boolean displayCanShowIme(int i);
    }

    @Retention(RetentionPolicy.SOURCE)
    private @interface ShellCommandResult {
        public static final int FAILURE = -1;
        public static final int SUCCESS = 0;
    }

    private static final class DebugFlag {
        private static final Object LOCK = new Object();
        private final boolean mDefaultValue;
        private final String mKey;
        private boolean mValue;

        public DebugFlag(String key, boolean defaultValue) {
            this.mKey = key;
            this.mDefaultValue = defaultValue;
            this.mValue = SystemProperties.getBoolean(key, defaultValue);
        }

        void refresh() {
            synchronized (LOCK) {
                this.mValue = SystemProperties.getBoolean(this.mKey, this.mDefaultValue);
            }
        }

        boolean value() {
            boolean z;
            synchronized (LOCK) {
                z = this.mValue;
            }
            return z;
        }
    }

    private static final class DebugFlags {
        static final DebugFlag FLAG_OPTIMIZE_START_INPUT = new DebugFlag("debug.optimize_startinput", false);
        static final DebugFlag FLAG_PRE_RENDER_IME_VIEWS = new DebugFlag("persist.pre_render_ime_views", false);

        private DebugFlags() {
        }
    }

    static class SessionState {
        InputChannel channel;
        final ClientState client;
        final IInputMethod method;
        IInputMethodSession session;

        public String toString() {
            return "SessionState{uid " + this.client.uid + " pid " + this.client.pid + " method " + Integer.toHexString(System.identityHashCode(this.method)) + " session " + Integer.toHexString(System.identityHashCode(this.session)) + " channel " + this.channel + "}";
        }

        SessionState(ClientState _client, IInputMethod _method, IInputMethodSession _session, InputChannel _channel) {
            this.client = _client;
            this.method = _method;
            this.session = _session;
            this.channel = _channel;
        }
    }

    private static final class ClientDeathRecipient implements IBinder.DeathRecipient {
        private final IInputMethodClient mClient;
        private final InputMethodManagerService mImms;

        ClientDeathRecipient(InputMethodManagerService imms, IInputMethodClient client) {
            this.mImms = imms;
            this.mClient = client;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            this.mImms.removeClient(this.mClient);
        }
    }

    static final class ClientState {
        final InputBinding binding;
        final IInputMethodClient client;
        final ClientDeathRecipient clientDeathRecipient;
        SessionState curSession;
        final IInputContext inputContext;
        final int pid;
        final int selfReportedDisplayId;
        boolean sessionRequested;
        boolean shouldPreRenderIme;
        final int uid;

        public String toString() {
            return "ClientState{" + Integer.toHexString(System.identityHashCode(this)) + " uid=" + this.uid + " pid=" + this.pid + " displayId=" + this.selfReportedDisplayId + "}";
        }

        ClientState(IInputMethodClient _client, IInputContext _inputContext, int _uid, int _pid, int _selfReportedDisplayId, ClientDeathRecipient _clientDeathRecipient) {
            this.client = _client;
            this.inputContext = _inputContext;
            this.uid = _uid;
            this.pid = _pid;
            this.selfReportedDisplayId = _selfReportedDisplayId;
            this.binding = new InputBinding(null, this.inputContext.asBinder(), this.uid, this.pid);
            this.clientDeathRecipient = _clientDeathRecipient;
        }
    }

    private static final class ActivityViewInfo {
        private final Matrix mMatrix;
        private final ClientState mParentClient;

        ActivityViewInfo(ClientState parentClient, Matrix matrix) {
            this.mParentClient = parentClient;
            this.mMatrix = matrix;
        }
    }

    private static class StartInputInfo {
        private static final AtomicInteger sSequenceNumber = new AtomicInteger(0);
        final int mClientBindSequenceNumber;
        final EditorInfo mEditorInfo;
        final int mImeDisplayId;
        final String mImeId;
        final IBinder mImeToken;
        final int mImeUserId;
        final boolean mRestarting;
        final int mStartInputReason;
        final int mTargetDisplayId;
        final int mTargetUserId;
        final IBinder mTargetWindow;
        final int mTargetWindowSoftInputMode;
        final int mSequenceNumber = sSequenceNumber.getAndIncrement();
        final long mTimestamp = SystemClock.uptimeMillis();
        final long mWallTime = System.currentTimeMillis();

        StartInputInfo(int imeUserId, IBinder imeToken, int imeDisplayId, String imeId, int startInputReason, boolean restarting, int targetUserId, int targetDisplayId, IBinder targetWindow, EditorInfo editorInfo, int targetWindowSoftInputMode, int clientBindSequenceNumber) {
            this.mImeUserId = imeUserId;
            this.mImeToken = imeToken;
            this.mImeDisplayId = imeDisplayId;
            this.mImeId = imeId;
            this.mStartInputReason = startInputReason;
            this.mRestarting = restarting;
            this.mTargetUserId = targetUserId;
            this.mTargetDisplayId = targetDisplayId;
            this.mTargetWindow = targetWindow;
            this.mEditorInfo = editorInfo;
            this.mTargetWindowSoftInputMode = targetWindowSoftInputMode;
            this.mClientBindSequenceNumber = clientBindSequenceNumber;
        }
    }

    private static final class SoftInputShowHideHistory {
        private static final AtomicInteger sSequenceNumber = new AtomicInteger(0);
        private Entry[] mEntries;
        private int mNextIndex;

        private SoftInputShowHideHistory() {
            this.mEntries = new Entry[16];
            this.mNextIndex = 0;
        }

        private static final class Entry {
            final ClientState mClientState;
            final EditorInfo mEditorInfo;
            final String mFocusedWindowName;
            final int mFocusedWindowSoftInputMode;
            final String mImeControlTargetName;
            final String mImeTargetNameFromWm;
            final boolean mInFullscreenMode;
            final int mReason;
            final String mRequestWindowName;
            final int mSequenceNumber = SoftInputShowHideHistory.sSequenceNumber.getAndIncrement();
            final long mTimestamp = SystemClock.uptimeMillis();
            final long mWallTime = System.currentTimeMillis();

            Entry(ClientState client, EditorInfo editorInfo, String focusedWindowName, int softInputMode, int reason, boolean inFullscreenMode, String requestWindowName, String imeControlTargetName, String imeTargetName) {
                this.mClientState = client;
                this.mEditorInfo = editorInfo;
                this.mFocusedWindowName = focusedWindowName;
                this.mFocusedWindowSoftInputMode = softInputMode;
                this.mReason = reason;
                this.mInFullscreenMode = inFullscreenMode;
                this.mRequestWindowName = requestWindowName;
                this.mImeControlTargetName = imeControlTargetName;
                this.mImeTargetNameFromWm = imeTargetName;
            }
        }

        void addEntry(Entry entry) {
            int index = this.mNextIndex;
            Entry[] entryArr = this.mEntries;
            entryArr[index] = entry;
            this.mNextIndex = (this.mNextIndex + 1) % entryArr.length;
        }

        void dump(PrintWriter pw, String prefix) {
            SimpleDateFormat dataFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US);
            int i = 0;
            while (true) {
                Entry[] entryArr = this.mEntries;
                if (i < entryArr.length) {
                    Entry entry = entryArr[(this.mNextIndex + i) % entryArr.length];
                    if (entry != null) {
                        pw.print(prefix);
                        pw.println("SoftInputShowHideHistory #" + entry.mSequenceNumber + ":");
                        pw.print(prefix);
                        pw.println(" time=" + dataFormat.format(new Date(entry.mWallTime)) + " (timestamp=" + entry.mTimestamp + ")");
                        pw.print(prefix);
                        StringBuilder sb = new StringBuilder();
                        sb.append(" reason=");
                        sb.append(InputMethodDebug.softInputDisplayReasonToString(entry.mReason));
                        pw.print(sb.toString());
                        pw.println(" inFullscreenMode=" + entry.mInFullscreenMode);
                        pw.print(prefix);
                        pw.println(" requestClient=" + entry.mClientState);
                        pw.print(prefix);
                        pw.println(" focusedWindowName=" + entry.mFocusedWindowName);
                        pw.print(prefix);
                        pw.println(" requestWindowName=" + entry.mRequestWindowName);
                        pw.print(prefix);
                        pw.println(" imeControlTargetName=" + entry.mImeControlTargetName);
                        pw.print(prefix);
                        pw.println(" imeTargetNameFromWm=" + entry.mImeTargetNameFromWm);
                        pw.print(prefix);
                        pw.print(" editorInfo: ");
                        pw.print(" inputType=" + entry.mEditorInfo.inputType);
                        pw.print(" privateImeOptions=" + entry.mEditorInfo.privateImeOptions);
                        pw.println(" fieldId (viewId)=" + entry.mEditorInfo.fieldId);
                        pw.print(prefix);
                        pw.println(" focusedWindowSoftInputMode=" + InputMethodDebug.softInputModeToString(entry.mFocusedWindowSoftInputMode));
                    }
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    private static final class StartInputHistory {
        private static final int ENTRY_SIZE_FOR_HIGH_RAM_DEVICE = 16;
        private static final int ENTRY_SIZE_FOR_LOW_RAM_DEVICE = 5;
        private final Entry[] mEntries;
        private int mNextIndex;

        private StartInputHistory() {
            this.mEntries = new Entry[getEntrySize()];
            this.mNextIndex = 0;
        }

        private static int getEntrySize() {
            if (ActivityManager.isLowRamDeviceStatic()) {
                return 5;
            }
            return 16;
        }

        private static final class Entry {
            int mClientBindSequenceNumber;
            EditorInfo mEditorInfo;
            int mImeDisplayId;
            String mImeId;
            String mImeTokenString;
            int mImeUserId;
            boolean mRestarting;
            int mSequenceNumber;
            int mStartInputReason;
            int mTargetDisplayId;
            int mTargetUserId;
            int mTargetWindowSoftInputMode;
            String mTargetWindowString;
            long mTimestamp;
            long mWallTime;

            Entry(StartInputInfo original) {
                set(original);
            }

            void set(StartInputInfo original) {
                this.mSequenceNumber = original.mSequenceNumber;
                this.mTimestamp = original.mTimestamp;
                this.mWallTime = original.mWallTime;
                this.mImeUserId = original.mImeUserId;
                this.mImeTokenString = String.valueOf(original.mImeToken);
                this.mImeDisplayId = original.mImeDisplayId;
                this.mImeId = original.mImeId;
                this.mStartInputReason = original.mStartInputReason;
                this.mRestarting = original.mRestarting;
                this.mTargetUserId = original.mTargetUserId;
                this.mTargetDisplayId = original.mTargetDisplayId;
                this.mTargetWindowString = String.valueOf(original.mTargetWindow);
                this.mEditorInfo = original.mEditorInfo;
                this.mTargetWindowSoftInputMode = original.mTargetWindowSoftInputMode;
                this.mClientBindSequenceNumber = original.mClientBindSequenceNumber;
            }
        }

        void addEntry(StartInputInfo info) {
            int index = this.mNextIndex;
            Entry[] entryArr = this.mEntries;
            if (entryArr[index] == null) {
                entryArr[index] = new Entry(info);
            } else {
                entryArr[index].set(info);
            }
            this.mNextIndex = (this.mNextIndex + 1) % this.mEntries.length;
        }

        void dump(PrintWriter pw, String prefix) {
            SimpleDateFormat dataFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US);
            int i = 0;
            while (true) {
                Entry[] entryArr = this.mEntries;
                if (i < entryArr.length) {
                    Entry entry = entryArr[(this.mNextIndex + i) % entryArr.length];
                    if (entry != null) {
                        pw.print(prefix);
                        pw.println("StartInput #" + entry.mSequenceNumber + ":");
                        pw.print(prefix);
                        pw.println(" time=" + dataFormat.format(new Date(entry.mWallTime)) + " (timestamp=" + entry.mTimestamp + ") reason=" + InputMethodDebug.startInputReasonToString(entry.mStartInputReason) + " restarting=" + entry.mRestarting);
                        pw.print(prefix);
                        StringBuilder sb = new StringBuilder();
                        sb.append(" imeToken=");
                        sb.append(entry.mImeTokenString);
                        sb.append(" [");
                        sb.append(entry.mImeId);
                        sb.append("]");
                        pw.print(sb.toString());
                        pw.print(" imeUserId=" + entry.mImeUserId);
                        pw.println(" imeDisplayId=" + entry.mImeDisplayId);
                        pw.print(prefix);
                        pw.println(" targetWin=" + entry.mTargetWindowString + " [" + entry.mEditorInfo.packageName + "] targetUserId=" + entry.mTargetUserId + " targetDisplayId=" + entry.mTargetDisplayId + " clientBindSeq=" + entry.mClientBindSequenceNumber);
                        pw.print(prefix);
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(" softInputMode=");
                        sb2.append(InputMethodDebug.softInputModeToString(entry.mTargetWindowSoftInputMode));
                        pw.println(sb2.toString());
                        pw.print(prefix);
                        pw.println(" inputType=0x" + Integer.toHexString(entry.mEditorInfo.inputType) + " imeOptions=0x" + Integer.toHexString(entry.mEditorInfo.imeOptions) + " fieldId=0x" + Integer.toHexString(entry.mEditorInfo.fieldId) + " fieldName=" + entry.mEditorInfo.fieldName + " actionId=" + entry.mEditorInfo.actionId + " actionLabel=" + ((Object) entry.mEditorInfo.actionLabel));
                    }
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    class SettingsObserver extends ContentObserver {
        String mLastEnabled;
        boolean mRegistered;
        int mUserId;

        SettingsObserver(Handler handler) {
            super(handler);
            this.mRegistered = false;
            this.mLastEnabled = "";
        }

        public void registerContentObserverLocked(int userId) {
            if (this.mRegistered && this.mUserId == userId) {
                return;
            }
            ContentResolver resolver = InputMethodManagerService.this.mContext.getContentResolver();
            if (this.mRegistered) {
                InputMethodManagerService.this.mContext.getContentResolver().unregisterContentObserver(this);
                this.mRegistered = false;
            }
            if (this.mUserId != userId) {
                this.mLastEnabled = "";
                this.mUserId = userId;
            }
            resolver.registerContentObserver(Settings.Secure.getUriFor("default_input_method"), false, this, userId);
            resolver.registerContentObserver(Settings.Secure.getUriFor("enabled_input_methods"), false, this, userId);
            resolver.registerContentObserver(Settings.Secure.getUriFor("selected_input_method_subtype"), false, this, userId);
            resolver.registerContentObserver(Settings.Secure.getUriFor("show_ime_with_hard_keyboard"), false, this, userId);
            resolver.registerContentObserver(Settings.Secure.getUriFor("accessibility_soft_keyboard_mode"), false, this, userId);
            this.mRegistered = true;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange, Uri uri) {
            Uri showImeUri = Settings.Secure.getUriFor("show_ime_with_hard_keyboard");
            Uri accessibilityRequestingNoImeUri = Settings.Secure.getUriFor("accessibility_soft_keyboard_mode");
            synchronized (InputMethodManagerService.this.mMethodMap) {
                if (showImeUri.equals(uri)) {
                    InputMethodManagerService.this.updateKeyboardFromSettingsLocked();
                } else if (accessibilityRequestingNoImeUri.equals(uri)) {
                    int accessibilitySoftKeyboardSetting = Settings.Secure.getIntForUser(InputMethodManagerService.this.mContext.getContentResolver(), "accessibility_soft_keyboard_mode", 0, this.mUserId);
                    InputMethodManagerService.this.mAccessibilityRequestingNoSoftKeyboard = (accessibilitySoftKeyboardSetting & 3) == 1;
                    if (InputMethodManagerService.this.mAccessibilityRequestingNoSoftKeyboard) {
                        boolean showRequested = InputMethodManagerService.this.mShowRequested;
                        InputMethodManagerService.this.hideCurrentInputLocked(InputMethodManagerService.this.mCurFocusedWindow, 0, null, 15);
                        InputMethodManagerService.this.mShowRequested = showRequested;
                    } else if (InputMethodManagerService.this.mShowRequested) {
                        InputMethodManagerService.this.showCurrentInputLocked(InputMethodManagerService.this.mCurFocusedWindow, 1, null, 8);
                    }
                } else {
                    boolean enabledChanged = false;
                    String newEnabled = InputMethodManagerService.this.mSettings.getEnabledInputMethodsStr();
                    if (!this.mLastEnabled.equals(newEnabled)) {
                        this.mLastEnabled = newEnabled;
                        enabledChanged = true;
                    }
                    InputMethodManagerService.this.updateInputMethodsFromSettingsLocked(enabledChanged);
                }
            }
        }

        public String toString() {
            return "SettingsObserver{mUserId=" + this.mUserId + " mRegistered=" + this.mRegistered + " mLastEnabled=" + this.mLastEnabled + "}";
        }
    }

    private final class ImmsBroadcastReceiverForSystemUser extends BroadcastReceiver {
        private ImmsBroadcastReceiverForSystemUser() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("android.intent.action.USER_ADDED".equals(action) || "android.intent.action.USER_REMOVED".equals(action)) {
                InputMethodManagerService.this.updateCurrentProfileIds();
                return;
            }
            if ("android.intent.action.LOCALE_CHANGED".equals(action)) {
                InputMethodManagerService.this.onActionLocaleChanged();
                return;
            }
            if (InputMethodManagerService.ACTION_SHOW_INPUT_METHOD_PICKER.equals(action)) {
                InputMethodManagerService.this.mHandler.obtainMessage(1, 1, 0).sendToTarget();
                return;
            }
            Slog.w(InputMethodManagerService.TAG, "Unexpected intent " + intent);
        }
    }

    private final class ImmsBroadcastReceiverForAllUsers extends BroadcastReceiver {
        private ImmsBroadcastReceiverForAllUsers() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("android.intent.action.CLOSE_SYSTEM_DIALOGS".equals(action)) {
                BroadcastReceiver.PendingResult pendingResult = getPendingResult();
                if (pendingResult == null) {
                    return;
                }
                int senderUserId = pendingResult.getSendingUserId();
                if (senderUserId != -1 && senderUserId != InputMethodManagerService.this.mSettings.getCurrentUserId()) {
                    return;
                }
                InputMethodManagerService.this.hideInputMethodMenu();
                return;
            }
            Slog.w(InputMethodManagerService.TAG, "Unexpected intent " + intent);
        }
    }

    void onActionLocaleChanged() {
        synchronized (this.mMethodMap) {
            LocaleList possibleNewLocale = this.mRes.getConfiguration().getLocales();
            if (possibleNewLocale == null || !possibleNewLocale.equals(this.mLastSystemLocales)) {
                buildInputMethodListLocked(true);
                resetDefaultImeLocked(this.mContext);
                updateFromSettingsLocked(true);
                this.mLastSystemLocales = possibleNewLocale;
            }
        }
    }

    final class MyPackageMonitor extends PackageMonitor {
        private final ArraySet<String> mKnownImePackageNames = new ArraySet<>();
        private final ArrayList<String> mChangedPackages = new ArrayList<>();
        private boolean mImePackageAppeared = false;

        MyPackageMonitor() {
        }

        void clearKnownImePackageNamesLocked() {
            this.mKnownImePackageNames.clear();
        }

        final void addKnownImePackageNameLocked(String packageName) {
            this.mKnownImePackageNames.add(packageName);
        }

        private boolean isChangingPackagesOfCurrentUserLocked() {
            int userId = getChangingUserId();
            boolean retval = userId == InputMethodManagerService.this.mSettings.getCurrentUserId();
            if (!retval) {
                Slog.d(InputMethodManagerService.TAG, "--- ignore this call back from a background user: " + userId);
            }
            return retval;
        }

        public boolean onHandleForceStop(Intent intent, String[] packages, int uid, boolean doit) {
            synchronized (InputMethodManagerService.this.mMethodMap) {
                if (!isChangingPackagesOfCurrentUserLocked()) {
                    return false;
                }
                String curInputMethodId = InputMethodManagerService.this.mSettings.getSelectedInputMethod();
                int N = InputMethodManagerService.this.mMethodList.size();
                if (curInputMethodId != null) {
                    for (int i = 0; i < N; i++) {
                        InputMethodInfo imi = InputMethodManagerService.this.mMethodList.get(i);
                        if (imi.getId().equals(curInputMethodId)) {
                            for (String pkg : packages) {
                                if (imi.getPackageName().equals(pkg)) {
                                    if (doit) {
                                        InputMethodManagerService.this.resetSelectedInputMethodAndSubtypeLocked("");
                                        InputMethodManagerService.this.chooseNewDefaultIMELocked();
                                        return true;
                                    }
                                    return true;
                                }
                            }
                        }
                    }
                }
                return false;
            }
        }

        public void onBeginPackageChanges() {
            clearPackageChangeState();
        }

        public void onPackageAppeared(String packageName, int reason) {
            if (!this.mImePackageAppeared) {
                PackageManager pm = InputMethodManagerService.this.mContext.getPackageManager();
                List<ResolveInfo> services = pm.queryIntentServicesAsUser(new Intent("android.view.InputMethod").setPackage(packageName), 512, getChangingUserId());
                if (!services.isEmpty()) {
                    this.mImePackageAppeared = true;
                }
            }
            this.mChangedPackages.add(packageName);
        }

        public void onPackageDisappeared(String packageName, int reason) {
            this.mChangedPackages.add(packageName);
        }

        public void onPackageModified(String packageName) {
            this.mChangedPackages.add(packageName);
        }

        public void onPackagesSuspended(String[] packages) {
            for (String packageName : packages) {
                this.mChangedPackages.add(packageName);
            }
        }

        public void onPackagesUnsuspended(String[] packages) {
            for (String packageName : packages) {
                this.mChangedPackages.add(packageName);
            }
        }

        public void onFinishPackageChanges() {
            onFinishPackageChangesInternal();
            clearPackageChangeState();
        }

        public void onUidRemoved(int uid) {
            synchronized (InputMethodManagerService.this.mMethodMap) {
                InputMethodManagerService.this.mLoggedDeniedGetInputMethodWindowVisibleHeightForUid.delete(uid);
            }
        }

        private void clearPackageChangeState() {
            this.mChangedPackages.clear();
            this.mImePackageAppeared = false;
        }

        private boolean shouldRebuildInputMethodListLocked() {
            if (this.mImePackageAppeared) {
                return true;
            }
            int N = this.mChangedPackages.size();
            for (int i = 0; i < N; i++) {
                String packageName = this.mChangedPackages.get(i);
                if (this.mKnownImePackageNames.contains(packageName)) {
                    return true;
                }
            }
            return false;
        }

        private void onFinishPackageChangesInternal() {
            int change;
            synchronized (InputMethodManagerService.this.mMethodMap) {
                if (isChangingPackagesOfCurrentUserLocked()) {
                    if (shouldRebuildInputMethodListLocked()) {
                        InputMethodInfo curIm = null;
                        String curInputMethodId = InputMethodManagerService.this.mSettings.getSelectedInputMethod();
                        int N = InputMethodManagerService.this.mMethodList.size();
                        if (curInputMethodId != null) {
                            for (int i = 0; i < N; i++) {
                                InputMethodInfo imi = InputMethodManagerService.this.mMethodList.get(i);
                                String imiId = imi.getId();
                                if (imiId.equals(curInputMethodId)) {
                                    curIm = imi;
                                }
                                int change2 = isPackageDisappearing(imi.getPackageName());
                                if (isPackageModified(imi.getPackageName())) {
                                    InputMethodManagerService.this.mAdditionalSubtypeMap.remove(imi.getId());
                                    AdditionalSubtypeUtils.save(InputMethodManagerService.this.mAdditionalSubtypeMap, InputMethodManagerService.this.mMethodMap, InputMethodManagerService.this.mSettings.getCurrentUserId());
                                }
                                if (change2 == 2 || change2 == 3) {
                                    Slog.i(InputMethodManagerService.TAG, "Input method uninstalled, disabling: " + imi.getComponent());
                                    InputMethodManagerService.this.setInputMethodEnabledLocked(imi.getId(), false);
                                }
                            }
                        }
                        InputMethodManagerService.this.buildInputMethodListLocked(false);
                        boolean changed = false;
                        if (curIm != null && ((change = isPackageDisappearing(curIm.getPackageName())) == 2 || change == 3)) {
                            ServiceInfo si = null;
                            try {
                                si = InputMethodManagerService.this.mIPackageManager.getServiceInfo(curIm.getComponent(), 0, InputMethodManagerService.this.mSettings.getCurrentUserId());
                            } catch (RemoteException e) {
                            }
                            if (si == null) {
                                Slog.i(InputMethodManagerService.TAG, "Current input method removed: " + curInputMethodId);
                                InputMethodManagerService.this.updateSystemUiLocked(0, InputMethodManagerService.this.mBackDisposition);
                                if (!InputMethodManagerService.this.chooseNewDefaultIMELocked()) {
                                    changed = true;
                                    curIm = null;
                                    Slog.i(InputMethodManagerService.TAG, "Unsetting current input method");
                                    InputMethodManagerService.this.resetSelectedInputMethodAndSubtypeLocked("");
                                }
                            }
                        }
                        if (curIm == null) {
                            changed = InputMethodManagerService.this.chooseNewDefaultIMELocked();
                        } else if (!changed && isPackageModified(curIm.getPackageName())) {
                            changed = true;
                        }
                        if (changed) {
                            InputMethodManagerService.this.updateFromSettingsLocked(false);
                        }
                    }
                }
            }
        }
    }

    private static final class MethodCallback extends IInputSessionCallback.Stub {
        private final InputChannel mChannel;
        private final IInputMethod mMethod;
        private final InputMethodManagerService mParentIMMS;

        MethodCallback(InputMethodManagerService imms, IInputMethod method, InputChannel channel) {
            this.mParentIMMS = imms;
            this.mMethod = method;
            this.mChannel = channel;
        }

        public void sessionCreated(IInputMethodSession session) {
            long ident = Binder.clearCallingIdentity();
            try {
                this.mParentIMMS.onSessionCreated(this.mMethod, session, this.mChannel);
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }
    }

    private class HardKeyboardListener implements WindowManagerInternal.OnHardKeyboardStatusChangeListener {
        private HardKeyboardListener() {
        }

        @Override // com.android.server.wm.WindowManagerInternal.OnHardKeyboardStatusChangeListener
        public void onHardKeyboardStatusChange(boolean z) {
            InputMethodManagerService.this.mHandler.sendMessage(InputMethodManagerService.this.mHandler.obtainMessage(InputMethodManagerService.MSG_HARD_KEYBOARD_SWITCH_CHANGED, Integer.valueOf(z ? 1 : 0)));
        }

        public void handleHardKeyboardStatusChange(boolean available) {
            Slog.w(InputMethodManagerService.TAG, "HardKeyboardStatusChanged: available=" + available);
            synchronized (InputMethodManagerService.this.mMethodMap) {
                if (InputMethodManagerService.this.mSwitchingDialog != null && InputMethodManagerService.this.mSwitchingDialogTitleView != null && InputMethodManagerService.this.mSwitchingDialog.isShowing()) {
                    InputMethodManagerService.this.mSwitchingDialogTitleView.findViewById(R.id.feedbackGeneric).setVisibility(available ? 0 : 8);
                }
            }
        }
    }

    private static final class UserSwitchHandlerTask implements Runnable {
        IInputMethodClient mClientToBeReset;
        final InputMethodManagerService mService;
        final int mToUserId;

        UserSwitchHandlerTask(InputMethodManagerService service, int toUserId, IInputMethodClient clientToBeReset) {
            this.mService = service;
            this.mToUserId = toUserId;
            this.mClientToBeReset = clientToBeReset;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this.mService.mMethodMap) {
                if (this.mService.mUserSwitchHandlerTask != this) {
                    return;
                }
                this.mService.switchUserOnHandlerLocked(this.mService.mUserSwitchHandlerTask.mToUserId, this.mClientToBeReset);
                this.mService.mUserSwitchHandlerTask = null;
            }
        }
    }

    public static final class Lifecycle extends SystemService {
        private InputMethodManagerService mService;

        public Lifecycle(Context context) {
            super(context);
            this.mService = new InputMethodManagerService(context);
        }

        @Override // com.android.server.SystemService
        public void onStart() {
            LocalServices.addService(InputMethodManagerInternal.class, new LocalServiceImpl(this.mService));
            LocalServices.addService(InputMethodShownService.class, new InputMethodShownService(this.mService));
            publishBinderService("input_method", this.mService);
        }

        @Override // com.android.server.SystemService
        public void onSwitchUser(int userHandle) {
            synchronized (this.mService.mMethodMap) {
                this.mService.scheduleSwitchUserTaskLocked(userHandle, null);
            }
        }

        @Override // com.android.server.SystemService
        public void onBootPhase(int phase) {
            if (phase == 550) {
                StatusBarManagerService statusBarService = (StatusBarManagerService) ServiceManager.getService("statusbar");
                this.mService.systemRunning(statusBarService);
            }
        }

        @Override // com.android.server.SystemService
        public void onUnlockUser(int userHandle) {
            this.mService.mHandler.sendMessage(this.mService.mHandler.obtainMessage(5000, userHandle, 0));
        }
    }

    void onUnlockUser(int userId) {
        synchronized (this.mMethodMap) {
            int currentUserId = this.mSettings.getCurrentUserId();
            Slog.d(TAG, "onUnlockUser: userId=" + userId + " curUserId=" + currentUserId);
            if (userId != currentUserId) {
                return;
            }
            this.mSettings.switchCurrentUser(currentUserId, !this.mSystemReady);
            if (this.mSystemReady) {
                buildInputMethodListLocked(false);
                updateInputMethodsFromSettingsLocked(true);
            }
        }
    }

    void scheduleSwitchUserTaskLocked(int userId, IInputMethodClient clientToBeReset) {
        UserSwitchHandlerTask userSwitchHandlerTask = this.mUserSwitchHandlerTask;
        if (userSwitchHandlerTask != null) {
            if (userSwitchHandlerTask.mToUserId == userId) {
                this.mUserSwitchHandlerTask.mClientToBeReset = clientToBeReset;
                return;
            }
            this.mHandler.removeCallbacks(this.mUserSwitchHandlerTask);
        }
        UserSwitchHandlerTask task = new UserSwitchHandlerTask(this, userId, clientToBeReset);
        this.mUserSwitchHandlerTask = task;
        this.mHandler.post(task);
    }

    public InputMethodManagerService(Context context) {
        this.mStartInputHistory = new StartInputHistory();
        this.mSoftInputShowHideHistory = new SoftInputShowHideHistory();
        this.mContext = context;
        this.mRes = context.getResources();
        this.mCaller = new HandlerCaller(context, (Looper) null, new HandlerCaller.Callback() { // from class: com.android.server.inputmethod.InputMethodManagerService.2
            public void executeMessage(Message msg) {
                InputMethodManagerService.this.handleMessage(msg);
            }
        }, true);
        this.mAppOpsManager = (AppOpsManager) this.mContext.getSystemService(AppOpsManager.class);
        this.mUserManager = (UserManager) this.mContext.getSystemService(UserManager.class);
        this.mHardKeyboardListener = new HardKeyboardListener();
        this.mHasFeature = context.getPackageManager().hasSystemFeature("android.software.input_methods");
        this.mSlotIme = this.mContext.getString(R.string.permdesc_startViewAppFeatures);
        Bundle extras = new Bundle();
        extras.putBoolean("android.allowDuringSetup", true);
        int accentColor = this.mContext.getColor(R.color.system_notification_accent_color);
        this.mImeSwitcherNotification = new Notification.Builder(this.mContext, SystemNotificationChannels.VIRTUAL_KEYBOARD).setSmallIcon(R.drawable.ic_media_route_connecting_light_00_mtrl).setWhen(0L).setOngoing(true).addExtras(extras).setCategory("sys").setColor(accentColor);
        Intent intent = new Intent(ACTION_SHOW_INPUT_METHOD_PICKER).setPackage(this.mContext.getPackageName());
        this.mImeSwitchPendingIntent = PendingIntent.getBroadcast(this.mContext, 0, intent, 67108864);
        this.mShowOngoingImeSwitcherForPhones = false;
        this.mNotificationShown = false;
        int userId = 0;
        try {
            userId = ActivityManager.getService().getCurrentUser().id;
        } catch (RemoteException e) {
            Slog.w(TAG, "Couldn't get current user ID; guessing it's 0", e);
        }
        this.mLastSwitchUserId = userId;
        this.mSettings = new InputMethodUtils.InputMethodSettings(this.mRes, context.getContentResolver(), this.mMethodMap, userId, !this.mSystemReady);
        updateCurrentProfileIds();
        AdditionalSubtypeUtils.load(this.mAdditionalSubtypeMap, userId);
        this.mSwitchingController = InputMethodSubtypeSwitchingController.createInstanceLocked(this.mSettings, context);
    }

    public /* synthetic */ boolean lambda$new$0$InputMethodManagerService(int displayId) {
        return this.mWindowManagerInternal.shouldShowIme(displayId);
    }

    private void resetDefaultImeLocked(Context context) {
        String str = this.mCurMethodId;
        if (str != null && !this.mMethodMap.get(str).isSystem()) {
            return;
        }
        List<InputMethodInfo> suitableImes = InputMethodUtils.getDefaultEnabledImes(context, this.mSettings.getEnabledInputMethodListLocked());
        if (suitableImes.isEmpty()) {
            Slog.i(TAG, "No default found");
            return;
        }
        InputMethodInfo defIm = suitableImes.get(0);
        Slog.i(TAG, "Default found, using " + defIm.getId());
        setSelectedInputMethodAndSubtypeLocked(defIm, -1, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void switchUserOnHandlerLocked(int newUserId, IInputMethodClient clientToBeReset) {
        ClientState cs;
        Slog.d(TAG, "Switching user stage 1/3. newUserId=" + newUserId + " currentUserId=" + this.mSettings.getCurrentUserId());
        this.mSettingsObserver.registerContentObserverLocked(newUserId);
        boolean useCopyOnWriteSettings = (this.mSystemReady && this.mUserManagerInternal.isUserUnlockingOrUnlocked(newUserId)) ? false : true;
        this.mSettings.switchCurrentUser(newUserId, useCopyOnWriteSettings);
        updateCurrentProfileIds();
        AdditionalSubtypeUtils.load(this.mAdditionalSubtypeMap, newUserId);
        String defaultImiId = this.mSettings.getSelectedInputMethod();
        Slog.d(TAG, "Switching user stage 2/3. newUserId=" + newUserId + " defaultImiId=" + defaultImiId);
        boolean initialUserSwitch = TextUtils.isEmpty(defaultImiId);
        this.mLastSystemLocales = this.mRes.getConfiguration().getLocales();
        if (this.mSystemReady) {
            hideCurrentInputLocked(this.mCurFocusedWindow, 0, null, 9);
            resetCurrentMethodAndClient(6);
            buildInputMethodListLocked(initialUserSwitch);
            if (TextUtils.isEmpty(this.mSettings.getSelectedInputMethod())) {
                resetDefaultImeLocked(this.mContext);
            }
            updateFromSettingsLocked(true);
        }
        if (initialUserSwitch) {
            InputMethodUtils.setNonSelectedSystemImesDisabledUntilUsed(this.mIPackageManager, this.mSettings.getEnabledInputMethodListLocked(), newUserId, this.mContext.getBasePackageName());
        }
        Slog.d(TAG, "Switching user stage 3/3. newUserId=" + newUserId + " selectedIme=" + this.mSettings.getSelectedInputMethod());
        this.mLastSwitchUserId = newUserId;
        if (!this.mIsInteractive || clientToBeReset == null || (cs = this.mClients.get(clientToBeReset.asBinder())) == null) {
            return;
        }
        try {
            cs.client.scheduleStartInputIfNecessary(this.mInFullscreenMode);
        } catch (RemoteException e) {
        }
    }

    void updateCurrentProfileIds() {
        InputMethodUtils.InputMethodSettings inputMethodSettings = this.mSettings;
        inputMethodSettings.setCurrentProfileIds(this.mUserManager.getProfileIdsWithDisabled(inputMethodSettings.getCurrentUserId()));
    }

    public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
        try {
            return super.onTransact(code, data, reply, flags);
        } catch (RuntimeException e) {
            if (!(e instanceof SecurityException)) {
                Slog.wtf(TAG, "Input Method Manager Crash", e);
            }
            throw e;
        }
    }

    public void systemRunning(StatusBarManagerService statusBar) {
        synchronized (this.mMethodMap) {
            Slog.d(TAG, "--- systemReady");
            if (!this.mSystemReady) {
                this.mSystemReady = true;
                this.mLastSystemLocales = this.mRes.getConfiguration().getLocales();
                int currentUserId = this.mSettings.getCurrentUserId();
                this.mSettings.switchCurrentUser(currentUserId, !this.mUserManagerInternal.isUserUnlockingOrUnlocked(currentUserId));
                this.mKeyguardManager = (KeyguardManager) this.mContext.getSystemService(KeyguardManager.class);
                this.mNotificationManager = (NotificationManager) this.mContext.getSystemService(NotificationManager.class);
                this.mStatusBar = statusBar;
                if (statusBar != null) {
                    statusBar.setIconVisibility(this.mSlotIme, false);
                }
                updateSystemUiLocked(this.mImeWindowVis, this.mBackDisposition);
                boolean z = this.mRes.getBoolean(R.bool.config_device_respects_hold_carrier_config);
                this.mShowOngoingImeSwitcherForPhones = z;
                if (z) {
                    this.mWindowManagerInternal.setOnHardKeyboardStatusChangeListener(this.mHardKeyboardListener);
                }
                this.mMyPackageMonitor.register(this.mContext, null, UserHandle.ALL, true);
                this.mSettingsObserver.registerContentObserverLocked(currentUserId);
                IntentFilter broadcastFilterForSystemUser = new IntentFilter();
                broadcastFilterForSystemUser.addAction("android.intent.action.USER_ADDED");
                broadcastFilterForSystemUser.addAction("android.intent.action.USER_REMOVED");
                broadcastFilterForSystemUser.addAction("android.intent.action.LOCALE_CHANGED");
                broadcastFilterForSystemUser.addAction(ACTION_SHOW_INPUT_METHOD_PICKER);
                this.mContext.registerReceiver(new ImmsBroadcastReceiverForSystemUser(), broadcastFilterForSystemUser);
                IntentFilter broadcastFilterForAllUsers = new IntentFilter();
                broadcastFilterForAllUsers.addAction("android.intent.action.CLOSE_SYSTEM_DIALOGS");
                this.mContext.registerReceiverAsUser(new ImmsBroadcastReceiverForAllUsers(), UserHandle.ALL, broadcastFilterForAllUsers, null, null);
                String defaultImiId = this.mSettings.getSelectedInputMethod();
                boolean imeSelectedOnBoot = !TextUtils.isEmpty(defaultImiId);
                buildInputMethodListLocked(imeSelectedOnBoot ? false : true);
                updateFromSettingsLocked(true);
                InputMethodUtils.setNonSelectedSystemImesDisabledUntilUsed(this.mIPackageManager, this.mSettings.getEnabledInputMethodListLocked(), currentUserId, this.mContext.getBasePackageName());
            }
        }
    }

    private boolean calledFromValidUserLocked() {
        int uid = Binder.getCallingUid();
        int userId = UserHandle.getUserId(uid);
        Slog.v(TAG, "--- calledFromForegroundUserOrSystemProcess ? calling uid = " + uid + " system uid = 1000 calling userId = " + userId + ", foreground user id = " + this.mSettings.getCurrentUserId() + ", calling pid = " + Binder.getCallingPid() + InputMethodUtils.getApiCallStack());
        if (uid == 1000 || userId == this.mSettings.getCurrentUserId()) {
            return true;
        }
        if (this.mContext.checkCallingOrSelfPermission("android.permission.INTERACT_ACROSS_USERS_FULL") == 0) {
            Slog.d(TAG, "--- Access granted because the calling process has the INTERACT_ACROSS_USERS_FULL permission");
            return true;
        }
        Slog.w(TAG, "--- IPC called from background users. Ignore. callers=" + Debug.getCallers(10));
        return false;
    }

    private boolean calledWithValidTokenLocked(IBinder token) {
        if (token == null) {
            throw new InvalidParameterException("token must not be null.");
        }
        if (token != this.mCurToken) {
            Slog.e(TAG, "Ignoring " + Debug.getCaller() + " due to an invalid token. uid:" + Binder.getCallingUid() + " token:" + token);
            return false;
        }
        return true;
    }

    private boolean bindCurrentInputMethodServiceLocked(Intent service, ServiceConnection conn, int flags) {
        if (service == null || conn == null) {
            Slog.e(TAG, "--- bind failed: service = " + service + ", conn = " + conn);
            return false;
        }
        return this.mContext.bindServiceAsUser(service, conn, flags, new UserHandle(this.mSettings.getCurrentUserId()));
    }

    public List<InputMethodInfo> getInputMethodList(int userId) {
        if (UserHandle.getCallingUserId() != userId) {
            this.mContext.enforceCallingPermission("android.permission.INTERACT_ACROSS_USERS_FULL", null);
        }
        synchronized (this.mMethodMap) {
            int[] resolvedUserIds = InputMethodUtils.resolveUserId(userId, this.mSettings.getCurrentUserId(), null);
            if (resolvedUserIds.length != 1) {
                return Collections.emptyList();
            }
            long ident = Binder.clearCallingIdentity();
            try {
                List<InputMethodInfo> inputMethodListLocked = getInputMethodListLocked(resolvedUserIds[0]);
                Binder.restoreCallingIdentity(ident);
                return inputMethodListLocked;
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(ident);
                throw th;
            }
        }
    }

    public List<InputMethodInfo> getEnabledInputMethodList(int userId) {
        if (UserHandle.getCallingUserId() != userId) {
            this.mContext.enforceCallingPermission("android.permission.INTERACT_ACROSS_USERS_FULL", null);
        }
        synchronized (this.mMethodMap) {
            int[] resolvedUserIds = InputMethodUtils.resolveUserId(userId, this.mSettings.getCurrentUserId(), null);
            if (resolvedUserIds.length != 1) {
                return Collections.emptyList();
            }
            long ident = Binder.clearCallingIdentity();
            try {
                List<InputMethodInfo> enabledInputMethodListLocked = getEnabledInputMethodListLocked(resolvedUserIds[0]);
                Binder.restoreCallingIdentity(ident);
                return enabledInputMethodListLocked;
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(ident);
                throw th;
            }
        }
    }

    private List<InputMethodInfo> getInputMethodListLocked(int userId) {
        if (userId == this.mSettings.getCurrentUserId()) {
            return new ArrayList<>(this.mMethodList);
        }
        ArrayMap<String, InputMethodInfo> methodMap = new ArrayMap<>();
        ArrayList<InputMethodInfo> methodList = new ArrayList<>();
        ArrayMap<String, List<InputMethodSubtype>> additionalSubtypeMap = new ArrayMap<>();
        AdditionalSubtypeUtils.load(additionalSubtypeMap, userId);
        queryInputMethodServicesInternal(this.mContext, userId, additionalSubtypeMap, methodMap, methodList);
        return methodList;
    }

    private List<InputMethodInfo> getEnabledInputMethodListLocked(int userId) {
        if (userId == this.mSettings.getCurrentUserId()) {
            return this.mSettings.getEnabledInputMethodListLocked();
        }
        ArrayMap<String, InputMethodInfo> methodMap = new ArrayMap<>();
        ArrayList<InputMethodInfo> methodList = new ArrayList<>();
        ArrayMap<String, List<InputMethodSubtype>> additionalSubtypeMap = new ArrayMap<>();
        AdditionalSubtypeUtils.load(additionalSubtypeMap, userId);
        queryInputMethodServicesInternal(this.mContext, userId, additionalSubtypeMap, methodMap, methodList);
        InputMethodUtils.InputMethodSettings settings = new InputMethodUtils.InputMethodSettings(this.mContext.getResources(), this.mContext.getContentResolver(), methodMap, userId, true);
        return settings.getEnabledInputMethodListLocked();
    }

    private void onCreateInlineSuggestionsRequestLocked(int userId, InlineSuggestionsRequestInfo requestInfo, IInlineSuggestionsRequestCallback callback) {
        InputMethodInfo imi = this.mMethodMap.get(this.mCurMethodId);
        try {
            if (userId == this.mSettings.getCurrentUserId() && imi != null && imi.isInlineSuggestionsEnabled() && this.mCurMethod != null) {
                executeOrSendMessage(this.mCurMethod, this.mCaller.obtainMessageOOO(MSG_INLINE_SUGGESTIONS_REQUEST, this.mCurMethod, requestInfo, new InlineSuggestionsRequestCallbackDecorator(callback, imi.getPackageName(), this.mCurTokenDisplayId, this.mCurToken, this)));
            } else {
                callback.onInlineSuggestionsUnsupported();
            }
        } catch (RemoteException e) {
            Slog.w(TAG, "RemoteException calling onCreateInlineSuggestionsRequest(): " + e);
        }
    }

    private static final class InlineSuggestionsRequestCallbackDecorator extends IInlineSuggestionsRequestCallback.Stub {
        private final IInlineSuggestionsRequestCallback mCallback;
        private final int mImeDisplayId;
        private final String mImePackageName;
        private final IBinder mImeToken;
        private final InputMethodManagerService mImms;

        InlineSuggestionsRequestCallbackDecorator(IInlineSuggestionsRequestCallback callback, String imePackageName, int displayId, IBinder imeToken, InputMethodManagerService imms) {
            this.mCallback = callback;
            this.mImePackageName = imePackageName;
            this.mImeDisplayId = displayId;
            this.mImeToken = imeToken;
            this.mImms = imms;
        }

        public void onInlineSuggestionsUnsupported() throws RemoteException {
            this.mCallback.onInlineSuggestionsUnsupported();
        }

        public void onInlineSuggestionsRequest(InlineSuggestionsRequest request, IInlineSuggestionsResponseCallback callback) throws RemoteException {
            if (!this.mImePackageName.equals(request.getHostPackageName())) {
                throw new SecurityException("Host package name in the provide request=[" + request.getHostPackageName() + "] doesn't match the IME package name=[" + this.mImePackageName + "].");
            }
            request.setHostDisplayId(this.mImeDisplayId);
            this.mImms.setCurHostInputToken(this.mImeToken, request.getHostInputToken());
            this.mCallback.onInlineSuggestionsRequest(request, callback);
        }

        public void onInputMethodStartInput(AutofillId imeFieldId) throws RemoteException {
            this.mCallback.onInputMethodStartInput(imeFieldId);
        }

        public void onInputMethodShowInputRequested(boolean requestResult) throws RemoteException {
            this.mCallback.onInputMethodShowInputRequested(requestResult);
        }

        public void onInputMethodStartInputView() throws RemoteException {
            this.mCallback.onInputMethodStartInputView();
        }

        public void onInputMethodFinishInputView() throws RemoteException {
            this.mCallback.onInputMethodFinishInputView();
        }

        public void onInputMethodFinishInput() throws RemoteException {
            this.mCallback.onInputMethodFinishInput();
        }

        public void onInlineSuggestionsSessionInvalidated() throws RemoteException {
            this.mCallback.onInlineSuggestionsSessionInvalidated();
        }
    }

    void setCurHostInputToken(IBinder callerImeToken, IBinder hostInputToken) {
        synchronized (this.mMethodMap) {
            if (calledWithValidTokenLocked(callerImeToken)) {
                this.mCurHostInputToken = hostInputToken;
            }
        }
    }

    public List<InputMethodSubtype> getEnabledInputMethodSubtypeList(String imiId, boolean allowsImplicitlySelectedSubtypes) {
        int callingUserId = UserHandle.getCallingUserId();
        synchronized (this.mMethodMap) {
            int[] resolvedUserIds = InputMethodUtils.resolveUserId(callingUserId, this.mSettings.getCurrentUserId(), null);
            if (resolvedUserIds.length != 1) {
                return Collections.emptyList();
            }
            long ident = Binder.clearCallingIdentity();
            try {
                List<InputMethodSubtype> enabledInputMethodSubtypeListLocked = getEnabledInputMethodSubtypeListLocked(imiId, allowsImplicitlySelectedSubtypes, resolvedUserIds[0]);
                Binder.restoreCallingIdentity(ident);
                return enabledInputMethodSubtypeListLocked;
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(ident);
                throw th;
            }
        }
    }

    private List<InputMethodSubtype> getEnabledInputMethodSubtypeListLocked(String imiId, boolean allowsImplicitlySelectedSubtypes, int userId) {
        InputMethodInfo imi;
        String str;
        if (userId == this.mSettings.getCurrentUserId()) {
            if (imiId == null && (str = this.mCurMethodId) != null) {
                imi = this.mMethodMap.get(str);
            } else {
                imi = this.mMethodMap.get(imiId);
            }
            if (imi == null) {
                return Collections.emptyList();
            }
            return this.mSettings.getEnabledInputMethodSubtypeListLocked(this.mContext, imi, allowsImplicitlySelectedSubtypes);
        }
        ArrayMap<String, InputMethodInfo> methodMap = new ArrayMap<>();
        ArrayList<InputMethodInfo> methodList = new ArrayList<>();
        ArrayMap<String, List<InputMethodSubtype>> additionalSubtypeMap = new ArrayMap<>();
        AdditionalSubtypeUtils.load(additionalSubtypeMap, userId);
        queryInputMethodServicesInternal(this.mContext, userId, additionalSubtypeMap, methodMap, methodList);
        InputMethodInfo imi2 = methodMap.get(imiId);
        if (imi2 == null) {
            return Collections.emptyList();
        }
        InputMethodUtils.InputMethodSettings settings = new InputMethodUtils.InputMethodSettings(this.mContext.getResources(), this.mContext.getContentResolver(), methodMap, userId, true);
        return settings.getEnabledInputMethodSubtypeListLocked(this.mContext, imi2, allowsImplicitlySelectedSubtypes);
    }

    public void addClient(IInputMethodClient client, IInputContext inputContext, int selfReportedDisplayId) throws RemoteException {
        int callerUid = Binder.getCallingUid();
        int callerPid = Binder.getCallingPid();
        synchronized (this.mMethodMap) {
            try {
                int numClients = this.mClients.size();
                for (int i = 0; i < numClients; i++) {
                    ClientState state = this.mClients.valueAt(i);
                    if (state.uid == callerUid && state.pid == callerPid && state.selfReportedDisplayId == selfReportedDisplayId) {
                        throw new SecurityException("uid=" + callerUid + "/pid=" + callerPid + "/displayId=" + selfReportedDisplayId + " is already registered.");
                    }
                }
                try {
                    ClientDeathRecipient deathRecipient = new ClientDeathRecipient(this, client);
                    try {
                        client.asBinder().linkToDeath(deathRecipient, 0);
                        this.mClients.put(client.asBinder(), new ClientState(client, inputContext, callerUid, callerPid, selfReportedDisplayId, deathRecipient));
                    } catch (RemoteException e) {
                        throw new IllegalStateException(e);
                    }
                } catch (Throwable th) {
                    e = th;
                    throw e;
                }
            } catch (Throwable th2) {
                e = th2;
            }
        }
    }

    void removeClient(IInputMethodClient client) {
        synchronized (this.mMethodMap) {
            ClientState cs = this.mClients.remove(client.asBinder());
            if (cs != null) {
                client.asBinder().unlinkToDeath(cs.clientDeathRecipient, 0);
                clearClientSessionLocked(cs);
                int numItems = this.mActivityViewDisplayIdToParentMap.size();
                for (int i = numItems - 1; i >= 0; i--) {
                    ActivityViewInfo info = this.mActivityViewDisplayIdToParentMap.valueAt(i);
                    if (info.mParentClient == cs) {
                        this.mActivityViewDisplayIdToParentMap.removeAt(i);
                    }
                }
                if (this.mCurClient == cs) {
                    if (this.mBoundToMethod) {
                        this.mBoundToMethod = false;
                        if (this.mCurMethod != null) {
                            executeOrSendMessage(this.mCurMethod, this.mCaller.obtainMessageO(1000, this.mCurMethod));
                        }
                    }
                    this.mCurClient = null;
                    this.mCurActivityViewToScreenMatrix = null;
                }
                if (this.mCurFocusedWindowClient == cs) {
                    this.mCurFocusedWindowClient = null;
                }
            }
        }
    }

    void executeOrSendMessage(IInterface target, Message msg) {
        if (target.asBinder() instanceof Binder) {
            this.mCaller.sendMessage(msg);
        } else {
            handleMessage(msg);
            msg.recycle();
        }
    }

    void unbindCurrentClientLocked(int unbindClientReason) {
        if (this.mCurClient != null) {
            Slog.v(TAG, "unbindCurrentInputLocked: client=" + this.mCurClient.client.asBinder());
            if (this.mBoundToMethod) {
                this.mBoundToMethod = false;
                IInputMethod iInputMethod = this.mCurMethod;
                if (iInputMethod != null) {
                    executeOrSendMessage(iInputMethod, this.mCaller.obtainMessageO(1000, iInputMethod));
                }
            }
            executeOrSendMessage(this.mCurClient.client, this.mCaller.obtainMessageIIO(MSG_SET_ACTIVE, 0, 0, this.mCurClient));
            executeOrSendMessage(this.mCurClient.client, this.mCaller.obtainMessageIIO(MSG_UNBIND_CLIENT, this.mCurSeq, unbindClientReason, this.mCurClient.client));
            this.mCurClient.sessionRequested = false;
            this.mCurClient = null;
            this.mCurActivityViewToScreenMatrix = null;
            hideInputMethodMenuLocked();
        }
    }

    private int getImeShowFlags() {
        if (this.mShowForced) {
            int flags = 0 | 3;
            return flags;
        }
        if (!this.mShowExplicitlyRequested) {
            return 0;
        }
        int flags2 = 0 | 1;
        return flags2;
    }

    private int getAppShowFlags() {
        if (this.mShowForced) {
            int flags = 0 | 2;
            return flags;
        }
        if (this.mShowExplicitlyRequested) {
            return 0;
        }
        int flags2 = 0 | 1;
        return flags2;
    }

    InputBindResult attachNewInputLocked(int i, boolean z) {
        if (!this.mBoundToMethod) {
            IInputMethod iInputMethod = this.mCurMethod;
            executeOrSendMessage(iInputMethod, this.mCaller.obtainMessageOO(MSG_BIND_INPUT, iInputMethod, this.mCurClient.binding));
            this.mBoundToMethod = true;
        }
        Binder binder = new Binder();
        StartInputInfo startInputInfo = new StartInputInfo(this.mSettings.getCurrentUserId(), this.mCurToken, this.mCurTokenDisplayId, this.mCurId, i, !z, UserHandle.getUserId(this.mCurClient.uid), this.mCurClient.selfReportedDisplayId, this.mCurFocusedWindow, this.mCurAttribute, this.mCurFocusedWindowSoftInputMode, this.mCurSeq);
        this.mImeTargetWindowMap.put(binder, this.mCurFocusedWindow);
        this.mStartInputHistory.addEntry(startInputInfo);
        if (this.mSettings.getCurrentUserId() == UserHandle.getUserId(this.mCurClient.uid)) {
            this.mPackageManagerInternal.grantImplicitAccess(this.mSettings.getCurrentUserId(), null, UserHandle.getAppId(this.mCurMethodUid), this.mCurClient.uid, true);
        }
        SessionState sessionState = this.mCurClient.curSession;
        executeOrSendMessage(sessionState.method, this.mCaller.obtainMessageIIOOOO(MSG_START_INPUT, this.mCurInputContextMissingMethods, !z ? 1 : 0, binder, sessionState, this.mCurInputContext, this.mCurAttribute));
        if (this.mShowRequested) {
            Slog.v(TAG, "Attach new input asks to show input");
            showCurrentInputLocked(this.mCurFocusedWindow, getAppShowFlags(), null, 1);
        }
        return new InputBindResult(0, sessionState.session, sessionState.channel != null ? sessionState.channel.dup() : null, this.mCurId, this.mCurSeq, this.mCurActivityViewToScreenMatrix);
    }

    private Matrix getActivityViewToScreenMatrixLocked(int clientDisplayId, int imeDisplayId) {
        if (clientDisplayId == imeDisplayId) {
            return null;
        }
        int displayId = clientDisplayId;
        Matrix matrix = null;
        while (true) {
            ActivityViewInfo info = this.mActivityViewDisplayIdToParentMap.get(displayId);
            if (info == null) {
                return null;
            }
            if (matrix != null) {
                matrix.postConcat(info.mMatrix);
            } else {
                matrix = new Matrix(info.mMatrix);
            }
            if (info.mParentClient.selfReportedDisplayId != imeDisplayId) {
                displayId = info.mParentClient.selfReportedDisplayId;
            } else {
                return matrix;
            }
        }
    }

    InputBindResult startInputUncheckedLocked(ClientState cs, IInputContext inputContext, int missingMethods, EditorInfo attribute, int startInputFlags, int startInputReason) {
        int missingMethods2;
        if (this.mCurMethodId == null) {
            return InputBindResult.NO_IME;
        }
        if (!this.mSystemReady) {
            return new InputBindResult(8, (IInputMethodSession) null, (InputChannel) null, this.mCurMethodId, this.mCurSeq, (Matrix) null);
        }
        if (!InputMethodUtils.checkIfPackageBelongsToUid(this.mAppOpsManager, cs.uid, attribute.packageName)) {
            Slog.e(TAG, "Rejecting this client as it reported an invalid package name. uid=" + cs.uid + " package=" + attribute.packageName);
            return InputBindResult.INVALID_PACKAGE_NAME;
        }
        if (this.mWindowManagerInternal.isUidAllowedOnDisplay(cs.selfReportedDisplayId, cs.uid)) {
            int displayIdToShowIme = computeImeDisplayIdForTarget(cs.selfReportedDisplayId, this.mImeDisplayValidator);
            if (this.mCurClient != cs) {
                this.mCurClientInKeyguard = isKeyguardLocked();
                unbindCurrentClientLocked(1);
                Slog.v(TAG, "switching to client: client=" + cs.client.asBinder() + " keyguard=" + this.mCurClientInKeyguard);
                if (this.mIsInteractive) {
                    executeOrSendMessage(cs.client, this.mCaller.obtainMessageIO(MSG_SET_ACTIVE, 1, cs));
                }
            }
            int i = this.mCurSeq + 1;
            this.mCurSeq = i;
            if (i <= 0) {
                this.mCurSeq = 1;
            }
            this.mCurClient = cs;
            this.mCurInputContext = inputContext;
            this.mCurActivityViewToScreenMatrix = getActivityViewToScreenMatrixLocked(cs.selfReportedDisplayId, displayIdToShowIme);
            if (cs.selfReportedDisplayId != displayIdToShowIme && this.mCurActivityViewToScreenMatrix == null) {
                missingMethods2 = missingMethods | 8;
            } else {
                missingMethods2 = missingMethods;
            }
            this.mCurInputContextMissingMethods = missingMethods2;
            this.mCurAttribute = attribute;
            String str = this.mCurId;
            if (str != null && str.equals(this.mCurMethodId) && displayIdToShowIme == this.mCurTokenDisplayId) {
                if (cs.curSession != null) {
                    return attachNewInputLocked(startInputReason, (startInputFlags & 4) != 0);
                }
                if (this.mHaveConnection) {
                    if (this.mCurMethod != null) {
                        requestClientSessionLocked(cs);
                        return new InputBindResult(1, (IInputMethodSession) null, (InputChannel) null, this.mCurId, this.mCurSeq, (Matrix) null);
                    }
                    if (SystemClock.uptimeMillis() < this.mLastBindTime + 3000) {
                        return new InputBindResult(2, (IInputMethodSession) null, (InputChannel) null, this.mCurId, this.mCurSeq, (Matrix) null);
                    }
                    EventLog.writeEvent(EventLogTags.IMF_FORCE_RECONNECT_IME, this.mCurMethodId, Long.valueOf(SystemClock.uptimeMillis() - this.mLastBindTime), 0);
                }
            }
            InputMethodInfo info = this.mMethodMap.get(this.mCurMethodId);
            if (info == null) {
                throw new IllegalArgumentException("Unknown id: " + this.mCurMethodId);
            }
            unbindCurrentMethodLocked();
            Intent intent = new Intent("android.view.InputMethod");
            this.mCurIntent = intent;
            intent.setComponent(info.getComponent());
            this.mCurIntent.putExtra("android.intent.extra.client_label", R.string.face_dangling_notification_title);
            this.mCurIntent.putExtra("android.intent.extra.client_intent", PendingIntent.getActivity(this.mContext, 0, new Intent("android.settings.INPUT_METHOD_SETTINGS"), 67108864));
            if (bindCurrentInputMethodServiceLocked(this.mCurIntent, this, IME_CONNECTION_BIND_FLAGS)) {
                this.mLastBindTime = SystemClock.uptimeMillis();
                this.mHaveConnection = true;
                this.mCurId = info.getId();
                this.mCurToken = new Binder();
                this.mCurTokenDisplayId = displayIdToShowIme;
                try {
                    Slog.v(TAG, "Adding window token: " + this.mCurToken + " for display: " + this.mCurTokenDisplayId);
                    this.mIWindowManager.addWindowToken(this.mCurToken, 2011, this.mCurTokenDisplayId);
                } catch (RemoteException e) {
                }
                return new InputBindResult(2, (IInputMethodSession) null, (InputChannel) null, this.mCurId, this.mCurSeq, (Matrix) null);
            }
            this.mCurIntent = null;
            Slog.w(TAG, "Failure connecting to input method service: " + this.mCurIntent);
            return InputBindResult.IME_NOT_CONNECTED;
        }
        return InputBindResult.INVALID_DISPLAY_ID;
    }

    static int computeImeDisplayIdForTarget(int displayId, ImeDisplayValidator checker) {
        if (displayId == 0 || displayId == -1 || !checker.displayCanShowIme(displayId)) {
            return 0;
        }
        return displayId;
    }

    private void scheduleNotifyImeUidToAudioService(int uid) {
        this.mCaller.removeMessages(MSG_NOTIFY_IME_UID_TO_AUDIO_SERVICE);
        this.mCaller.obtainMessageI(MSG_NOTIFY_IME_UID_TO_AUDIO_SERVICE, uid).sendToTarget();
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName name, IBinder service) {
        synchronized (this.mMethodMap) {
            if (this.mCurIntent != null && name.equals(this.mCurIntent.getComponent())) {
                this.mCurMethod = IInputMethod.Stub.asInterface(service);
                String curMethodPackage = this.mCurIntent.getComponent().getPackageName();
                int curMethodUid = this.mPackageManagerInternal.getPackageUidInternal(curMethodPackage, 0, this.mSettings.getCurrentUserId());
                if (curMethodUid < 0) {
                    Slog.e(TAG, "Failed to get UID for package=" + curMethodPackage);
                    this.mCurMethodUid = -1;
                } else {
                    this.mCurMethodUid = curMethodUid;
                }
                if (this.mCurToken == null) {
                    Slog.w(TAG, "Service connected without a token!");
                    unbindCurrentMethodLocked();
                    return;
                }
                Slog.v(TAG, "Initiating attach with token: " + this.mCurToken);
                executeOrSendMessage(this.mCurMethod, this.mCaller.obtainMessageIOO(MSG_INITIALIZE_IME, this.mCurTokenDisplayId, this.mCurMethod, this.mCurToken));
                scheduleNotifyImeUidToAudioService(this.mCurMethodUid);
                if (this.mCurClient != null) {
                    clearClientSessionLocked(this.mCurClient);
                    requestClientSessionLocked(this.mCurClient);
                }
            }
        }
    }

    void onSessionCreated(IInputMethod method, IInputMethodSession session, InputChannel channel) {
        synchronized (this.mMethodMap) {
            if (this.mUserSwitchHandlerTask != null) {
                channel.dispose();
                return;
            }
            if (this.mCurMethod != null && method != null && this.mCurMethod.asBinder() == method.asBinder() && this.mCurClient != null) {
                clearClientSessionLocked(this.mCurClient);
                this.mCurClient.curSession = new SessionState(this.mCurClient, method, session, channel);
                InputBindResult res = attachNewInputLocked(10, true);
                if (res.method != null) {
                    executeOrSendMessage(this.mCurClient.client, this.mCaller.obtainMessageOO(3010, this.mCurClient.client, res));
                }
                return;
            }
            channel.dispose();
        }
    }

    void unbindCurrentMethodLocked() {
        if (this.mVisibleBound) {
            this.mContext.unbindService(this.mVisibleConnection);
            this.mVisibleBound = false;
        }
        if (this.mHaveConnection) {
            this.mContext.unbindService(this);
            this.mHaveConnection = false;
        }
        if (this.mCurToken != null) {
            try {
                Slog.v(TAG, "Removing window token: " + this.mCurToken + " for display: " + this.mCurTokenDisplayId);
                this.mIWindowManager.removeWindowToken(this.mCurToken, this.mCurTokenDisplayId);
            } catch (RemoteException e) {
            }
            this.mImeWindowVis = 0;
            this.mBackDisposition = 0;
            updateSystemUiLocked(0, 0);
            this.mCurToken = null;
            this.mCurTokenDisplayId = -1;
            this.mCurHostInputToken = null;
        }
        this.mCurId = null;
        clearCurMethodLocked();
    }

    void resetCurrentMethodAndClient(int unbindClientReason) {
        this.mCurMethodId = null;
        unbindCurrentMethodLocked();
        unbindCurrentClientLocked(unbindClientReason);
    }

    void requestClientSessionLocked(ClientState cs) {
        if (!cs.sessionRequested) {
            Slog.v(TAG, "Creating new session for client " + cs);
            InputChannel[] channels = InputChannel.openInputChannelPair(cs.toString());
            cs.sessionRequested = true;
            IInputMethod iInputMethod = this.mCurMethod;
            executeOrSendMessage(iInputMethod, this.mCaller.obtainMessageOOO(MSG_CREATE_SESSION, iInputMethod, channels[1], new MethodCallback(this, this.mCurMethod, channels[0])));
        }
    }

    void clearClientSessionLocked(ClientState cs) {
        finishSessionLocked(cs.curSession);
        cs.curSession = null;
        cs.sessionRequested = false;
    }

    private void finishSessionLocked(SessionState sessionState) {
        if (sessionState != null) {
            if (sessionState.session != null) {
                try {
                    sessionState.session.finishSession();
                } catch (RemoteException e) {
                    Slog.w(TAG, "Session failed to close due to remote exception", e);
                    updateSystemUiLocked(0, this.mBackDisposition);
                }
                sessionState.session = null;
            }
            if (sessionState.channel != null) {
                sessionState.channel.dispose();
                sessionState.channel = null;
            }
        }
    }

    void clearCurMethodLocked() {
        if (this.mCurMethod != null) {
            int numClients = this.mClients.size();
            for (int i = 0; i < numClients; i++) {
                clearClientSessionLocked(this.mClients.valueAt(i));
            }
            finishSessionLocked(this.mEnabledSession);
            this.mEnabledSession = null;
            this.mCurMethod = null;
            this.mCurMethodUid = -1;
            scheduleNotifyImeUidToAudioService(-1);
        }
        StatusBarManagerService statusBarManagerService = this.mStatusBar;
        if (statusBarManagerService != null) {
            statusBarManagerService.setIconVisibility(this.mSlotIme, false);
        }
        this.mInFullscreenMode = false;
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName name) {
        synchronized (this.mMethodMap) {
            Slog.v(TAG, "Service disconnected: " + name + " mCurIntent=" + this.mCurIntent);
            if (this.mCurMethod != null && this.mCurIntent != null && name.equals(this.mCurIntent.getComponent())) {
                clearCurMethodLocked();
                this.mLastBindTime = SystemClock.uptimeMillis();
                this.mShowRequested = this.mInputShown;
                this.mInputShown = false;
                unbindCurrentClientLocked(3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateStatusIcon(IBinder token, String packageName, int iconId) {
        synchronized (this.mMethodMap) {
            if (calledWithValidTokenLocked(token)) {
                long ident = Binder.clearCallingIdentity();
                try {
                    if (iconId == 0) {
                        Slog.d(TAG, "hide the small icon for the input method");
                        if (this.mStatusBar != null) {
                            this.mStatusBar.setIconVisibility(this.mSlotIme, false);
                        }
                    } else if (packageName != null) {
                        Slog.d(TAG, "show a small icon for the input method");
                        CharSequence contentDescription = null;
                        try {
                            PackageManager packageManager = this.mContext.getPackageManager();
                            contentDescription = packageManager.getApplicationLabel(this.mIPackageManager.getApplicationInfo(packageName, 0, this.mSettings.getCurrentUserId()));
                        } catch (RemoteException e) {
                        }
                        if (this.mStatusBar != null) {
                            this.mStatusBar.setIcon(this.mSlotIme, packageName, iconId, 0, contentDescription != null ? contentDescription.toString() : null);
                            this.mStatusBar.setIconVisibility(this.mSlotIme, true);
                        }
                    }
                    Binder.restoreCallingIdentity(ident);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(ident);
                    throw th;
                }
            }
        }
    }

    private boolean shouldShowImeSwitcherLocked(int visibility) {
        KeyguardManager keyguardManager;
        if (!this.mShowOngoingImeSwitcherForPhones || this.mSwitchingDialog != null) {
            return false;
        }
        if ((this.mWindowManagerInternal.isKeyguardShowingAndNotOccluded() && (keyguardManager = this.mKeyguardManager) != null && keyguardManager.isKeyguardSecure()) || (visibility & 1) == 0 || (visibility & 4) != 0) {
            return false;
        }
        if (this.mWindowManagerInternal.isHardKeyboardAvailable()) {
            return true;
        }
        if ((visibility & 2) == 0) {
            return false;
        }
        List<InputMethodInfo> imis = this.mSettings.getEnabledInputMethodListLocked();
        int N = imis.size();
        if (N > 2) {
            return true;
        }
        if (N < 1) {
            return false;
        }
        int nonAuxCount = 0;
        int auxCount = 0;
        InputMethodSubtype nonAuxSubtype = null;
        InputMethodSubtype auxSubtype = null;
        for (int i = 0; i < N; i++) {
            InputMethodInfo imi = imis.get(i);
            List<InputMethodSubtype> subtypes = this.mSettings.getEnabledInputMethodSubtypeListLocked(this.mContext, imi, true);
            int subtypeCount = subtypes.size();
            if (subtypeCount == 0) {
                nonAuxCount++;
            } else {
                for (int j = 0; j < subtypeCount; j++) {
                    InputMethodSubtype subtype = subtypes.get(j);
                    if (!subtype.isAuxiliary()) {
                        nonAuxCount++;
                        nonAuxSubtype = subtype;
                    } else {
                        auxCount++;
                        auxSubtype = subtype;
                    }
                }
            }
        }
        if (nonAuxCount > 1 || auxCount > 1) {
            return true;
        }
        if (nonAuxCount == 1 && auxCount == 1) {
            return nonAuxSubtype == null || auxSubtype == null || !((nonAuxSubtype.getLocale().equals(auxSubtype.getLocale()) || auxSubtype.overridesImplicitlyEnabledSubtype() || nonAuxSubtype.overridesImplicitlyEnabledSubtype()) && nonAuxSubtype.containsExtraValueKey(TAG_TRY_SUPPRESSING_IME_SWITCHER));
        }
        return false;
    }

    private boolean isKeyguardLocked() {
        KeyguardManager keyguardManager = this.mKeyguardManager;
        return keyguardManager != null && keyguardManager.isKeyguardLocked();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setImeWindowStatus(IBinder token, int vis, int backDisposition) {
        boolean dismissImeOnBackKeyPressed;
        int topFocusedDisplayId = this.mWindowManagerInternal.getTopFocusedDisplayId();
        synchronized (this.mMethodMap) {
            if (calledWithValidTokenLocked(token)) {
                if (this.mCurTokenDisplayId == topFocusedDisplayId || this.mCurTokenDisplayId == 0) {
                    this.mImeWindowVis = vis;
                    this.mBackDisposition = backDisposition;
                    updateSystemUiLocked(vis, backDisposition);
                    if (backDisposition == 1) {
                        dismissImeOnBackKeyPressed = false;
                    } else if (backDisposition == 2) {
                        dismissImeOnBackKeyPressed = true;
                    } else {
                        dismissImeOnBackKeyPressed = (vis & 2) != 0;
                    }
                    this.mWindowManagerInternal.updateInputMethodWindowStatus(token, (vis & 2) != 0, dismissImeOnBackKeyPressed);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reportStartInput(IBinder token, IBinder startInputToken) {
        synchronized (this.mMethodMap) {
            if (calledWithValidTokenLocked(token)) {
                IBinder targetWindow = this.mImeTargetWindowMap.get(startInputToken);
                if (targetWindow != null && this.mLastImeTargetWindow != targetWindow) {
                    this.mWindowManagerInternal.updateInputMethodTargetWindow(token, targetWindow);
                }
                this.mLastImeTargetWindow = targetWindow;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSystemUiLocked(int vis, int backDisposition) {
        if (this.mCurToken == null) {
            return;
        }
        Slog.d(TAG, "IME window vis: " + vis + " active: " + (vis & 1) + " inv: " + (vis & 4) + " displayId: " + this.mCurTokenDisplayId);
        long ident = Binder.clearCallingIdentity();
        if (vis != 0) {
            try {
                if (isKeyguardLocked() && !this.mCurClientInKeyguard) {
                    vis = 0;
                }
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }
        if (!this.mCurPerceptible) {
            vis &= -3;
        }
        boolean needsToShowImeSwitcher = shouldShowImeSwitcherLocked(vis);
        if (this.mStatusBar != null) {
            this.mStatusBar.setImeWindowStatus(this.mCurTokenDisplayId, this.mCurToken, vis, backDisposition, needsToShowImeSwitcher, false);
        }
        InputMethodInfo imi = this.mMethodMap.get(this.mCurMethodId);
        if (imi != null && needsToShowImeSwitcher) {
            CharSequence title = this.mRes.getText(R.string.permdesc_foregroundServicePhoneCall);
            CharSequence summary = InputMethodUtils.getImeAndSubtypeDisplayName(this.mContext, imi, this.mCurrentSubtype);
            this.mImeSwitcherNotification.setContentTitle(title).setContentText(summary).setContentIntent(this.mImeSwitchPendingIntent);
            try {
                if (this.mNotificationManager != null && !this.mIWindowManager.hasNavigationBar(0)) {
                    Slog.d(TAG, "--- show notification: label =  " + ((Object) summary));
                    this.mNotificationManager.notifyAsUser(null, 8, this.mImeSwitcherNotification.build(), UserHandle.ALL);
                    this.mNotificationShown = true;
                }
            } catch (RemoteException e) {
            }
        } else if (this.mNotificationShown && this.mNotificationManager != null) {
            Slog.d(TAG, "--- hide notification");
            this.mNotificationManager.cancelAsUser(null, 8, UserHandle.ALL);
            this.mNotificationShown = false;
        }
    }

    void updateFromSettingsLocked(boolean enabledMayChange) {
        updateInputMethodsFromSettingsLocked(enabledMayChange);
        updateKeyboardFromSettingsLocked();
    }

    void updateInputMethodsFromSettingsLocked(boolean enabledMayChange) {
        if (enabledMayChange) {
            List<InputMethodInfo> enabled = this.mSettings.getEnabledInputMethodListLocked();
            for (int i = 0; i < enabled.size(); i++) {
                InputMethodInfo imm = enabled.get(i);
                try {
                    ApplicationInfo ai = this.mIPackageManager.getApplicationInfo(imm.getPackageName(), 32768, this.mSettings.getCurrentUserId());
                    if (ai != null && ai.enabledSetting == 4) {
                        Slog.d(TAG, "Update state(" + imm.getId() + "): DISABLED_UNTIL_USED -> DEFAULT");
                        this.mIPackageManager.setApplicationEnabledSetting(imm.getPackageName(), 0, 1, this.mSettings.getCurrentUserId(), this.mContext.getBasePackageName());
                    }
                } catch (RemoteException e) {
                }
            }
        }
        String id = this.mSettings.getSelectedInputMethod();
        if (TextUtils.isEmpty(id) && chooseNewDefaultIMELocked()) {
            id = this.mSettings.getSelectedInputMethod();
        }
        if (!TextUtils.isEmpty(id)) {
            try {
                setInputMethodLocked(id, this.mSettings.getSelectedInputMethodSubtypeId(id));
            } catch (IllegalArgumentException e2) {
                Slog.w(TAG, "Unknown input method from prefs: " + id, e2);
                resetCurrentMethodAndClient(5);
            }
        } else {
            resetCurrentMethodAndClient(4);
        }
        this.mSwitchingController.resetCircularListLocked(this.mContext);
    }

    public void updateKeyboardFromSettingsLocked() {
        this.mShowImeWithHardKeyboard = this.mSettings.isShowImeWithHardKeyboardEnabled();
        AlertDialog alertDialog = this.mSwitchingDialog;
        if (alertDialog != null && this.mSwitchingDialogTitleView != null && alertDialog.isShowing()) {
            Switch hardKeySwitch = (Switch) this.mSwitchingDialogTitleView.findViewById(R.id.feedbackHaptic);
            hardKeySwitch.setChecked(this.mShowImeWithHardKeyboard);
        }
    }

    void setInputMethodLocked(String id, int subtypeId) {
        InputMethodSubtype newSubtype;
        InputMethodInfo info = this.mMethodMap.get(id);
        if (info == null) {
            throw new IllegalArgumentException("Unknown id: " + id);
        }
        if (id.equals(this.mCurMethodId)) {
            int subtypeCount = info.getSubtypeCount();
            if (subtypeCount <= 0) {
                return;
            }
            InputMethodSubtype oldSubtype = this.mCurrentSubtype;
            if (subtypeId >= 0 && subtypeId < subtypeCount) {
                newSubtype = info.getSubtypeAt(subtypeId);
            } else {
                newSubtype = getCurrentInputMethodSubtypeLocked();
            }
            if (newSubtype == null || oldSubtype == null) {
                Slog.w(TAG, "Illegal subtype state: old subtype = " + oldSubtype + ", new subtype = " + newSubtype);
                return;
            }
            if (newSubtype != oldSubtype) {
                setSelectedInputMethodAndSubtypeLocked(info, subtypeId, true);
                if (this.mCurMethod != null) {
                    try {
                        updateSystemUiLocked(this.mImeWindowVis, this.mBackDisposition);
                        this.mCurMethod.changeInputMethodSubtype(newSubtype);
                        return;
                    } catch (RemoteException e) {
                        Slog.w(TAG, "Failed to call changeInputMethodSubtype");
                        return;
                    }
                }
                return;
            }
            return;
        }
        long ident = Binder.clearCallingIdentity();
        try {
            setSelectedInputMethodAndSubtypeLocked(info, subtypeId, false);
            this.mCurMethodId = id;
            if (((ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class)).isSystemReady()) {
                Intent intent = new Intent("android.intent.action.INPUT_METHOD_CHANGED");
                intent.addFlags(AudioFormat.APTX);
                intent.putExtra("input_method_id", id);
                this.mContext.sendBroadcastAsUser(intent, UserHandle.CURRENT);
            }
            unbindCurrentClientLocked(2);
        } finally {
            Binder.restoreCallingIdentity(ident);
        }
    }

    public boolean showSoftInput(IInputMethodClient client, IBinder windowToken, int flags, ResultReceiver resultReceiver) {
        int uid = Binder.getCallingUid();
        synchronized (this.mMethodMap) {
            if (!calledFromValidUserLocked()) {
                return false;
            }
            long ident = Binder.clearCallingIdentity();
            try {
                if (canInteractWithImeLocked(uid, client, "showSoftInput")) {
                    Slog.v(TAG, "Client requesting input be shown");
                    boolean zShowCurrentInputLocked = showCurrentInputLocked(windowToken, flags, resultReceiver, 0);
                    Binder.restoreCallingIdentity(ident);
                    return zShowCurrentInputLocked;
                }
                Binder.restoreCallingIdentity(ident);
                return false;
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(ident);
                throw th;
            }
        }
    }

    public void reportPerceptible(IBinder windowToken, boolean perceptible) {
        Objects.requireNonNull(windowToken, "windowToken must not be null");
        Binder.getCallingUid();
        synchronized (this.mMethodMap) {
            if (calledFromValidUserLocked()) {
                long ident = Binder.clearCallingIdentity();
                try {
                    if (this.mCurFocusedWindow == windowToken && this.mCurPerceptible != perceptible) {
                        this.mCurPerceptible = perceptible;
                        updateSystemUiLocked(this.mImeWindowVis, this.mBackDisposition);
                    }
                    Binder.restoreCallingIdentity(ident);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(ident);
                    throw th;
                }
            }
        }
    }

    boolean showCurrentInputLocked(IBinder windowToken, int flags, ResultReceiver resultReceiver, int reason) {
        this.mShowRequested = true;
        if (this.mAccessibilityRequestingNoSoftKeyboard) {
            return false;
        }
        if ((flags & 2) != 0) {
            this.mShowExplicitlyRequested = true;
            this.mShowForced = true;
        } else if ((flags & 1) == 0) {
            this.mShowExplicitlyRequested = true;
        }
        if (!this.mSystemReady) {
            return false;
        }
        if (this.mCurMethod != null) {
            Slog.d(TAG, "showCurrentInputLocked: mCurToken=" + this.mCurToken);
            Binder showInputToken = new Binder();
            this.mShowRequestWindowMap.put(showInputToken, windowToken);
            executeOrSendMessage(this.mCurMethod, this.mCaller.obtainMessageIIOOO(MSG_SHOW_SOFT_INPUT, getImeShowFlags(), reason, this.mCurMethod, resultReceiver, showInputToken));
            this.mInputShown = true;
            if (this.mHaveConnection && !this.mVisibleBound) {
                bindCurrentInputMethodServiceLocked(this.mCurIntent, this.mVisibleConnection, IME_VISIBLE_BIND_FLAGS);
                this.mVisibleBound = true;
            }
            return true;
        }
        if (this.mHaveConnection && SystemClock.uptimeMillis() >= this.mLastBindTime + 3000) {
            EventLog.writeEvent(EventLogTags.IMF_FORCE_RECONNECT_IME, this.mCurMethodId, Long.valueOf(SystemClock.uptimeMillis() - this.mLastBindTime), 1);
            Slog.w(TAG, "Force disconnect/connect to the IME in showCurrentInputLocked()");
            this.mContext.unbindService(this);
            bindCurrentInputMethodServiceLocked(this.mCurIntent, this, IME_CONNECTION_BIND_FLAGS);
            return false;
        }
        Slog.d(TAG, "Can't show input: connection = " + this.mHaveConnection + ", time = " + ((this.mLastBindTime + 3000) - SystemClock.uptimeMillis()));
        return false;
    }

    public boolean hideSoftInput(IInputMethodClient client, IBinder windowToken, int flags, ResultReceiver resultReceiver) {
        int uid = Binder.getCallingUid();
        synchronized (this.mMethodMap) {
            if (!calledFromValidUserLocked()) {
                return false;
            }
            long ident = Binder.clearCallingIdentity();
            try {
                if (this.mCurClient == null || client == null || this.mCurClient.client.asBinder() != client.asBinder()) {
                    ClientState cs = this.mClients.get(client.asBinder());
                    if (cs == null) {
                        throw new IllegalArgumentException("unknown client " + client.asBinder());
                    }
                    if (!this.mWindowManagerInternal.isInputMethodClientFocus(cs.uid, cs.pid, cs.selfReportedDisplayId)) {
                        Slog.w(TAG, "Ignoring hideSoftInput of uid " + uid + ": " + client);
                        Binder.restoreCallingIdentity(ident);
                        return false;
                    }
                }
                Slog.v(TAG, "Client requesting input be hidden");
                boolean zHideCurrentInputLocked = hideCurrentInputLocked(windowToken, flags, resultReceiver, 3);
                Binder.restoreCallingIdentity(ident);
                return zHideCurrentInputLocked;
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(ident);
                throw th;
            }
        }
    }

    boolean hideCurrentInputLocked(IBinder windowToken, int flags, ResultReceiver resultReceiver, int reason) {
        boolean res;
        if ((flags & 1) != 0 && (this.mShowExplicitlyRequested || this.mShowForced)) {
            Slog.v(TAG, "Not hiding: explicit show not cancelled by non-explicit hide");
            return false;
        }
        if (this.mShowForced && (flags & 2) != 0) {
            Slog.v(TAG, "Not hiding: forced show not cancelled by not-always hide");
            return false;
        }
        boolean z = true;
        if (this.mCurMethod == null || (!this.mInputShown && (this.mImeWindowVis & 1) == 0)) {
            z = false;
        }
        boolean shouldHideSoftInput = z;
        if (shouldHideSoftInput) {
            Binder hideInputToken = new Binder();
            this.mHideRequestWindowMap.put(hideInputToken, windowToken);
            IInputMethod iInputMethod = this.mCurMethod;
            executeOrSendMessage(iInputMethod, this.mCaller.obtainMessageIOOO(MSG_HIDE_SOFT_INPUT, reason, iInputMethod, resultReceiver, hideInputToken));
            res = true;
        } else {
            res = false;
        }
        if (this.mHaveConnection && this.mVisibleBound) {
            this.mContext.unbindService(this.mVisibleConnection);
            this.mVisibleBound = false;
        }
        this.mInputShown = false;
        this.mShowRequested = false;
        this.mShowExplicitlyRequested = false;
        this.mShowForced = false;
        return res;
    }

    public InputBindResult startInputOrWindowGainedFocus(int startInputReason, IInputMethodClient client, IBinder windowToken, int startInputFlags, int softInputMode, int windowFlags, EditorInfo attribute, IInputContext inputContext, int missingMethods, int unverifiedTargetSdkVersion) throws Throwable {
        int userId;
        ArrayMap<String, InputMethodInfo> arrayMap;
        if (windowToken == null) {
            Slog.e(TAG, "windowToken cannot be null.");
            return InputBindResult.NULL;
        }
        int callingUserId = UserHandle.getCallingUserId();
        if (attribute != null && attribute.targetInputMethodUser != null && attribute.targetInputMethodUser.getIdentifier() != callingUserId) {
            this.mContext.enforceCallingPermission("android.permission.INTERACT_ACROSS_USERS_FULL", "Using EditorInfo.targetInputMethodUser requires INTERACT_ACROSS_USERS_FULL.");
            int userId2 = attribute.targetInputMethodUser.getIdentifier();
            if (this.mUserManagerInternal.isUserRunning(userId2)) {
                userId = userId2;
            } else {
                Slog.e(TAG, "User #" + userId2 + " is not running.");
                return InputBindResult.INVALID_USER;
            }
        } else {
            userId = callingUserId;
        }
        ArrayMap<String, InputMethodInfo> arrayMap2 = this.mMethodMap;
        synchronized (arrayMap2) {
            try {
                try {
                    long ident = Binder.clearCallingIdentity();
                    arrayMap = arrayMap2;
                    try {
                        InputBindResult result = startInputOrWindowGainedFocusInternalLocked(startInputReason, client, windowToken, startInputFlags, softInputMode, windowFlags, attribute, inputContext, missingMethods, unverifiedTargetSdkVersion, userId);
                        Binder.restoreCallingIdentity(ident);
                        if (result == null) {
                            Slog.wtf(TAG, "InputBindResult is @NonNull. startInputReason=" + InputMethodDebug.startInputReasonToString(startInputReason) + " windowFlags=#" + Integer.toHexString(windowFlags) + " editorInfo=" + attribute);
                            return InputBindResult.NULL;
                        }
                        return result;
                    } catch (Throwable th) {
                        Binder.restoreCallingIdentity(ident);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    arrayMap = arrayMap2;
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    private InputBindResult startInputOrWindowGainedFocusInternalLocked(int startInputReason, IInputMethodClient client, IBinder windowToken, int startInputFlags, int softInputMode, int windowFlags, EditorInfo attribute, IInputContext inputContext, int missingMethods, int unverifiedTargetSdkVersion, int userId) {
        int i;
        int i2;
        Slog.v(TAG, "startInputOrWindowGainedFocusInternalLocked: reason=" + InputMethodDebug.startInputReasonToString(startInputReason) + " client=" + client.asBinder() + " inputContext=" + inputContext + " missingMethods=" + InputConnectionInspector.getMissingMethodFlagsAsString(missingMethods) + " attribute=" + attribute + " startInputFlags=" + InputMethodDebug.startInputFlagsToString(startInputFlags) + " softInputMode=" + InputMethodDebug.softInputModeToString(softInputMode) + " windowFlags=#" + Integer.toHexString(windowFlags) + " unverifiedTargetSdkVersion=" + unverifiedTargetSdkVersion);
        int windowDisplayId = this.mWindowManagerInternal.getDisplayIdForWindow(windowToken);
        ClientState cs = this.mClients.get(client.asBinder());
        if (cs == null) {
            throw new IllegalArgumentException("unknown client " + client.asBinder());
        }
        if (cs.selfReportedDisplayId != windowDisplayId) {
            Slog.e(TAG, "startInputOrWindowGainedFocusInternal: display ID mismatch. from client:" + cs.selfReportedDisplayId + " from window:" + windowDisplayId);
            return InputBindResult.DISPLAY_ID_MISMATCH;
        }
        if (!this.mWindowManagerInternal.isInputMethodClientFocus(cs.uid, cs.pid, cs.selfReportedDisplayId)) {
            Slog.w(TAG, "Focus gain on non-focused client " + cs.client + " (uid=" + cs.uid + " pid=" + cs.pid + ")");
            return InputBindResult.NOT_IME_TARGET_WINDOW;
        }
        UserSwitchHandlerTask userSwitchHandlerTask = this.mUserSwitchHandlerTask;
        if (userSwitchHandlerTask != null) {
            int nextUserId = userSwitchHandlerTask.mToUserId;
            if (userId == nextUserId) {
                scheduleSwitchUserTaskLocked(userId, cs.client);
                return InputBindResult.USER_SWITCHING;
            }
            for (int profileId : this.mUserManager.getProfileIdsWithDisabled(nextUserId)) {
                if (profileId == userId) {
                    scheduleSwitchUserTaskLocked(userId, cs.client);
                    return InputBindResult.USER_SWITCHING;
                }
            }
            return InputBindResult.INVALID_USER;
        }
        if (!this.mSettings.isCurrentProfile(userId)) {
            Slog.w(TAG, "A background user is requesting window. Hiding IME.");
            Slog.w(TAG, "If you need to impersonate a foreground user/profile from a background user, use EditorInfo.targetInputMethodUser with INTERACT_ACROSS_USERS_FULL permission.");
            hideCurrentInputLocked(this.mCurFocusedWindow, 0, null, 10);
            return InputBindResult.INVALID_USER;
        }
        if (userId != this.mSettings.getCurrentUserId()) {
            scheduleSwitchUserTaskLocked(userId, cs.client);
            return InputBindResult.USER_SWITCHING;
        }
        Slog.v(TAG, "IME PreRendering MASTER flag: " + DebugFlags.FLAG_PRE_RENDER_IME_VIEWS.value() + ", LowRam: " + this.mIsLowRam);
        cs.shouldPreRenderIme = DebugFlags.FLAG_PRE_RENDER_IME_VIEWS.value() && !this.mIsLowRam;
        boolean sameWindowFocused = this.mCurFocusedWindow == windowToken;
        boolean isTextEditor = (startInputFlags & 2) != 0;
        boolean startInputByWinGainedFocus = (startInputFlags & 8) != 0;
        if (sameWindowFocused && isTextEditor) {
            Slog.w(TAG, "Window already focused, ignoring focus gain of: " + client + " attribute=" + attribute + ", token = " + windowToken + ", startInputReason=" + InputMethodDebug.startInputReasonToString(startInputReason));
            if (attribute != null) {
                return startInputUncheckedLocked(cs, inputContext, missingMethods, attribute, startInputFlags, startInputReason);
            }
            return new InputBindResult(4, (IInputMethodSession) null, (InputChannel) null, (String) null, -1, (Matrix) null);
        }
        this.mCurFocusedWindow = windowToken;
        this.mCurFocusedWindowSoftInputMode = softInputMode;
        this.mCurFocusedWindowClient = cs;
        this.mCurPerceptible = true;
        boolean doAutoShow = (softInputMode & 240) == 16 || this.mRes.getConfiguration().isLayoutSizeAtLeast(3);
        boolean didStart = false;
        InputBindResult res = null;
        int i3 = softInputMode & 15;
        if (i3 != 0) {
            if (i3 != 2) {
                if (i3 != 3) {
                    if (i3 != 4) {
                        if (i3 == 5) {
                            Slog.v(TAG, "Window asks to always show input");
                            if (!InputMethodUtils.isSoftInputModeStateVisibleAllowed(unverifiedTargetSdkVersion, startInputFlags)) {
                                Slog.e(TAG, "SOFT_INPUT_STATE_ALWAYS_VISIBLE is ignored because there is no focused view that also returns true from View#onCheckIsTextEditor()");
                            } else if (!sameWindowFocused) {
                                if (attribute == null) {
                                    i2 = 1;
                                } else {
                                    i2 = 1;
                                    res = startInputUncheckedLocked(cs, inputContext, missingMethods, attribute, startInputFlags, startInputReason);
                                    didStart = true;
                                }
                                showCurrentInputLocked(windowToken, i2, null, 7);
                            }
                        }
                    } else if ((softInputMode & 256) != 0) {
                        Slog.v(TAG, "Window asks to show input going forward");
                        if (!InputMethodUtils.isSoftInputModeStateVisibleAllowed(unverifiedTargetSdkVersion, startInputFlags)) {
                            Slog.e(TAG, "SOFT_INPUT_STATE_VISIBLE is ignored because there is no focused view that also returns true from View#onCheckIsTextEditor()");
                        } else {
                            if (attribute != null) {
                                res = startInputUncheckedLocked(cs, inputContext, missingMethods, attribute, startInputFlags, startInputReason);
                                didStart = true;
                            }
                            showCurrentInputLocked(windowToken, 1, null, 6);
                        }
                    }
                } else if (!sameWindowFocused) {
                    Slog.v(TAG, "Window asks to hide input");
                    hideCurrentInputLocked(this.mCurFocusedWindow, 0, null, 13);
                }
            } else if ((softInputMode & 256) != 0) {
                Slog.v(TAG, "Window asks to hide input going forward");
                hideCurrentInputLocked(this.mCurFocusedWindow, 0, null, 12);
            }
        } else if (!sameWindowFocused && (!isTextEditor || !doAutoShow)) {
            if (WindowManager.LayoutParams.mayUseInputMethod(windowFlags)) {
                Slog.v(TAG, "Unspecified window will hide input");
                hideCurrentInputLocked(this.mCurFocusedWindow, 2, null, 11);
                if (cs.selfReportedDisplayId != this.mCurTokenDisplayId) {
                    unbindCurrentMethodLocked();
                }
            }
        } else if (isTextEditor && doAutoShow && (softInputMode & 256) != 0) {
            Slog.v(TAG, "Unspecified window will show input");
            if (attribute == null) {
                i = 5;
            } else {
                i = 5;
                res = startInputUncheckedLocked(cs, inputContext, missingMethods, attribute, startInputFlags, startInputReason);
                didStart = true;
            }
            showCurrentInputLocked(windowToken, 1, null, i);
        }
        if (!didStart) {
            if (attribute != null) {
                if (sameWindowFocused) {
                    if (startInputByWinGainedFocus) {
                        hideCurrentInputLocked(this.mCurFocusedWindow, 0, null, 20);
                    }
                    return startInputUncheckedLocked(cs, inputContext, missingMethods, attribute, startInputFlags, startInputReason);
                }
                if (!DebugFlags.FLAG_OPTIMIZE_START_INPUT.value() || (startInputFlags & 2) != 0) {
                    return startInputUncheckedLocked(cs, inputContext, missingMethods, attribute, startInputFlags, startInputReason);
                }
                return InputBindResult.NO_EDITOR;
            }
            return InputBindResult.NULL_EDITOR_INFO;
        }
        return res;
    }

    private boolean isImeVisible() {
        return (this.mImeWindowVis & 2) != 0;
    }

    private boolean canShowInputMethodPickerLocked(IInputMethodClient client) {
        int uid = Binder.getCallingUid();
        ClientState clientState = this.mCurFocusedWindowClient;
        if (clientState != null && client != null && clientState.client.asBinder() == client.asBinder()) {
            return true;
        }
        Intent intent = this.mCurIntent;
        return intent != null && InputMethodUtils.checkIfPackageBelongsToUid(this.mAppOpsManager, uid, intent.getComponent().getPackageName());
    }

    public void showInputMethodPickerFromClient(IInputMethodClient client, int auxiliarySubtypeMode) {
        synchronized (this.mMethodMap) {
            if (calledFromValidUserLocked()) {
                if (!canShowInputMethodPickerLocked(client)) {
                    Slog.w(TAG, "Ignoring showInputMethodPickerFromClient of uid " + Binder.getCallingUid() + ": " + client);
                    return;
                }
                this.mHandler.sendMessage(this.mCaller.obtainMessageII(1, auxiliarySubtypeMode, this.mCurClient != null ? this.mCurClient.selfReportedDisplayId : 0));
            }
        }
    }

    public void showInputMethodPickerFromSystem(IInputMethodClient client, int auxiliarySubtypeMode, int displayId) {
        if (this.mContext.checkCallingPermission("android.permission.WRITE_SECURE_SETTINGS") != 0) {
            throw new SecurityException("showInputMethodPickerFromSystem requires WRITE_SECURE_SETTINGS permission");
        }
        this.mHandler.sendMessage(this.mCaller.obtainMessageII(1, auxiliarySubtypeMode, displayId));
    }

    public boolean isInputMethodPickerShownForTest() {
        synchronized (this.mMethodMap) {
            if (this.mSwitchingDialog == null) {
                return false;
            }
            return this.mSwitchingDialog.isShowing();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setInputMethod(IBinder token, String id) {
        synchronized (this.mMethodMap) {
            if (calledWithValidTokenLocked(token)) {
                setInputMethodWithSubtypeIdLocked(token, id, -1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setInputMethodAndSubtype(IBinder token, String id, InputMethodSubtype subtype) {
        synchronized (this.mMethodMap) {
            if (calledWithValidTokenLocked(token)) {
                if (subtype != null) {
                    setInputMethodWithSubtypeIdLocked(token, id, InputMethodUtils.getSubtypeIdFromHashCode(this.mMethodMap.get(id), subtype.hashCode()));
                } else {
                    setInputMethod(token, id);
                }
            }
        }
    }

    public void showInputMethodAndSubtypeEnablerFromClient(IInputMethodClient client, String inputMethodId) {
        synchronized (this.mMethodMap) {
            if (calledFromValidUserLocked()) {
                executeOrSendMessage(this.mCurMethod, this.mCaller.obtainMessageO(2, inputMethodId));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean switchToPreviousInputMethod(IBinder token) throws Throwable {
        InputMethodInfo lastImi;
        List<InputMethodInfo> enabled;
        String locale;
        InputMethodSubtype keyboardSubtype;
        synchronized (this.mMethodMap) {
            try {
                try {
                    if (!calledWithValidTokenLocked(token)) {
                        return false;
                    }
                    Pair<String, String> lastIme = this.mSettings.getLastInputMethodAndSubtypeLocked();
                    if (lastIme != null) {
                        lastImi = this.mMethodMap.get(lastIme.first);
                    } else {
                        lastImi = null;
                    }
                    String targetLastImiId = null;
                    int subtypeId = -1;
                    if (lastIme != null && lastImi != null) {
                        boolean imiIdIsSame = lastImi.getId().equals(this.mCurMethodId);
                        int lastSubtypeHash = Integer.parseInt((String) lastIme.second);
                        int currentSubtypeHash = this.mCurrentSubtype == null ? -1 : this.mCurrentSubtype.hashCode();
                        if (!imiIdIsSame || lastSubtypeHash != currentSubtypeHash) {
                            targetLastImiId = (String) lastIme.first;
                            subtypeId = InputMethodUtils.getSubtypeIdFromHashCode(lastImi, lastSubtypeHash);
                        }
                    }
                    boolean imiIdIsSame2 = TextUtils.isEmpty(targetLastImiId);
                    if (imiIdIsSame2 && !InputMethodUtils.canAddToLastInputMethod(this.mCurrentSubtype) && (enabled = this.mSettings.getEnabledInputMethodListLocked()) != null) {
                        int N = enabled.size();
                        if (this.mCurrentSubtype == null) {
                            locale = this.mRes.getConfiguration().locale.toString();
                        } else {
                            locale = this.mCurrentSubtype.getLocale();
                        }
                        for (int i = 0; i < N; i++) {
                            InputMethodInfo imi = enabled.get(i);
                            if (imi.getSubtypeCount() > 0 && imi.isSystem() && (keyboardSubtype = InputMethodUtils.findLastResortApplicableSubtypeLocked(this.mRes, InputMethodUtils.getSubtypes(imi), "keyboard", locale, true)) != null) {
                                targetLastImiId = imi.getId();
                                subtypeId = InputMethodUtils.getSubtypeIdFromHashCode(imi, keyboardSubtype.hashCode());
                                if (keyboardSubtype.getLocale().equals(locale)) {
                                    break;
                                }
                            }
                        }
                    }
                    if (TextUtils.isEmpty(targetLastImiId)) {
                        return false;
                    }
                    Slog.d(TAG, "Switch to: " + lastImi.getId() + ", " + ((String) lastIme.second) + ", from: " + this.mCurMethodId + ", " + subtypeId);
                    setInputMethodWithSubtypeIdLocked(token, targetLastImiId, subtypeId);
                    return true;
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean switchToNextInputMethod(IBinder token, boolean onlyCurrentIme) {
        synchronized (this.mMethodMap) {
            if (!calledWithValidTokenLocked(token)) {
                return false;
            }
            InputMethodSubtypeSwitchingController.ImeSubtypeListItem nextSubtype = this.mSwitchingController.getNextInputMethodLocked(onlyCurrentIme, this.mMethodMap.get(this.mCurMethodId), this.mCurrentSubtype);
            if (nextSubtype == null) {
                return false;
            }
            setInputMethodWithSubtypeIdLocked(token, nextSubtype.mImi.getId(), nextSubtype.mSubtypeId);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldOfferSwitchingToNextInputMethod(IBinder token) {
        synchronized (this.mMethodMap) {
            if (!calledWithValidTokenLocked(token)) {
                return false;
            }
            InputMethodSubtypeSwitchingController.ImeSubtypeListItem nextSubtype = this.mSwitchingController.getNextInputMethodLocked(false, this.mMethodMap.get(this.mCurMethodId), this.mCurrentSubtype);
            return nextSubtype != null;
        }
    }

    public InputMethodSubtype getLastInputMethodSubtype() {
        synchronized (this.mMethodMap) {
            if (!calledFromValidUserLocked()) {
                return null;
            }
            Pair<String, String> lastIme = this.mSettings.getLastInputMethodAndSubtypeLocked();
            if (lastIme != null && !TextUtils.isEmpty((CharSequence) lastIme.first) && !TextUtils.isEmpty((CharSequence) lastIme.second)) {
                InputMethodInfo lastImi = this.mMethodMap.get(lastIme.first);
                if (lastImi == null) {
                    return null;
                }
                try {
                    int lastSubtypeHash = Integer.parseInt((String) lastIme.second);
                    int lastSubtypeId = InputMethodUtils.getSubtypeIdFromHashCode(lastImi, lastSubtypeHash);
                    if (lastSubtypeId >= 0 && lastSubtypeId < lastImi.getSubtypeCount()) {
                        return lastImi.getSubtypeAt(lastSubtypeId);
                    }
                    return null;
                } catch (NumberFormatException e) {
                    return null;
                }
            }
            return null;
        }
    }

    public void setAdditionalInputMethodSubtypes(String imiId, InputMethodSubtype[] subtypes) {
        if (TextUtils.isEmpty(imiId) || subtypes == null) {
            return;
        }
        ArrayList<InputMethodSubtype> toBeAdded = new ArrayList<>();
        for (InputMethodSubtype subtype : subtypes) {
            if (!toBeAdded.contains(subtype)) {
                toBeAdded.add(subtype);
            } else {
                Slog.w(TAG, "Duplicated subtype definition found: " + subtype.getLocale() + ", " + subtype.getMode());
            }
        }
        synchronized (this.mMethodMap) {
            if (calledFromValidUserLocked()) {
                if (this.mSystemReady) {
                    InputMethodInfo imi = this.mMethodMap.get(imiId);
                    if (imi == null) {
                        return;
                    }
                    try {
                        String[] packageInfos = this.mIPackageManager.getPackagesForUid(Binder.getCallingUid());
                        if (packageInfos != null) {
                            for (String str : packageInfos) {
                                if (str.equals(imi.getPackageName())) {
                                    if (subtypes.length > 0) {
                                        this.mAdditionalSubtypeMap.put(imi.getId(), toBeAdded);
                                    } else {
                                        this.mAdditionalSubtypeMap.remove(imi.getId());
                                    }
                                    AdditionalSubtypeUtils.save(this.mAdditionalSubtypeMap, this.mMethodMap, this.mSettings.getCurrentUserId());
                                    long ident = Binder.clearCallingIdentity();
                                    try {
                                        buildInputMethodListLocked(false);
                                        Binder.restoreCallingIdentity(ident);
                                        return;
                                    } catch (Throwable th) {
                                        Binder.restoreCallingIdentity(ident);
                                        throw th;
                                    }
                                }
                            }
                        }
                    } catch (RemoteException e) {
                        Slog.e(TAG, "Failed to get package infos");
                    }
                }
            }
        }
    }

    @Deprecated
    public int getInputMethodWindowVisibleHeight(final IInputMethodClient client) {
        final int callingUid = Binder.getCallingUid();
        return ((Integer) Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.inputmethod.-$$Lambda$InputMethodManagerService$6u5_3embFD8EXeikllRTerYqPQ0
            public final Object getOrThrow() {
                return this.f$0.lambda$getInputMethodWindowVisibleHeight$1$InputMethodManagerService(callingUid, client);
            }
        })).intValue();
    }

    public /* synthetic */ Integer lambda$getInputMethodWindowVisibleHeight$1$InputMethodManagerService(int callingUid, IInputMethodClient client) throws Exception {
        synchronized (this.mMethodMap) {
            if (!canInteractWithImeLocked(callingUid, client, "getInputMethodWindowVisibleHeight")) {
                if (!this.mLoggedDeniedGetInputMethodWindowVisibleHeightForUid.get(callingUid)) {
                    EventLog.writeEvent(1397638484, "204906124", Integer.valueOf(callingUid), "");
                    this.mLoggedDeniedGetInputMethodWindowVisibleHeightForUid.put(callingUid, true);
                }
                return 0;
            }
            int curTokenDisplayId = this.mCurTokenDisplayId;
            return Integer.valueOf(this.mWindowManagerInternal.getInputMethodWindowVisibleHeight(curTokenDisplayId));
        }
    }

    private boolean canInteractWithImeLocked(int callingUid, IInputMethodClient client, String method) {
        ClientState clientState = this.mCurClient;
        if (clientState == null || client == null || clientState.client.asBinder() != client.asBinder()) {
            ClientState cs = this.mClients.get(client.asBinder());
            if (cs == null) {
                throw new IllegalArgumentException("unknown client " + client.asBinder());
            }
            if (!this.mWindowManagerInternal.isInputMethodClientFocus(cs.uid, cs.pid, cs.selfReportedDisplayId)) {
                Slog.w(TAG, "Ignoring " + method + " of uid " + callingUid + ": " + client);
                return false;
            }
            return true;
        }
        return true;
    }

    public void reportActivityView(IInputMethodClient parentClient, int childDisplayId, float[] matrixValues) {
        DisplayInfo displayInfo = this.mDisplayManagerInternal.getDisplayInfo(childDisplayId);
        if (displayInfo == null) {
            throw new IllegalArgumentException("Cannot find display for non-existent displayId: " + childDisplayId);
        }
        int callingUid = Binder.getCallingUid();
        if (callingUid != displayInfo.ownerUid) {
            throw new SecurityException("The caller doesn't own the display.");
        }
        synchronized (this.mMethodMap) {
            ClientState cs = this.mClients.get(parentClient.asBinder());
            if (cs == null) {
                return;
            }
            if (matrixValues == null) {
                ActivityViewInfo info = this.mActivityViewDisplayIdToParentMap.get(childDisplayId);
                if (info == null) {
                    return;
                }
                if (info.mParentClient != cs) {
                    throw new SecurityException("Only the owner client can clear ActivityViewGeometry for display #" + childDisplayId);
                }
                this.mActivityViewDisplayIdToParentMap.remove(childDisplayId);
                return;
            }
            ActivityViewInfo info2 = this.mActivityViewDisplayIdToParentMap.get(childDisplayId);
            if (info2 != null && info2.mParentClient != cs) {
                throw new InvalidParameterException("Display #" + childDisplayId + " is already registered by " + info2.mParentClient);
            }
            if (info2 == null) {
                if (!this.mWindowManagerInternal.isUidAllowedOnDisplay(childDisplayId, cs.uid)) {
                    throw new SecurityException(cs + " cannot access to display #" + childDisplayId);
                }
                info2 = new ActivityViewInfo(cs, new Matrix());
                this.mActivityViewDisplayIdToParentMap.put(childDisplayId, info2);
            }
            info2.mMatrix.setValues(matrixValues);
            if (this.mCurClient != null && this.mCurClient.curSession != null) {
                Matrix matrix = null;
                int displayId = this.mCurClient.selfReportedDisplayId;
                boolean needToNotify = false;
                while (true) {
                    needToNotify |= displayId == childDisplayId;
                    ActivityViewInfo next = this.mActivityViewDisplayIdToParentMap.get(displayId);
                    if (next == null) {
                        break;
                    }
                    if (matrix != null) {
                        matrix.postConcat(next.mMatrix);
                    } else {
                        matrix = new Matrix(next.mMatrix);
                    }
                    if (next.mParentClient.selfReportedDisplayId != this.mCurTokenDisplayId) {
                        displayId = info2.mParentClient.selfReportedDisplayId;
                    } else {
                        if (!needToNotify) {
                            break;
                        }
                        float[] values = new float[9];
                        matrix.getValues(values);
                        try {
                            this.mCurClient.client.updateActivityViewToScreenMatrix(this.mCurSeq, values);
                            break;
                        } catch (RemoteException e) {
                            break;
                        }
                    }
                }
            }
        }
    }

    public void removeImeSurface() {
        this.mContext.enforceCallingPermission("android.permission.INTERNAL_SYSTEM_WINDOW", null);
        Handler handler = this.mHandler;
        handler.sendMessage(handler.obtainMessage(MSG_REMOVE_IME_SURFACE));
    }

    public void removeImeSurfaceFromWindow(IBinder windowToken) {
        this.mHandler.obtainMessage(MSG_REMOVE_IME_SURFACE_FROM_WINDOW, windowToken).sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyUserAction(IBinder token) {
        Slog.d(TAG, "Got the notification of a user action.");
        synchronized (this.mMethodMap) {
            if (this.mCurToken != token) {
                Slog.d(TAG, "Ignoring the user action notification from IMEs that are no longer active.");
                return;
            }
            InputMethodInfo imi = this.mMethodMap.get(this.mCurMethodId);
            if (imi != null) {
                this.mSwitchingController.onUserActionLocked(imi, this.mCurrentSubtype);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reportPreRendered(IBinder token, EditorInfo info) {
        synchronized (this.mMethodMap) {
            if (calledWithValidTokenLocked(token)) {
                if (this.mCurClient != null && this.mCurClient.client != null) {
                    executeOrSendMessage(this.mCurClient.client, this.mCaller.obtainMessageOO(3060, info, this.mCurClient));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyImeVisibility(IBinder token, IBinder windowToken, boolean setVisible) {
        synchronized (this.mMethodMap) {
            if (calledWithValidTokenLocked(token)) {
                if (!setVisible) {
                    if (this.mCurClient != null) {
                        this.mWindowManagerInternal.hideIme(this.mHideRequestWindowMap.get(windowToken), this.mCurClient.selfReportedDisplayId);
                    }
                } else {
                    this.mWindowManagerInternal.showImePostLayout(this.mShowRequestWindowMap.get(windowToken));
                }
            }
        }
    }

    private void setInputMethodWithSubtypeIdLocked(IBinder token, String id, int subtypeId) {
        if (token == null) {
            if (this.mContext.checkCallingOrSelfPermission("android.permission.WRITE_SECURE_SETTINGS") != 0) {
                throw new SecurityException("Using null token requires permission android.permission.WRITE_SECURE_SETTINGS");
            }
        } else if (this.mCurToken != token) {
            Slog.w(TAG, "Ignoring setInputMethod of uid " + Binder.getCallingUid() + " token: " + token);
            return;
        }
        long ident = Binder.clearCallingIdentity();
        try {
            setInputMethodLocked(id, subtypeId);
        } finally {
            Binder.restoreCallingIdentity(ident);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideMySoftInput(IBinder token, int flags) {
        synchronized (this.mMethodMap) {
            if (calledWithValidTokenLocked(token)) {
                long ident = Binder.clearCallingIdentity();
                try {
                    hideCurrentInputLocked(this.mLastImeTargetWindow, flags, null, 4);
                    Binder.restoreCallingIdentity(ident);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(ident);
                    throw th;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showMySoftInput(IBinder token, int flags) {
        synchronized (this.mMethodMap) {
            if (calledWithValidTokenLocked(token)) {
                long ident = Binder.clearCallingIdentity();
                try {
                    showCurrentInputLocked(this.mLastImeTargetWindow, flags, null, 2);
                    Binder.restoreCallingIdentity(ident);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(ident);
                    throw th;
                }
            }
        }
    }

    void setEnabledSessionInMainThread(SessionState session) {
        SessionState sessionState = this.mEnabledSession;
        if (sessionState != session) {
            if (sessionState != null && sessionState.session != null) {
                try {
                    Slog.v(TAG, "Disabling: " + this.mEnabledSession);
                    this.mEnabledSession.method.setSessionEnabled(this.mEnabledSession.session, false);
                } catch (RemoteException e) {
                }
            }
            this.mEnabledSession = session;
            if (session != null && session.session != null) {
                try {
                    Slog.v(TAG, "Enabling: " + this.mEnabledSession);
                    this.mEnabledSession.method.setSessionEnabled(this.mEnabledSession.session, true);
                } catch (RemoteException e2) {
                }
            }
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message msg) {
        boolean showAuxSubtypes;
        int i = msg.what;
        if (i == 1) {
            int displayId = msg.arg2;
            int i2 = msg.arg1;
            if (i2 == 0) {
                showAuxSubtypes = this.mInputShown;
            } else if (i2 == 1) {
                showAuxSubtypes = true;
            } else {
                if (i2 != 2) {
                    Slog.e(TAG, "Unknown subtype picker mode = " + msg.arg1);
                    return false;
                }
                showAuxSubtypes = false;
            }
            showInputMethodMenu(showAuxSubtypes, displayId);
            return true;
        }
        if (i == 2) {
            showInputMethodAndSubtypeEnabler((String) msg.obj);
            return true;
        }
        if (i == 3) {
            showConfigureInputMethods();
            return true;
        }
        if (i == MSG_REMOVE_IME_SURFACE) {
            synchronized (this.mMethodMap) {
                try {
                    if (this.mEnabledSession != null && this.mEnabledSession.session != null && !this.mShowRequested) {
                        this.mEnabledSession.session.removeImeSurface();
                    }
                } catch (RemoteException e) {
                }
            }
            return true;
        }
        if (i == MSG_REMOVE_IME_SURFACE_FROM_WINDOW) {
            IBinder windowToken = (IBinder) msg.obj;
            synchronized (this.mMethodMap) {
                try {
                    if (windowToken == this.mCurFocusedWindow && this.mEnabledSession != null && this.mEnabledSession.session != null) {
                        this.mEnabledSession.session.removeImeSurface();
                    }
                } catch (RemoteException e2) {
                }
            }
            return true;
        }
        switch (i) {
            case 1000:
                try {
                    ((IInputMethod) msg.obj).unbindInput();
                    break;
                } catch (RemoteException e3) {
                }
                return true;
            case MSG_BIND_INPUT /* 1010 */:
                SomeArgs args = (SomeArgs) msg.obj;
                try {
                    ((IInputMethod) args.arg1).bindInput((InputBinding) args.arg2);
                    break;
                } catch (RemoteException e4) {
                }
                args.recycle();
                return true;
            case MSG_SHOW_SOFT_INPUT /* 1020 */:
                SomeArgs args2 = (SomeArgs) msg.obj;
                try {
                    int reason = msg.arg2;
                    Slog.d(TAG, "Calling " + args2.arg1 + ".showSoftInput(" + args2.arg3 + ", " + msg.arg1 + ", " + args2.arg2 + ") for reason: " + InputMethodDebug.softInputDisplayReasonToString(reason));
                    ((IInputMethod) args2.arg1).showSoftInput((IBinder) args2.arg3, msg.arg1, (ResultReceiver) args2.arg2);
                    this.mSoftInputShowHideHistory.addEntry(new SoftInputShowHideHistory.Entry(this.mCurClient, this.mCurAttribute, this.mWindowManagerInternal.getWindowName(this.mCurFocusedWindow), this.mCurFocusedWindowSoftInputMode, reason, this.mInFullscreenMode, this.mWindowManagerInternal.getWindowName(this.mShowRequestWindowMap.get(args2.arg3)), this.mWindowManagerInternal.getImeControlTargetNameForLogging(this.mCurTokenDisplayId), this.mWindowManagerInternal.getImeTargetNameForLogging(this.mCurTokenDisplayId)));
                    break;
                } catch (RemoteException e5) {
                }
                args2.recycle();
                return true;
            case MSG_HIDE_SOFT_INPUT /* 1030 */:
                SomeArgs args3 = (SomeArgs) msg.obj;
                try {
                    int reason2 = msg.arg1;
                    Slog.d(TAG, "Calling " + args3.arg1 + ".hideSoftInput(0, " + args3.arg3 + ", " + args3.arg2 + ") for reason: " + InputMethodDebug.softInputDisplayReasonToString(reason2));
                    ((IInputMethod) args3.arg1).hideSoftInput((IBinder) args3.arg3, 0, (ResultReceiver) args3.arg2);
                    this.mSoftInputShowHideHistory.addEntry(new SoftInputShowHideHistory.Entry(this.mCurClient, this.mCurAttribute, this.mWindowManagerInternal.getWindowName(this.mCurFocusedWindow), this.mCurFocusedWindowSoftInputMode, reason2, this.mInFullscreenMode, this.mWindowManagerInternal.getWindowName(this.mHideRequestWindowMap.get(args3.arg3)), this.mWindowManagerInternal.getImeControlTargetNameForLogging(this.mCurTokenDisplayId), this.mWindowManagerInternal.getImeTargetNameForLogging(this.mCurTokenDisplayId)));
                    break;
                } catch (RemoteException e6) {
                }
                args3.recycle();
                return true;
            case MSG_HIDE_CURRENT_INPUT_METHOD /* 1035 */:
                synchronized (this.mMethodMap) {
                    hideCurrentInputLocked(this.mCurFocusedWindow, 0, null, ((Integer) msg.obj).intValue());
                    break;
                }
                return true;
            case MSG_INITIALIZE_IME /* 1040 */:
                SomeArgs args4 = (SomeArgs) msg.obj;
                try {
                    Slog.v(TAG, "Sending attach of token: " + args4.arg2 + " for display: " + msg.arg1);
                    IBinder token = (IBinder) args4.arg2;
                    ((IInputMethod) args4.arg1).initializeInternal(token, msg.arg1, new InputMethodPrivilegedOperationsImpl(this, token));
                    break;
                } catch (RemoteException e7) {
                }
                args4.recycle();
                return true;
            case MSG_CREATE_SESSION /* 1050 */:
                SomeArgs args5 = (SomeArgs) msg.obj;
                IInputMethod method = (IInputMethod) args5.arg1;
                InputChannel channel = (InputChannel) args5.arg2;
                try {
                    method.createSession(channel, (IInputSessionCallback) args5.arg3);
                    if (channel != null && Binder.isProxy(method)) {
                        channel.dispose();
                    }
                } catch (RemoteException e8) {
                    if (channel != null && Binder.isProxy(method)) {
                    }
                } catch (Throwable th) {
                    if (channel != null && Binder.isProxy(method)) {
                        channel.dispose();
                    }
                    throw th;
                }
                args5.recycle();
                return true;
            case MSG_START_INPUT /* 2000 */:
                int missingMethods = msg.arg1;
                boolean restarting = msg.arg2 != 0;
                SomeArgs args6 = (SomeArgs) msg.obj;
                IBinder startInputToken = (IBinder) args6.arg1;
                SessionState session = (SessionState) args6.arg2;
                IInputContext inputContext = (IInputContext) args6.arg3;
                EditorInfo editorInfo = (EditorInfo) args6.arg4;
                try {
                    setEnabledSessionInMainThread(session);
                    session.method.startInput(startInputToken, inputContext, missingMethods, editorInfo, restarting, session.client.shouldPreRenderIme);
                    break;
                } catch (RemoteException e9) {
                }
                args6.recycle();
                return true;
            case MSG_UNBIND_CLIENT /* 3000 */:
                try {
                    ((IInputMethodClient) msg.obj).onUnbindMethod(msg.arg1, msg.arg2);
                    break;
                } catch (RemoteException e10) {
                }
                return true;
            case 3010:
                SomeArgs args7 = (SomeArgs) msg.obj;
                IInputMethodClient client = (IInputMethodClient) args7.arg1;
                InputBindResult res = (InputBindResult) args7.arg2;
                try {
                    try {
                        client.onBindMethod(res);
                        if (res.channel != null && Binder.isProxy(client)) {
                            res.channel.dispose();
                        }
                    } catch (Throwable th2) {
                        if (res.channel != null && Binder.isProxy(client)) {
                            res.channel.dispose();
                        }
                        throw th2;
                    }
                } catch (RemoteException e11) {
                    Slog.w(TAG, "Client died receiving input method " + args7.arg2);
                    if (res.channel != null && Binder.isProxy(client)) {
                    }
                }
                args7.recycle();
                return true;
            case MSG_SET_ACTIVE /* 3020 */:
                try {
                    ((ClientState) msg.obj).client.setActive(msg.arg1 != 0, msg.arg2 != 0);
                    break;
                } catch (RemoteException e12) {
                    Slog.w(TAG, "Got RemoteException sending setActive(false) notification to pid " + ((ClientState) msg.obj).pid + " uid " + ((ClientState) msg.obj).uid);
                }
                return true;
            case MSG_SET_INTERACTIVE /* 3030 */:
                handleSetInteractive(msg.arg1 != 0);
                return true;
            case MSG_REPORT_FULLSCREEN_MODE /* 3045 */:
                boolean fullscreen = msg.arg1 != 0;
                ClientState clientState = (ClientState) msg.obj;
                try {
                    clientState.client.reportFullscreenMode(fullscreen);
                    break;
                } catch (RemoteException e13) {
                    Slog.w(TAG, "Got RemoteException sending reportFullscreen(" + fullscreen + ") notification to pid=" + clientState.pid + " uid=" + clientState.uid);
                }
                return true;
            case 3060:
                SomeArgs args8 = (SomeArgs) msg.obj;
                EditorInfo info = (EditorInfo) args8.arg1;
                ClientState clientState2 = (ClientState) args8.arg2;
                try {
                    clientState2.client.reportPreRendered(info);
                    break;
                } catch (RemoteException e14) {
                    Slog.w(TAG, "Got RemoteException sending reportPreRendered(" + info + ") notification to pid=" + clientState2.pid + " uid=" + clientState2.uid);
                }
                args8.recycle();
                return true;
            case 3070:
                boolean setVisible = msg.arg1 != 0;
                ClientState clientState3 = (ClientState) msg.obj;
                try {
                    clientState3.client.applyImeVisibility(setVisible);
                    break;
                } catch (RemoteException e15) {
                    Slog.w(TAG, "Got RemoteException sending applyImeVisibility(" + setVisible + ") notification to pid=" + clientState3.pid + " uid=" + clientState3.uid);
                }
                return true;
            case MSG_HARD_KEYBOARD_SWITCH_CHANGED /* 4000 */:
                this.mHardKeyboardListener.handleHardKeyboardStatusChange(msg.arg1 == 1);
                return true;
            case 5000:
                int userId = msg.arg1;
                onUnlockUser(userId);
                return true;
            case MSG_DISPATCH_ON_INPUT_METHOD_LIST_UPDATED /* 5010 */:
                final int userId2 = msg.arg1;
                final List<InputMethodInfo> imes = (List) msg.obj;
                this.mInputMethodListListeners.forEach(new Consumer() { // from class: com.android.server.inputmethod.-$$Lambda$InputMethodManagerService$s-8UdDm9Prb84pHmqlofpTzdXxc
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((InputMethodManagerInternal.InputMethodListListener) obj).onInputMethodListUpdated(imes, userId2);
                    }
                });
                return true;
            case MSG_INLINE_SUGGESTIONS_REQUEST /* 6000 */:
                SomeArgs args9 = (SomeArgs) msg.obj;
                InlineSuggestionsRequestInfo requestInfo = (InlineSuggestionsRequestInfo) args9.arg2;
                IInlineSuggestionsRequestCallback callback = (IInlineSuggestionsRequestCallback) args9.arg3;
                try {
                    ((IInputMethod) args9.arg1).onCreateInlineSuggestionsRequest(requestInfo, callback);
                    break;
                } catch (RemoteException e16) {
                    Slog.w(TAG, "RemoteException calling onCreateInlineSuggestionsRequest(): " + e16);
                }
                args9.recycle();
                return true;
            case MSG_NOTIFY_IME_UID_TO_AUDIO_SERVICE /* 7000 */:
                if (this.mAudioManagerInternal == null) {
                    this.mAudioManagerInternal = (AudioManagerInternal) LocalServices.getService(AudioManagerInternal.class);
                }
                AudioManagerInternal audioManagerInternal = this.mAudioManagerInternal;
                if (audioManagerInternal != null) {
                    audioManagerInternal.setInputMethodServiceUid(msg.arg1);
                }
                return true;
            default:
                return false;
        }
    }

    private void handleSetInteractive(boolean interactive) {
        synchronized (this.mMethodMap) {
            this.mIsInteractive = interactive;
            updateSystemUiLocked(interactive ? this.mImeWindowVis : 0, this.mBackDisposition);
            if (this.mCurClient != null && this.mCurClient.client != null) {
                executeOrSendMessage(this.mCurClient.client, this.mCaller.obtainMessageIIO(MSG_SET_ACTIVE, this.mIsInteractive ? 1 : 0, this.mInFullscreenMode ? 1 : 0, this.mCurClient));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean chooseNewDefaultIMELocked() {
        InputMethodInfo imi = InputMethodUtils.getMostApplicableDefaultIME(this.mSettings.getEnabledInputMethodListLocked());
        if (imi != null) {
            Slog.d(TAG, "New default IME was selected: " + imi.getId());
            resetSelectedInputMethodAndSubtypeLocked(imi.getId());
            return true;
        }
        return false;
    }

    static void queryInputMethodServicesInternal(Context context, int userId, ArrayMap<String, List<InputMethodSubtype>> additionalSubtypeMap, ArrayMap<String, InputMethodInfo> methodMap, ArrayList<InputMethodInfo> methodList) {
        methodList.clear();
        methodMap.clear();
        List<ResolveInfo> services = context.getPackageManager().queryIntentServicesAsUser(new Intent("android.view.InputMethod"), 32896, userId);
        methodList.ensureCapacity(services.size());
        methodMap.ensureCapacity(services.size());
        for (int i = 0; i < services.size(); i++) {
            ResolveInfo ri = services.get(i);
            ServiceInfo si = ri.serviceInfo;
            String imeId = InputMethodInfo.computeId(ri);
            if ("android.permission.BIND_INPUT_METHOD".equals(si.permission)) {
                Slog.d(TAG, "Checking " + imeId);
                try {
                    InputMethodInfo imi = new InputMethodInfo(context, ri, additionalSubtypeMap.get(imeId));
                    if (!imi.isVrOnly()) {
                        methodList.add(imi);
                        methodMap.put(imi.getId(), imi);
                        Slog.d(TAG, "Found an input method " + imi);
                    }
                } catch (Exception e) {
                    Slog.wtf(TAG, "Unable to load input method " + imeId, e);
                }
            } else {
                Slog.w(TAG, "Skipping input method " + imeId + ": it does not require the permission android.permission.BIND_INPUT_METHOD");
            }
        }
    }

    void buildInputMethodListLocked(boolean resetDefaultEnabledIme) {
        Slog.d(TAG, "--- re-buildInputMethodList reset = " + resetDefaultEnabledIme + " \n ------ caller=" + Debug.getCallers(10));
        if (!this.mSystemReady) {
            Slog.e(TAG, "buildInputMethodListLocked is not allowed until system is ready");
            return;
        }
        this.mMethodMapUpdateCount++;
        this.mMyPackageMonitor.clearKnownImePackageNamesLocked();
        queryInputMethodServicesInternal(this.mContext, this.mSettings.getCurrentUserId(), this.mAdditionalSubtypeMap, this.mMethodMap, this.mMethodList);
        List<ResolveInfo> allInputMethodServices = this.mContext.getPackageManager().queryIntentServicesAsUser(new Intent("android.view.InputMethod"), 512, this.mSettings.getCurrentUserId());
        int N = allInputMethodServices.size();
        for (int i = 0; i < N; i++) {
            ServiceInfo si = allInputMethodServices.get(i).serviceInfo;
            if ("android.permission.BIND_INPUT_METHOD".equals(si.permission)) {
                this.mMyPackageMonitor.addKnownImePackageNameLocked(si.packageName);
            }
        }
        boolean reenableMinimumNonAuxSystemImes = false;
        if (!resetDefaultEnabledIme) {
            boolean enabledImeFound = false;
            boolean enabledNonAuxImeFound = false;
            List<InputMethodInfo> enabledImes = this.mSettings.getEnabledInputMethodListLocked();
            int N2 = enabledImes.size();
            for (int i2 = 0; i2 < N2; i2++) {
                InputMethodInfo imi = enabledImes.get(i2);
                if (this.mMethodList.contains(imi)) {
                    enabledImeFound = true;
                    if (!imi.isAuxiliaryIme()) {
                        enabledNonAuxImeFound = true;
                        break;
                    }
                }
            }
            if (!enabledImeFound) {
                Slog.i(TAG, "All the enabled IMEs are gone. Reset default enabled IMEs.");
                resetDefaultEnabledIme = true;
                resetSelectedInputMethodAndSubtypeLocked("");
            } else if (!enabledNonAuxImeFound) {
                Slog.i(TAG, "All the enabled non-Aux IMEs are gone. Do partial reset.");
                reenableMinimumNonAuxSystemImes = true;
            }
        }
        if (resetDefaultEnabledIme || reenableMinimumNonAuxSystemImes) {
            ArrayList<InputMethodInfo> defaultEnabledIme = InputMethodUtils.getDefaultEnabledImes(this.mContext, this.mMethodList, reenableMinimumNonAuxSystemImes);
            int N3 = defaultEnabledIme.size();
            for (int i3 = 0; i3 < N3; i3++) {
                InputMethodInfo imi2 = defaultEnabledIme.get(i3);
                Slog.d(TAG, "--- enable ime = " + imi2);
                setInputMethodEnabledLocked(imi2.getId(), true);
            }
        }
        String defaultImiId = this.mSettings.getSelectedInputMethod();
        if (!TextUtils.isEmpty(defaultImiId)) {
            if (!this.mMethodMap.containsKey(defaultImiId)) {
                Slog.w(TAG, "Default IME is uninstalled. Choose new default IME.");
                if (chooseNewDefaultIMELocked()) {
                    updateInputMethodsFromSettingsLocked(true);
                }
            } else {
                setInputMethodEnabledLocked(defaultImiId, true);
            }
        }
        this.mSwitchingController.resetCircularListLocked(this.mContext);
        List<InputMethodInfo> inputMethodList = new ArrayList<>(this.mMethodList);
        this.mHandler.obtainMessage(MSG_DISPATCH_ON_INPUT_METHOD_LIST_UPDATED, this.mSettings.getCurrentUserId(), 0, inputMethodList).sendToTarget();
    }

    private void showInputMethodAndSubtypeEnabler(String inputMethodId) {
        int userId;
        Intent intent = new Intent("android.settings.INPUT_METHOD_SUBTYPE_SETTINGS");
        intent.setFlags(337641472);
        if (!TextUtils.isEmpty(inputMethodId)) {
            intent.putExtra("input_method_id", inputMethodId);
        }
        synchronized (this.mMethodMap) {
            userId = this.mSettings.getCurrentUserId();
        }
        this.mContext.startActivityAsUser(intent, null, UserHandle.of(userId));
    }

    private void showConfigureInputMethods() {
        Intent intent = new Intent("android.settings.INPUT_METHOD_SETTINGS");
        intent.setFlags(337641472);
        this.mContext.startActivityAsUser(intent, null, UserHandle.CURRENT);
    }

    private boolean isScreenLocked() {
        KeyguardManager keyguardManager = this.mKeyguardManager;
        return keyguardManager != null && keyguardManager.isKeyguardLocked() && this.mKeyguardManager.isKeyguardSecure();
    }

    private void showInputMethodMenu(boolean showAuxSubtypes, int displayId) {
        int subtypeId;
        InputMethodSubtype currentSubtype;
        Slog.v(TAG, "Show switching menu. showAuxSubtypes=" + showAuxSubtypes);
        boolean isScreenLocked = isScreenLocked();
        String lastInputMethodId = this.mSettings.getSelectedInputMethod();
        int lastInputMethodSubtypeId = this.mSettings.getSelectedInputMethodSubtypeId(lastInputMethodId);
        Slog.v(TAG, "Current IME: " + lastInputMethodId);
        synchronized (this.mMethodMap) {
            List<InputMethodSubtypeSwitchingController.ImeSubtypeListItem> imList = this.mSwitchingController.getSortedInputMethodAndSubtypeListLocked(showAuxSubtypes, isScreenLocked);
            if (imList.isEmpty()) {
                return;
            }
            hideInputMethodMenuLocked();
            if (lastInputMethodSubtypeId == -1 && (currentSubtype = getCurrentInputMethodSubtypeLocked()) != null) {
                InputMethodInfo currentImi = this.mMethodMap.get(this.mCurMethodId);
                lastInputMethodSubtypeId = InputMethodUtils.getSubtypeIdFromHashCode(currentImi, currentSubtype.hashCode());
            }
            int N = imList.size();
            this.mIms = new InputMethodInfo[N];
            this.mSubtypeIds = new int[N];
            int checkedItem = 0;
            for (int i = 0; i < N; i++) {
                InputMethodSubtypeSwitchingController.ImeSubtypeListItem item = imList.get(i);
                this.mIms[i] = item.mImi;
                this.mSubtypeIds[i] = item.mSubtypeId;
                if (this.mIms[i].getId().equals(lastInputMethodId) && ((subtypeId = this.mSubtypeIds[i]) == -1 || ((lastInputMethodSubtypeId == -1 && subtypeId == 0) || subtypeId == lastInputMethodSubtypeId))) {
                    checkedItem = i;
                }
            }
            ActivityThread currentThread = ActivityThread.currentActivityThread();
            Context settingsContext = new ContextThemeWrapper((Context) (displayId == 0 ? currentThread.getSystemUiContext() : currentThread.createSystemUiContext(displayId)), R.style.Theme.DeviceDefault.Settings);
            AlertDialog.Builder builder = new AlertDialog.Builder(settingsContext);
            this.mDialogBuilder = builder;
            builder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.android.server.inputmethod.InputMethodManagerService.3
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialog) {
                    InputMethodManagerService.this.hideInputMethodMenu();
                }
            });
            Context dialogContext = this.mDialogBuilder.getContext();
            TypedArray a = dialogContext.obtainStyledAttributes(null, com.android.internal.R.styleable.DialogPreference, R.attr.alertDialogStyle, 0);
            Drawable dialogIcon = a.getDrawable(2);
            a.recycle();
            this.mDialogBuilder.setIcon(dialogIcon);
            LayoutInflater inflater = (LayoutInflater) dialogContext.getSystemService(LayoutInflater.class);
            View tv = inflater.inflate(R.layout.icon_menu_item_layout, (ViewGroup) null);
            this.mDialogBuilder.setCustomTitle(tv);
            this.mSwitchingDialogTitleView = tv;
            tv.findViewById(R.id.feedbackGeneric).setVisibility(this.mWindowManagerInternal.isHardKeyboardAvailable() ? 0 : 8);
            Switch hardKeySwitch = (Switch) this.mSwitchingDialogTitleView.findViewById(R.id.feedbackHaptic);
            hardKeySwitch.setChecked(this.mShowImeWithHardKeyboard);
            hardKeySwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.android.server.inputmethod.InputMethodManagerService.4
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                    InputMethodManagerService.this.mSettings.setShowImeWithHardKeyboard(isChecked);
                    InputMethodManagerService.this.hideInputMethodMenu();
                }
            });
            final ImeSubtypeListAdapter adapter = new ImeSubtypeListAdapter(dialogContext, R.layout.icon_menu_layout, imList, checkedItem);
            DialogInterface.OnClickListener choiceListener = new DialogInterface.OnClickListener() { // from class: com.android.server.inputmethod.InputMethodManagerService.5
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialog, int which) {
                    synchronized (InputMethodManagerService.this.mMethodMap) {
                        if (InputMethodManagerService.this.mIms != null && InputMethodManagerService.this.mIms.length > which && InputMethodManagerService.this.mSubtypeIds != null && InputMethodManagerService.this.mSubtypeIds.length > which) {
                            InputMethodInfo im = InputMethodManagerService.this.mIms[which];
                            int subtypeId2 = InputMethodManagerService.this.mSubtypeIds[which];
                            adapter.mCheckedItem = which;
                            adapter.notifyDataSetChanged();
                            InputMethodManagerService.this.hideInputMethodMenu();
                            if (im != null) {
                                if (subtypeId2 < 0 || subtypeId2 >= im.getSubtypeCount()) {
                                    subtypeId2 = -1;
                                }
                                InputMethodManagerService.this.setInputMethodLocked(im.getId(), subtypeId2);
                            }
                        }
                    }
                }
            };
            this.mDialogBuilder.setSingleChoiceItems(adapter, checkedItem, choiceListener);
            AlertDialog alertDialogCreate = this.mDialogBuilder.create();
            this.mSwitchingDialog = alertDialogCreate;
            alertDialogCreate.setCanceledOnTouchOutside(true);
            Window w = this.mSwitchingDialog.getWindow();
            WindowManager.LayoutParams attrs = w.getAttributes();
            w.setType(2012);
            attrs.token = this.mSwitchingDialogToken;
            attrs.privateFlags |= 16;
            attrs.setTitle("Select input method");
            w.setAttributes(attrs);
            updateSystemUiLocked(this.mImeWindowVis, this.mBackDisposition);
            this.mSwitchingDialog.show();
        }
    }

    private static class ImeSubtypeListAdapter extends ArrayAdapter<InputMethodSubtypeSwitchingController.ImeSubtypeListItem> {
        public int mCheckedItem;
        private final LayoutInflater mInflater;
        private final List<InputMethodSubtypeSwitchingController.ImeSubtypeListItem> mItemsList;
        private final int mTextViewResourceId;

        public ImeSubtypeListAdapter(Context context, int textViewResourceId, List<InputMethodSubtypeSwitchingController.ImeSubtypeListItem> itemsList, int checkedItem) {
            super(context, textViewResourceId, itemsList);
            this.mTextViewResourceId = textViewResourceId;
            this.mItemsList = itemsList;
            this.mCheckedItem = checkedItem;
            this.mInflater = (LayoutInflater) context.getSystemService(LayoutInflater.class);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int position, View convertView, ViewGroup parent) {
            View view = convertView != null ? convertView : this.mInflater.inflate(this.mTextViewResourceId, (ViewGroup) null);
            if (position < 0 || position >= this.mItemsList.size()) {
                return view;
            }
            InputMethodSubtypeSwitchingController.ImeSubtypeListItem item = this.mItemsList.get(position);
            CharSequence imeName = item.mImeName;
            CharSequence subtypeName = item.mSubtypeName;
            TextView firstTextView = (TextView) view.findViewById(R.id.text1);
            TextView secondTextView = (TextView) view.findViewById(R.id.text2);
            if (TextUtils.isEmpty(subtypeName)) {
                firstTextView.setText(imeName);
                secondTextView.setVisibility(8);
            } else {
                firstTextView.setText(subtypeName);
                secondTextView.setText(imeName);
                secondTextView.setVisibility(0);
            }
            RadioButton radioButton = (RadioButton) view.findViewById(R.id.no);
            radioButton.setChecked(position == this.mCheckedItem);
            return view;
        }
    }

    void hideInputMethodMenu() {
        synchronized (this.mMethodMap) {
            hideInputMethodMenuLocked();
        }
    }

    void hideInputMethodMenuLocked() {
        Slog.v(TAG, "Hide switching menu");
        AlertDialog alertDialog = this.mSwitchingDialog;
        if (alertDialog != null) {
            alertDialog.dismiss();
            this.mSwitchingDialog = null;
            this.mSwitchingDialogTitleView = null;
        }
        updateSystemUiLocked(this.mImeWindowVis, this.mBackDisposition);
        this.mDialogBuilder = null;
        this.mIms = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean setInputMethodEnabledLocked(String id, boolean enabled) {
        List<Pair<String, ArrayList<String>>> enabledInputMethodsList = this.mSettings.getEnabledInputMethodsAndSubtypeListLocked();
        if (enabled) {
            for (Pair<String, ArrayList<String>> pair : enabledInputMethodsList) {
                if (((String) pair.first).equals(id)) {
                    return true;
                }
            }
            this.mSettings.appendAndPutEnabledInputMethodLocked(id, false);
            return false;
        }
        StringBuilder builder = new StringBuilder();
        if (!this.mSettings.buildAndPutEnabledInputMethodsStrRemovingIdLocked(builder, enabledInputMethodsList, id)) {
            return false;
        }
        String selId = this.mSettings.getSelectedInputMethod();
        if (id.equals(selId) && !chooseNewDefaultIMELocked()) {
            Slog.i(TAG, "Can't find new IME, unsetting the current input method.");
            resetSelectedInputMethodAndSubtypeLocked("");
        }
        return true;
    }

    private void setSelectedInputMethodAndSubtypeLocked(InputMethodInfo imi, int subtypeId, boolean setSubtypeOnly) {
        this.mSettings.saveCurrentInputMethodAndSubtypeToHistory(this.mCurMethodId, this.mCurrentSubtype);
        if (imi == null || subtypeId < 0) {
            this.mSettings.putSelectedSubtype(-1);
            this.mCurrentSubtype = null;
        } else if (subtypeId >= imi.getSubtypeCount()) {
            this.mSettings.putSelectedSubtype(-1);
            this.mCurrentSubtype = getCurrentInputMethodSubtypeLocked();
        } else {
            InputMethodSubtype subtype = imi.getSubtypeAt(subtypeId);
            this.mSettings.putSelectedSubtype(subtype.hashCode());
            this.mCurrentSubtype = subtype;
        }
        if (!setSubtypeOnly) {
            this.mSettings.putSelectedInputMethod(imi != null ? imi.getId() : "");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetSelectedInputMethodAndSubtypeLocked(String newDefaultIme) {
        String subtypeHashCode;
        InputMethodInfo imi = this.mMethodMap.get(newDefaultIme);
        int lastSubtypeId = -1;
        if (imi != null && !TextUtils.isEmpty(newDefaultIme) && (subtypeHashCode = this.mSettings.getLastSubtypeForInputMethodLocked(newDefaultIme)) != null) {
            try {
                lastSubtypeId = InputMethodUtils.getSubtypeIdFromHashCode(imi, Integer.parseInt(subtypeHashCode));
            } catch (NumberFormatException e) {
                Slog.w(TAG, "HashCode for subtype looks broken: " + subtypeHashCode, e);
            }
        }
        setSelectedInputMethodAndSubtypeLocked(imi, lastSubtypeId, false);
    }

    public InputMethodSubtype getCurrentInputMethodSubtype() {
        synchronized (this.mMethodMap) {
            if (!calledFromValidUserLocked()) {
                return null;
            }
            return getCurrentInputMethodSubtypeLocked();
        }
    }

    private InputMethodSubtype getCurrentInputMethodSubtypeLocked() {
        InputMethodSubtype inputMethodSubtype;
        if (this.mCurMethodId == null) {
            return null;
        }
        boolean subtypeIsSelected = this.mSettings.isSubtypeSelected();
        InputMethodInfo imi = this.mMethodMap.get(this.mCurMethodId);
        if (imi == null || imi.getSubtypeCount() == 0) {
            return null;
        }
        if (!subtypeIsSelected || (inputMethodSubtype = this.mCurrentSubtype) == null || !InputMethodUtils.isValidSubtypeId(imi, inputMethodSubtype.hashCode())) {
            int subtypeId = this.mSettings.getSelectedInputMethodSubtypeId(this.mCurMethodId);
            if (subtypeId == -1) {
                List<InputMethodSubtype> explicitlyOrImplicitlyEnabledSubtypes = this.mSettings.getEnabledInputMethodSubtypeListLocked(this.mContext, imi, true);
                if (explicitlyOrImplicitlyEnabledSubtypes.size() != 1) {
                    if (explicitlyOrImplicitlyEnabledSubtypes.size() > 1) {
                        InputMethodSubtype inputMethodSubtypeFindLastResortApplicableSubtypeLocked = InputMethodUtils.findLastResortApplicableSubtypeLocked(this.mRes, explicitlyOrImplicitlyEnabledSubtypes, "keyboard", null, true);
                        this.mCurrentSubtype = inputMethodSubtypeFindLastResortApplicableSubtypeLocked;
                        if (inputMethodSubtypeFindLastResortApplicableSubtypeLocked == null) {
                            this.mCurrentSubtype = InputMethodUtils.findLastResortApplicableSubtypeLocked(this.mRes, explicitlyOrImplicitlyEnabledSubtypes, null, null, true);
                        }
                    }
                } else {
                    this.mCurrentSubtype = explicitlyOrImplicitlyEnabledSubtypes.get(0);
                }
            } else {
                this.mCurrentSubtype = InputMethodUtils.getSubtypes(imi).get(subtypeId);
            }
        }
        return this.mCurrentSubtype;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<InputMethodInfo> getInputMethodListAsUser(int userId) {
        List<InputMethodInfo> inputMethodListLocked;
        synchronized (this.mMethodMap) {
            inputMethodListLocked = getInputMethodListLocked(userId);
        }
        return inputMethodListLocked;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<InputMethodInfo> getEnabledInputMethodListAsUser(int userId) {
        List<InputMethodInfo> enabledInputMethodListLocked;
        synchronized (this.mMethodMap) {
            enabledInputMethodListLocked = getEnabledInputMethodListLocked(userId);
        }
        return enabledInputMethodListLocked;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCreateInlineSuggestionsRequest(int userId, InlineSuggestionsRequestInfo requestInfo, IInlineSuggestionsRequestCallback callback) {
        synchronized (this.mMethodMap) {
            onCreateInlineSuggestionsRequestLocked(userId, requestInfo, callback);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean switchToInputMethod(String imeId, int userId) {
        synchronized (this.mMethodMap) {
            if (userId == this.mSettings.getCurrentUserId()) {
                if (this.mMethodMap.containsKey(imeId) && this.mSettings.getEnabledInputMethodListLocked().contains(this.mMethodMap.get(imeId))) {
                    setInputMethodLocked(imeId, -1);
                    return true;
                }
                return false;
            }
            ArrayMap<String, InputMethodInfo> methodMap = new ArrayMap<>();
            ArrayList<InputMethodInfo> methodList = new ArrayList<>();
            ArrayMap<String, List<InputMethodSubtype>> additionalSubtypeMap = new ArrayMap<>();
            AdditionalSubtypeUtils.load(additionalSubtypeMap, userId);
            queryInputMethodServicesInternal(this.mContext, userId, additionalSubtypeMap, methodMap, methodList);
            InputMethodUtils.InputMethodSettings settings = new InputMethodUtils.InputMethodSettings(this.mContext.getResources(), this.mContext.getContentResolver(), methodMap, userId, false);
            if (methodMap.containsKey(imeId) && settings.getEnabledInputMethodListLocked().contains(methodMap.get(imeId))) {
                settings.putSelectedInputMethod(imeId);
                settings.putSelectedSubtype(-1);
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean transferTouchFocusToImeWindow(IBinder sourceInputToken, int displayId) {
        synchronized (this.mMethodMap) {
            if (displayId == this.mCurTokenDisplayId && this.mCurHostInputToken != null) {
                IBinder curHostInputToken = this.mCurHostInputToken;
                return this.mInputManagerInternal.transferTouchFocus(sourceInputToken, curHostInputToken);
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reportImeControl(IBinder windowToken) {
        synchronized (this.mMethodMap) {
            if (this.mCurFocusedWindow != windowToken) {
                this.mCurPerceptible = true;
            }
        }
    }

    public boolean isInputShown() {
        return this.mInputShown;
    }

    public static final class InputMethodShownService {
        private final InputMethodManagerService mService;

        InputMethodShownService(InputMethodManagerService service) {
            this.mService = service;
        }

        public boolean isInputShown() {
            return this.mService.isInputShown();
        }

        public int getCurTokenDisplayId() {
            return this.mService.mCurTokenDisplayId;
        }
    }

    private static final class LocalServiceImpl extends InputMethodManagerInternal {
        private final InputMethodManagerService mService;

        LocalServiceImpl(InputMethodManagerService service) {
            this.mService = service;
        }

        @Override // com.android.server.inputmethod.InputMethodManagerInternal
        public void setInteractive(boolean z) {
            this.mService.mHandler.obtainMessage(InputMethodManagerService.MSG_SET_INTERACTIVE, z ? 1 : 0, 0).sendToTarget();
        }

        @Override // com.android.server.inputmethod.InputMethodManagerInternal
        public void hideCurrentInputMethod(int reason) {
            this.mService.mHandler.removeMessages(InputMethodManagerService.MSG_HIDE_CURRENT_INPUT_METHOD);
            this.mService.mHandler.obtainMessage(InputMethodManagerService.MSG_HIDE_CURRENT_INPUT_METHOD, Integer.valueOf(reason)).sendToTarget();
        }

        @Override // com.android.server.inputmethod.InputMethodManagerInternal
        public List<InputMethodInfo> getInputMethodListAsUser(int userId) {
            return this.mService.getInputMethodListAsUser(userId);
        }

        @Override // com.android.server.inputmethod.InputMethodManagerInternal
        public List<InputMethodInfo> getEnabledInputMethodListAsUser(int userId) {
            return this.mService.getEnabledInputMethodListAsUser(userId);
        }

        @Override // com.android.server.inputmethod.InputMethodManagerInternal
        public void onCreateInlineSuggestionsRequest(int userId, InlineSuggestionsRequestInfo requestInfo, IInlineSuggestionsRequestCallback cb) {
            this.mService.onCreateInlineSuggestionsRequest(userId, requestInfo, cb);
        }

        @Override // com.android.server.inputmethod.InputMethodManagerInternal
        public boolean switchToInputMethod(String imeId, int userId) {
            return this.mService.switchToInputMethod(imeId, userId);
        }

        @Override // com.android.server.inputmethod.InputMethodManagerInternal
        public void registerInputMethodListListener(InputMethodManagerInternal.InputMethodListListener listener) {
            this.mService.mInputMethodListListeners.addIfAbsent(listener);
        }

        @Override // com.android.server.inputmethod.InputMethodManagerInternal
        public boolean transferTouchFocusToImeWindow(IBinder sourceInputToken, int displayId) {
            return this.mService.transferTouchFocusToImeWindow(sourceInputToken, displayId);
        }

        @Override // com.android.server.inputmethod.InputMethodManagerInternal
        public void reportImeControl(IBinder windowToken) {
            this.mService.reportImeControl(windowToken);
        }

        @Override // com.android.server.inputmethod.InputMethodManagerInternal
        public void removeImeSurface() {
            this.mService.mHandler.sendMessage(this.mService.mHandler.obtainMessage(InputMethodManagerService.MSG_REMOVE_IME_SURFACE));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public IInputContentUriToken createInputContentUriToken(IBinder token, Uri contentUri, String packageName) {
        if (token == null) {
            throw new NullPointerException("token");
        }
        if (packageName == null) {
            throw new NullPointerException("packageName");
        }
        if (contentUri == null) {
            throw new NullPointerException("contentUri");
        }
        String contentUriScheme = contentUri.getScheme();
        if (!ActivityTaskManagerInternal.ASSIST_KEY_CONTENT.equals(contentUriScheme)) {
            throw new InvalidParameterException("contentUri must have content scheme");
        }
        synchronized (this.mMethodMap) {
            int uid = Binder.getCallingUid();
            if (this.mCurMethodId == null) {
                return null;
            }
            if (this.mCurToken != token) {
                Slog.e(TAG, "Ignoring createInputContentUriToken mCurToken=" + this.mCurToken + " token=" + token);
                return null;
            }
            if (!TextUtils.equals(this.mCurAttribute.packageName, packageName)) {
                Slog.e(TAG, "Ignoring createInputContentUriToken mCurAttribute.packageName=" + this.mCurAttribute.packageName + " packageName=" + packageName);
                return null;
            }
            int imeUserId = UserHandle.getUserId(uid);
            int appUserId = UserHandle.getUserId(this.mCurClient.uid);
            int contentUriOwnerUserId = ContentProvider.getUserIdFromUri(contentUri, imeUserId);
            Uri contentUriWithoutUserId = ContentProvider.getUriWithoutUserId(contentUri);
            return new InputContentUriTokenHandler(contentUriWithoutUserId, uid, packageName, contentUriOwnerUserId, appUserId);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reportFullscreenMode(IBinder token, boolean fullscreen) {
        synchronized (this.mMethodMap) {
            if (calledWithValidTokenLocked(token)) {
                if (this.mCurClient != null && this.mCurClient.client != null) {
                    this.mInFullscreenMode = fullscreen;
                    executeOrSendMessage(this.mCurClient.client, this.mCaller.obtainMessageIO(MSG_REPORT_FULLSCREEN_MODE, fullscreen ? 1 : 0, this.mCurClient));
                }
            }
        }
    }

    protected void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        ClientState client;
        ClientState focusedWindowClient;
        IInputMethod method;
        if (DumpUtils.checkDumpPermission(this.mContext, TAG, pw)) {
            Printer p = new PrintWriterPrinter(pw);
            synchronized (this.mMethodMap) {
                p.println("Current Input Method Manager state:");
                int N = this.mMethodList.size();
                p.println("  Input Methods: mMethodMapUpdateCount=" + this.mMethodMapUpdateCount);
                for (int i = 0; i < N; i++) {
                    InputMethodInfo info = this.mMethodList.get(i);
                    p.println("  InputMethod #" + i + ":");
                    info.dump(p, "    ");
                }
                p.println("  Clients:");
                int numClients = this.mClients.size();
                for (int i2 = 0; i2 < numClients; i2++) {
                    ClientState ci = this.mClients.valueAt(i2);
                    p.println("  Client " + ci + ":");
                    StringBuilder sb = new StringBuilder();
                    sb.append("    client=");
                    sb.append(ci.client);
                    p.println(sb.toString());
                    p.println("    inputContext=" + ci.inputContext);
                    p.println("    sessionRequested=" + ci.sessionRequested);
                    p.println("    curSession=" + ci.curSession);
                }
                p.println("  mCurMethodId=" + this.mCurMethodId);
                client = this.mCurClient;
                p.println("  mCurClient=" + client + " mCurSeq=" + this.mCurSeq);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("  mCurPerceptible=");
                sb2.append(this.mCurPerceptible);
                p.println(sb2.toString());
                p.println("  mCurFocusedWindow=" + this.mCurFocusedWindow + " softInputMode=" + InputMethodDebug.softInputModeToString(this.mCurFocusedWindowSoftInputMode) + " client=" + this.mCurFocusedWindowClient);
                focusedWindowClient = this.mCurFocusedWindowClient;
                p.println("  mCurId=" + this.mCurId + " mHaveConnection=" + this.mHaveConnection + " mBoundToMethod=" + this.mBoundToMethod + " mVisibleBound=" + this.mVisibleBound);
                StringBuilder sb3 = new StringBuilder();
                sb3.append("  mCurToken=");
                sb3.append(this.mCurToken);
                p.println(sb3.toString());
                StringBuilder sb4 = new StringBuilder();
                sb4.append("  mCurTokenDisplayId=");
                sb4.append(this.mCurTokenDisplayId);
                p.println(sb4.toString());
                p.println("  mCurHostInputToken=" + this.mCurHostInputToken);
                p.println("  mCurIntent=" + this.mCurIntent);
                method = this.mCurMethod;
                p.println("  mCurMethod=" + this.mCurMethod);
                p.println("  mEnabledSession=" + this.mEnabledSession);
                p.println("  mShowRequested=" + this.mShowRequested + " mShowExplicitlyRequested=" + this.mShowExplicitlyRequested + " mShowForced=" + this.mShowForced + " mInputShown=" + this.mInputShown);
                StringBuilder sb5 = new StringBuilder();
                sb5.append("  mInFullscreenMode=");
                sb5.append(this.mInFullscreenMode);
                p.println(sb5.toString());
                p.println("  mSystemReady=" + this.mSystemReady + " mInteractive=" + this.mIsInteractive);
                StringBuilder sb6 = new StringBuilder();
                sb6.append("  mSettingsObserver=");
                sb6.append(this.mSettingsObserver);
                p.println(sb6.toString());
                p.println("  mSwitchingController:");
                this.mSwitchingController.dump(p);
                p.println("  mSettings:");
                this.mSettings.dumpLocked(p, "    ");
                p.println("  mStartInputHistory:");
                this.mStartInputHistory.dump(pw, "   ");
                p.println("  mSoftInputShowHideHistory:");
                this.mSoftInputShowHideHistory.dump(pw, "   ");
            }
            p.println(" ");
            if (client != null) {
                pw.flush();
                try {
                    TransferPipe.dumpAsync(client.client.asBinder(), fd, args);
                } catch (RemoteException | IOException e) {
                    p.println("Failed to dump input method client: " + e);
                }
            } else {
                p.println("No input method client.");
            }
            if (focusedWindowClient != null && client != focusedWindowClient) {
                p.println(" ");
                p.println("Warning: Current input method client doesn't match the last focused. window.");
                p.println("Dumping input method client in the last focused window just in case.");
                p.println(" ");
                pw.flush();
                try {
                    TransferPipe.dumpAsync(focusedWindowClient.client.asBinder(), fd, args);
                } catch (RemoteException | IOException e2) {
                    p.println("Failed to dump input method client in focused window: " + e2);
                }
            }
            p.println(" ");
            if (method != null) {
                pw.flush();
                try {
                    TransferPipe.dumpAsync(method.asBinder(), fd, args);
                    return;
                } catch (RemoteException | IOException e3) {
                    p.println("Failed to dump input method service: " + e3);
                    return;
                }
            }
            p.println("No input method service.");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onShellCommand(FileDescriptor in, FileDescriptor out, FileDescriptor err, String[] args, ShellCallback callback, ResultReceiver resultReceiver) throws RemoteException {
        int callingUid = Binder.getCallingUid();
        if (callingUid != 0 && callingUid != MSG_START_INPUT) {
            if (resultReceiver != null) {
                resultReceiver.send(-1, null);
            }
            String errorMsg = "InputMethodManagerService does not support shell commands from non-shell users. callingUid=" + callingUid + " args=" + Arrays.toString(args);
            if (Process.isCoreUid(callingUid)) {
                Slog.e(TAG, errorMsg);
                return;
            }
            throw new SecurityException(errorMsg);
        }
        new ShellCommandImpl(this).exec(this, in, out, err, args, callback, resultReceiver);
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class ShellCommandImpl extends ShellCommand {
        final InputMethodManagerService mService;

        ShellCommandImpl(InputMethodManagerService service) {
            this.mService = service;
        }

        public int onCommand(String cmd) {
            Arrays.asList("android.permission.DUMP", "android.permission.INTERACT_ACROSS_USERS_FULL", "android.permission.WRITE_SECURE_SETTINGS").forEach(new Consumer() { // from class: com.android.server.inputmethod.-$$Lambda$InputMethodManagerService$ShellCommandImpl$DbZq_GIUJWcuMsIpw_Jz5jVT2-Y
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$onCommand$0$InputMethodManagerService$ShellCommandImpl((String) obj);
                }
            });
            long identity = Binder.clearCallingIdentity();
            try {
                return onCommandWithSystemIdentity(cmd);
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }

        public /* synthetic */ void lambda$onCommand$0$InputMethodManagerService$ShellCommandImpl(String permission) {
            this.mService.mContext.enforceCallingPermission(permission, null);
        }

        private int onCommandWithSystemIdentity(String cmd) {
            byte b;
            if ("refresh_debug_properties".equals(cmd)) {
                return refreshDebugProperties();
            }
            if ("get-last-switch-user-id".equals(cmd)) {
                return this.mService.getLastSwitchUserId(this);
            }
            if ("ime".equals(cmd)) {
                String imeCommand = getNextArg();
                if (imeCommand == null || "help".equals(imeCommand) || "-h".equals(imeCommand)) {
                    onImeCommandHelp();
                    return 0;
                }
                switch (imeCommand) {
                    case "enable":
                        b = 1;
                        break;
                    case "set":
                        b = 3;
                        break;
                    case "list":
                        b = 0;
                        break;
                    case "reset":
                        b = 4;
                        break;
                    case "disable":
                        b = 2;
                        break;
                    default:
                        b = -1;
                        break;
                }
                if (b == 0) {
                    return this.mService.handleShellCommandListInputMethods(this);
                }
                if (b == 1) {
                    return this.mService.handleShellCommandEnableDisableInputMethod(this, true);
                }
                if (b == 2) {
                    return this.mService.handleShellCommandEnableDisableInputMethod(this, false);
                }
                if (b == 3) {
                    return this.mService.handleShellCommandSetInputMethod(this);
                }
                if (b == 4) {
                    return this.mService.handleShellCommandResetInputMethod(this);
                }
                getOutPrintWriter().println("Unknown command: " + imeCommand);
                return -1;
            }
            return handleDefaultCommands(cmd);
        }

        private int refreshDebugProperties() {
            DebugFlags.FLAG_OPTIMIZE_START_INPUT.refresh();
            DebugFlags.FLAG_PRE_RENDER_IME_VIEWS.refresh();
            return 0;
        }

        public void onHelp() {
            PrintWriter pw = getOutPrintWriter();
            try {
                pw.println("InputMethodManagerService commands:");
                pw.println("  help");
                pw.println("    Prints this help text.");
                pw.println("  dump [options]");
                pw.println("    Synonym of dumpsys.");
                pw.println("  ime <command> [options]");
                pw.println("    Manipulate IMEs.  Run \"ime help\" for details.");
                if (pw != null) {
                    pw.close();
                }
            } catch (Throwable th) {
                if (pw != null) {
                    try {
                        pw.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }

        private void onImeCommandHelp() {
            IndentingPrintWriter pw = new IndentingPrintWriter(getOutPrintWriter(), "  ", 100);
            try {
                pw.println("ime <command>:");
                pw.increaseIndent();
                pw.println("list [-a] [-s]");
                pw.increaseIndent();
                pw.println("prints all enabled input methods.");
                pw.increaseIndent();
                pw.println("-a: see all input methods");
                pw.println("-s: only a single summary line of each");
                pw.decreaseIndent();
                pw.decreaseIndent();
                pw.println("enable [--user <USER_ID>] <ID>");
                pw.increaseIndent();
                pw.println("allows the given input method ID to be used.");
                pw.increaseIndent();
                pw.print("--user <USER_ID>: Specify which user to enable.");
                pw.println(" Assumes the current user if not specified.");
                pw.decreaseIndent();
                pw.decreaseIndent();
                pw.println("disable [--user <USER_ID>] <ID>");
                pw.increaseIndent();
                pw.println("disallows the given input method ID to be used.");
                pw.increaseIndent();
                pw.print("--user <USER_ID>: Specify which user to disable.");
                pw.println(" Assumes the current user if not specified.");
                pw.decreaseIndent();
                pw.decreaseIndent();
                pw.println("set [--user <USER_ID>] <ID>");
                pw.increaseIndent();
                pw.println("switches to the given input method ID.");
                pw.increaseIndent();
                pw.print("--user <USER_ID>: Specify which user to enable.");
                pw.println(" Assumes the current user if not specified.");
                pw.decreaseIndent();
                pw.decreaseIndent();
                pw.println("reset [--user <USER_ID>]");
                pw.increaseIndent();
                pw.println("reset currently selected/enabled IMEs to the default ones as if the device is initially booted with the current locale.");
                pw.increaseIndent();
                pw.print("--user <USER_ID>: Specify which user to reset.");
                pw.println(" Assumes the current user if not specified.");
                pw.decreaseIndent();
                pw.decreaseIndent();
                pw.decreaseIndent();
                pw.close();
            } catch (Throwable th) {
                try {
                    pw.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getLastSwitchUserId(ShellCommand shellCommand) {
        synchronized (this.mMethodMap) {
            shellCommand.getOutPrintWriter().println(this.mLastSwitchUserId);
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:51:0x00c6  */
    public int handleShellCommandListInputMethods(ShellCommand shellCommand) {
        int i;
        List<InputMethodInfo> methods;
        int userIdToBeResolved = -2;
        boolean brief = false;
        boolean all = false;
        while (true) {
            String nextOption = shellCommand.getNextOption();
            byte b = 0;
            i = 1;
            if (nextOption == null) {
                break;
            }
            int iHashCode = nextOption.hashCode();
            if (iHashCode != 1492) {
                if (iHashCode != 1510) {
                    if (iHashCode != 1512) {
                        if (iHashCode == 1333469547 && nextOption.equals("--user")) {
                            b = 3;
                        } else {
                            b = -1;
                        }
                    } else if (nextOption.equals("-u")) {
                        b = 2;
                    } else {
                        b = -1;
                    }
                } else if (nextOption.equals("-s")) {
                    b = 1;
                } else {
                    b = -1;
                }
            } else if (!nextOption.equals("-a")) {
                b = -1;
            }
            if (b == 0) {
                all = true;
            } else if (b == 1) {
                brief = true;
            } else if (b == 2 || b == 3) {
                userIdToBeResolved = UserHandle.parseUserArg(shellCommand.getNextArgRequired());
            }
        }
        synchronized (this.mMethodMap) {
            final PrintWriter pr = shellCommand.getOutPrintWriter();
            int[] userIds = InputMethodUtils.resolveUserId(userIdToBeResolved, this.mSettings.getCurrentUserId(), shellCommand.getErrPrintWriter());
            int length = userIds.length;
            int i2 = 0;
            while (i2 < length) {
                int userId = userIds[i2];
                if (all) {
                    methods = getInputMethodListLocked(userId);
                } else {
                    methods = getEnabledInputMethodListLocked(userId);
                }
                if (userIds.length > i) {
                    pr.print("User #");
                    pr.print(userId);
                    pr.println(":");
                }
                for (InputMethodInfo info : methods) {
                    if (brief) {
                        pr.println(info.getId());
                    } else {
                        pr.print(info.getId());
                        pr.println(":");
                        Objects.requireNonNull(pr);
                        info.dump(new Printer() { // from class: com.android.server.inputmethod.-$$Lambda$Z2NtIIfW6UZqUgiVBM1fNETGPS8
                            @Override // android.util.Printer
                            public final void println(String str) {
                                pr.println(str);
                            }
                        }, "  ");
                    }
                }
                i2++;
                i = 1;
            }
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int handleShellCommandEnableDisableInputMethod(ShellCommand shellCommand, boolean enabled) {
        int userIdToBeResolved = handleOptionsForCommandsThatOnlyHaveUserOption(shellCommand);
        String imeId = shellCommand.getNextArgRequired();
        PrintWriter out = shellCommand.getOutPrintWriter();
        PrintWriter error = shellCommand.getErrPrintWriter();
        synchronized (this.mMethodMap) {
            int[] userIds = InputMethodUtils.resolveUserId(userIdToBeResolved, this.mSettings.getCurrentUserId(), shellCommand.getErrPrintWriter());
            for (int userId : userIds) {
                if (userHasDebugPriv(userId, shellCommand)) {
                    handleShellCommandEnableDisableInputMethodInternalLocked(userId, imeId, enabled, out, error);
                }
            }
        }
        return 0;
    }

    private static int handleOptionsForCommandsThatOnlyHaveUserOption(ShellCommand shellCommand) {
        byte b;
        do {
            String nextOption = shellCommand.getNextOption();
            if (nextOption != null) {
                b = -1;
                int iHashCode = nextOption.hashCode();
                if (iHashCode != 1512) {
                    if (iHashCode == 1333469547 && nextOption.equals("--user")) {
                        b = 1;
                    }
                } else if (nextOption.equals("-u")) {
                    b = 0;
                }
                if (b == 0) {
                    break;
                }
            } else {
                return -2;
            }
        } while (b != 1);
        return UserHandle.parseUserArg(shellCommand.getNextArgRequired());
    }

    private void handleShellCommandEnableDisableInputMethodInternalLocked(int userId, String imeId, boolean enabled, PrintWriter out, PrintWriter error) {
        boolean failedToEnableUnknownIme = false;
        boolean previouslyEnabled = false;
        if (userId == this.mSettings.getCurrentUserId()) {
            if (enabled && !this.mMethodMap.containsKey(imeId)) {
                failedToEnableUnknownIme = true;
            } else {
                previouslyEnabled = setInputMethodEnabledLocked(imeId, enabled);
            }
        } else {
            ArrayMap<String, InputMethodInfo> methodMap = new ArrayMap<>();
            ArrayList<InputMethodInfo> methodList = new ArrayList<>();
            ArrayMap<String, List<InputMethodSubtype>> additionalSubtypeMap = new ArrayMap<>();
            AdditionalSubtypeUtils.load(additionalSubtypeMap, userId);
            queryInputMethodServicesInternal(this.mContext, userId, additionalSubtypeMap, methodMap, methodList);
            InputMethodUtils.InputMethodSettings settings = new InputMethodUtils.InputMethodSettings(this.mContext.getResources(), this.mContext.getContentResolver(), methodMap, userId, false);
            if (enabled) {
                if (!methodMap.containsKey(imeId)) {
                    failedToEnableUnknownIme = true;
                } else {
                    for (InputMethodInfo imi : settings.getEnabledInputMethodListLocked()) {
                        if (TextUtils.equals(imi.getId(), imeId)) {
                            previouslyEnabled = true;
                            break;
                        }
                    }
                    if (!previouslyEnabled) {
                        settings.appendAndPutEnabledInputMethodLocked(imeId, false);
                    }
                }
            } else {
                previouslyEnabled = settings.buildAndPutEnabledInputMethodsStrRemovingIdLocked(new StringBuilder(), settings.getEnabledInputMethodsAndSubtypeListLocked(), imeId);
            }
        }
        if (failedToEnableUnknownIme) {
            error.print("Unknown input method ");
            error.print(imeId);
            error.println(" cannot be enabled for user #" + userId);
            return;
        }
        out.print("Input method ");
        out.print(imeId);
        out.print(": ");
        out.print(enabled == previouslyEnabled ? "already " : "now ");
        out.print(enabled ? "enabled" : "disabled");
        out.print(" for user #");
        out.println(userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int handleShellCommandSetInputMethod(ShellCommand shellCommand) {
        int userIdToBeResolved = handleOptionsForCommandsThatOnlyHaveUserOption(shellCommand);
        String imeId = shellCommand.getNextArgRequired();
        PrintWriter out = shellCommand.getOutPrintWriter();
        PrintWriter error = shellCommand.getErrPrintWriter();
        synchronized (this.mMethodMap) {
            int[] userIds = InputMethodUtils.resolveUserId(userIdToBeResolved, this.mSettings.getCurrentUserId(), shellCommand.getErrPrintWriter());
            for (int userId : userIds) {
                if (userHasDebugPriv(userId, shellCommand)) {
                    boolean failedToSelectUnknownIme = !switchToInputMethod(imeId, userId);
                    if (failedToSelectUnknownIme) {
                        error.print("Unknown input method ");
                        error.print(imeId);
                        error.print(" cannot be selected for user #");
                        error.println(userId);
                    } else {
                        out.print("Input method ");
                        out.print(imeId);
                        out.print(" selected for user #");
                        out.println(userId);
                    }
                }
            }
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int handleShellCommandResetInputMethod(ShellCommand shellCommand) throws Throwable {
        List<InputMethodInfo> nextEnabledImes;
        String nextIme;
        final PrintWriter out = shellCommand.getOutPrintWriter();
        int userIdToBeResolved = handleOptionsForCommandsThatOnlyHaveUserOption(shellCommand);
        synchronized (this.mMethodMap) {
            try {
                int[] userIds = InputMethodUtils.resolveUserId(userIdToBeResolved, this.mSettings.getCurrentUserId(), shellCommand.getErrPrintWriter());
                int length = userIds.length;
                int i = 0;
                int i2 = 0;
                while (i2 < length) {
                    int userId = userIds[i2];
                    try {
                        if (userHasDebugPriv(userId, shellCommand)) {
                            if (userId == this.mSettings.getCurrentUserId()) {
                                hideCurrentInputLocked(this.mCurFocusedWindow, i, null, 14);
                                unbindCurrentMethodLocked();
                                resetSelectedInputMethodAndSubtypeLocked(null);
                                this.mSettings.putSelectedInputMethod(null);
                                this.mSettings.getEnabledInputMethodListLocked().forEach(new Consumer() { // from class: com.android.server.inputmethod.-$$Lambda$InputMethodManagerService$Ufznp6QtlvKmc-UE2qM5QE0C6tE
                                    @Override // java.util.function.Consumer
                                    public final void accept(Object obj) {
                                        this.f$0.lambda$handleShellCommandResetInputMethod$3$InputMethodManagerService((InputMethodInfo) obj);
                                    }
                                });
                                InputMethodUtils.getDefaultEnabledImes(this.mContext, this.mMethodList).forEach(new Consumer() { // from class: com.android.server.inputmethod.-$$Lambda$InputMethodManagerService$H607z-btEMFpsulSfu4T0nMsWR0
                                    @Override // java.util.function.Consumer
                                    public final void accept(Object obj) {
                                        this.f$0.lambda$handleShellCommandResetInputMethod$4$InputMethodManagerService((InputMethodInfo) obj);
                                    }
                                });
                                updateInputMethodsFromSettingsLocked(true);
                                InputMethodUtils.setNonSelectedSystemImesDisabledUntilUsed(this.mIPackageManager, this.mSettings.getEnabledInputMethodListLocked(), this.mSettings.getCurrentUserId(), this.mContext.getBasePackageName());
                                nextIme = this.mSettings.getSelectedInputMethod();
                                nextEnabledImes = this.mSettings.getEnabledInputMethodListLocked();
                            } else {
                                ArrayMap<String, InputMethodInfo> methodMap = new ArrayMap<>();
                                ArrayList<InputMethodInfo> methodList = new ArrayList<>();
                                ArrayMap<String, List<InputMethodSubtype>> additionalSubtypeMap = new ArrayMap<>();
                                AdditionalSubtypeUtils.load(additionalSubtypeMap, userId);
                                queryInputMethodServicesInternal(this.mContext, userId, additionalSubtypeMap, methodMap, methodList);
                                final InputMethodUtils.InputMethodSettings settings = new InputMethodUtils.InputMethodSettings(this.mContext.getResources(), this.mContext.getContentResolver(), methodMap, userId, false);
                                nextEnabledImes = InputMethodUtils.getDefaultEnabledImes(this.mContext, methodList);
                                String nextIme2 = InputMethodUtils.getMostApplicableDefaultIME(nextEnabledImes).getId();
                                settings.putEnabledInputMethodsStr("");
                                nextEnabledImes.forEach(new Consumer() { // from class: com.android.server.inputmethod.-$$Lambda$InputMethodManagerService$a9V5hrP20HaWLkbKGtQDDSTnUP8
                                    @Override // java.util.function.Consumer
                                    public final void accept(Object obj) {
                                        settings.appendAndPutEnabledInputMethodLocked(((InputMethodInfo) obj).getId(), false);
                                    }
                                });
                                settings.putSelectedInputMethod(nextIme2);
                                settings.putSelectedSubtype(-1);
                                nextIme = nextIme2;
                            }
                            out.println("Reset current and enabled IMEs for user #" + userId);
                            out.println("  Selected: " + nextIme);
                            nextEnabledImes.forEach(new Consumer() { // from class: com.android.server.inputmethod.-$$Lambda$InputMethodManagerService$xpvhKakrPzP8fwGcqwNWa-l0OBI
                                @Override // java.util.function.Consumer
                                public final void accept(Object obj) {
                                    out.println("   Enabled: " + ((InputMethodInfo) obj).getId());
                                }
                            });
                        }
                        i2++;
                        i = 0;
                    } catch (Throwable th) {
                        th = th;
                        throw th;
                    }
                }
                return 0;
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    public /* synthetic */ void lambda$handleShellCommandResetInputMethod$3$InputMethodManagerService(InputMethodInfo imi) {
        setInputMethodEnabledLocked(imi.getId(), false);
    }

    public /* synthetic */ void lambda$handleShellCommandResetInputMethod$4$InputMethodManagerService(InputMethodInfo imi) {
        setInputMethodEnabledLocked(imi.getId(), true);
    }

    private boolean userHasDebugPriv(int userId, ShellCommand shellCommand) {
        if (this.mUserManager.hasUserRestriction("no_debugging_features", UserHandle.of(userId))) {
            shellCommand.getErrPrintWriter().println("User #" + userId + " is restricted with DISALLOW_DEBUGGING_FEATURES.");
            return false;
        }
        return true;
    }

    private static final class InputMethodPrivilegedOperationsImpl extends IInputMethodPrivilegedOperations.Stub {
        private final InputMethodManagerService mImms;
        private final IBinder mToken;

        InputMethodPrivilegedOperationsImpl(InputMethodManagerService imms, IBinder token) {
            this.mImms = imms;
            this.mToken = token;
        }

        public void setImeWindowStatus(int vis, int backDisposition) {
            this.mImms.setImeWindowStatus(this.mToken, vis, backDisposition);
        }

        public void reportStartInput(IBinder startInputToken) {
            this.mImms.reportStartInput(this.mToken, startInputToken);
        }

        public IInputContentUriToken createInputContentUriToken(Uri contentUri, String packageName) {
            return this.mImms.createInputContentUriToken(this.mToken, contentUri, packageName);
        }

        public void reportFullscreenMode(boolean fullscreen) {
            this.mImms.reportFullscreenMode(this.mToken, fullscreen);
        }

        public void setInputMethod(String id) {
            this.mImms.setInputMethod(this.mToken, id);
        }

        public void setInputMethodAndSubtype(String id, InputMethodSubtype subtype) {
            this.mImms.setInputMethodAndSubtype(this.mToken, id, subtype);
        }

        public void hideMySoftInput(int flags) {
            Slog.d(InputMethodManagerService.TAG, "hideMySoftInput, flags:" + flags);
            this.mImms.hideMySoftInput(this.mToken, flags);
        }

        public void showMySoftInput(int flags) {
            Slog.d(InputMethodManagerService.TAG, "showMySoftInput, flags:" + flags);
            this.mImms.showMySoftInput(this.mToken, flags);
        }

        public void updateStatusIcon(String packageName, int iconId) {
            this.mImms.updateStatusIcon(this.mToken, packageName, iconId);
        }

        public boolean switchToPreviousInputMethod() {
            return this.mImms.switchToPreviousInputMethod(this.mToken);
        }

        public boolean switchToNextInputMethod(boolean onlyCurrentIme) {
            return this.mImms.switchToNextInputMethod(this.mToken, onlyCurrentIme);
        }

        public boolean shouldOfferSwitchingToNextInputMethod() {
            return this.mImms.shouldOfferSwitchingToNextInputMethod(this.mToken);
        }

        public void notifyUserAction() {
            this.mImms.notifyUserAction(this.mToken);
        }

        public void reportPreRendered(EditorInfo info) {
            this.mImms.reportPreRendered(this.mToken, info);
        }

        public void applyImeVisibility(IBinder windowToken, boolean setVisible) {
            this.mImms.applyImeVisibility(this.mToken, windowToken, setVisible);
        }
    }
}
