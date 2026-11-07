package com.android.server.audio;

import android.R;
import android.app.ActivityManager;
import android.app.ActivityManagerInternal;
import android.app.AppGlobals;
import android.app.AppOpsManager;
import android.app.IUidObserver;
import android.app.NotificationManager;
import android.app.role.OnRoleHoldersChangedListener;
import android.app.role.RoleManager;
import android.bluetooth.BluetoothDevice;
import android.car.ICar;
import android.car.media.ICarAudio;
import android.car.media.ICarVolumeCallback;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.UserInfo;
import android.content.res.Configuration;
import android.database.ContentObserver;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.hardware.hdmi.HdmiAudioSystemClient;
import android.hardware.hdmi.HdmiControlManager;
import android.hardware.hdmi.HdmiPlaybackClient;
import android.hardware.hdmi.HdmiTvClient;
import android.hardware.input.InputManager;
import android.hidl.manager.V1_0.IServiceManager;
import android.media.AudioAttributes;
import android.media.AudioDeviceAttributes;
import android.media.AudioDeviceInfo;
import android.media.AudioFocusInfo;
import android.media.AudioManager;
import android.media.AudioManagerInternal;
import android.media.AudioPlaybackConfiguration;
import android.media.AudioRecordingConfiguration;
import android.media.AudioRoutesInfo;
import android.media.AudioSystem;
import android.media.IAudioFocusDispatcher;
import android.media.IAudioRoutesObserver;
import android.media.IAudioServerStateDispatcher;
import android.media.IAudioService;
import android.media.IPlaybackConfigDispatcher;
import android.media.IRecordingConfigDispatcher;
import android.media.IRingtonePlayer;
import android.media.IStrategyPreferredDeviceDispatcher;
import android.media.IVolumeController;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.media.MediaMetrics;
import android.media.PlayerBase;
import android.media.VolumePolicy;
import android.media.audiopolicy.AudioMix;
import android.media.audiopolicy.AudioPolicyConfig;
import android.media.audiopolicy.AudioProductStrategy;
import android.media.audiopolicy.AudioVolumeGroup;
import android.media.audiopolicy.IAudioPolicyCallback;
import android.media.projection.IMediaProjection;
import android.media.projection.IMediaProjectionCallback;
import android.media.projection.IMediaProjectionManager;
import android.net.INetd;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.UserManagerInternal;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.provider.Settings;
import android.service.notification.ZenModeConfig;
import android.telecom.TelecomManager;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.IntArray;
import android.util.Log;
import android.util.MathUtils;
import android.util.PrintWriterPrinter;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.KeyEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.Toast;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.Preconditions;
import com.android.server.BatteryService;
import com.android.server.EventLogTags;
import com.android.server.LocalServices;
import com.android.server.SystemService;
import com.android.server.UiModeManagerService;
import com.android.server.pm.UserManagerService;
import com.android.server.slice.SliceClientPermissions;
import com.android.server.utils.PriorityDump;
import com.android.server.wm.ActivityTaskManagerInternal;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Predicate;
import java.util.function.ToIntFunction;

/* JADX INFO: loaded from: classes.dex */
public class AudioService extends IAudioService.Stub implements AccessibilityManager.TouchExplorationStateChangeListener, AccessibilityManager.AccessibilityServicesStateChangeListener {
    private static final String AUDIO_HAL_SERVICE_PREFIX = "android.hardware.audio";
    public static final int BECOMING_NOISY_DELAY_MS = 1000;
    private static final int CHECK_MODE_FOR_UID_PERIOD_MS = 6000;
    static final int CONNECTION_STATE_CONNECTED = 1;
    static final int CONNECTION_STATE_DISCONNECTED = 0;
    protected static final boolean DEBUG_AP = false;
    protected static final boolean DEBUG_DEVICES = false;
    protected static final boolean DEBUG_MODE = false;
    protected static final boolean DEBUG_VOL = false;
    private static final int DEFAULT_STREAM_TYPE_OVERRIDE_DELAY_MS = 0;
    protected static final int DEFAULT_VOL_STREAM_NO_PLAYBACK = 3;
    private static final Set<Integer> DEVICE_MEDIA_UNMUTED_ON_PLUG_SET;
    private static final int FLAG_ADJUST_VOLUME = 1;
    private static final int INDICATE_SYSTEM_READY_RETRY_DELAY_MS = 1000;
    static final int LOG_NB_EVENTS_DEVICE_CONNECTION = 30;
    static final int LOG_NB_EVENTS_DYN_POLICY = 10;
    static final int LOG_NB_EVENTS_FORCE_USE = 20;
    static final int LOG_NB_EVENTS_LIFECYCLE = 20;
    static final int LOG_NB_EVENTS_PHONE_STATE = 20;
    static final int LOG_NB_EVENTS_VOLUME = 40;
    protected static final float MIN_ALARM_ATTENUATION_NON_PRIVILEGED_DB = -36.0f;
    private static final int MSG_ACCESSORY_PLUG_MEDIA_UNMUTE = 21;
    private static final int MSG_AUDIO_SERVER_DIED = 4;
    private static final int MSG_BROADCAST_MICROPHONE_MUTE = 30;
    private static final int MSG_BT_HEADSET_CNCT_FAILED = 9;
    private static final int MSG_CHECK_MODE_FOR_UID = 31;
    private static final int MSG_CHECK_MUSIC_ACTIVE = 11;
    private static final int MSG_CONFIGURE_SAFE_MEDIA_VOLUME = 12;
    private static final int MSG_CONFIGURE_SAFE_MEDIA_VOLUME_FORCED = 13;
    private static final int MSG_DISABLE_AUDIO_FOR_UID = 100;
    private static final int MSG_DISPATCH_AUDIO_SERVER_STATE = 23;
    private static final int MSG_DYN_POLICY_MIX_STATE_UPDATE = 19;
    private static final int MSG_ENABLE_SURROUND_FORMATS = 24;
    private static final int MSG_HDMI_VOLUME_CHECK = 28;
    private static final int MSG_INDICATE_SYSTEM_READY = 20;
    private static final int MSG_LOAD_SOUND_EFFECTS = 7;
    private static final int MSG_NOTIFY_VOL_EVENT = 22;
    private static final int MSG_OBSERVE_DEVICES_FOR_ALL_STREAMS = 27;
    private static final int MSG_PERSIST_MUSIC_ACTIVE_MS = 17;
    private static final int MSG_PERSIST_RINGER_MODE = 3;
    private static final int MSG_PERSIST_SAFE_VOLUME_STATE = 14;
    private static final int MSG_PERSIST_VOLUME = 1;
    private static final int MSG_PERSIST_VOLUME_GROUP = 2;
    private static final int MSG_PLAYBACK_CONFIG_CHANGE = 29;
    private static final int MSG_PLAY_SOUND_EFFECT = 5;
    private static final int MSG_REINIT_VOLUMES = 32;
    private static final int MSG_SET_ALL_VOLUMES = 10;
    private static final int MSG_SET_DEVICE_STREAM_VOLUME = 26;
    private static final int MSG_SET_DEVICE_VOLUME = 0;
    private static final int MSG_SET_FORCE_USE = 8;
    private static final int MSG_SYSTEM_READY = 16;
    private static final int MSG_UNLOAD_SOUND_EFFECTS = 15;
    private static final int MSG_UNMUTE_STREAM = 18;
    private static final int MSG_UPDATE_RINGER_MODE = 25;
    private static final int MUSIC_ACTIVE_POLL_PERIOD_MS = 60000;
    private static final int PERSIST_DELAY = 500;
    private static final String[] RINGER_MODE_NAMES;
    private static final int SAFE_MEDIA_VOLUME_ACTIVE = 3;
    private static final int SAFE_MEDIA_VOLUME_DISABLED = 1;
    private static final int SAFE_MEDIA_VOLUME_INACTIVE = 2;
    private static final int SAFE_MEDIA_VOLUME_NOT_CONFIGURED = 0;
    private static final int SAFE_VOLUME_CONFIGURE_TIMEOUT_MS = 30000;
    private static final int SENDMSG_NOOP = 1;
    private static final int SENDMSG_QUEUE = 2;
    private static final int SENDMSG_REPLACE = 0;
    private static final String TAG = "AS.AudioService";
    private static final int TOUCH_EXPLORE_STREAM_TYPE_OVERRIDE_DELAY_MS = 1000;
    private static final int UNMUTE_STREAM_DELAY = 350;
    private static final int UNSAFE_VOLUME_MUSIC_ACTIVE_MS_MAX = 72000000;
    private static final int VOL_ADJUST_END = 2;
    private static final int VOL_ADJUST_NORMAL = 0;
    private static final int VOL_ADJUST_START = 1;
    private static final String mMetricsId = "audio.service.";
    protected static int[] mStreamVolumeAlias;
    static final AudioEventLogger sDeviceLogger;
    static final AudioEventLogger sForceUseLogger;
    private static boolean sIndependentA11yVolume;
    static final AudioEventLogger sLifecycleLogger;
    private static int sStreamOverrideDelayMs;
    private static final SparseArray<VolumeGroupState> sVolumeGroupStates;
    static final AudioEventLogger sVolumeLogger;
    private final int[] STREAM_VOLUME_ALIAS_DEFAULT;
    private final int[] STREAM_VOLUME_ALIAS_TELEVISION;
    private final int[] STREAM_VOLUME_ALIAS_VOICE;
    final IBinder.DeathRecipient carServiceDeathHandle;
    private boolean mA2dpViaSecondBluetooth;
    Set<Integer> mAbsVolumeMultiModeCaseDevices;
    private int[] mAccessibilityServiceUids;
    private final Object mAccessibilityServiceUidsLock;
    private final ActivityManagerInternal mActivityManagerInternal;
    private final AppOpsManager mAppOps;
    private int mAssistantUid;
    private PowerManager.WakeLock mAudioEventWakeLock;
    private HashMap<String, Integer> mAudioFocusStatus;
    private AudioHandler mAudioHandler;
    private final HashMap<IBinder, AudioPolicyProxy> mAudioPolicies;
    private int mAudioPolicyCounter;
    private HashMap<IBinder, AsdProxy> mAudioServerStateListeners;
    private final AudioSystemAdapter mAudioSystem;
    private final AudioSystem.ErrorCallback mAudioSystemCallback;
    private AudioSystemThread mAudioSystemThread;
    private volatile boolean mAvrcpAbsVolSupported;
    private AudioAttributes.Builder mBuilder;
    private boolean mCameraSoundForced;
    private ICarAudio mCarAudio;
    private final ICarVolumeCallback mCarVolumeCallbackImpl;
    private final ContentResolver mContentResolver;
    private final Context mContext;
    private int mCurrentImeUid;
    private final AudioDeviceBroker mDeviceBroker;
    private boolean mDockAudioMediaEnabled;
    private int mDockState;
    private final AudioSystem.DynamicPolicyCallback mDynPolicyCallback;
    private final AudioEventLogger mDynPolicyLogger;
    private String mEnabledSurroundFormats;
    private int mEncodedSurroundMode;
    private IAudioPolicyCallback mExtVolumeController;
    private final Object mExtVolumeControllerLock;
    Set<Integer> mFixedVolumeDevices;
    private ForceControlStreamClient mForceControlStreamClient;
    private final Object mForceControlStreamLock;
    Set<Integer> mFullVolumeDevices;
    private final boolean mHasVibrator;
    private HdmiAudioSystemClient mHdmiAudioSystemClient;
    private boolean mHdmiCecSink;
    private boolean mHdmiCecVolumeControlEnabled;
    private final Object mHdmiClientLock;
    private MyHdmiControlStatusChangeListenerCallback mHdmiControlStatusChangeListenerCallback;
    private HdmiControlManager mHdmiManager;
    private HdmiPlaybackClient mHdmiPlaybackClient;
    private boolean mHdmiSystemAudioSupported;
    private HdmiTvClient mHdmiTvClient;
    private int mInputMethodServiceUid;
    private final Object mInputMethodServiceUidLock;
    private boolean mIsCallScreeningModeSupported;
    private final boolean mIsSingleVolume;
    private long mLoweredFromNormalToVibrateTime;
    private int mMcc;
    private final MediaFocusControl mMediaFocusControl;
    private boolean mMicMuteFromApi;
    private boolean mMicMuteFromRestrictions;
    private boolean mMicMuteFromSwitch;
    private boolean mMicMuteFromSystemCached;
    private int mMode;
    private final AudioEventLogger mModeLogger;
    private final boolean mMonitorRotation;
    private int mMusicActiveMs;
    private int mMuteAffectedStreams;
    private MyHdmiCecVolumeControlFeatureListener mMyHdmiCecVolumeControlFeatureListener;
    private NotificationManager mNm;
    private StreamVolumeCommand mPendingVolumeCommand;
    private final int mPlatformType;
    private final PlaybackActivityMonitor mPlaybackMonitor;
    private float[] mPrescaleAbsoluteVolume;
    private int mPrevVolDirection;
    private IMediaProjectionManager mProjectionService;
    private final BroadcastReceiver mReceiver;
    private final RecordingActivityMonitor mRecordMonitor;
    private int mRingerAndZenModeMutedStreams;
    private int mRingerMode;
    private int mRingerModeAffectedStreams;
    private AudioManagerInternal.RingerModeDelegate mRingerModeDelegate;
    private int mRingerModeExternal;
    private volatile IRingtonePlayer mRingtonePlayer;
    private ArrayList<RmtSbmxFullVolDeathHandler> mRmtSbmxFullVolDeathHandlers;
    private int mRmtSbmxFullVolRefCount;
    RoleObserver mRoleObserver;
    private boolean mRttEnabled;
    final Set<Integer> mSafeMediaVolumeDevices;
    private int mSafeMediaVolumeIndex;
    private int mSafeMediaVolumeState;
    private final Object mSafeMediaVolumeStateLock;
    private float mSafeUsbMediaVolumeDbfs;
    private int mSafeUsbMediaVolumeIndex;
    final ArrayList<SetModeDeathHandler> mSetModeDeathHandlers;
    private final Object mSettingsLock;
    private SettingsObserver mSettingsObserver;
    private SoundEffectsHelper mSfxHelper;
    private VolumeStreamState[] mStreamStates;
    private int[] mSupportedSystemUsages;
    private final Object mSupportedSystemUsagesLock;
    private boolean mSurroundModeChanged;
    private boolean mSystemReady;
    private final SystemServerAdapter mSystemServer;
    private final IUidObserver mUidObserver;
    private final boolean mUseFixedVolume;
    private final boolean mUseSystemAutoDuck;
    private final boolean mUseSystemHardwareDuck;
    private final UserManagerInternal mUserManagerInternal;
    private final UserManagerInternal.UserRestrictionsListener mUserRestrictionsListener;
    private boolean mUserSelectedVolumeControlStream;
    private boolean mUserSwitchedReceived;
    private int mVibrateSetting;
    private Vibrator mVibrator;
    private AtomicBoolean mVoiceActive;
    private final IPlaybackConfigDispatcher mVoiceActivityMonitor;
    private int mVolumeControlStream;
    private final VolumeController mVolumeController;
    private VolumePolicy mVolumePolicy;
    private int mZenModeAffectedStreams;
    protected static int[] MAX_STREAM_VOLUME = {5, 7, 7, 15, 7, 7, 15, 7, 15, 15, 15, 15, 15};
    protected static int[] MIN_STREAM_VOLUME = {1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0};
    private static final int[] STREAM_VOLUME_OPS = {34, 36, 35, 36, 37, 38, 39, 36, 36, 36, 64, 36};
    private static Set<Integer> sDeviceVolumeBehaviorSupportedDeviceOutSet = new HashSet(Arrays.asList(1024, 262144, 524288, 131072));
    private static final AudioAttributes VIBRATION_ATTRIBUTES = new AudioAttributes.Builder().setContentType(4).setUsage(13).build();

    @Retention(RetentionPolicy.SOURCE)
    public @interface BtProfileConnectionState {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ConnectionState {
    }

    static /* synthetic */ int access$10108(AudioService x0) {
        int i = x0.mAudioPolicyCounter;
        x0.mAudioPolicyCounter = i + 1;
        return i;
    }

    private boolean isPlatformVoice() {
        return this.mPlatformType == 1;
    }

    boolean isPlatformTelevision() {
        return this.mPlatformType == 2;
    }

    boolean isPlatformAutomotive() {
        return this.mContext.getPackageManager().hasSystemFeature("android.hardware.type.automotive");
    }

    int getVssVolumeForDevice(int stream, int device) {
        return this.mStreamStates[stream].getIndex(device);
    }

    static {
        HashSet hashSet = new HashSet();
        DEVICE_MEDIA_UNMUTED_ON_PLUG_SET = hashSet;
        hashSet.add(4);
        DEVICE_MEDIA_UNMUTED_ON_PLUG_SET.add(8);
        DEVICE_MEDIA_UNMUTED_ON_PLUG_SET.add(131072);
        DEVICE_MEDIA_UNMUTED_ON_PLUG_SET.addAll(AudioSystem.DEVICE_OUT_ALL_A2DP_SET);
        DEVICE_MEDIA_UNMUTED_ON_PLUG_SET.addAll(AudioSystem.DEVICE_OUT_ALL_USB_SET);
        DEVICE_MEDIA_UNMUTED_ON_PLUG_SET.add(1024);
        sVolumeGroupStates = new SparseArray<>();
        sIndependentA11yVolume = false;
        sLifecycleLogger = new AudioEventLogger(20, "audio services lifecycle");
        sDeviceLogger = new AudioEventLogger(30, "wired/A2DP/hearing aid device connection");
        sForceUseLogger = new AudioEventLogger(20, "force use (logged before setForceUse() is executed)");
        sVolumeLogger = new AudioEventLogger(40, "volume changes (logged when command received by AudioService)");
        RINGER_MODE_NAMES = new String[]{"SILENT", "VIBRATE", PriorityDump.PRIORITY_ARG_NORMAL};
    }

    public static String makeAlsaAddressString(int card, int device) {
        return "card=" + card + ";device=" + device + ";";
    }

    public static final class Lifecycle extends SystemService {
        private AudioService mService;

        public Lifecycle(Context context) {
            super(context);
            this.mService = new AudioService(context);
        }

        @Override // com.android.server.SystemService
        public void onStart() {
            publishBinderService("audio", this.mService);
        }

        @Override // com.android.server.SystemService
        public void onBootPhase(int phase) {
            if (phase == 550) {
                this.mService.systemReady();
            }
        }
    }

    public AudioService(Context context) {
        this(context, AudioSystemAdapter.getDefaultAdapter(), SystemServerAdapter.getDefaultAdapter(context));
    }

    public AudioService(Context context, AudioSystemAdapter audioSystem, SystemServerAdapter systemServer) {
        this.mCarAudio = null;
        this.mBuilder = new AudioAttributes.Builder();
        this.mVolumeController = new VolumeController();
        this.mMode = 0;
        this.mSettingsLock = new Object();
        this.mA2dpViaSecondBluetooth = false;
        this.STREAM_VOLUME_ALIAS_VOICE = new int[]{0, 2, 2, 3, 4, 2, 6, 2, 2, 3, 3, 3, 12};
        this.STREAM_VOLUME_ALIAS_TELEVISION = new int[]{3, 3, 3, 3, 3, 3, 6, 3, 3, 3, 3, 3, 12};
        this.STREAM_VOLUME_ALIAS_DEFAULT = new int[]{0, 2, 2, 3, 4, 2, 6, 2, 2, 3, 3, 3, 12};
        this.mAvrcpAbsVolSupported = false;
        this.mAudioSystemCallback = new AudioSystem.ErrorCallback() { // from class: com.android.server.audio.AudioService.1
            public void onError(int error) {
                if (error == 100) {
                    if (AudioService.this.mRecordMonitor != null) {
                        AudioService.this.mRecordMonitor.onAudioServerDied();
                    }
                    AudioService.sendMsg(AudioService.this.mAudioHandler, 4, 1, 0, 0, null, 0);
                    AudioService.sendMsg(AudioService.this.mAudioHandler, 23, 2, 0, 0, null, 0);
                }
            }
        };
        this.mCarVolumeCallbackImpl = new ICarVolumeCallback.Stub() { // from class: com.android.server.audio.AudioService.2
            public void onGroupVolumeChanged(int zoneId, int groupId, int flags) {
                if (AudioService.this.mCarAudio != null) {
                    try {
                        int volume = AudioService.this.mCarAudio.getGroupVolume(zoneId, groupId);
                        int[] usages = AudioService.this.mCarAudio.getUsagesForVolumeGroupId(zoneId, groupId);
                        for (int usage : usages) {
                            int stream = AudioAttributes.toAutomotiveStreamType(AudioService.this.mBuilder.setUsage(usage).build());
                            if (stream != -1) {
                                Log.i(AudioService.TAG, "onGroupVolumeChanged send stream: " + AudioSystem.STREAM_NAMES[stream] + " changed message  usage " + AudioAttributes.usageToString(usage) + " volume " + volume);
                                AudioService.this.mStreamStates[stream].mVolumeChanged.putExtra("android.media.EXTRA_VOLUME_STREAM_VALUE", volume);
                                AudioService.this.mStreamStates[stream].mVolumeChanged.putExtra("android.media.EXTRA_PREV_VOLUME_STREAM_VALUE", 0);
                                AudioService.this.mStreamStates[stream].mVolumeChanged.putExtra("android.media.EXTRA_VOLUME_STREAM_TYPE_ALIAS", AudioService.mStreamVolumeAlias[stream]);
                                AudioService.this.sendBroadcastToAll(AudioService.this.mStreamStates[stream].mVolumeChanged);
                            }
                        }
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
            }

            public void onMasterMuteChanged(int zoneId, int groupId) {
            }
        };
        this.mRingerModeExternal = -1;
        this.mRingerModeAffectedStreams = 0;
        this.mZenModeAffectedStreams = 0;
        this.mReceiver = new AudioServiceBroadcastReceiver();
        this.mUserRestrictionsListener = new AudioServiceUserRestrictionsListener();
        this.mSetModeDeathHandlers = new ArrayList<>();
        this.mPrevVolDirection = 0;
        this.mVolumeControlStream = -1;
        this.mUserSelectedVolumeControlStream = false;
        this.mForceControlStreamLock = new Object();
        this.mForceControlStreamClient = null;
        this.mFixedVolumeDevices = new HashSet(Arrays.asList(4096, 2048, 262144, 524288, 2097152));
        this.mFullVolumeDevices = new HashSet();
        this.mAbsVolumeMultiModeCaseDevices = new HashSet(Arrays.asList(Integer.valueOf(AudioFormat.OPUS)));
        this.mDockAudioMediaEnabled = true;
        this.mDockState = 0;
        this.mPrescaleAbsoluteVolume = new float[]{0.5f, 0.7f, 0.85f};
        this.mVolumePolicy = VolumePolicy.DEFAULT;
        this.mAccessibilityServiceUidsLock = new Object();
        this.mInputMethodServiceUid = -1;
        this.mInputMethodServiceUidLock = new Object();
        this.mAudioFocusStatus = new HashMap<>();
        this.mSupportedSystemUsagesLock = new Object();
        this.mSupportedSystemUsages = new int[]{17};
        this.mUidObserver = new IUidObserver.Stub() { // from class: com.android.server.audio.AudioService.3
            public void onUidStateChanged(int uid, int procState, long procStateSeq, int capability) {
            }

            public void onUidGone(int uid, boolean disabled) {
                disableAudioForUid(false, uid);
            }

            public void onUidActive(int uid) throws RemoteException {
            }

            public void onUidIdle(int uid, boolean disabled) {
            }

            public void onUidCachedChanged(int uid, boolean cached) {
                disableAudioForUid(cached, uid);
            }

            private void disableAudioForUid(boolean z, int i) {
                AudioService audioService = AudioService.this;
                audioService.queueMsgUnderWakeLock(audioService.mAudioHandler, 100, z ? 1 : 0, i, null, 0);
            }
        };
        this.mRttEnabled = false;
        this.mVoiceActive = new AtomicBoolean(false);
        this.mVoiceActivityMonitor = new IPlaybackConfigDispatcher.Stub() { // from class: com.android.server.audio.AudioService.4
            public void dispatchPlaybackConfigChange(List<AudioPlaybackConfiguration> configs, boolean flush) {
                AudioService.sendMsg(AudioService.this.mAudioHandler, 29, 0, 0, 0, configs, 0);
            }
        };
        this.carServiceDeathHandle = new IBinder.DeathRecipient() { // from class: com.android.server.audio.AudioService.5
            @Override // android.os.IBinder.DeathRecipient
            public void binderDied() {
                Log.i(AudioService.TAG, "car_service is died");
                AudioService.this.mCarAudio = null;
            }
        };
        this.mRmtSbmxFullVolRefCount = 0;
        this.mRmtSbmxFullVolDeathHandlers = new ArrayList<>();
        this.mIsCallScreeningModeSupported = false;
        this.mSafeMediaVolumeStateLock = new Object();
        this.mMcc = 0;
        this.mSafeMediaVolumeDevices = new HashSet(Arrays.asList(4, 8, 67108864));
        this.mHdmiClientLock = new Object();
        this.mHdmiSystemAudioSupported = false;
        this.mHdmiControlStatusChangeListenerCallback = new MyHdmiControlStatusChangeListenerCallback();
        this.mMyHdmiCecVolumeControlFeatureListener = new MyHdmiCecVolumeControlFeatureListener();
        this.mModeLogger = new AudioEventLogger(20, "phone state (logged after successful call to AudioSystem.setPhoneState(int, int))");
        this.mDynPolicyLogger = new AudioEventLogger(10, "dynamic policy events (logged when command received by AudioService)");
        this.mExtVolumeControllerLock = new Object();
        this.mDynPolicyCallback = new AudioSystem.DynamicPolicyCallback() { // from class: com.android.server.audio.AudioService.7
            public void onDynamicPolicyMixStateUpdate(String regId, int state) {
                if (!TextUtils.isEmpty(regId)) {
                    AudioService.sendMsg(AudioService.this.mAudioHandler, 19, 2, state, 0, regId, 0);
                }
            }
        };
        this.mAudioServerStateListeners = new HashMap<>();
        this.mAudioPolicies = new HashMap<>();
        this.mAudioPolicyCounter = 0;
        sLifecycleLogger.log(new AudioEventLogger.StringEvent("AudioService()"));
        this.mContext = context;
        this.mContentResolver = context.getContentResolver();
        this.mAppOps = (AppOpsManager) context.getSystemService("appops");
        this.mAudioSystem = audioSystem;
        this.mSystemServer = systemServer;
        this.mPlatformType = AudioSystem.getPlatformType(context);
        this.mIsSingleVolume = AudioSystem.isSingleVolume(context);
        this.mUserManagerInternal = (UserManagerInternal) LocalServices.getService(UserManagerInternal.class);
        this.mActivityManagerInternal = (ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class);
        PowerManager pm = (PowerManager) context.getSystemService("power");
        this.mAudioEventWakeLock = pm.newWakeLock(1, "handleAudioEvent");
        this.mSfxHelper = new SoundEffectsHelper(this.mContext);
        Vibrator vibrator = (Vibrator) context.getSystemService("vibrator");
        this.mVibrator = vibrator;
        this.mHasVibrator = vibrator == null ? false : vibrator.hasVibrator();
        if (AudioProductStrategy.getAudioProductStrategies().size() > 0) {
            int numStreamTypes = AudioSystem.getNumStreamTypes();
            for (int streamType = numStreamTypes - 1; streamType >= 0; streamType--) {
                AudioAttributes attr = AudioProductStrategy.getAudioAttributesForStrategyWithLegacyStreamType(streamType);
                int maxVolume = AudioSystem.getMaxVolumeIndexForAttributes(attr);
                if (maxVolume != -1) {
                    MAX_STREAM_VOLUME[streamType] = maxVolume;
                }
                int minVolume = AudioSystem.getMinVolumeIndexForAttributes(attr);
                if (minVolume != -1) {
                    MIN_STREAM_VOLUME[streamType] = minVolume;
                }
            }
        }
        int maxCallVolume = SystemProperties.getInt("ro.config.vc_call_vol_steps", -1);
        if (maxCallVolume != -1) {
            MAX_STREAM_VOLUME[0] = maxCallVolume;
        }
        int defaultCallVolume = SystemProperties.getInt("ro.config.vc_call_vol_default", -1);
        if (defaultCallVolume == -1 || defaultCallVolume > MAX_STREAM_VOLUME[0] || defaultCallVolume < MIN_STREAM_VOLUME[0]) {
            AudioSystem.DEFAULT_STREAM_VOLUME[0] = (MAX_STREAM_VOLUME[0] * 3) / 4;
        } else {
            AudioSystem.DEFAULT_STREAM_VOLUME[0] = defaultCallVolume;
        }
        int maxMusicVolume = SystemProperties.getInt("ro.config.media_vol_steps", -1);
        if (maxMusicVolume != -1) {
            MAX_STREAM_VOLUME[3] = maxMusicVolume;
        }
        int defaultMusicVolume = SystemProperties.getInt("ro.config.media_vol_default", -1);
        if (defaultMusicVolume != -1 && defaultMusicVolume <= MAX_STREAM_VOLUME[3] && defaultMusicVolume >= MIN_STREAM_VOLUME[3]) {
            AudioSystem.DEFAULT_STREAM_VOLUME[3] = defaultMusicVolume;
        } else if (isPlatformTelevision()) {
            AudioSystem.DEFAULT_STREAM_VOLUME[3] = MAX_STREAM_VOLUME[3] / 4;
        } else {
            AudioSystem.DEFAULT_STREAM_VOLUME[3] = MAX_STREAM_VOLUME[3] / 3;
        }
        int maxAlarmVolume = SystemProperties.getInt("ro.config.alarm_vol_steps", -1);
        if (maxAlarmVolume != -1) {
            MAX_STREAM_VOLUME[4] = maxAlarmVolume;
        }
        int defaultAlarmVolume = SystemProperties.getInt("ro.config.alarm_vol_default", -1);
        if (defaultAlarmVolume != -1 && defaultAlarmVolume <= MAX_STREAM_VOLUME[4]) {
            AudioSystem.DEFAULT_STREAM_VOLUME[4] = defaultAlarmVolume;
        } else {
            AudioSystem.DEFAULT_STREAM_VOLUME[4] = (MAX_STREAM_VOLUME[4] * 6) / 7;
        }
        int maxSystemVolume = SystemProperties.getInt("ro.config.system_vol_steps", -1);
        if (maxSystemVolume != -1) {
            MAX_STREAM_VOLUME[1] = maxSystemVolume;
        }
        int defaultSystemVolume = SystemProperties.getInt("ro.config.system_vol_default", -1);
        if (defaultSystemVolume != -1 && defaultSystemVolume <= MAX_STREAM_VOLUME[1]) {
            AudioSystem.DEFAULT_STREAM_VOLUME[1] = defaultSystemVolume;
        } else {
            AudioSystem.DEFAULT_STREAM_VOLUME[1] = MAX_STREAM_VOLUME[1];
        }
        int maxBluetoothVolume = SystemProperties.getInt("ro.config.bluetooth_vol_steps", -1);
        if (maxBluetoothVolume != -1) {
            MAX_STREAM_VOLUME[12] = maxBluetoothVolume;
        }
        int defaultBluetoothVolume = SystemProperties.getInt("ro.config.bluetooth_vol_default", -1);
        if (defaultBluetoothVolume != -1 && defaultBluetoothVolume <= MAX_STREAM_VOLUME[12]) {
            AudioSystem.DEFAULT_STREAM_VOLUME[12] = defaultBluetoothVolume;
        }
        createAudioSystemThread();
        AudioSystem.setErrorCallback(this.mAudioSystemCallback);
        updateAudioHalPids();
        boolean cameraSoundForced = readCameraSoundForced();
        this.mCameraSoundForced = new Boolean(cameraSoundForced).booleanValue();
        sendMsg(this.mAudioHandler, 8, 2, 4, cameraSoundForced ? 11 : 0, new String("AudioService ctor"), 0);
        this.mSafeMediaVolumeState = Settings.Global.getInt(this.mContentResolver, "audio_safe_volume_state", 0);
        this.mSafeMediaVolumeIndex = this.mContext.getResources().getInteger(R.integer.config_keepPreloadsMinDays) * 10;
        this.mUseFixedVolume = this.mContext.getResources().getBoolean(R.bool.config_safetyProtectionEnabled);
        this.mUseSystemAutoDuck = this.mContext.getResources().getBoolean(R.bool.config_cecSystemAudioControl_userConfigurable);
        this.mUseSystemHardwareDuck = this.mContext.getResources().getBoolean(R.bool.config_cecSystemAudioModeMutingDisabled_allowed);
        this.mDeviceBroker = new AudioDeviceBroker(this.mContext, this);
        this.mRecordMonitor = new RecordingActivityMonitor(this.mContext);
        updateStreamVolumeAlias(false, TAG);
        readPersistedSettings();
        readUserRestrictions();
        this.mSettingsObserver = new SettingsObserver();
        createStreamStates();
        initVolumeGroupStates();
        this.mSafeUsbMediaVolumeIndex = getSafeUsbMediaVolumeIndex();
        this.mPlaybackMonitor = new PlaybackActivityMonitor(context, MAX_STREAM_VOLUME[4]);
        MediaFocusControl mediaFocusControl = new MediaFocusControl(this.mContext, this.mPlaybackMonitor);
        this.mMediaFocusControl = mediaFocusControl;
        mediaFocusControl.setSystemAutoDuckStatus(this.mUseSystemAutoDuck);
        this.mMediaFocusControl.setSystemHardwareDuckStatus(this.mUseSystemHardwareDuck);
        readAndSetLowRamDevice();
        this.mIsCallScreeningModeSupported = AudioSystem.isCallScreeningModeSupported();
        this.mRingerAndZenModeMutedStreams = 0;
        setRingerModeInt(getRingerModeInternal(), false);
        this.mA2dpViaSecondBluetooth = this.mContext.getResources().getBoolean(R.bool.config_allowDockBeforeProvision);
        Log.d(TAG, "config mA2dpViaSecondBluetooth: " + this.mA2dpViaSecondBluetooth);
        IntentFilter intentFilter = new IntentFilter("android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED");
        intentFilter.addAction("android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED");
        intentFilter.addAction("android.intent.action.DOCK_EVENT");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_SWITCHED");
        intentFilter.addAction("android.intent.action.USER_BACKGROUND");
        intentFilter.addAction("android.intent.action.USER_FOREGROUND");
        intentFilter.addAction("android.hardware.usb.action.USB_DEVICE_ATTACHED");
        if (!this.mA2dpViaSecondBluetooth) {
            intentFilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
        } else {
            intentFilter.addAction("mega.bluetooth.adapter.action.STATE_CHANGED");
        }
        intentFilter.addAction("android.intent.action.PACKAGES_SUSPENDED");
        intentFilter.addAction("android.intent.action.CONFIGURATION_CHANGED");
        boolean z = SystemProperties.getBoolean("ro.audio.monitorRotation", false);
        this.mMonitorRotation = z;
        if (z) {
            RotationHelper.init(this.mContext, this.mAudioHandler);
        }
        intentFilter.addAction("android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION");
        intentFilter.addAction("android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION");
        context.registerReceiverAsUser(this.mReceiver, UserHandle.ALL, intentFilter, null, null);
        if (this.mSystemServer.isPrivileged()) {
            LocalServices.addService(AudioManagerInternal.class, new AudioServiceInternal());
            this.mUserManagerInternal.addUserRestrictionsListener(this.mUserRestrictionsListener);
            this.mRecordMonitor.initMonitor();
        }
        float[] preScale = {this.mContext.getResources().getFraction(R.fraction.config_prescaleAbsoluteVolume_index1, 1, 1), this.mContext.getResources().getFraction(R.fraction.config_prescaleAbsoluteVolume_index2, 1, 1), this.mContext.getResources().getFraction(R.fraction.config_prescaleAbsoluteVolume_index3, 1, 1)};
        for (int i = 0; i < preScale.length; i++) {
            if (0.0f <= preScale[i] && preScale[i] <= 1.0f) {
                this.mPrescaleAbsoluteVolume[i] = preScale[i];
            }
        }
        checkVolumeRangeInitialization("AudioService()");
    }

    public void systemReady() {
        sendMsg(this.mAudioHandler, 16, 2, 0, 0, null, 0);
    }

    public void onSystemReady() {
        this.mSystemReady = true;
        scheduleLoadSoundEffects();
        this.mDeviceBroker.onSystemReady();
        if (this.mContext.getPackageManager().hasSystemFeature("android.hardware.hdmi.cec")) {
            synchronized (this.mHdmiClientLock) {
                this.mHdmiCecSink = false;
                HdmiControlManager hdmiControlManager = (HdmiControlManager) this.mContext.getSystemService(HdmiControlManager.class);
                this.mHdmiManager = hdmiControlManager;
                if (hdmiControlManager != null) {
                    hdmiControlManager.addHdmiControlStatusChangeListener(this.mHdmiControlStatusChangeListenerCallback);
                    this.mHdmiManager.addHdmiCecVolumeControlFeatureListener(this.mContext.getMainExecutor(), this.mMyHdmiCecVolumeControlFeatureListener);
                }
                HdmiTvClient tvClient = this.mHdmiManager.getTvClient();
                this.mHdmiTvClient = tvClient;
                if (tvClient != null) {
                    this.mFixedVolumeDevices.removeAll(AudioSystem.DEVICE_ALL_HDMI_SYSTEM_AUDIO_AND_SPEAKER_SET);
                }
                this.mHdmiPlaybackClient = this.mHdmiManager.getPlaybackClient();
                this.mHdmiAudioSystemClient = this.mHdmiManager.getAudioSystemClient();
            }
        }
        this.mNm = (NotificationManager) this.mContext.getSystemService("notification");
        sendMsg(this.mAudioHandler, 13, 0, 0, 0, TAG, SystemProperties.getBoolean("audio.safemedia.bypass", false) ? 0 : SAFE_VOLUME_CONFIGURE_TIMEOUT_MS);
        initA11yMonitoring();
        RoleObserver roleObserver = new RoleObserver();
        this.mRoleObserver = roleObserver;
        roleObserver.register();
        onIndicateSystemReady();
        this.mMicMuteFromSystemCached = this.mAudioSystem.isMicrophoneMuted();
        setMicMuteFromSwitchInput();
        initMinStreamVolumeWithoutModifyAudioSettings();
    }

    class RoleObserver implements OnRoleHoldersChangedListener {
        private final Executor mExecutor;
        private RoleManager mRm;

        RoleObserver() {
            this.mExecutor = AudioService.this.mContext.getMainExecutor();
        }

        public void register() {
            RoleManager roleManager = (RoleManager) AudioService.this.mContext.getSystemService("role");
            this.mRm = roleManager;
            if (roleManager != null) {
                roleManager.addOnRoleHoldersChangedListenerAsUser(this.mExecutor, this, UserHandle.ALL);
                AudioService.this.updateAssistantUId(true);
            }
        }

        public void onRoleHoldersChanged(String roleName, UserHandle user) {
            if ("android.app.role.ASSISTANT".equals(roleName)) {
                AudioService.this.updateAssistantUId(false);
            }
        }

        public String getAssistantRoleHolder() {
            RoleManager roleManager = this.mRm;
            if (roleManager == null) {
                return "";
            }
            List<String> assistants = roleManager.getRoleHolders("android.app.role.ASSISTANT");
            String assitantPackage = assistants.size() == 0 ? "" : assistants.get(0);
            return assitantPackage;
        }
    }

    void onIndicateSystemReady() {
        if (AudioSystem.systemReady() == 0) {
            return;
        }
        sendMsg(this.mAudioHandler, 20, 0, 0, 0, null, 1000);
    }

    public void onAudioServerDied() {
        int forSys;
        if (!this.mSystemReady || AudioSystem.checkAudioFlinger() != 0) {
            Log.e(TAG, "Audioserver died.");
            sLifecycleLogger.log(new AudioEventLogger.StringEvent("onAudioServerDied() audioserver died"));
            sendMsg(this.mAudioHandler, 4, 1, 0, 0, null, 500);
            return;
        }
        Log.i(TAG, "Audioserver started.");
        sLifecycleLogger.log(new AudioEventLogger.StringEvent("onAudioServerDied() audioserver started"));
        updateAudioHalPids();
        AudioSystem.setParameters("restarting=true");
        readAndSetLowRamDevice();
        this.mIsCallScreeningModeSupported = AudioSystem.isCallScreeningModeSupported();
        this.mDeviceBroker.onAudioServerDied();
        synchronized (this.mDeviceBroker.mSetModeLock) {
            if (AudioSystem.setPhoneState(this.mMode, getModeOwnerUid()) == 0) {
                this.mModeLogger.log(new AudioEventLogger.StringEvent("onAudioServerDied causes setPhoneState(" + AudioSystem.modeToString(this.mMode) + ", uid=" + getModeOwnerUid() + ")"));
            }
        }
        synchronized (this.mSettingsLock) {
            forSys = this.mCameraSoundForced ? 11 : 0;
        }
        this.mDeviceBroker.setForceUse_Async(4, forSys, "onAudioServerDied");
        onReinitVolumes("after audioserver restart");
        restoreVolumeGroups();
        updateMasterMono(this.mContentResolver);
        updateMasterBalance(this.mContentResolver);
        setRingerModeInt(getRingerModeInternal(), false);
        if (this.mMonitorRotation) {
            RotationHelper.updateOrientation();
        }
        synchronized (this.mSettingsLock) {
            int forDock = this.mDockAudioMediaEnabled ? 8 : 0;
            this.mDeviceBroker.setForceUse_Async(3, forDock, "onAudioServerDied");
            sendEncodedSurroundMode(this.mContentResolver, "onAudioServerDied");
            sendEnabledSurroundFormats(this.mContentResolver, true);
            updateAssistantUId(true);
            AudioSystem.setRttEnabled(this.mRttEnabled);
        }
        synchronized (this.mAccessibilityServiceUidsLock) {
            AudioSystem.setA11yServicesUids(this.mAccessibilityServiceUids);
        }
        synchronized (this.mInputMethodServiceUidLock) {
            this.mAudioSystem.setCurrentImeUid(this.mInputMethodServiceUid);
        }
        synchronized (this.mHdmiClientLock) {
            if (this.mHdmiManager != null && this.mHdmiTvClient != null) {
                setHdmiSystemAudioSupported(this.mHdmiSystemAudioSupported);
            }
        }
        synchronized (this.mSupportedSystemUsagesLock) {
            AudioSystem.setSupportedSystemUsages(this.mSupportedSystemUsages);
        }
        synchronized (this.mAudioPolicies) {
            List<AudioPolicyProxy> policiesToRelease = new ArrayList<>();
            for (AudioPolicyProxy policy : this.mAudioPolicies.values()) {
                int status = policy.connectMixes();
                if (status != 0) {
                    Log.e(TAG, "onAudioServerDied: error,add to list " + AudioSystem.audioSystemErrorToString(status) + " when connecting mixes for policy " + policy.toLogFriendlyString());
                    policiesToRelease.add(policy);
                } else {
                    int deviceAffinitiesStatus = policy.setupDeviceAffinities();
                    if (deviceAffinitiesStatus != 0) {
                        Log.e(TAG, "onAudioServerDied: error " + AudioSystem.audioSystemErrorToString(deviceAffinitiesStatus) + " when connecting device affinities for policy " + policy.toLogFriendlyString());
                        policiesToRelease.add(policy);
                    }
                }
            }
            for (AudioPolicyProxy policy2 : policiesToRelease) {
                Log.e(TAG, "onAudioServerDied: remove list " + AudioSystem.audioSystemErrorToString(policy2.setupDeviceAffinities()) + " when connecting device affinities for policy " + policy2.toLogFriendlyString());
                this.mAudioPolicies.remove(policy2);
                policy2.release();
            }
        }
        synchronized (this.mPlaybackMonitor) {
            HashMap<Integer, Integer> allowedCapturePolicies = this.mPlaybackMonitor.getAllAllowedCapturePolicies();
            for (Map.Entry<Integer, Integer> entry : allowedCapturePolicies.entrySet()) {
                int result = AudioSystem.setAllowedCapturePolicy(entry.getKey().intValue(), AudioAttributes.capturePolicyToFlags(entry.getValue().intValue(), 0));
                if (result != 0) {
                    Log.e(TAG, "Failed to restore capture policy, uid: " + entry.getKey() + ", capture policy: " + entry.getValue() + ", result: " + result);
                    this.mPlaybackMonitor.setAllowedCapturePolicy(entry.getKey().intValue(), 1);
                }
            }
        }
        onIndicateSystemReady();
        AudioSystem.setParameters("restarting=false");
        sendMsg(this.mAudioHandler, 23, 2, 1, 0, null, 0);
        setMicrophoneMuteNoCallerCheck(getCurrentUserId());
        setMicMuteFromSwitchInput();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onReinitVolumes(String caller) {
        int numStreamTypes = AudioSystem.getNumStreamTypes();
        int status = 0;
        for (int streamType = numStreamTypes - 1; streamType >= 0; streamType--) {
            VolumeStreamState streamState = this.mStreamStates[streamType];
            int res = AudioSystem.initStreamVolume(streamType, streamState.mIndexMin / 10, streamState.mIndexMax / 10);
            if (res != 0) {
                status = res;
                Log.e(TAG, "Failed to initStreamVolume (" + res + ") for stream " + streamType);
                break;
            }
            streamState.applyAllVolumes();
        }
        if (status != 0) {
            sLifecycleLogger.log(new AudioEventLogger.StringEvent(caller + ": initStreamVolume failed with " + status + " will retry").printLog(1, TAG));
            sendMsg(this.mAudioHandler, 32, 1, 0, 0, caller, 2000);
            return;
        }
        if (!checkVolumeRangeInitialization(caller)) {
            return;
        }
        sLifecycleLogger.log(new AudioEventLogger.StringEvent(caller + ": initStreamVolume succeeded").printLog(0, TAG));
    }

    private boolean checkVolumeRangeInitialization(String caller) {
        boolean success = true;
        int[] basicStreams = {4, 2, 3, 0, 10};
        for (int streamType : basicStreams) {
            AudioAttributes aa = new AudioAttributes.Builder().setInternalLegacyStreamType(streamType).build();
            if (AudioSystem.getMaxVolumeIndexForAttributes(aa) < 0 || AudioSystem.getMinVolumeIndexForAttributes(aa) < 0) {
                success = false;
                break;
            }
        }
        if (!success) {
            sLifecycleLogger.log(new AudioEventLogger.StringEvent(caller + ": initStreamVolume succeeded but invalid mix/max levels, will retry").printLog(2, TAG));
            sendMsg(this.mAudioHandler, 32, 1, 0, 0, caller, 2000);
        }
        return success;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDispatchAudioServerStateChange(boolean state) {
        synchronized (this.mAudioServerStateListeners) {
            for (AsdProxy asdp : this.mAudioServerStateListeners.values()) {
                try {
                    asdp.callback().dispatchAudioServerStateChange(state);
                } catch (RemoteException e) {
                    Log.w(TAG, "Could not call dispatchAudioServerStateChange()", e);
                }
            }
        }
    }

    private void createAudioSystemThread() {
        AudioSystemThread audioSystemThread = new AudioSystemThread();
        this.mAudioSystemThread = audioSystemThread;
        audioSystemThread.start();
        waitForAudioHandlerCreation();
    }

    private void waitForAudioHandlerCreation() {
        synchronized (this) {
            while (this.mAudioHandler == null) {
                try {
                    wait();
                } catch (InterruptedException e) {
                    Log.e(TAG, "Interrupted while waiting on volume handler.");
                }
            }
        }
    }

    public void setSupportedSystemUsages(int[] systemUsages) {
        enforceModifyAudioRoutingPermission();
        verifySystemUsages(systemUsages);
        synchronized (this.mSupportedSystemUsagesLock) {
            AudioSystem.setSupportedSystemUsages(systemUsages);
            this.mSupportedSystemUsages = systemUsages;
        }
    }

    public int[] getSupportedSystemUsages() {
        int[] iArrCopyOf;
        enforceModifyAudioRoutingPermission();
        synchronized (this.mSupportedSystemUsagesLock) {
            iArrCopyOf = Arrays.copyOf(this.mSupportedSystemUsages, this.mSupportedSystemUsages.length);
        }
        return iArrCopyOf;
    }

    private void verifySystemUsages(int[] systemUsages) {
        for (int i = 0; i < systemUsages.length; i++) {
            if (!AudioAttributes.isSystemUsage(systemUsages[i])) {
                throw new IllegalArgumentException("Non-system usage provided: " + systemUsages[i]);
            }
        }
    }

    public List<AudioProductStrategy> getAudioProductStrategies() {
        enforceModifyAudioRoutingPermission();
        return AudioProductStrategy.getAudioProductStrategies();
    }

    public List<AudioVolumeGroup> getAudioVolumeGroups() {
        enforceModifyAudioRoutingPermission();
        return AudioVolumeGroup.getAudioVolumeGroups();
    }

    private void checkAllAliasStreamVolumes() {
        synchronized (this.mSettingsLock) {
            synchronized (VolumeStreamState.class) {
                int numStreamTypes = AudioSystem.getNumStreamTypes();
                for (int streamType = 0; streamType < numStreamTypes; streamType++) {
                    this.mStreamStates[streamType].setAllIndexes(this.mStreamStates[mStreamVolumeAlias[streamType]], TAG);
                    if (!this.mStreamStates[streamType].mIsMuted) {
                        this.mStreamStates[streamType].applyAllVolumes();
                    }
                }
            }
        }
    }

    void postCheckVolumeCecOnHdmiConnection(int state, String caller) {
        sendMsg(this.mAudioHandler, MSG_HDMI_VOLUME_CHECK, 0, state, 0, caller, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCheckVolumeCecOnHdmiConnection(int state, String caller) {
        if (state == 1) {
            if (this.mSafeMediaVolumeDevices.contains(1024)) {
                sendMsg(this.mAudioHandler, 11, 0, 0, 0, caller, MUSIC_ACTIVE_POLL_PERIOD_MS);
            }
            if (isPlatformTelevision()) {
                checkAddAllFixedVolumeDevices(1024, caller);
                synchronized (this.mHdmiClientLock) {
                    if (this.mHdmiManager != null && this.mHdmiPlaybackClient != null) {
                        updateHdmiCecSinkLocked(this.mHdmiCecSink | false);
                    }
                }
            }
            sendEnabledSurroundFormats(this.mContentResolver, true);
            return;
        }
        if (isPlatformTelevision()) {
            synchronized (this.mHdmiClientLock) {
                if (this.mHdmiManager != null) {
                    updateHdmiCecSinkLocked(this.mHdmiCecSink | false);
                }
            }
        }
    }

    private void checkAddAllFixedVolumeDevices(int device, String caller) {
        int numStreamTypes = AudioSystem.getNumStreamTypes();
        for (int streamType = 0; streamType < numStreamTypes; streamType++) {
            if (!this.mStreamStates[streamType].hasIndexForDevice(device)) {
                VolumeStreamState[] volumeStreamStateArr = this.mStreamStates;
                volumeStreamStateArr[streamType].setIndex(volumeStreamStateArr[mStreamVolumeAlias[streamType]].getIndex(1073741824), device, caller, true);
            }
            this.mStreamStates[streamType].checkFixedVolumeDevices();
        }
    }

    private void checkAllFixedVolumeDevices() {
        int numStreamTypes = AudioSystem.getNumStreamTypes();
        for (int streamType = 0; streamType < numStreamTypes; streamType++) {
            this.mStreamStates[streamType].checkFixedVolumeDevices();
        }
    }

    private void checkAllFixedVolumeDevices(int streamType) {
        this.mStreamStates[streamType].checkFixedVolumeDevices();
    }

    private void checkMuteAffectedStreams() {
        int i = 0;
        while (true) {
            VolumeStreamState[] volumeStreamStateArr = this.mStreamStates;
            if (i < volumeStreamStateArr.length) {
                VolumeStreamState vss = volumeStreamStateArr[i];
                if (vss.mIndexMin > 0 && vss.mStreamType != 0 && vss.mStreamType != 6) {
                    this.mMuteAffectedStreams &= ~(1 << vss.mStreamType);
                }
                i++;
            } else {
                return;
            }
        }
    }

    private void createStreamStates() {
        int numStreamTypes = AudioSystem.getNumStreamTypes();
        VolumeStreamState[] streams = new VolumeStreamState[numStreamTypes];
        this.mStreamStates = streams;
        for (int i = 0; i < numStreamTypes; i++) {
            streams[i] = new VolumeStreamState(Settings.System.VOLUME_SETTINGS_INT[mStreamVolumeAlias[i]], i);
        }
        checkAllFixedVolumeDevices();
        checkAllAliasStreamVolumes();
        checkMuteAffectedStreams();
        updateDefaultVolumes();
    }

    private void updateDefaultVolumes() {
        for (int stream = 0; stream < this.mStreamStates.length; stream++) {
            if (stream != mStreamVolumeAlias[stream]) {
                int[] iArr = AudioSystem.DEFAULT_STREAM_VOLUME;
                int[] iArr2 = AudioSystem.DEFAULT_STREAM_VOLUME;
                int[] iArr3 = mStreamVolumeAlias;
                iArr[stream] = (rescaleIndex(iArr2[iArr3[stream]] * 10, iArr3[stream], stream) + 5) / 10;
            }
        }
    }

    private void dumpStreamStates(PrintWriter pw) {
        pw.println("\nStream volumes (device: index)");
        int numStreamTypes = AudioSystem.getNumStreamTypes();
        for (int i = 0; i < numStreamTypes; i++) {
            pw.println("- " + AudioSystem.STREAM_NAMES[i] + ":");
            this.mStreamStates[i].dump(pw);
            pw.println("");
        }
        pw.print("\n- mute affected streams = 0x");
        pw.println(Integer.toHexString(this.mMuteAffectedStreams));
    }

    private void updateStreamVolumeAlias(boolean updateVolumes, String caller) {
        int dtmfStreamAlias;
        int dtmfStreamAlias2;
        int a11yStreamAlias = sIndependentA11yVolume ? 10 : 3;
        int assistantStreamAlias = this.mContext.getResources().getBoolean(R.bool.config_cecSoundbarModeEnabled_allowed) ? 11 : 3;
        if (this.mIsSingleVolume) {
            mStreamVolumeAlias = this.STREAM_VOLUME_ALIAS_TELEVISION;
            dtmfStreamAlias = 3;
        } else {
            int dtmfStreamAlias3 = this.mPlatformType;
            if (dtmfStreamAlias3 == 1) {
                mStreamVolumeAlias = this.STREAM_VOLUME_ALIAS_VOICE;
                dtmfStreamAlias = 2;
            } else {
                mStreamVolumeAlias = this.STREAM_VOLUME_ALIAS_DEFAULT;
                dtmfStreamAlias = 3;
            }
        }
        if (this.mIsSingleVolume) {
            this.mRingerModeAffectedStreams = 0;
        } else {
            if (isInCommunication()) {
                this.mRingerModeAffectedStreams &= -257;
                dtmfStreamAlias2 = 0;
            } else {
                this.mRingerModeAffectedStreams |= 256;
            }
            int[] iArr = mStreamVolumeAlias;
            iArr[8] = dtmfStreamAlias2;
            iArr[10] = a11yStreamAlias;
            iArr[11] = assistantStreamAlias;
            if (!updateVolumes && this.mStreamStates != null) {
                updateDefaultVolumes();
                synchronized (this.mSettingsLock) {
                    synchronized (VolumeStreamState.class) {
                        this.mStreamStates[8].setAllIndexes(this.mStreamStates[dtmfStreamAlias2], caller);
                        this.mStreamStates[10].mVolumeIndexSettingName = Settings.System.VOLUME_SETTINGS_INT[a11yStreamAlias];
                        this.mStreamStates[10].setAllIndexes(this.mStreamStates[a11yStreamAlias], caller);
                    }
                }
                if (sIndependentA11yVolume) {
                    this.mStreamStates[10].readSettings();
                }
                setRingerModeInt(getRingerModeInternal(), false);
                sendMsg(this.mAudioHandler, 10, 2, 0, 0, this.mStreamStates[8], 0);
                sendMsg(this.mAudioHandler, 10, 2, 0, 0, this.mStreamStates[10], 0);
                return;
            }
        }
        dtmfStreamAlias2 = dtmfStreamAlias;
        int[] iArr2 = mStreamVolumeAlias;
        iArr2[8] = dtmfStreamAlias2;
        iArr2[10] = a11yStreamAlias;
        iArr2[11] = assistantStreamAlias;
        if (!updateVolumes) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void readDockAudioSettings(ContentResolver cr) {
        boolean z = Settings.Global.getInt(cr, "dock_audio_media_enabled", 0) == 1;
        this.mDockAudioMediaEnabled = z;
        sendMsg(this.mAudioHandler, 8, 2, 3, z ? 8 : 0, new String("readDockAudioSettings"), 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMasterMono(ContentResolver cr) {
        boolean masterMono = Settings.System.getIntForUser(cr, "master_mono", 0, -2) == 1;
        AudioSystem.setMasterMono(masterMono);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMasterBalance(ContentResolver cr) {
        float masterBalance = Settings.System.getFloatForUser(cr, "master_balance", 0.0f, -2);
        if (AudioSystem.setMasterBalance(masterBalance) != 0) {
            Log.e(TAG, String.format("setMasterBalance failed for %f", Float.valueOf(masterBalance)));
        }
    }

    private void sendEncodedSurroundMode(ContentResolver cr, String eventSource) {
        int encodedSurroundMode = Settings.Global.getInt(cr, "encoded_surround_output", 0);
        sendEncodedSurroundMode(encodedSurroundMode, eventSource);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendEncodedSurroundMode(int encodedSurroundMode, String eventSource) {
        int forceSetting = 16;
        if (encodedSurroundMode == 0) {
            forceSetting = 0;
        } else if (encodedSurroundMode == 1) {
            forceSetting = 13;
        } else if (encodedSurroundMode == 2) {
            forceSetting = 14;
        } else if (encodedSurroundMode == 3) {
            forceSetting = 15;
        } else {
            Log.e(TAG, "updateSurroundSoundSettings: illegal value " + encodedSurroundMode);
        }
        if (forceSetting != 16) {
            this.mDeviceBroker.setForceUse_Async(6, forceSetting, eventSource);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendEnabledSurroundFormats(ContentResolver cr, boolean forceUpdate) {
        String enabledSurroundFormats;
        if (this.mEncodedSurroundMode != 3) {
            return;
        }
        String enabledSurroundFormats2 = Settings.Global.getString(cr, "encoded_surround_output_enabled_formats");
        if (enabledSurroundFormats2 != null) {
            enabledSurroundFormats = enabledSurroundFormats2;
        } else {
            enabledSurroundFormats = "";
        }
        if (!forceUpdate && TextUtils.equals(enabledSurroundFormats, this.mEnabledSurroundFormats)) {
            return;
        }
        this.mEnabledSurroundFormats = enabledSurroundFormats;
        String[] surroundFormats = TextUtils.split(enabledSurroundFormats, ",");
        ArrayList<Integer> formats = new ArrayList<>();
        for (String format : surroundFormats) {
            try {
                int audioFormat = Integer.valueOf(format).intValue();
                boolean isSurroundFormat = false;
                for (int sf : android.media.AudioFormat.SURROUND_SOUND_ENCODING) {
                    if (sf == audioFormat) {
                        isSurroundFormat = true;
                        break;
                    }
                }
                if (isSurroundFormat && !formats.contains(Integer.valueOf(audioFormat))) {
                    formats.add(Integer.valueOf(audioFormat));
                }
            } catch (Exception e) {
                Log.e(TAG, "Invalid enabled surround format:" + format);
            }
        }
        Settings.Global.putString(this.mContext.getContentResolver(), "encoded_surround_output_enabled_formats", TextUtils.join(",", formats));
        sendMsg(this.mAudioHandler, 24, 2, 0, 0, formats, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onEnableSurroundFormats(ArrayList<Integer> enabledSurroundFormats) {
        for (int surroundFormat : android.media.AudioFormat.SURROUND_SOUND_ENCODING) {
            boolean enabled = enabledSurroundFormats.contains(Integer.valueOf(surroundFormat));
            int ret = AudioSystem.setSurroundFormatEnabled(surroundFormat, enabled);
            Log.i(TAG, "enable surround format:" + surroundFormat + " " + enabled + " " + ret);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAssistantUId(boolean forceUpdate) {
        int assistantUid = 0;
        String packageName = "";
        RoleObserver roleObserver = this.mRoleObserver;
        if (roleObserver != null) {
            packageName = roleObserver.getAssistantRoleHolder();
        }
        if (TextUtils.isEmpty(packageName)) {
            String assistantName = Settings.Secure.getStringForUser(this.mContentResolver, "voice_interaction_service", -2);
            if (TextUtils.isEmpty(assistantName)) {
                assistantName = Settings.Secure.getStringForUser(this.mContentResolver, "assistant", -2);
            }
            if (!TextUtils.isEmpty(assistantName)) {
                ComponentName componentName = ComponentName.unflattenFromString(assistantName);
                if (componentName == null) {
                    Slog.w(TAG, "Invalid service name for voice_interaction_service: " + assistantName);
                    return;
                }
                packageName = componentName.getPackageName();
            }
        }
        if (!TextUtils.isEmpty(packageName)) {
            PackageManager pm = this.mContext.getPackageManager();
            if (pm.checkPermission("android.permission.CAPTURE_AUDIO_HOTWORD", packageName) == 0) {
                try {
                    assistantUid = pm.getPackageUidAsUser(packageName, ActivityManager.getCurrentUser());
                } catch (PackageManager.NameNotFoundException e) {
                    Log.e(TAG, "updateAssistantUId() could not find UID for package: " + packageName);
                }
            }
        }
        if (assistantUid != this.mAssistantUid || forceUpdate) {
            AudioSystem.setAssistantUid(assistantUid);
            this.mAssistantUid = assistantUid;
        }
    }

    private void readPersistedSettings() {
        if (!this.mSystemServer.isPrivileged()) {
            return;
        }
        ContentResolver cr = this.mContentResolver;
        int i = 2;
        int ringerModeFromSettings = Settings.Global.getInt(cr, "mode_ringer", 2);
        int ringerMode = ringerModeFromSettings;
        if (!isValidRingerMode(ringerMode)) {
            ringerMode = 2;
        }
        if (ringerMode == 1 && !this.mHasVibrator) {
            ringerMode = 0;
        }
        if (ringerMode != ringerModeFromSettings) {
            Settings.Global.putInt(cr, "mode_ringer", ringerMode);
        }
        if (this.mUseFixedVolume || this.mIsSingleVolume) {
            ringerMode = 2;
        }
        synchronized (this.mSettingsLock) {
            this.mRingerMode = ringerMode;
            if (this.mRingerModeExternal == -1) {
                this.mRingerModeExternal = ringerMode;
            }
            int valueForVibrateSetting = AudioSystem.getValueForVibrateSetting(0, 1, this.mHasVibrator ? 2 : 0);
            this.mVibrateSetting = valueForVibrateSetting;
            if (!this.mHasVibrator) {
                i = 0;
            }
            this.mVibrateSetting = AudioSystem.getValueForVibrateSetting(valueForVibrateSetting, 0, i);
            updateRingerAndZenModeAffectedStreams();
            readDockAudioSettings(cr);
            sendEncodedSurroundMode(cr, "readPersistedSettings");
            sendEnabledSurroundFormats(cr, true);
            updateAssistantUId(true);
            AudioSystem.setRttEnabled(this.mRttEnabled);
        }
        this.mMuteAffectedStreams = Settings.System.getIntForUser(cr, "mute_streams_affected", 111, -2);
        updateMasterMono(cr);
        updateMasterBalance(cr);
        broadcastRingerMode("android.media.RINGER_MODE_CHANGED", this.mRingerModeExternal);
        broadcastRingerMode("android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION", this.mRingerMode);
        broadcastVibrateSetting(0);
        broadcastVibrateSetting(1);
        this.mVolumeController.loadSettings(cr);
    }

    private void readUserRestrictions() {
        if (!this.mSystemServer.isPrivileged()) {
            return;
        }
        int currentUser = getCurrentUserId();
        boolean masterMute = this.mUserManagerInternal.getUserRestriction(currentUser, "disallow_unmute_device") || this.mUserManagerInternal.getUserRestriction(currentUser, "no_adjust_volume");
        if (this.mUseFixedVolume) {
            masterMute = false;
            AudioSystem.setMasterVolume(1.0f);
        }
        setSystemAudioMute(masterMute);
        AudioSystem.setMasterMute(masterMute);
        broadcastMasterMuteStatus(masterMute);
        this.mMicMuteFromRestrictions = this.mUserManagerInternal.getUserRestriction(currentUser, "no_unmute_microphone");
        setMicrophoneMuteNoCallerCheck(currentUser);
    }

    private int getIndexRange(int streamType) {
        return this.mStreamStates[streamType].getMaxIndex() - this.mStreamStates[streamType].getMinIndex();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int rescaleIndex(int index, int srcStream, int dstStream) {
        int srcRange = getIndexRange(srcStream);
        int dstRange = getIndexRange(dstStream);
        if (srcRange == 0) {
            Log.e(TAG, "rescaleIndex : index range should not be zero");
            return this.mStreamStates[dstStream].getMinIndex();
        }
        return this.mStreamStates[dstStream].getMinIndex() + ((((index - this.mStreamStates[srcStream].getMinIndex()) * dstRange) + (srcRange / 2)) / srcRange);
    }

    private int rescaleStep(int step, int srcStream, int dstStream) {
        int srcRange = getIndexRange(srcStream);
        int dstRange = getIndexRange(dstStream);
        if (srcRange == 0) {
            Log.e(TAG, "rescaleStep : index range should not be zero");
            return 0;
        }
        return ((step * dstRange) + (srcRange / 2)) / srcRange;
    }

    public int setPreferredDeviceForStrategy(int strategy, AudioDeviceAttributes device) {
        if (device == null) {
            return -1;
        }
        enforceModifyAudioRoutingPermission();
        String logString = String.format("setPreferredDeviceForStrategy u/pid:%d/%d strat:%d dev:%s", Integer.valueOf(Binder.getCallingUid()), Integer.valueOf(Binder.getCallingPid()), Integer.valueOf(strategy), device.toString());
        sDeviceLogger.log(new AudioEventLogger.StringEvent(logString).printLog(TAG));
        if (device.getRole() == 1) {
            Log.e(TAG, "Unsupported input routing in " + logString);
            return -1;
        }
        int status = this.mDeviceBroker.setPreferredDeviceForStrategySync(strategy, device);
        if (status != 0) {
            Log.e(TAG, String.format("Error %d in %s)", Integer.valueOf(status), logString));
        }
        return status;
    }

    public int removePreferredDeviceForStrategy(int strategy) {
        enforceModifyAudioRoutingPermission();
        String logString = String.format("removePreferredDeviceForStrategy strat:%d", Integer.valueOf(strategy));
        sDeviceLogger.log(new AudioEventLogger.StringEvent(logString).printLog(TAG));
        int status = this.mDeviceBroker.removePreferredDeviceForStrategySync(strategy);
        if (status != 0) {
            Log.e(TAG, String.format("Error %d in %s)", Integer.valueOf(status), logString));
        }
        return status;
    }

    public AudioDeviceAttributes getPreferredDeviceForStrategy(int strategy) {
        enforceModifyAudioRoutingPermission();
        AudioDeviceAttributes[] devices = new AudioDeviceAttributes[1];
        long identity = Binder.clearCallingIdentity();
        int status = AudioSystem.getPreferredDeviceForStrategy(strategy, devices);
        Binder.restoreCallingIdentity(identity);
        if (status != 0) {
            Log.e(TAG, String.format("Error %d in getPreferredDeviceForStrategy(%d)", Integer.valueOf(status), Integer.valueOf(strategy)));
            return null;
        }
        return devices[0];
    }

    public void registerStrategyPreferredDeviceDispatcher(IStrategyPreferredDeviceDispatcher dispatcher) {
        if (dispatcher == null) {
            return;
        }
        enforceModifyAudioRoutingPermission();
        this.mDeviceBroker.registerStrategyPreferredDeviceDispatcher(dispatcher);
    }

    public void unregisterStrategyPreferredDeviceDispatcher(IStrategyPreferredDeviceDispatcher dispatcher) {
        if (dispatcher == null) {
            return;
        }
        enforceModifyAudioRoutingPermission();
        this.mDeviceBroker.unregisterStrategyPreferredDeviceDispatcher(dispatcher);
    }

    /* JADX INFO: renamed from: getDevicesForAttributes, reason: merged with bridge method [inline-methods] */
    public ArrayList<AudioDeviceAttributes> m20getDevicesForAttributes(AudioAttributes attributes) {
        Objects.requireNonNull(attributes);
        enforceModifyAudioRoutingPermission();
        return AudioSystem.getDevicesForAttributes(attributes);
    }

    public void handleVolumeKey(KeyEvent event, boolean isOnTv, String callingPackage, String caller) throws Throwable {
        int keyEventMode = 0;
        if (isOnTv) {
            if (event.getAction() == 0) {
                keyEventMode = 1;
            } else {
                keyEventMode = 2;
            }
        } else if (event.getAction() != 0) {
            return;
        }
        int keyCode = event.getKeyCode();
        if (keyCode == 24) {
            adjustSuggestedStreamVolume(1, Integer.MIN_VALUE, 4101, callingPackage, caller, Binder.getCallingUid(), true, keyEventMode);
            return;
        }
        if (keyCode == 25) {
            adjustSuggestedStreamVolume(-1, Integer.MIN_VALUE, 4101, callingPackage, caller, Binder.getCallingUid(), true, keyEventMode);
            return;
        }
        if (keyCode == 164) {
            if (event.getAction() == 0 && event.getRepeatCount() == 0) {
                adjustSuggestedStreamVolume(101, Integer.MIN_VALUE, 4101, callingPackage, caller, Binder.getCallingUid(), true, 0);
                return;
            }
            return;
        }
        Log.e(TAG, "Invalid key code " + event.getKeyCode() + " sent by " + callingPackage);
    }

    public void adjustSuggestedStreamVolume(int direction, int suggestedStreamType, int flags, String callingPackage, String caller) throws Throwable {
        boolean hasModifyAudioSettings = this.mContext.checkCallingPermission("android.permission.MODIFY_AUDIO_SETTINGS") == 0;
        adjustSuggestedStreamVolume(direction, suggestedStreamType, flags, callingPackage, caller, Binder.getCallingUid(), hasModifyAudioSettings, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void adjustSuggestedStreamVolume(int direction, int suggestedStreamType, int flags, String callingPackage, String caller, int uid, boolean hasModifyAudioSettings, int keyEventMode) throws Throwable {
        int maybeActiveStreamType;
        boolean activeForReal;
        int flags2;
        int direction2;
        int flags3;
        if (direction != 0) {
            sVolumeLogger.log(new AudioServiceEvents.VolumeEvent(0, suggestedStreamType, direction, flags, callingPackage + SliceClientPermissions.SliceAuthority.DELIMITER + caller + " uid:" + uid));
        }
        boolean hasExternalVolumeController = notifyExternalVolumeController(direction);
        new MediaMetrics.Item("audio.service.adjustSuggestedStreamVolume").setUid(Binder.getCallingUid()).set(MediaMetrics.Property.CALLING_PACKAGE, callingPackage).set(MediaMetrics.Property.CLIENT_NAME, caller).set(MediaMetrics.Property.DIRECTION, direction > 0 ? INetd.IF_STATE_UP : INetd.IF_STATE_DOWN).set(MediaMetrics.Property.EXTERNAL, hasExternalVolumeController ? UiModeManagerService.Shell.NIGHT_MODE_STR_YES : UiModeManagerService.Shell.NIGHT_MODE_STR_NO).set(MediaMetrics.Property.FLAGS, Integer.valueOf(flags)).record();
        if (hasExternalVolumeController) {
            return;
        }
        synchronized (this.mForceControlStreamLock) {
            try {
                try {
                    if (!this.mUserSelectedVolumeControlStream) {
                        maybeActiveStreamType = getActiveStreamType(suggestedStreamType);
                        if (maybeActiveStreamType == 2 || maybeActiveStreamType == 5) {
                            activeForReal = wasStreamActiveRecently(maybeActiveStreamType, 0);
                        } else {
                            activeForReal = AudioSystem.isStreamActive(maybeActiveStreamType, 0);
                        }
                        if (!activeForReal && this.mVolumeControlStream != -1) {
                            maybeActiveStreamType = this.mVolumeControlStream;
                        }
                    } else {
                        maybeActiveStreamType = this.mVolumeControlStream;
                    }
                    boolean isMute = isMuteAdjust(direction);
                    ensureValidStreamType(maybeActiveStreamType);
                    int resolvedStream = mStreamVolumeAlias[maybeActiveStreamType];
                    if ((flags & 4) != 0 && resolvedStream != 2) {
                        flags2 = flags & (-5);
                    } else {
                        flags2 = flags;
                    }
                    if (this.mVolumeController.suppressAdjustment(resolvedStream, flags2, isMute) && !this.mIsSingleVolume) {
                        flags3 = flags2 & (-5) & (-17);
                        direction2 = 0;
                    } else {
                        direction2 = direction;
                        flags3 = flags2;
                    }
                    adjustStreamVolume(maybeActiveStreamType, direction2, flags3, callingPackage, caller, uid, hasModifyAudioSettings, keyEventMode);
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

    private boolean notifyExternalVolumeController(int direction) {
        IAudioPolicyCallback externalVolumeController;
        synchronized (this.mExtVolumeControllerLock) {
            externalVolumeController = this.mExtVolumeController;
        }
        if (externalVolumeController == null) {
            return false;
        }
        sendMsg(this.mAudioHandler, 22, 2, direction, 0, externalVolumeController, 0);
        return true;
    }

    public void adjustStreamVolume(int streamType, int direction, int flags, String callingPackage) throws Throwable {
        IAudioPolicyCallback extVolCtlr;
        if (streamType == 10 && !canChangeAccessibilityVolume()) {
            Log.w(TAG, "Trying to call adjustStreamVolume() for a11y withoutCHANGE_ACCESSIBILITY_VOLUME / callingPackage=" + callingPackage);
            return;
        }
        boolean hasModifyAudioSettings = this.mContext.checkCallingPermission("android.permission.MODIFY_AUDIO_SETTINGS") == 0;
        sVolumeLogger.log(new AudioServiceEvents.VolumeEvent(1, streamType, direction, flags, callingPackage));
        synchronized (this.mExtVolumeControllerLock) {
            extVolCtlr = this.mExtVolumeController;
        }
        if (extVolCtlr != null) {
            sendMsg(this.mAudioHandler, 22, 2, direction, 0, extVolCtlr, 0);
        } else {
            adjustStreamVolume(streamType, direction, flags, callingPackage, callingPackage, Binder.getCallingUid(), hasModifyAudioSettings, 0);
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x037e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void adjustStreamVolume(int r26, int r27, int r28, java.lang.String r29, java.lang.String r30, int r31, boolean r32, int r33) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 896
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.audio.AudioService.adjustStreamVolume(int, int, int, java.lang.String, java.lang.String, int, boolean, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onUnmuteStream(int stream, int flags) {
        boolean wasMuted;
        synchronized (VolumeStreamState.class) {
            VolumeStreamState streamState = this.mStreamStates[stream];
            wasMuted = streamState.mute(false);
            int device = getDeviceForStream(stream);
            int index = streamState.getIndex(device);
            sendVolumeUpdate(stream, index, index, flags, device);
        }
        if (stream == 3 && wasMuted) {
            synchronized (this.mHdmiClientLock) {
                maybeSendSystemAudioStatusCommand(true);
            }
        }
    }

    private void maybeSendSystemAudioStatusCommand(boolean isMuteAdjust) {
        if (this.mHdmiAudioSystemClient == null || !this.mHdmiSystemAudioSupported || !this.mHdmiCecVolumeControlEnabled) {
            return;
        }
        long identity = Binder.clearCallingIdentity();
        this.mHdmiAudioSystemClient.sendReportAudioStatusCecCommand(isMuteAdjust, getStreamVolume(3), getStreamMaxVolume(3), isStreamMute(3));
        Binder.restoreCallingIdentity(identity);
    }

    private void setSystemAudioVolume(int oldVolume, int newVolume, int maxVolume, int flags) {
        synchronized (this.mHdmiClientLock) {
            if (this.mHdmiManager != null && this.mHdmiTvClient != null && oldVolume != newVolume && (flags & 256) == 0 && this.mHdmiSystemAudioSupported && this.mHdmiCecVolumeControlEnabled) {
                long token = Binder.clearCallingIdentity();
                try {
                    this.mHdmiTvClient.setSystemAudioVolume(oldVolume, newVolume, maxVolume);
                    Binder.restoreCallingIdentity(token);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(token);
                    throw th;
                }
            }
        }
    }

    class StreamVolumeCommand {
        public final int mDevice;
        public final int mFlags;
        public final int mIndex;
        public final int mStreamType;

        StreamVolumeCommand(int streamType, int index, int flags, int device) {
            this.mStreamType = streamType;
            this.mIndex = index;
            this.mFlags = flags;
            this.mDevice = device;
        }

        public String toString() {
            return "{streamType=" + this.mStreamType + ",index=" + this.mIndex + ",flags=" + this.mFlags + ",device=" + this.mDevice + '}';
        }
    }

    private int getNewRingerMode(int stream, int index, int flags) {
        if (this.mIsSingleVolume) {
            return getRingerModeExternal();
        }
        if ((flags & 2) != 0 || stream == getUiSoundsStreamType()) {
            if (index == 0) {
                if (this.mHasVibrator) {
                    return 1;
                }
                return this.mVolumePolicy.volumeDownToEnterSilent ? 0 : 2;
            }
            return 2;
        }
        return getRingerModeExternal();
    }

    private boolean isAndroidNPlus(String caller) {
        try {
            ApplicationInfo applicationInfo = this.mContext.getPackageManager().getApplicationInfoAsUser(caller, 0, UserHandle.getUserId(Binder.getCallingUid()));
            if (applicationInfo.targetSdkVersion >= 24) {
                return true;
            }
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            return true;
        }
    }

    private boolean wouldToggleZenMode(int newMode) {
        if (getRingerModeExternal() != 0 || newMode == 0) {
            return getRingerModeExternal() != 0 && newMode == 0;
        }
        return true;
    }

    private void onSetStreamVolume(int streamType, int index, int flags, int device, String caller, boolean hasModifyAudioSettings) {
        int stream = mStreamVolumeAlias[streamType];
        if (isBluetoothA2dpStreamType(streamType)) {
            Log.v(TAG, "onSetStreamVolume  streamType " + streamType + " index " + index + " devivce " + device);
            setStreamVolumeInt(stream, index, device, true, caller, hasModifyAudioSettings);
        } else {
            setStreamVolumeInt(stream, index, device, false, caller, hasModifyAudioSettings);
        }
        if ((flags & 2) != 0 || stream == getUiSoundsStreamType()) {
            setRingerMode(getNewRingerMode(stream, index, flags), "AS.AudioService.onSetStreamVolume", false);
        }
        if (streamType != 6) {
            this.mStreamStates[stream].mute(index == 0);
        }
    }

    private void enforceModifyAudioRoutingPermission() {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.MODIFY_AUDIO_ROUTING") != 0) {
            throw new SecurityException("Missing MODIFY_AUDIO_ROUTING permission");
        }
    }

    public void setVolumeIndexForAttributes(AudioAttributes attr, int index, int flags, String callingPackage) throws Throwable {
        enforceModifyAudioRoutingPermission();
        Objects.requireNonNull(attr, "attr must not be null");
        int volumeGroup = getVolumeGroupIdForAttributes(attr);
        if (sVolumeGroupStates.indexOfKey(volumeGroup) < 0) {
            Log.e(TAG, ": no volume group found for attributes " + attr.toString());
            return;
        }
        VolumeGroupState vgs = sVolumeGroupStates.get(volumeGroup);
        sVolumeLogger.log(new AudioServiceEvents.VolumeEvent(8, attr, vgs.name(), index, flags, callingPackage));
        vgs.setVolumeIndex(index, flags);
        for (int groupedStream : vgs.getLegacyStreamTypes()) {
            try {
                ensureValidStreamType(groupedStream);
                setStreamVolume(groupedStream, index, flags, callingPackage, callingPackage, Binder.getCallingUid(), true);
            } catch (IllegalArgumentException e) {
                Log.d(TAG, "volume group " + volumeGroup + " has internal streams (" + groupedStream + "), do not change associated stream volume");
            }
        }
    }

    private AudioVolumeGroup getAudioVolumeGroupById(int volumeGroupId) {
        for (AudioVolumeGroup avg : AudioVolumeGroup.getAudioVolumeGroups()) {
            if (avg.getId() == volumeGroupId) {
                return avg;
            }
        }
        Log.e(TAG, ": invalid volume group id: " + volumeGroupId + " requested");
        return null;
    }

    public int getVolumeIndexForAttributes(AudioAttributes attr) {
        enforceModifyAudioRoutingPermission();
        Objects.requireNonNull(attr, "attr must not be null");
        int volumeGroup = getVolumeGroupIdForAttributes(attr);
        if (sVolumeGroupStates.indexOfKey(volumeGroup) < 0) {
            throw new IllegalArgumentException("No volume group for attributes " + attr);
        }
        VolumeGroupState vgs = sVolumeGroupStates.get(volumeGroup);
        return vgs.getVolumeIndex();
    }

    public int getMaxVolumeIndexForAttributes(AudioAttributes attr) {
        enforceModifyAudioRoutingPermission();
        Objects.requireNonNull(attr, "attr must not be null");
        return AudioSystem.getMaxVolumeIndexForAttributes(attr);
    }

    public int getMinVolumeIndexForAttributes(AudioAttributes attr) {
        enforceModifyAudioRoutingPermission();
        Objects.requireNonNull(attr, "attr must not be null");
        return AudioSystem.getMinVolumeIndexForAttributes(attr);
    }

    public void setStreamVolume(int streamType, int index, int flags, String callingPackage) throws Throwable {
        if (streamType == 10 && !canChangeAccessibilityVolume()) {
            Log.w(TAG, "Trying to call setStreamVolume() for a11y without CHANGE_ACCESSIBILITY_VOLUME  callingPackage=" + callingPackage);
            return;
        }
        if (streamType == 0 && index == 0 && this.mContext.checkCallingOrSelfPermission("android.permission.MODIFY_PHONE_STATE") != 0) {
            Log.w(TAG, "Trying to call setStreamVolume() for STREAM_VOICE_CALL and index 0 without MODIFY_PHONE_STATE  callingPackage=" + callingPackage);
            return;
        }
        if (streamType == 11 && this.mContext.checkCallingOrSelfPermission("android.permission.MODIFY_AUDIO_ROUTING") != 0) {
            Log.w(TAG, "Trying to call setStreamVolume() for STREAM_ASSISTANT without MODIFY_AUDIO_ROUTING  callingPackage=" + callingPackage);
            return;
        }
        boolean hasModifyAudioSettings = this.mContext.checkCallingOrSelfPermission("android.permission.MODIFY_AUDIO_SETTINGS") == 0;
        sVolumeLogger.log(new AudioServiceEvents.VolumeEvent(2, streamType, index, flags, callingPackage));
        setStreamVolume(streamType, index, flags, callingPackage, callingPackage, Binder.getCallingUid(), hasModifyAudioSettings);
    }

    private boolean canChangeAccessibilityVolume() {
        synchronized (this.mAccessibilityServiceUidsLock) {
            if (this.mContext.checkCallingOrSelfPermission("android.permission.CHANGE_ACCESSIBILITY_VOLUME") == 0) {
                return true;
            }
            if (this.mAccessibilityServiceUids != null) {
                int callingUid = Binder.getCallingUid();
                for (int i = 0; i < this.mAccessibilityServiceUids.length; i++) {
                    if (this.mAccessibilityServiceUids[i] == callingUid) {
                        return true;
                    }
                }
            }
            return false;
        }
    }

    int getHearingAidStreamType() {
        return getHearingAidStreamType(this.mMode);
    }

    private int getHearingAidStreamType(int mode) {
        return (mode == 2 || mode == 3 || this.mVoiceActive.get()) ? 0 : 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPlaybackConfigChange(List<AudioPlaybackConfiguration> configs) {
        boolean voiceActive = false;
        for (AudioPlaybackConfiguration config : configs) {
            int usage = config.getAudioAttributes().getUsage();
            if (usage == 2 || usage == 3) {
                if (config.getPlayerState() == 2) {
                    voiceActive = true;
                    break;
                }
            }
        }
        if (this.mVoiceActive.getAndSet(voiceActive) != voiceActive) {
            updateHearingAidVolumeOnVoiceActivityUpdate();
        }
    }

    private void updateHearingAidVolumeOnVoiceActivityUpdate() {
        int streamType = getHearingAidStreamType();
        int index = getStreamVolume(streamType);
        sVolumeLogger.log(new AudioServiceEvents.VolumeEvent(6, this.mVoiceActive.get(), streamType, index));
        this.mDeviceBroker.postSetHearingAidVolumeIndex(index * 10, streamType);
    }

    void updateAbsVolumeMultiModeDevices(int oldMode, int newMode) {
        if (oldMode == newMode) {
            return;
        }
        if (newMode != 0 && newMode != 2 && newMode != 3) {
            return;
        }
        int streamType = getHearingAidStreamType(newMode);
        Set<Integer> deviceTypes = AudioSystem.generateAudioDeviceTypesSet(AudioSystem.getDevicesForStream(streamType));
        Set<Integer> absVolumeMultiModeCaseDevices = AudioSystem.intersectionAudioDeviceTypes(this.mAbsVolumeMultiModeCaseDevices, deviceTypes);
        if (!absVolumeMultiModeCaseDevices.isEmpty() && AudioSystem.isSingleAudioDeviceType(absVolumeMultiModeCaseDevices, AudioFormat.OPUS)) {
            int index = getStreamVolume(streamType);
            sVolumeLogger.log(new AudioServiceEvents.VolumeEvent(7, newMode, streamType, index));
            this.mDeviceBroker.postSetHearingAidVolumeIndex(index * 10, streamType);
        }
    }

    private boolean ensureCarAudio() {
        if (this.mCarAudio == null) {
            try {
                IBinder b = ServiceManager.getService("car_service");
                if (b != null) {
                    b.linkToDeath(this.carServiceDeathHandle, 0);
                    ICarAudio iCarAudioAsInterface = ICarAudio.Stub.asInterface(ICar.Stub.asInterface(b).getCarService("audio"));
                    this.mCarAudio = iCarAudioAsInterface;
                    iCarAudioAsInterface.registerVolumeCallback(this.mCarVolumeCallbackImpl.asBinder());
                    Log.i(TAG, "ensureCarAudio successfully");
                    return true;
                }
                return false;
            } catch (RemoteException e) {
                e.printStackTrace();
            } catch (NullPointerException e2) {
                e2.printStackTrace();
            } catch (Throwable th) {
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isBluetoothA2dpStreamType(int streamType) {
        if (streamType == 12) {
            return true;
        }
        return false;
    }

    private boolean ignoreAppOpsStream(int stream) {
        if (stream == 12) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Bottom block not found for handler: all -> 0x0234 */
    /* JADX WARN: Code duplicated, block: B:82:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:85:0x01c4 A[Catch: all -> 0x0227, TRY_LEAVE, TryCatch #6 {all -> 0x0227, blocks: (B:83:0x01be, B:85:0x01c4), top: B:123:0x01be }] */
    /* JADX WARN: Code duplicated, block: B:88:0x01e0 A[Catch: all -> 0x0221, TRY_LEAVE, TryCatch #0 {all -> 0x0221, blocks: (B:87:0x01d7, B:88:0x01e0), top: B:115:0x01c2 }] */
    /* JADX WARN: Code duplicated, block: B:93:0x0202  */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0232, code lost:
    
        r0 = th;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setStreamVolume(int r19, int r20, int r21, java.lang.String r22, java.lang.String r23, int r24, boolean r25) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 566
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.audio.AudioService.setStreamVolume(int, int, int, java.lang.String, java.lang.String, int, boolean):void");
    }

    private int getVolumeGroupIdForAttributes(AudioAttributes attributes) {
        Objects.requireNonNull(attributes, "attributes must not be null");
        int volumeGroupId = getVolumeGroupIdForAttributesInt(attributes);
        if (volumeGroupId != -1) {
            return volumeGroupId;
        }
        return getVolumeGroupIdForAttributesInt(AudioProductStrategy.sDefaultAttributes);
    }

    private int getVolumeGroupIdForAttributesInt(AudioAttributes attributes) {
        Objects.requireNonNull(attributes, "attributes must not be null");
        for (AudioProductStrategy productStrategy : AudioProductStrategy.getAudioProductStrategies()) {
            int volumeGroupId = productStrategy.getVolumeGroupIdForAudioAttributes(attributes);
            if (volumeGroupId != -1) {
                return volumeGroupId;
            }
        }
        return -1;
    }

    private boolean volumeAdjustmentAllowedByDnd(int streamTypeAlias, int flags) {
        int zenMode = this.mNm.getZenMode();
        return ((zenMode == 1 || zenMode == 2 || zenMode == 3) && isStreamMutedByRingerOrZenMode(streamTypeAlias) && streamTypeAlias != getUiSoundsStreamType() && (flags & 2) == 0) ? false : true;
    }

    public void forceVolumeControlStream(int streamType, IBinder cb) {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.MODIFY_PHONE_STATE") != 0) {
            return;
        }
        synchronized (this.mForceControlStreamLock) {
            if (this.mVolumeControlStream != -1 && streamType != -1) {
                this.mUserSelectedVolumeControlStream = true;
            }
            this.mVolumeControlStream = streamType;
            if (streamType == -1) {
                if (this.mForceControlStreamClient != null) {
                    this.mForceControlStreamClient.release();
                    this.mForceControlStreamClient = null;
                }
                this.mUserSelectedVolumeControlStream = false;
            } else if (this.mForceControlStreamClient == null) {
                this.mForceControlStreamClient = new ForceControlStreamClient(cb);
            } else if (this.mForceControlStreamClient.getBinder() == cb) {
                Log.d(TAG, "forceVolumeControlStream cb:" + cb + " is already linked.");
            } else {
                this.mForceControlStreamClient.release();
                this.mForceControlStreamClient = new ForceControlStreamClient(cb);
            }
        }
    }

    private class ForceControlStreamClient implements IBinder.DeathRecipient {
        private IBinder mCb;

        ForceControlStreamClient(IBinder cb) {
            if (cb != null) {
                try {
                    cb.linkToDeath(this, 0);
                } catch (RemoteException e) {
                    Log.w(AudioService.TAG, "ForceControlStreamClient() could not link to " + cb + " binder death");
                    cb = null;
                }
            }
            this.mCb = cb;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            synchronized (AudioService.this.mForceControlStreamLock) {
                Log.w(AudioService.TAG, "SCO client died");
                if (AudioService.this.mForceControlStreamClient == this) {
                    AudioService.this.mForceControlStreamClient = null;
                    AudioService.this.mVolumeControlStream = -1;
                    AudioService.this.mUserSelectedVolumeControlStream = false;
                } else {
                    Log.w(AudioService.TAG, "unregistered control stream client died");
                }
            }
        }

        public void release() {
            IBinder iBinder = this.mCb;
            if (iBinder != null) {
                iBinder.unlinkToDeath(this, 0);
                this.mCb = null;
            }
        }

        public IBinder getBinder() {
            return this.mCb;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendBroadcastToAll(Intent intent) {
        if (!this.mSystemServer.isPrivileged()) {
            return;
        }
        intent.addFlags(67108864);
        intent.addFlags(AudioFormat.EVRC);
        long ident = Binder.clearCallingIdentity();
        try {
            this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL);
        } finally {
            Binder.restoreCallingIdentity(ident);
        }
    }

    private void sendStickyBroadcastToAll(Intent intent) {
        intent.addFlags(AudioFormat.EVRC);
        long ident = Binder.clearCallingIdentity();
        try {
            this.mContext.sendStickyBroadcastAsUser(intent, UserHandle.ALL);
        } finally {
            Binder.restoreCallingIdentity(ident);
        }
    }

    private int getCurrentUserId() {
        long ident = Binder.clearCallingIdentity();
        try {
            UserInfo currentUser = ActivityManager.getService().getCurrentUser();
            return currentUser.id;
        } catch (RemoteException e) {
            return 0;
        } finally {
            Binder.restoreCallingIdentity(ident);
        }
    }

    protected void sendVolumeUpdate(int streamType, int oldIndex, int index, int flags, int device) {
        int streamType2 = mStreamVolumeAlias[streamType];
        if (streamType2 == 3) {
            flags = updateFlagsForTvPlatform(flags);
            if (isFullVolumeDevice(device)) {
                flags &= -2;
            }
        }
        this.mVolumeController.postVolumeChanged(streamType2, flags);
    }

    private int updateFlagsForTvPlatform(int flags) {
        synchronized (this.mHdmiClientLock) {
            if ((this.mHdmiTvClient != null && this.mHdmiSystemAudioSupported && this.mHdmiCecVolumeControlEnabled) || (this.mHdmiPlaybackClient != null && this.mHdmiCecVolumeControlEnabled)) {
                flags &= -2;
            }
        }
        return flags;
    }

    private void sendMasterMuteUpdate(boolean muted, int flags) {
        this.mVolumeController.postMasterMuteChanged(updateFlagsForTvPlatform(flags));
        broadcastMasterMuteStatus(muted);
    }

    private void broadcastMasterMuteStatus(boolean muted) {
        Intent intent = new Intent("android.media.MASTER_MUTE_CHANGED_ACTION");
        intent.putExtra("android.media.EXTRA_MASTER_VOLUME_MUTED", muted);
        intent.addFlags(603979776);
        sendStickyBroadcastToAll(intent);
    }

    private void setStreamVolumeInt(int streamType, int index, int device, boolean force, String caller, boolean hasModifyAudioSettings) {
        if (isFullVolumeDevice(device)) {
            return;
        }
        VolumeStreamState streamState = this.mStreamStates[streamType];
        if (streamState.setIndex(index, device, caller, hasModifyAudioSettings) || force) {
            sendMsg(this.mAudioHandler, 0, 2, device, 0, streamState, 0);
        }
    }

    private void setSystemAudioMute(boolean state) {
        synchronized (this.mHdmiClientLock) {
            if (this.mHdmiManager != null && this.mHdmiTvClient != null && this.mHdmiSystemAudioSupported) {
                long token = Binder.clearCallingIdentity();
                try {
                    this.mHdmiTvClient.setSystemAudioMute(state);
                    Binder.restoreCallingIdentity(token);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(token);
                    throw th;
                }
            }
        }
    }

    public boolean isStreamMute(int streamType) {
        boolean z;
        if (streamType == Integer.MIN_VALUE) {
            streamType = getActiveStreamType(streamType);
        }
        synchronized (VolumeStreamState.class) {
            ensureValidStreamType(streamType);
            z = this.mStreamStates[streamType].mIsMuted;
        }
        return z;
    }

    private class RmtSbmxFullVolDeathHandler implements IBinder.DeathRecipient {
        private IBinder mICallback;

        RmtSbmxFullVolDeathHandler(IBinder cb) {
            this.mICallback = cb;
            try {
                cb.linkToDeath(this, 0);
            } catch (RemoteException e) {
                Log.e(AudioService.TAG, "can't link to death", e);
            }
        }

        boolean isHandlerFor(IBinder cb) {
            return this.mICallback.equals(cb);
        }

        void forget() {
            try {
                this.mICallback.unlinkToDeath(this, 0);
            } catch (NoSuchElementException e) {
                Log.e(AudioService.TAG, "error unlinking to death", e);
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            Log.w(AudioService.TAG, "Recorder with remote submix at full volume died " + this.mICallback);
            AudioService.this.forceRemoteSubmixFullVolume(false, this.mICallback);
        }
    }

    private boolean discardRmtSbmxFullVolDeathHandlerFor(IBinder cb) {
        for (RmtSbmxFullVolDeathHandler handler : this.mRmtSbmxFullVolDeathHandlers) {
            if (handler.isHandlerFor(cb)) {
                handler.forget();
                this.mRmtSbmxFullVolDeathHandlers.remove(handler);
                return true;
            }
        }
        return false;
    }

    private boolean hasRmtSbmxFullVolDeathHandlerFor(IBinder cb) {
        Iterator<RmtSbmxFullVolDeathHandler> it = this.mRmtSbmxFullVolDeathHandlers.iterator();
        while (it.hasNext()) {
            if (it.next().isHandlerFor(cb)) {
                return true;
            }
        }
        return false;
    }

    public void forceRemoteSubmixFullVolume(boolean startForcing, IBinder cb) {
        if (cb == null) {
            return;
        }
        if (this.mContext.checkCallingOrSelfPermission("android.permission.CAPTURE_AUDIO_OUTPUT") != 0) {
            Log.w(TAG, "Trying to call forceRemoteSubmixFullVolume() without CAPTURE_AUDIO_OUTPUT");
            return;
        }
        synchronized (this.mRmtSbmxFullVolDeathHandlers) {
            boolean applyRequired = false;
            try {
                if (startForcing) {
                    if (!hasRmtSbmxFullVolDeathHandlerFor(cb)) {
                        this.mRmtSbmxFullVolDeathHandlers.add(new RmtSbmxFullVolDeathHandler(cb));
                        if (this.mRmtSbmxFullVolRefCount == 0) {
                            this.mFullVolumeDevices.add(32768);
                            this.mFixedVolumeDevices.add(32768);
                            applyRequired = true;
                        }
                        this.mRmtSbmxFullVolRefCount++;
                    }
                } else if (discardRmtSbmxFullVolDeathHandlerFor(cb) && this.mRmtSbmxFullVolRefCount > 0) {
                    int i = this.mRmtSbmxFullVolRefCount - 1;
                    this.mRmtSbmxFullVolRefCount = i;
                    if (i == 0) {
                        this.mFullVolumeDevices.remove(32768);
                        this.mFixedVolumeDevices.remove(32768);
                        applyRequired = true;
                    }
                }
                if (applyRequired) {
                    checkAllFixedVolumeDevices(3);
                    this.mStreamStates[3].applyAllVolumes();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void setMasterMuteInternal(boolean mute, int flags, String callingPackage, int uid, int userId) {
        if (uid == 1000) {
            uid = UserHandle.getUid(userId, UserHandle.getAppId(uid));
        }
        if (!mute && this.mAppOps.noteOp(33, uid, callingPackage) != 0) {
            return;
        }
        if (userId != UserHandle.getCallingUserId() && this.mContext.checkCallingOrSelfPermission("android.permission.INTERACT_ACROSS_USERS_FULL") != 0) {
            return;
        }
        setMasterMuteInternalNoCallerCheck(mute, flags, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMasterMuteInternalNoCallerCheck(boolean mute, int flags, int userId) {
        Log.d(TAG, String.format("Master mute %s, %d, user=%d", Boolean.valueOf(mute), Integer.valueOf(flags), Integer.valueOf(userId)));
        if (!isPlatformAutomotive() && this.mUseFixedVolume) {
            return;
        }
        if (((isPlatformAutomotive() && userId == 0) || getCurrentUserId() == userId) && mute != AudioSystem.getMasterMute()) {
            setSystemAudioMute(mute);
            AudioSystem.setMasterMute(mute);
            sendMasterMuteUpdate(mute, flags);
        }
    }

    public boolean isMasterMute() {
        return AudioSystem.getMasterMute();
    }

    public void setMasterMute(boolean mute, int flags, String callingPackage, int userId) {
        enforceModifyAudioRoutingPermission();
        setMasterMuteInternal(mute, flags, callingPackage, Binder.getCallingUid(), userId);
    }

    public int getStreamVolume(int streamType) {
        int i;
        ensureValidStreamType(streamType);
        Log.w(TAG, "getStreamVolume(stream=" + AudioSystem.STREAM_NAMES[streamType] + " callingUid=" + Binder.getCallingUid() + ")");
        if (this.mUseFixedVolume && !isBluetoothA2dpStreamType(streamType) && ensureCarAudio()) {
            try {
                AudioAttributes.Builder builder = new AudioAttributes.Builder();
                int usage = builder.setInternalLegacyStreamType(streamType).build().getUsage();
                int groupId = this.mCarAudio.getVolumeGroupIdForUsage(0, usage);
                int volume = this.mCarAudio.getGroupVolume(0, groupId);
                Log.i(TAG, "getStreamVolume(stream=" + AudioSystem.STREAM_NAMES[streamType] + " vol " + volume + ") in fixed volume mode");
                return volume;
            } catch (RemoteException e) {
                e.printStackTrace();
            } catch (NullPointerException e2) {
                e2.printStackTrace();
            }
        }
        int device = getDeviceForStream(streamType);
        synchronized (VolumeStreamState.class) {
            int index = this.mStreamStates[streamType].getIndex(device);
            if (this.mStreamStates[streamType].mIsMuted) {
                index = 0;
            }
            if (index != 0 && mStreamVolumeAlias[streamType] == 3 && isFixedVolumeDevice(device)) {
                index = this.mStreamStates[streamType].getMaxIndex();
            }
            i = (index + 5) / 10;
        }
        return i;
    }

    public int getStreamMaxVolume(int streamType) {
        ensureValidStreamType(streamType);
        if (this.mUseFixedVolume && !isBluetoothA2dpStreamType(streamType) && ensureCarAudio()) {
            try {
                int groupId = this.mCarAudio.getVolumeGroupIdForUsage(0, this.mBuilder.setLegacyStreamType(streamType).build().getUsage());
                return this.mCarAudio.getGroupMaxVolume(0, groupId);
            } catch (RemoteException e) {
                e.printStackTrace();
            } catch (NullPointerException e2) {
                e2.printStackTrace();
            }
        }
        return (this.mStreamStates[streamType].getMaxIndex() + 5) / 10;
    }

    public int getStreamMinVolume(int streamType) {
        ensureValidStreamType(streamType);
        if (this.mUseFixedVolume && !isBluetoothA2dpStreamType(streamType) && ensureCarAudio()) {
            try {
                int groupId = this.mCarAudio.getVolumeGroupIdForUsage(0, this.mBuilder.setLegacyStreamType(streamType).build().getUsage());
                return this.mCarAudio.getGroupMinVolume(0, groupId);
            } catch (RemoteException e) {
                e.printStackTrace();
            } catch (NullPointerException e2) {
                e2.printStackTrace();
            }
        }
        boolean isPrivileged = Binder.getCallingUid() == 1000 || this.mContext.checkCallingPermission("android.permission.MODIFY_AUDIO_SETTINGS") == 0 || this.mContext.checkCallingPermission("android.permission.MODIFY_AUDIO_ROUTING") == 0;
        return (this.mStreamStates[streamType].getMinIndex(isPrivileged) + 5) / 10;
    }

    public int getLastAudibleStreamVolume(int streamType) {
        ensureValidStreamType(streamType);
        int device = getDeviceForStream(streamType);
        return (this.mStreamStates[streamType].getIndex(device) + 5) / 10;
    }

    public int getUiSoundsStreamType() {
        return mStreamVolumeAlias[1];
    }

    public void setMicrophoneMute(boolean on, String callingPackage, int userId) {
        int uid = Binder.getCallingUid();
        if (uid == 1000) {
            uid = UserHandle.getUid(userId, UserHandle.getAppId(uid));
        }
        MediaMetrics.Item mmi = new MediaMetrics.Item("audio.mic").setUid(uid).set(MediaMetrics.Property.CALLING_PACKAGE, callingPackage).set(MediaMetrics.Property.EVENT, "setMicrophoneMute").set(MediaMetrics.Property.REQUEST, on ? "mute" : "unmute");
        if (!on && this.mAppOps.noteOp(44, uid, callingPackage) != 0) {
            mmi.set(MediaMetrics.Property.EARLY_RETURN, "disallow unmuting").record();
            return;
        }
        if (!checkAudioSettingsPermission("setMicrophoneMute()")) {
            mmi.set(MediaMetrics.Property.EARLY_RETURN, "!checkAudioSettingsPermission").record();
            return;
        }
        if (userId != UserHandle.getCallingUserId() && this.mContext.checkCallingOrSelfPermission("android.permission.INTERACT_ACROSS_USERS_FULL") != 0) {
            mmi.set(MediaMetrics.Property.EARLY_RETURN, "permission").record();
            return;
        }
        Log.d(TAG, "setMicrophoneMute()  mute ? " + on + " callingPackage " + callingPackage);
        this.mMicMuteFromApi = on;
        mmi.record();
        setMicrophoneMuteNoCallerCheck(userId);
    }

    public void setMicrophoneMuteFromSwitch(boolean on) {
        int userId = Binder.getCallingUid();
        if (userId != 1000) {
            Log.e(TAG, "setMicrophoneMuteFromSwitch() called from non system user!");
            return;
        }
        this.mMicMuteFromSwitch = on;
        Log.d(TAG, "setMicrophoneMuteFromSwitch()  mute ? " + on);
        new MediaMetrics.Item("audio.mic").setUid(userId).set(MediaMetrics.Property.EVENT, "setMicrophoneMuteFromSwitch").set(MediaMetrics.Property.REQUEST, on ? "mute" : "unmute").record();
        setMicrophoneMuteNoCallerCheck(userId);
    }

    private void setMicMuteFromSwitchInput() {
        InputManager im = (InputManager) this.mContext.getSystemService(InputManager.class);
        int isMicMuted = im.isMicMuted();
        if (isMicMuted != -1) {
            setMicrophoneMuteFromSwitch(im.isMicMuted() != 0);
        }
    }

    public boolean isMicrophoneMuted() {
        return this.mMicMuteFromSystemCached;
    }

    private boolean isMicrophoneSupposedToBeMuted() {
        return this.mMicMuteFromSwitch || this.mMicMuteFromRestrictions || this.mMicMuteFromApi;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMicrophoneMuteNoCallerCheck(int userId) {
        boolean muted = isMicrophoneSupposedToBeMuted();
        if (getCurrentUserId() == userId || userId == 1000) {
            boolean currentMute = this.mAudioSystem.isMicrophoneMuted();
            long identity = Binder.clearCallingIdentity();
            int ret = this.mAudioSystem.muteMicrophone(muted);
            this.mMicMuteFromSystemCached = this.mAudioSystem.isMicrophoneMuted();
            if (ret != 0) {
                Log.e(TAG, "Error changing mic mute state to " + muted + " current:" + this.mMicMuteFromSystemCached);
            }
            new MediaMetrics.Item("audio.mic").setUid(userId).set(MediaMetrics.Property.EVENT, "setMicrophoneMuteNoCallerCheck").set(MediaMetrics.Property.MUTE, this.mMicMuteFromSystemCached ? "on" : "off").set(MediaMetrics.Property.REQUEST, muted ? "mute" : "unmute").set(MediaMetrics.Property.STATUS, Integer.valueOf(ret)).record();
            if (muted != currentMute) {
                try {
                    sendMsg(this.mAudioHandler, 30, 1, 0, 0, null, 0);
                } finally {
                    Binder.restoreCallingIdentity(identity);
                }
            }
        }
    }

    public int getRingerModeExternal() {
        int i;
        synchronized (this.mSettingsLock) {
            i = this.mRingerModeExternal;
        }
        return i;
    }

    public int getRingerModeInternal() {
        int i;
        synchronized (this.mSettingsLock) {
            i = this.mRingerMode;
        }
        return i;
    }

    private void ensureValidRingerMode(int ringerMode) {
        if (!isValidRingerMode(ringerMode)) {
            throw new IllegalArgumentException("Bad ringer mode " + ringerMode);
        }
    }

    public boolean isValidRingerMode(int ringerMode) {
        return ringerMode >= 0 && ringerMode <= 2;
    }

    public void setRingerModeExternal(int ringerMode, String caller) {
        if (isAndroidNPlus(caller) && wouldToggleZenMode(ringerMode) && !this.mNm.isNotificationPolicyAccessGrantedForPackage(caller)) {
            throw new SecurityException("Not allowed to change Do Not Disturb state");
        }
        setRingerMode(ringerMode, caller, true);
    }

    public void setRingerModeInternal(int ringerMode, String caller) {
        enforceVolumeController("setRingerModeInternal");
        setRingerMode(ringerMode, caller, false);
    }

    public void silenceRingerModeInternal(String reason) {
        VibrationEffect effect = null;
        int ringerMode = 0;
        int toastText = 0;
        int silenceRingerSetting = 0;
        if (this.mContext.getResources().getBoolean(R.bool.config_cecTvWakeOnOneTouchPlayEnabled_allowed)) {
            silenceRingerSetting = Settings.Secure.getIntForUser(this.mContentResolver, "volume_hush_gesture", 0, -2);
        }
        if (silenceRingerSetting == 1) {
            effect = VibrationEffect.get(5);
            ringerMode = 1;
            toastText = R.string.config_systemDependencyInstaller;
        } else if (silenceRingerSetting == 2) {
            effect = VibrationEffect.get(1);
            ringerMode = 0;
            toastText = R.string.PERSOSUBSTATE_RUIM_NETWORK2_IN_PROGRESS;
        }
        maybeVibrate(effect, reason);
        setRingerModeInternal(ringerMode, reason);
        Toast.makeText(this.mContext, toastText, 0).show();
    }

    private boolean maybeVibrate(VibrationEffect effect, String reason) {
        if (!this.mHasVibrator) {
            return false;
        }
        boolean hapticsDisabled = Settings.System.getIntForUser(this.mContext.getContentResolver(), "haptic_feedback_enabled", 0, -2) == 0;
        if (hapticsDisabled || effect == null) {
            return false;
        }
        this.mVibrator.vibrate(Binder.getCallingUid(), this.mContext.getOpPackageName(), effect, reason, VIBRATION_ATTRIBUTES);
        return true;
    }

    private void setRingerMode(int ringerMode, String caller, boolean external) {
        int ringerMode2;
        if (!this.mUseFixedVolume && !this.mIsSingleVolume) {
            if (caller == null || caller.length() == 0) {
                throw new IllegalArgumentException("Bad caller: " + caller);
            }
            ensureValidRingerMode(ringerMode);
            if (ringerMode == 1 && !this.mHasVibrator) {
                ringerMode2 = 0;
            } else {
                ringerMode2 = ringerMode;
            }
            long identity = Binder.clearCallingIdentity();
            try {
                synchronized (this.mSettingsLock) {
                    try {
                        int ringerModeInternal = getRingerModeInternal();
                        int ringerModeExternal = getRingerModeExternal();
                        if (external) {
                            setRingerModeExt(ringerMode2);
                            if (this.mRingerModeDelegate != null) {
                                ringerMode2 = this.mRingerModeDelegate.onSetRingerModeExternal(ringerModeExternal, ringerMode2, caller, ringerModeInternal, this.mVolumePolicy);
                            }
                            if (ringerMode2 != ringerModeInternal) {
                                setRingerModeInt(ringerMode2, true);
                            }
                        } else {
                            if (ringerMode2 != ringerModeInternal) {
                                setRingerModeInt(ringerMode2, true);
                            }
                            if (this.mRingerModeDelegate != null) {
                                ringerMode2 = this.mRingerModeDelegate.onSetRingerModeInternal(ringerModeInternal, ringerMode2, caller, ringerModeExternal, this.mVolumePolicy);
                            }
                            setRingerModeExt(ringerMode2);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                Binder.restoreCallingIdentity(identity);
            } catch (Throwable th2) {
                Binder.restoreCallingIdentity(identity);
                throw th2;
            }
        }
    }

    private void setRingerModeExt(int ringerMode) {
        synchronized (this.mSettingsLock) {
            if (ringerMode == this.mRingerModeExternal) {
                return;
            }
            this.mRingerModeExternal = ringerMode;
            broadcastRingerMode("android.media.RINGER_MODE_CHANGED", ringerMode);
        }
    }

    /* JADX WARN: Unreachable blocks removed: 2, instructions: 3 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:72:? -> B:64:0x0100). Please report as a decompilation issue!!! */
    private void muteRingerModeStreams() throws Throwable {
        int i;
        int i2;
        boolean z;
        int numStreamTypes = AudioSystem.getNumStreamTypes();
        if (this.mNm == null) {
            this.mNm = (NotificationManager) this.mContext.getSystemService("notification");
        }
        int i3 = this.mRingerMode;
        boolean z2 = true;
        boolean z3 = i3 == 1 || i3 == 0;
        boolean z4 = i3 == 1 && isBluetoothScoOn();
        sendMsg(this.mAudioHandler, 8, 2, 7, z4 ? 3 : 0, "muteRingerModeStreams() from u/pid:" + Binder.getCallingUid() + SliceClientPermissions.SliceAuthority.DELIMITER + Binder.getCallingPid(), 0);
        int i4 = numStreamTypes - 1;
        while (i4 >= 0) {
            boolean zIsStreamMutedByRingerOrZenMode = isStreamMutedByRingerOrZenMode(i4);
            boolean z5 = (shouldZenMuteStream(i4) || (z3 && isStreamAffectedByRingerMode(i4) && ((!z4 || i4 != 2) ? z2 : false))) ? z2 : false;
            if (zIsStreamMutedByRingerOrZenMode == z5) {
                i = numStreamTypes;
                i2 = i3;
                z = z2;
            } else if (!z5) {
                if (mStreamVolumeAlias[i4] != 2) {
                    i = numStreamTypes;
                    i2 = i3;
                } else {
                    synchronized (VolumeStreamState.class) {
                        try {
                            VolumeStreamState volumeStreamState = this.mStreamStates[i4];
                            int i5 = 0;
                            while (i5 < volumeStreamState.mIndexMap.size()) {
                                int iKeyAt = volumeStreamState.mIndexMap.keyAt(i5);
                                if (volumeStreamState.mIndexMap.valueAt(i5) == 0) {
                                    try {
                                        volumeStreamState.setIndex(10, iKeyAt, TAG, true);
                                    } catch (Throwable th) {
                                        th = th;
                                        throw th;
                                    }
                                }
                                i5++;
                                numStreamTypes = numStreamTypes;
                                i3 = i3;
                            }
                            i = numStreamTypes;
                            i2 = i3;
                            sendMsg(this.mAudioHandler, 1, 2, getDeviceForStream(i4), 0, this.mStreamStates[i4], 500);
                        } catch (Throwable th2) {
                            th = th2;
                            throw th;
                        }
                    }
                }
                this.mStreamStates[i4].mute(false);
                z = true;
                this.mRingerAndZenModeMutedStreams &= ~(1 << i4);
            } else {
                i = numStreamTypes;
                i2 = i3;
                z = z2;
                this.mStreamStates[i4].mute(z);
                this.mRingerAndZenModeMutedStreams |= (z ? 1 : 0) << i4;
            }
            i4--;
            z2 = z;
            numStreamTypes = i;
            i3 = i2;
        }
    }

    private boolean isAlarm(int streamType) {
        return streamType == 4;
    }

    private boolean isNotificationOrRinger(int streamType) {
        return streamType == 5 || streamType == 2;
    }

    private boolean isMedia(int streamType) {
        return streamType == 3;
    }

    private boolean isSystem(int streamType) {
        return streamType == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRingerModeInt(int ringerMode, boolean persist) {
        boolean change;
        synchronized (this.mSettingsLock) {
            change = this.mRingerMode != ringerMode;
            this.mRingerMode = ringerMode;
            muteRingerModeStreams();
        }
        if (persist) {
            sendMsg(this.mAudioHandler, 3, 0, 0, 0, null, 500);
        }
        if (change) {
            broadcastRingerMode("android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION", ringerMode);
        }
    }

    void postUpdateRingerModeServiceInt() {
        sendMsg(this.mAudioHandler, 25, 2, 0, 0, null, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onUpdateRingerModeServiceInt() {
        setRingerModeInt(getRingerModeInternal(), false);
    }

    public boolean shouldVibrate(int vibrateType) {
        if (!this.mHasVibrator) {
            return false;
        }
        int vibrateSetting = getVibrateSetting(vibrateType);
        if (vibrateSetting != 1) {
            return vibrateSetting == 2 && getRingerModeExternal() == 1;
        }
        return getRingerModeExternal() != 0;
    }

    public int getVibrateSetting(int vibrateType) {
        if (this.mHasVibrator) {
            return (this.mVibrateSetting >> (vibrateType * 2)) & 3;
        }
        return 0;
    }

    public void setVibrateSetting(int vibrateType, int vibrateSetting) {
        if (this.mHasVibrator) {
            this.mVibrateSetting = AudioSystem.getValueForVibrateSetting(this.mVibrateSetting, vibrateType, vibrateSetting);
            broadcastVibrateSetting(vibrateType);
        }
    }

    int getModeOwnerPid() {
        try {
            int modeOwnerPid = this.mSetModeDeathHandlers.get(0).getPid();
            return modeOwnerPid;
        } catch (Exception e) {
            return 0;
        }
    }

    int getModeOwnerUid() {
        try {
            int modeOwnerUid = this.mSetModeDeathHandlers.get(0).getUid();
            return modeOwnerUid;
        } catch (Exception e) {
            return 0;
        }
    }

    private class SetModeDeathHandler implements IBinder.DeathRecipient {
        private final IBinder mCb;
        private final boolean mIsPrivileged;
        private int mMode = 0;
        private final String mPackage;
        private final int mPid;
        private final int mUid;

        SetModeDeathHandler(IBinder cb, int pid, int uid, boolean isPrivileged, String caller) {
            this.mCb = cb;
            this.mPid = pid;
            this.mUid = uid;
            this.mIsPrivileged = isPrivileged;
            this.mPackage = caller;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            int newModeOwnerPid = 0;
            synchronized (AudioService.this.mDeviceBroker.mSetModeLock) {
                Log.w(AudioService.TAG, "setMode() client died");
                int index = AudioService.this.mSetModeDeathHandlers.indexOf(this);
                if (index >= 0) {
                    newModeOwnerPid = AudioService.this.setModeInt(0, this.mCb, this.mPid, this.mUid, this.mIsPrivileged, AudioService.TAG);
                } else {
                    Log.w(AudioService.TAG, "unregistered setMode() client died");
                }
            }
            AudioService.this.mDeviceBroker.postSetModeOwnerPid(newModeOwnerPid, AudioService.this.getMode());
        }

        public int getPid() {
            return this.mPid;
        }

        public void setMode(int mode) {
            this.mMode = mode;
        }

        public int getMode() {
            return this.mMode;
        }

        public IBinder getBinder() {
            return this.mCb;
        }

        public int getUid() {
            return this.mUid;
        }

        public String getPackage() {
            return this.mPackage;
        }

        public boolean isPrivileged() {
            return this.mIsPrivileged;
        }
    }

    public void setMode(int mode, IBinder cb, String callingPackage) {
        if (!checkAudioSettingsPermission("setMode()")) {
            return;
        }
        boolean hasModifyPhoneStatePermission = this.mContext.checkCallingOrSelfPermission("android.permission.MODIFY_PHONE_STATE") == 0;
        int callingPid = Binder.getCallingPid();
        if (mode == 2 && !hasModifyPhoneStatePermission) {
            Log.w(TAG, "MODIFY_PHONE_STATE Permission Denial: setMode(MODE_IN_CALL) from pid=" + callingPid + ", uid=" + Binder.getCallingUid());
            return;
        }
        if (mode == 4 && !this.mIsCallScreeningModeSupported) {
            Log.w(TAG, "setMode(MODE_CALL_SCREENING) not permitted when call screening is not supported");
            return;
        }
        if (mode < -1 || mode >= 5) {
            return;
        }
        synchronized (this.mDeviceBroker.mSetModeLock) {
            if (mode == -1) {
                mode = this.mMode;
            }
            int oldModeOwnerPid = getModeOwnerPid();
            if (mode != this.mMode && mode != 0 && ((this.mMode == 2 || this.mMode == 3) && !hasModifyPhoneStatePermission && oldModeOwnerPid != callingPid)) {
                Log.w(TAG, "setMode(" + mode + ") from pid=" + callingPid + ", uid=" + Binder.getCallingUid() + ", cannot change mode from " + this.mMode + " without permission or being mode owner");
                return;
            }
            int newModeOwnerPid = setModeInt(mode, cb, callingPid, Binder.getCallingUid(), hasModifyPhoneStatePermission, callingPackage);
            this.mDeviceBroker.postSetModeOwnerPid(newModeOwnerPid, getMode());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int setModeInt(int mode, IBinder cb, int pid, int uid, boolean isPrivileged, String caller) {
        SetModeDeathHandler hdlr;
        int mode2;
        int mode3;
        int status;
        int mode4;
        int newModeOwnerPid = 0;
        if (cb == null) {
            Log.e(TAG, "setModeInt() called with null binder");
            return 0;
        }
        SetModeDeathHandler hdlr2 = null;
        Iterator<SetModeDeathHandler> it = this.mSetModeDeathHandlers.iterator();
        while (it.hasNext()) {
            SetModeDeathHandler h = it.next();
            if (h.getPid() == pid) {
                it.remove();
                if (h.getMode() == 3) {
                    this.mAudioHandler.removeEqualMessages(31, h);
                }
                try {
                    h.getBinder().unlinkToDeath(h, 0);
                    if (cb == h.getBinder()) {
                        hdlr2 = h;
                        break;
                    }
                    hdlr2 = null;
                    break;
                } catch (NoSuchElementException e) {
                    Log.w(TAG, "link does not exist ...");
                    hdlr2 = null;
                    break;
                }
            }
        }
        int oldMode = this.mMode;
        int actualMode = mode;
        IBinder cb2 = cb;
        while (true) {
            int actualMode2 = actualMode;
            if (actualMode == 0) {
                if (this.mSetModeDeathHandlers.isEmpty()) {
                    cb2 = cb2;
                    mode2 = actualMode;
                    mode3 = actualMode2;
                } else {
                    SetModeDeathHandler hdlr3 = this.mSetModeDeathHandlers.get(0);
                    hdlr2 = hdlr3;
                    IBinder cb3 = hdlr2.getBinder();
                    int actualMode3 = hdlr2.getMode();
                    cb2 = cb3;
                    mode2 = actualMode;
                    mode3 = actualMode3;
                }
            } else {
                if (hdlr2 == null) {
                    SetModeDeathHandler hdlr4 = new SetModeDeathHandler(cb2, pid, uid, isPrivileged, caller);
                    hdlr = hdlr4;
                } else {
                    hdlr = hdlr2;
                }
                try {
                    cb2.linkToDeath(hdlr, 0);
                } catch (RemoteException e2) {
                    Log.w(TAG, "setMode() could not link to " + cb2 + " binder death");
                }
                this.mSetModeDeathHandlers.add(0, hdlr);
                mode2 = actualMode;
                hdlr.setMode(mode2);
                hdlr2 = hdlr;
                mode3 = actualMode2;
            }
            if (mode3 != this.mMode) {
                long identity = Binder.clearCallingIdentity();
                int status2 = AudioSystem.setPhoneState(mode3, getModeOwnerUid());
                Binder.restoreCallingIdentity(identity);
                if (status2 == 0) {
                    this.mMode = mode3;
                } else {
                    if (hdlr2 != null) {
                        this.mSetModeDeathHandlers.remove(hdlr2);
                        cb2.unlinkToDeath(hdlr2, 0);
                    }
                    mode2 = 0;
                }
                status = status2;
                mode4 = mode2;
            } else {
                status = 0;
                mode4 = mode2;
            }
            if (status == 0 || this.mSetModeDeathHandlers.isEmpty()) {
                break;
            }
            cb2 = cb2;
            actualMode = mode4;
        }
        if (status != 0) {
            return 0;
        }
        if (mode3 != 0 && (newModeOwnerPid = getModeOwnerPid()) == 0) {
            Log.e(TAG, "setMode() different from MODE_NORMAL with empty mode client stack");
        }
        this.mModeLogger.log(new AudioServiceEvents.PhoneStateEvent(caller, pid, mode4, newModeOwnerPid, mode3));
        int streamType = getActiveStreamType(Integer.MIN_VALUE);
        int device = getDeviceForStream(streamType);
        int index = this.mStreamStates[mStreamVolumeAlias[streamType]].getIndex(device);
        int newModeOwnerPid2 = newModeOwnerPid;
        int newModeOwnerPid3 = mode3;
        setStreamVolumeInt(mStreamVolumeAlias[streamType], index, device, true, caller, true);
        updateStreamVolumeAlias(true, caller);
        updateAbsVolumeMultiModeDevices(oldMode, newModeOwnerPid3);
        if (newModeOwnerPid3 == 3 && !hdlr2.isPrivileged()) {
            sendMsg(this.mAudioHandler, 31, 2, 0, 0, hdlr2, CHECK_MODE_FOR_UID_PERIOD_MS);
        }
        return newModeOwnerPid2;
    }

    public int getMode() {
        return this.mMode;
    }

    public boolean isCallScreeningModeSupported() {
        return this.mIsCallScreeningModeSupported;
    }

    public void setRttEnabled(boolean rttEnabled) {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.MODIFY_PHONE_STATE") != 0) {
            Log.w(TAG, "MODIFY_PHONE_STATE Permission Denial: setRttEnabled from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid());
            return;
        }
        synchronized (this.mSettingsLock) {
            this.mRttEnabled = rttEnabled;
            long identity = Binder.clearCallingIdentity();
            try {
                AudioSystem.setRttEnabled(rttEnabled);
                Binder.restoreCallingIdentity(identity);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(identity);
                throw th;
            }
        }
    }

    private static final class LoadSoundEffectReply implements SoundEffectsHelper.OnEffectsLoadCompleteHandler {
        private static final int SOUND_EFFECTS_ERROR = -1;
        private static final int SOUND_EFFECTS_LOADED = 0;
        private static final int SOUND_EFFECTS_LOADING = 1;
        private static final int SOUND_EFFECTS_LOAD_TIMEOUT_MS = 5000;
        private int mStatus;

        private LoadSoundEffectReply() {
            this.mStatus = 1;
        }

        @Override // com.android.server.audio.SoundEffectsHelper.OnEffectsLoadCompleteHandler
        public synchronized void run(boolean success) {
            this.mStatus = success ? 0 : -1;
            notify();
        }

        public synchronized boolean waitForLoaded(int attempts) {
            int attempts2;
            while (true) {
                if (this.mStatus != 1) {
                    break;
                }
                int attempts3 = attempts - 1;
                if (attempts <= 0) {
                    break;
                }
                try {
                    wait(5000L);
                } catch (InterruptedException e) {
                    Log.w(AudioService.TAG, "Interrupted while waiting sound pool loaded.");
                }
                attempts = attempts3;
                throw th;
            }
            attempts2 = this.mStatus;
            return attempts2 == 0;
        }
    }

    public void playSoundEffect(int effectType) {
        playSoundEffectVolume(effectType, -1.0f);
    }

    public void playSoundEffectVolume(int effectType, float volume) {
        if (isStreamMutedByRingerOrZenMode(1)) {
            return;
        }
        if (effectType >= 12 || effectType < 0) {
            Log.w(TAG, "AudioService effectType value " + effectType + " out of range");
            return;
        }
        sendMsg(this.mAudioHandler, 5, 2, effectType, (int) (1000.0f * volume), null, 0);
    }

    public boolean loadSoundEffects() {
        LoadSoundEffectReply reply = new LoadSoundEffectReply();
        sendMsg(this.mAudioHandler, 7, 2, 0, 0, reply, 0);
        return reply.waitForLoaded(3);
    }

    protected void scheduleLoadSoundEffects() {
        sendMsg(this.mAudioHandler, 7, 2, 0, 0, null, 0);
    }

    public void unloadSoundEffects() {
        sendMsg(this.mAudioHandler, 15, 2, 0, 0, null, 0);
    }

    public void reloadAudioSettings() {
        readAudioSettings(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void readAudioSettings(boolean userSwitch) {
        readPersistedSettings();
        readUserRestrictions();
        int numStreamTypes = AudioSystem.getNumStreamTypes();
        for (int streamType = 0; streamType < numStreamTypes; streamType++) {
            VolumeStreamState streamState = this.mStreamStates[streamType];
            if (!userSwitch || mStreamVolumeAlias[streamType] != 3) {
                streamState.readSettings();
                synchronized (VolumeStreamState.class) {
                    if (streamState.mIsMuted && ((!isStreamAffectedByMute(streamType) && !isStreamMutedByRingerOrZenMode(streamType)) || this.mUseFixedVolume)) {
                        streamState.mIsMuted = false;
                    }
                }
            }
        }
        int streamType2 = getRingerModeInternal();
        setRingerModeInt(streamType2, false);
        checkAllFixedVolumeDevices();
        checkAllAliasStreamVolumes();
        checkMuteAffectedStreams();
        synchronized (this.mSafeMediaVolumeStateLock) {
            this.mMusicActiveMs = MathUtils.constrain(Settings.Secure.getIntForUser(this.mContentResolver, "unsafe_volume_music_active_ms", 0, -2), 0, UNSAFE_VOLUME_MUSIC_ACTIVE_MS_MAX);
            if (this.mSafeMediaVolumeState == 3) {
                enforceSafeMediaVolume(TAG);
            }
        }
        readVolumeGroupsSettings();
        restoreDeviceVolumeBehavior();
    }

    public void setSpeakerphoneOn(IBinder cb, boolean on) {
        if (!checkAudioSettingsPermission("setSpeakerphoneOn()")) {
            return;
        }
        int uid = Binder.getCallingUid();
        int pid = Binder.getCallingPid();
        String eventSource = "setSpeakerphoneOn(" + on + ") from u/pid:" + uid + SliceClientPermissions.SliceAuthority.DELIMITER + pid;
        boolean stateChanged = this.mDeviceBroker.setSpeakerphoneOn(cb, pid, on, eventSource);
        new MediaMetrics.Item("audio.device.setSpeakerphoneOn").setUid(uid).setPid(pid).set(MediaMetrics.Property.STATE, on ? "on" : "off").record();
        if (stateChanged) {
            long ident = Binder.clearCallingIdentity();
            try {
                this.mContext.sendBroadcastAsUser(new Intent("android.media.action.SPEAKERPHONE_STATE_CHANGED").setFlags(1073741824), UserHandle.ALL);
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }
    }

    public boolean isSpeakerphoneOn() {
        return this.mDeviceBroker.isSpeakerphoneOn();
    }

    public void setBluetoothScoOn(boolean on) {
        if (!checkAudioSettingsPermission("setBluetoothScoOn()")) {
            return;
        }
        if (UserHandle.getCallingAppId() >= 10000) {
            this.mDeviceBroker.setBluetoothScoOnByApp(on);
            return;
        }
        int uid = Binder.getCallingUid();
        int pid = Binder.getCallingPid();
        String eventSource = "setBluetoothScoOn(" + on + ") from u/pid:" + uid + SliceClientPermissions.SliceAuthority.DELIMITER + pid;
        new MediaMetrics.Item("audio.device.setBluetoothScoOn").setUid(uid).setPid(pid).set(MediaMetrics.Property.STATE, on ? "on" : "off").record();
        this.mDeviceBroker.setBluetoothScoOn(on, eventSource);
    }

    public boolean isBluetoothScoOn() {
        return this.mDeviceBroker.isBluetoothScoOnForApp();
    }

    public void setBluetoothA2dpOn(boolean on) {
        int uid = Binder.getCallingUid();
        int pid = Binder.getCallingPid();
        String eventSource = "setBluetoothA2dpOn(" + on + ") from u/pid:" + uid + SliceClientPermissions.SliceAuthority.DELIMITER + pid;
        new MediaMetrics.Item("audio.device.setBluetoothA2dpOn").setUid(uid).setPid(pid).set(MediaMetrics.Property.STATE, on ? "on" : "off").record();
        this.mDeviceBroker.setBluetoothA2dpOn_Async(on, eventSource);
    }

    public boolean isBluetoothA2dpOn() {
        return this.mDeviceBroker.isBluetoothA2dpOn();
    }

    public void startBluetoothSco(IBinder cb, int targetSdkVersion) {
        int uid = Binder.getCallingUid();
        int pid = Binder.getCallingPid();
        int scoAudioMode = targetSdkVersion < 18 ? 0 : -1;
        String eventSource = "startBluetoothSco()) from u/pid:" + uid + SliceClientPermissions.SliceAuthority.DELIMITER + pid;
        new MediaMetrics.Item("audio.bluetooth").setUid(uid).setPid(pid).set(MediaMetrics.Property.EVENT, "startBluetoothSco").set(MediaMetrics.Property.SCO_AUDIO_MODE, BtHelper.scoAudioModeToString(scoAudioMode)).record();
        startBluetoothScoInt(cb, scoAudioMode, eventSource);
    }

    public void startBluetoothScoVirtualCall(IBinder cb) {
        int uid = Binder.getCallingUid();
        int pid = Binder.getCallingPid();
        String eventSource = "startBluetoothScoVirtualCall()) from u/pid:" + uid + SliceClientPermissions.SliceAuthority.DELIMITER + pid;
        new MediaMetrics.Item("audio.bluetooth").setUid(uid).setPid(pid).set(MediaMetrics.Property.EVENT, "startBluetoothScoVirtualCall").set(MediaMetrics.Property.SCO_AUDIO_MODE, BtHelper.scoAudioModeToString(0)).record();
        startBluetoothScoInt(cb, 0, eventSource);
    }

    void startBluetoothScoInt(IBinder cb, int scoAudioMode, String eventSource) {
        MediaMetrics.Item mmi = new MediaMetrics.Item("audio.bluetooth").set(MediaMetrics.Property.EVENT, "startBluetoothScoInt").set(MediaMetrics.Property.SCO_AUDIO_MODE, BtHelper.scoAudioModeToString(scoAudioMode));
        if (!checkAudioSettingsPermission("startBluetoothSco()") || !this.mSystemReady) {
            mmi.set(MediaMetrics.Property.EARLY_RETURN, "permission or systemReady").record();
            return;
        }
        synchronized (this.mDeviceBroker.mSetModeLock) {
            this.mDeviceBroker.startBluetoothScoForClient_Sync(cb, scoAudioMode, eventSource);
        }
        mmi.record();
    }

    public void stopBluetoothSco(IBinder cb) {
        if (!checkAudioSettingsPermission("stopBluetoothSco()") || !this.mSystemReady) {
            return;
        }
        int uid = Binder.getCallingUid();
        int pid = Binder.getCallingPid();
        String eventSource = "stopBluetoothSco()) from u/pid:" + uid + SliceClientPermissions.SliceAuthority.DELIMITER + pid;
        synchronized (this.mDeviceBroker.mSetModeLock) {
            this.mDeviceBroker.stopBluetoothScoForClient_Sync(cb, eventSource);
        }
        new MediaMetrics.Item("audio.bluetooth").setUid(uid).setPid(pid).set(MediaMetrics.Property.EVENT, "stopBluetoothSco").set(MediaMetrics.Property.SCO_AUDIO_MODE, BtHelper.scoAudioModeToString(-1)).record();
    }

    ContentResolver getContentResolver() {
        return this.mContentResolver;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCheckMusicActive(String caller) {
        synchronized (this.mSafeMediaVolumeStateLock) {
            if (this.mSafeMediaVolumeState == 2) {
                int device = getDeviceForStream(3);
                if (this.mSafeMediaVolumeDevices.contains(Integer.valueOf(device))) {
                    sendMsg(this.mAudioHandler, 11, 0, 0, 0, caller, MUSIC_ACTIVE_POLL_PERIOD_MS);
                    int index = this.mStreamStates[3].getIndex(device);
                    if (AudioSystem.isStreamActive(3, 0) && index > safeMediaVolumeIndex(device)) {
                        int i = this.mMusicActiveMs + MUSIC_ACTIVE_POLL_PERIOD_MS;
                        this.mMusicActiveMs = i;
                        if (i > UNSAFE_VOLUME_MUSIC_ACTIVE_MS_MAX) {
                            setSafeMediaVolumeEnabled(true, caller);
                            this.mMusicActiveMs = 0;
                        }
                        saveMusicActiveMs();
                    }
                }
            }
        }
    }

    private void saveMusicActiveMs() {
        this.mAudioHandler.obtainMessage(17, this.mMusicActiveMs, 0).sendToTarget();
    }

    private int getSafeUsbMediaVolumeIndex() {
        int min = MIN_STREAM_VOLUME[3];
        int max = MAX_STREAM_VOLUME[3];
        this.mSafeUsbMediaVolumeDbfs = this.mContext.getResources().getInteger(R.integer.config_keyChordPowerVolumeUp) / 100.0f;
        while (Math.abs(max - min) > 1) {
            int index = (max + min) / 2;
            float gainDB = AudioSystem.getStreamVolumeDB(3, index, 67108864);
            if (Float.isNaN(gainDB)) {
                break;
            }
            float f = this.mSafeUsbMediaVolumeDbfs;
            if (gainDB == f) {
                min = index;
                break;
            }
            if (gainDB < f) {
                min = index;
            } else {
                max = index;
            }
        }
        return min * 10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onConfigureSafeVolume(boolean force, String caller) {
        int persistedState;
        synchronized (this.mSafeMediaVolumeStateLock) {
            int mcc = this.mContext.getResources().getConfiguration().mcc;
            if (this.mMcc != mcc || (this.mMcc == 0 && force)) {
                this.mSafeMediaVolumeIndex = this.mContext.getResources().getInteger(R.integer.config_keepPreloadsMinDays) * 10;
                this.mSafeUsbMediaVolumeIndex = getSafeUsbMediaVolumeIndex();
                boolean safeMediaVolumeEnabled = SystemProperties.getBoolean("audio.safemedia.force", false) || this.mContext.getResources().getBoolean(R.bool.config_cecQuerySadTruehd_userConfigurable);
                boolean safeMediaVolumeBypass = SystemProperties.getBoolean("audio.safemedia.bypass", false);
                if (safeMediaVolumeEnabled && !safeMediaVolumeBypass) {
                    persistedState = 3;
                    if (this.mSafeMediaVolumeState != 2) {
                        if (this.mMusicActiveMs == 0) {
                            this.mSafeMediaVolumeState = 3;
                            enforceSafeMediaVolume(caller);
                        } else {
                            this.mSafeMediaVolumeState = 2;
                        }
                    }
                } else {
                    this.mSafeMediaVolumeState = 1;
                    persistedState = 1;
                }
                this.mMcc = mcc;
                sendMsg(this.mAudioHandler, 14, 2, persistedState, 0, null, 0);
            }
        }
    }

    private int checkForRingerModeChange(int oldIndex, int direction, int step, boolean isMuted, String caller, int flags) {
        int result = 1;
        if (isPlatformTelevision() || this.mIsSingleVolume) {
            return 1;
        }
        int ringerMode = getRingerModeInternal();
        if (ringerMode == 0) {
            if (this.mIsSingleVolume && direction == -1 && oldIndex >= step * 2 && isMuted) {
                ringerMode = 2;
            } else if (direction == 1 || direction == 101 || direction == 100) {
                if (!this.mVolumePolicy.volumeUpToExitSilent) {
                    result = 1 | 128;
                } else {
                    ringerMode = (this.mHasVibrator && direction == 1) ? 1 : 2;
                }
            }
            result &= -2;
        } else if (ringerMode != 1) {
            if (ringerMode == 2) {
                if (direction == -1) {
                    if (this.mHasVibrator) {
                        if (step <= oldIndex && oldIndex < step * 2) {
                            ringerMode = 1;
                            this.mLoweredFromNormalToVibrateTime = SystemClock.uptimeMillis();
                        }
                    } else if (oldIndex == step && this.mVolumePolicy.volumeDownToEnterSilent) {
                        ringerMode = 0;
                    }
                } else if (this.mIsSingleVolume && (direction == 101 || direction == -100)) {
                    if (this.mHasVibrator) {
                        ringerMode = 1;
                    } else {
                        ringerMode = 0;
                    }
                    result = 1 & (-2);
                }
            } else {
                Log.e(TAG, "checkForRingerModeChange() wrong ringer mode: " + ringerMode);
            }
        } else if (!this.mHasVibrator) {
            Log.e(TAG, "checkForRingerModeChange() current ringer mode is vibratebut no vibrator is present");
        } else {
            if (direction == -1) {
                if (this.mIsSingleVolume && oldIndex >= step * 2 && isMuted) {
                    ringerMode = 2;
                } else if (this.mPrevVolDirection != -1) {
                    if (this.mVolumePolicy.volumeDownToEnterSilent) {
                        long diff = SystemClock.uptimeMillis() - this.mLoweredFromNormalToVibrateTime;
                        if (diff > this.mVolumePolicy.vibrateToSilentDebounce && this.mRingerModeDelegate.canVolumeDownEnterSilent()) {
                            ringerMode = 0;
                        }
                    } else {
                        result = 1 | 2048;
                    }
                }
            } else if (direction == 1 || direction == 101 || direction == 100) {
                ringerMode = 2;
            }
            result &= -2;
        }
        if (isAndroidNPlus(caller) && wouldToggleZenMode(ringerMode) && !this.mNm.isNotificationPolicyAccessGrantedForPackage(caller) && (flags & 4096) == 0) {
            throw new SecurityException("Not allowed to change Do Not Disturb state");
        }
        setRingerMode(ringerMode, "AS.AudioService.checkForRingerModeChange", false);
        this.mPrevVolDirection = direction;
        return result;
    }

    public boolean isStreamAffectedByRingerMode(int streamType) {
        return (this.mRingerModeAffectedStreams & (1 << streamType)) != 0;
    }

    private boolean shouldZenMuteStream(int streamType) {
        if (this.mNm.getZenMode() != 1) {
            return false;
        }
        NotificationManager.Policy zenPolicy = this.mNm.getConsolidatedNotificationPolicy();
        boolean muteAlarms = (zenPolicy.priorityCategories & 32) == 0;
        boolean muteMedia = (zenPolicy.priorityCategories & 64) == 0;
        boolean muteSystem = (zenPolicy.priorityCategories & 128) == 0;
        boolean muteNotificationAndRing = ZenModeConfig.areAllPriorityOnlyRingerSoundsMuted(zenPolicy);
        return (muteAlarms && isAlarm(streamType)) || (muteMedia && isMedia(streamType)) || ((muteSystem && isSystem(streamType)) || (muteNotificationAndRing && isNotificationOrRinger(streamType)));
    }

    private boolean isStreamMutedByRingerOrZenMode(int streamType) {
        return (this.mRingerAndZenModeMutedStreams & (1 << streamType)) != 0;
    }

    private boolean updateZenModeAffectedStreams() {
        if (!this.mSystemReady) {
            return false;
        }
        int zenModeAffectedStreams = 0;
        int zenMode = this.mNm.getZenMode();
        if (zenMode == 2) {
            zenModeAffectedStreams = 0 | 16 | 8;
        } else if (zenMode == 1) {
            NotificationManager.Policy zenPolicy = this.mNm.getConsolidatedNotificationPolicy();
            if ((zenPolicy.priorityCategories & 32) == 0) {
                zenModeAffectedStreams = 0 | 16;
            }
            if ((zenPolicy.priorityCategories & 64) == 0) {
                zenModeAffectedStreams |= 8;
            }
            if ((zenPolicy.priorityCategories & 128) == 0) {
                zenModeAffectedStreams |= 2;
            }
            if (ZenModeConfig.areAllPriorityOnlyRingerSoundsMuted(zenPolicy)) {
                zenModeAffectedStreams = zenModeAffectedStreams | 32 | 4;
            }
        }
        if (this.mZenModeAffectedStreams == zenModeAffectedStreams) {
            return false;
        }
        this.mZenModeAffectedStreams = zenModeAffectedStreams;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean updateRingerAndZenModeAffectedStreams() {
        int ringerModeAffectedStreams;
        int ringerModeAffectedStreams2;
        boolean updatedZenModeAffectedStreams = updateZenModeAffectedStreams();
        int ringerModeAffectedStreams3 = Settings.System.getIntForUser(this.mContentResolver, "mode_ringer_streams_affected", 166, -2);
        if (this.mIsSingleVolume) {
            ringerModeAffectedStreams3 = 0;
        } else {
            AudioManagerInternal.RingerModeDelegate ringerModeDelegate = this.mRingerModeDelegate;
            if (ringerModeDelegate != null) {
                ringerModeAffectedStreams3 = ringerModeDelegate.getRingerModeAffectedStreams(ringerModeAffectedStreams3);
            }
        }
        if (this.mCameraSoundForced) {
            ringerModeAffectedStreams = ringerModeAffectedStreams3 & (-129);
        } else {
            ringerModeAffectedStreams = ringerModeAffectedStreams3 | 128;
        }
        if (mStreamVolumeAlias[8] == 2) {
            ringerModeAffectedStreams2 = ringerModeAffectedStreams | 256;
        } else {
            ringerModeAffectedStreams2 = ringerModeAffectedStreams & (-257);
        }
        if (ringerModeAffectedStreams2 != this.mRingerModeAffectedStreams) {
            Settings.System.putIntForUser(this.mContentResolver, "mode_ringer_streams_affected", ringerModeAffectedStreams2, -2);
            this.mRingerModeAffectedStreams = ringerModeAffectedStreams2;
            return true;
        }
        return updatedZenModeAffectedStreams;
    }

    public boolean isStreamAffectedByMute(int streamType) {
        return (this.mMuteAffectedStreams & (1 << streamType)) != 0;
    }

    private void ensureValidDirection(int direction) {
        if (direction != -100 && direction != -1 && direction != 0 && direction != 1 && direction != 100 && direction != 101) {
            throw new IllegalArgumentException("Bad direction " + direction);
        }
    }

    private void ensureValidStreamType(int streamType) {
        if (streamType < 0 || streamType >= this.mStreamStates.length) {
            throw new IllegalArgumentException("Bad stream type " + streamType);
        }
    }

    private boolean isMuteAdjust(int adjust) {
        return adjust == -100 || adjust == 100 || adjust == 101;
    }

    public boolean isInCommunication() {
        TelecomManager telecomManager = (TelecomManager) this.mContext.getSystemService("telecom");
        long ident = Binder.clearCallingIdentity();
        boolean IsInCall = telecomManager.isInCall();
        Binder.restoreCallingIdentity(ident);
        return IsInCall || getMode() == 3 || getMode() == 2;
    }

    private boolean wasStreamActiveRecently(int stream, int delay_ms) {
        return AudioSystem.isStreamActive(stream, delay_ms) || AudioSystem.isStreamActiveRemotely(stream, delay_ms);
    }

    private int getActiveStreamType(int suggestedStreamType) {
        if (this.mIsSingleVolume && suggestedStreamType == Integer.MIN_VALUE) {
            return 3;
        }
        if (this.mPlatformType == 1) {
            if (isInCommunication()) {
                return AudioSystem.getForceUse(0) == 3 ? 6 : 0;
            }
            if (suggestedStreamType == Integer.MIN_VALUE) {
                if (wasStreamActiveRecently(2, sStreamOverrideDelayMs)) {
                    return 2;
                }
                return wasStreamActiveRecently(5, sStreamOverrideDelayMs) ? 5 : 3;
            }
            if (wasStreamActiveRecently(5, sStreamOverrideDelayMs)) {
                return 5;
            }
            if (wasStreamActiveRecently(2, sStreamOverrideDelayMs)) {
                return 2;
            }
        }
        if (isInCommunication()) {
            return AudioSystem.getForceUse(0) == 3 ? 6 : 0;
        }
        if (AudioSystem.isStreamActive(5, sStreamOverrideDelayMs)) {
            return 5;
        }
        if (AudioSystem.isStreamActive(2, sStreamOverrideDelayMs)) {
            return 2;
        }
        if (suggestedStreamType == Integer.MIN_VALUE) {
            if (AudioSystem.isStreamActive(5, sStreamOverrideDelayMs)) {
                return 5;
            }
            return AudioSystem.isStreamActive(2, sStreamOverrideDelayMs) ? 2 : 3;
        }
        return suggestedStreamType;
    }

    private void broadcastRingerMode(String action, int ringerMode) {
        if (!this.mSystemServer.isPrivileged()) {
            return;
        }
        Intent broadcast = new Intent(action);
        broadcast.putExtra("android.media.EXTRA_RINGER_MODE", ringerMode);
        broadcast.addFlags(603979776);
        sendStickyBroadcastToAll(broadcast);
    }

    private void broadcastVibrateSetting(int vibrateType) {
        if (this.mSystemServer.isPrivileged() && this.mActivityManagerInternal.isSystemReady()) {
            Intent broadcast = new Intent("android.media.VIBRATE_SETTING_CHANGED");
            broadcast.putExtra("android.media.EXTRA_VIBRATE_TYPE", vibrateType);
            broadcast.putExtra("android.media.EXTRA_VIBRATE_SETTING", getVibrateSetting(vibrateType));
            sendBroadcastToAll(broadcast);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void queueMsgUnderWakeLock(Handler handler, int msg, int arg1, int arg2, Object obj, int delay) {
        long ident = Binder.clearCallingIdentity();
        this.mAudioEventWakeLock.acquire();
        Binder.restoreCallingIdentity(ident);
        sendMsg(handler, msg, 2, arg1, arg2, obj, delay);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void sendMsg(Handler handler, int msg, int existingMsgPolicy, int arg1, int arg2, Object obj, int delay) {
        if (existingMsgPolicy == 0) {
            handler.removeMessages(msg);
        } else if (existingMsgPolicy == 1 && handler.hasMessages(msg)) {
            return;
        }
        long time = SystemClock.uptimeMillis() + ((long) delay);
        handler.sendMessageAtTime(handler.obtainMessage(msg, arg1, arg2, obj), time);
    }

    boolean checkAudioSettingsPermission(String method) {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.MODIFY_AUDIO_SETTINGS") == 0) {
            return true;
        }
        String msg = "Audio Settings Permission Denial: " + method + " from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid();
        Log.w(TAG, msg);
        return false;
    }

    protected void initMinStreamVolumeWithoutModifyAudioSettings() {
        int safeIndex;
        int deviceForAlarm = 4194304;
        if (Float.isNaN(AudioSystem.getStreamVolumeDB(4, MIN_STREAM_VOLUME[4], 4194304))) {
            deviceForAlarm = 2;
        }
        int idx = MAX_STREAM_VOLUME[4];
        while (idx >= MIN_STREAM_VOLUME[4] && AudioSystem.getStreamVolumeDB(4, idx, deviceForAlarm) >= MIN_ALARM_ATTENUATION_NON_PRIVILEGED_DB) {
            idx--;
        }
        int[] iArr = MIN_STREAM_VOLUME;
        if (idx <= iArr[4]) {
            safeIndex = iArr[4];
        } else {
            safeIndex = Math.min(idx + 1, MAX_STREAM_VOLUME[4]);
        }
        for (int stream : mStreamVolumeAlias) {
            if (mStreamVolumeAlias[stream] == 4) {
                this.mStreamStates[stream].updateNoPermMinIndex(safeIndex);
            }
        }
    }

    public int getDeviceForStream(int stream) {
        if (isBluetoothA2dpStreamType(stream)) {
            return 128;
        }
        int device = getDevicesForStream(stream);
        if (((device - 1) & device) != 0) {
            if ((device & 2) != 0) {
                return 2;
            }
            if ((262144 & device) != 0) {
                return 262144;
            }
            if ((524288 & device) != 0) {
                return 524288;
            }
            if ((2097152 & device) != 0) {
                return 2097152;
            }
            Iterator it = AudioSystem.DEVICE_OUT_ALL_A2DP_SET.iterator();
            while (it.hasNext()) {
                int deviceType = ((Integer) it.next()).intValue();
                if ((deviceType & device) == deviceType) {
                    return deviceType;
                }
            }
            return device;
        }
        return device;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getDevicesForStream(int stream) {
        return getDevicesForStream(stream, true);
    }

    private int getDevicesForStream(int stream, boolean checkOthers) {
        int iObserveDevicesForStream_syncVSS;
        ensureValidStreamType(stream);
        synchronized (VolumeStreamState.class) {
            iObserveDevicesForStream_syncVSS = this.mStreamStates[stream].observeDevicesForStream_syncVSS(checkOthers);
        }
        return iObserveDevicesForStream_syncVSS;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void observeDevicesForStreams(int skipStream) {
        synchronized (VolumeStreamState.class) {
            for (int stream = 0; stream < this.mStreamStates.length; stream++) {
                if (stream != skipStream) {
                    this.mStreamStates[stream].observeDevicesForStream_syncVSS(false);
                }
            }
        }
    }

    public void postObserveDevicesForAllStreams() {
        sendMsg(this.mAudioHandler, 27, 2, 0, 0, null, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onObserveDevicesForAllStreams() {
        observeDevicesForStreams(-1);
    }

    public void setDeviceVolumeBehavior(AudioDeviceAttributes device, int deviceVolumeBehavior, String pkgName) {
        enforceModifyAudioRoutingPermission();
        Objects.requireNonNull(device);
        AudioManager.enforceValidVolumeBehavior(deviceVolumeBehavior);
        if (pkgName == null) {
            pkgName = "";
        }
        int audioSystemDeviceOut = AudioDeviceInfo.convertDeviceTypeToInternalDevice(device.getType());
        setDeviceVolumeBehaviorInternal(audioSystemDeviceOut, deviceVolumeBehavior, pkgName);
        persistDeviceVolumeBehavior(audioSystemDeviceOut, deviceVolumeBehavior);
    }

    private void setDeviceVolumeBehaviorInternal(int audioSystemDeviceOut, int deviceVolumeBehavior, String caller) {
        if (!sDeviceVolumeBehaviorSupportedDeviceOutSet.contains(Integer.valueOf(audioSystemDeviceOut))) {
            throw new IllegalArgumentException("Unsupported device type " + audioSystemDeviceOut);
        }
        if (deviceVolumeBehavior == 0) {
            removeAudioSystemDeviceOutFromFullVolumeDevices(audioSystemDeviceOut);
            removeAudioSystemDeviceOutFromFixedVolumeDevices(audioSystemDeviceOut);
        } else if (deviceVolumeBehavior == 1) {
            addAudioSystemDeviceOutToFullVolumeDevices(audioSystemDeviceOut);
            removeAudioSystemDeviceOutFromFixedVolumeDevices(audioSystemDeviceOut);
        } else if (deviceVolumeBehavior == 2) {
            removeAudioSystemDeviceOutFromFullVolumeDevices(audioSystemDeviceOut);
            addAudioSystemDeviceOutToFixedVolumeDevices(audioSystemDeviceOut);
        } else if (deviceVolumeBehavior == 3 || deviceVolumeBehavior == 4) {
            throw new IllegalArgumentException("Absolute volume unsupported for now");
        }
        sDeviceLogger.log(new AudioEventLogger.StringEvent("Volume behavior " + deviceVolumeBehavior + " for dev=0x" + Integer.toHexString(audioSystemDeviceOut) + " from:" + caller));
        StringBuilder sb = new StringBuilder();
        sb.append("setDeviceVolumeBehavior:");
        sb.append(caller);
        checkAddAllFixedVolumeDevices(audioSystemDeviceOut, sb.toString());
    }

    public int getDeviceVolumeBehavior(AudioDeviceAttributes device) {
        enforceModifyAudioRoutingPermission();
        int audioSystemDeviceOut = AudioDeviceInfo.convertDeviceTypeToInternalDevice(device.getType());
        if (!sDeviceVolumeBehaviorSupportedDeviceOutSet.contains(Integer.valueOf(audioSystemDeviceOut)) && audioSystemDeviceOut != 128 && audioSystemDeviceOut != 134217728) {
            throw new IllegalArgumentException("Unsupported volume behavior " + audioSystemDeviceOut);
        }
        int setDeviceVolumeBehavior = retrieveStoredDeviceVolumeBehavior(audioSystemDeviceOut);
        if (setDeviceVolumeBehavior != -1) {
            return setDeviceVolumeBehavior;
        }
        if (this.mFullVolumeDevices.contains(Integer.valueOf(audioSystemDeviceOut))) {
            return 1;
        }
        if (this.mFixedVolumeDevices.contains(Integer.valueOf(audioSystemDeviceOut))) {
            return 2;
        }
        if (this.mAbsVolumeMultiModeCaseDevices.contains(Integer.valueOf(audioSystemDeviceOut))) {
            return 4;
        }
        if (audioSystemDeviceOut == 128 && this.mAvrcpAbsVolSupported) {
            return 3;
        }
        return 0;
    }

    public void setWiredDeviceConnectionState(int type, int state, String address, String name, String caller) {
        enforceModifyAudioRoutingPermission();
        if (state != 1 && state != 0) {
            throw new IllegalArgumentException("Invalid state " + state);
        }
        new MediaMetrics.Item("audio.service.setWiredDeviceConnectionState").set(MediaMetrics.Property.ADDRESS, address).set(MediaMetrics.Property.CLIENT_NAME, caller).set(MediaMetrics.Property.DEVICE, AudioSystem.getDeviceName(type)).set(MediaMetrics.Property.NAME, name).set(MediaMetrics.Property.STATE, state == 1 ? "connected" : "disconnected").record();
        this.mDeviceBroker.setWiredDeviceConnectionState(type, state, address, name, caller);
    }

    public void setBluetoothHearingAidDeviceConnectionState(BluetoothDevice device, int state, boolean suppressNoisyIntent, int musicDevice) {
        if (device == null) {
            throw new IllegalArgumentException("Illegal null device");
        }
        if (state != 2 && state != 0) {
            throw new IllegalArgumentException("Illegal BluetoothProfile state for device  (dis)connection, got " + state);
        }
        if (state == 2) {
            this.mPlaybackMonitor.registerPlaybackCallback(this.mVoiceActivityMonitor, true);
        } else {
            this.mPlaybackMonitor.unregisterPlaybackCallback(this.mVoiceActivityMonitor);
        }
        this.mDeviceBroker.postBluetoothHearingAidDeviceConnectionState(device, state, suppressNoisyIntent, musicDevice, "AudioService");
    }

    public void setBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(BluetoothDevice device, int state, int profile, boolean suppressNoisyIntent, int a2dpVolume) {
        if (device == null) {
            throw new IllegalArgumentException("Illegal null device");
        }
        if (state != 2 && state != 0) {
            throw new IllegalArgumentException("Illegal BluetoothProfile state for device  (dis)connection, got " + state);
        }
        this.mDeviceBroker.postBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(device, state, profile, suppressNoisyIntent, a2dpVolume);
    }

    void setMusicMute(boolean mute) {
        this.mStreamStates[3].muteInternally(mute);
    }

    public void handleBluetoothA2dpDeviceConfigChange(BluetoothDevice device) {
        if (device == null) {
            throw new IllegalArgumentException("Illegal null device");
        }
        this.mDeviceBroker.postBluetoothA2dpDeviceConfigChange(device);
    }

    public void postAccessoryPlugMediaUnmute(int newDevice) {
        sendMsg(this.mAudioHandler, 21, 2, newDevice, 0, null, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAccessoryPlugMediaUnmute(int newDevice) {
        if (this.mNm.getZenMode() != 2 && !isStreamMutedByRingerOrZenMode(3) && DEVICE_MEDIA_UNMUTED_ON_PLUG_SET.contains(Integer.valueOf(newDevice)) && this.mStreamStates[3].mIsMuted && this.mStreamStates[3].getIndex(newDevice) != 0 && (AudioSystem.getDevicesForStream(3) & newDevice) != 0) {
            this.mStreamStates[3].mute(false);
        }
    }

    public boolean hasHapticChannels(Uri uri) {
        MediaExtractor extractor = new MediaExtractor();
        try {
            extractor.setDataSource(this.mContext, uri, (Map<String, String>) null);
            for (int i = 0; i < extractor.getTrackCount(); i++) {
                MediaFormat format = extractor.getTrackFormat(i);
                if (format.containsKey("haptic-channel-count") && format.getInteger("haptic-channel-count") > 0) {
                    return true;
                }
            }
            return false;
        } catch (IOException e) {
            Log.e(TAG, "hasHapticChannels failure:" + e);
            return false;
        }
    }

    private void initVolumeGroupStates() {
        for (AudioVolumeGroup avg : getAudioVolumeGroups()) {
            try {
                ensureValidAttributes(avg);
                sVolumeGroupStates.append(avg.getId(), new VolumeGroupState(avg));
            } catch (IllegalArgumentException e) {
            }
        }
        for (int i = 0; i < sVolumeGroupStates.size(); i++) {
            VolumeGroupState vgs = sVolumeGroupStates.valueAt(i);
            vgs.applyAllVolumes();
        }
    }

    private void ensureValidAttributes(AudioVolumeGroup avg) {
        boolean hasAtLeastOneValidAudioAttributes = avg.getAudioAttributes().stream().anyMatch(new Predicate() { // from class: com.android.server.audio.-$$Lambda$AudioService$eq0KnrBbF7KWNGmAJRjyeCTIdzQ
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return AudioService.lambda$ensureValidAttributes$0((AudioAttributes) obj);
            }
        });
        if (!hasAtLeastOneValidAudioAttributes) {
            throw new IllegalArgumentException("Volume Group " + avg.name() + " has no valid audio attributes");
        }
    }

    static /* synthetic */ boolean lambda$ensureValidAttributes$0(AudioAttributes aa) {
        return !aa.equals(AudioProductStrategy.sDefaultAttributes);
    }

    private void readVolumeGroupsSettings() {
        for (int i = 0; i < sVolumeGroupStates.size(); i++) {
            VolumeGroupState vgs = sVolumeGroupStates.valueAt(i);
            vgs.readSettings();
            vgs.applyAllVolumes();
        }
    }

    private void restoreVolumeGroups() {
        for (int i = 0; i < sVolumeGroupStates.size(); i++) {
            VolumeGroupState vgs = sVolumeGroupStates.valueAt(i);
            vgs.applyAllVolumes();
        }
    }

    private void dumpVolumeGroups(PrintWriter pw) {
        pw.println("\nVolume Groups (device: index)");
        for (int i = 0; i < sVolumeGroupStates.size(); i++) {
            VolumeGroupState vgs = sVolumeGroupStates.valueAt(i);
            vgs.dump(pw);
            pw.println("");
        }
    }

    private class VolumeGroupState {
        private AudioAttributes mAudioAttributes;
        private final AudioVolumeGroup mAudioVolumeGroup;
        private final SparseIntArray mIndexMap;
        private int mIndexMax;
        private int mIndexMin;
        private int mLegacyStreamType;
        private int mPublicStreamType;

        private int getDeviceForVolume() {
            return AudioService.this.getDeviceForStream(this.mPublicStreamType);
        }

        private VolumeGroupState(AudioVolumeGroup avg) {
            this.mIndexMap = new SparseIntArray(8);
            this.mLegacyStreamType = -1;
            this.mPublicStreamType = 3;
            this.mAudioAttributes = AudioProductStrategy.sDefaultAttributes;
            this.mAudioVolumeGroup = avg;
            for (AudioAttributes aa : avg.getAudioAttributes()) {
                if (!aa.equals(AudioProductStrategy.sDefaultAttributes)) {
                    this.mAudioAttributes = aa;
                    break;
                }
            }
            int[] streamTypes = this.mAudioVolumeGroup.getLegacyStreamTypes();
            if (streamTypes.length != 0) {
                this.mLegacyStreamType = streamTypes[0];
                for (int streamType : streamTypes) {
                    if (streamType != -1 && streamType < AudioSystem.getNumStreamTypes()) {
                        this.mPublicStreamType = streamType;
                        break;
                    }
                }
                this.mIndexMin = AudioService.MIN_STREAM_VOLUME[this.mPublicStreamType];
                this.mIndexMax = AudioService.MAX_STREAM_VOLUME[this.mPublicStreamType];
            } else if (!avg.getAudioAttributes().isEmpty()) {
                this.mIndexMin = AudioSystem.getMinVolumeIndexForAttributes(this.mAudioAttributes);
                this.mIndexMax = AudioSystem.getMaxVolumeIndexForAttributes(this.mAudioAttributes);
            } else {
                Log.e(AudioService.TAG, "volume group: " + this.mAudioVolumeGroup.name() + " has neither valid attributes nor valid stream types assigned");
                return;
            }
            readSettings();
        }

        public int[] getLegacyStreamTypes() {
            return this.mAudioVolumeGroup.getLegacyStreamTypes();
        }

        public String name() {
            return this.mAudioVolumeGroup.name();
        }

        public int getVolumeIndex() {
            return getIndex(getDeviceForVolume());
        }

        public void setVolumeIndex(int index, int flags) {
            if (AudioService.this.mUseFixedVolume) {
                return;
            }
            setVolumeIndex(index, getDeviceForVolume(), flags);
        }

        private void setVolumeIndex(int index, int device, int flags) {
            setVolumeIndexInt(index, device, flags);
            this.mIndexMap.put(device, index);
            AudioService.sendMsg(AudioService.this.mAudioHandler, 2, 2, device, 0, this, 500);
        }

        private void setVolumeIndexInt(int index, int device, int flags) {
            if (AudioService.this.mStreamStates[this.mPublicStreamType].isFullyMuted()) {
                index = 0;
            } else if (this.mPublicStreamType == 6 && index == 0) {
                index = 1;
            }
            AudioSystem.setVolumeIndexForAttributes(this.mAudioAttributes, index, device);
        }

        public int getIndex(int device) {
            int i;
            synchronized (VolumeGroupState.class) {
                int index = this.mIndexMap.get(device, -1);
                i = index != -1 ? index : this.mIndexMap.get(1073741824);
            }
            return i;
        }

        public boolean hasIndexForDevice(int device) {
            boolean z;
            synchronized (VolumeGroupState.class) {
                z = this.mIndexMap.get(device, -1) != -1;
            }
            return z;
        }

        public int getMaxIndex() {
            return this.mIndexMax;
        }

        public int getMinIndex() {
            return this.mIndexMin;
        }

        public void applyAllVolumes() {
            synchronized (VolumeGroupState.class) {
                for (int i = 0; i < this.mIndexMap.size(); i++) {
                    int device = this.mIndexMap.keyAt(i);
                    if (device != 1073741824) {
                        int index = this.mIndexMap.valueAt(i);
                        setVolumeIndexInt(index, device, 0);
                    }
                }
                int index2 = getIndex(1073741824);
                setVolumeIndexInt(index2, 1073741824, 0);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void persistVolumeGroup(int device) {
            if (AudioService.this.mUseFixedVolume) {
                return;
            }
            boolean success = Settings.System.putIntForUser(AudioService.this.mContentResolver, getSettingNameForDevice(device), getIndex(device), -2);
            if (!success) {
                Log.e(AudioService.TAG, "persistVolumeGroup failed for group " + this.mAudioVolumeGroup.name());
            }
        }

        public void readSettings() {
            int defaultIndex;
            synchronized (VolumeGroupState.class) {
                this.mIndexMap.clear();
                if (AudioService.this.mUseFixedVolume) {
                    this.mIndexMap.put(1073741824, this.mIndexMax);
                    return;
                }
                Iterator it = AudioSystem.DEVICE_OUT_ALL_SET.iterator();
                while (it.hasNext()) {
                    int device = ((Integer) it.next()).intValue();
                    if (device != 1073741824) {
                        defaultIndex = -1;
                    } else {
                        defaultIndex = AudioSystem.DEFAULT_STREAM_VOLUME[this.mPublicStreamType];
                    }
                    String name = getSettingNameForDevice(device);
                    int index = Settings.System.getIntForUser(AudioService.this.mContentResolver, name, defaultIndex, -2);
                    if (index != -1) {
                        this.mIndexMap.put(device, getValidIndex(index));
                    }
                }
            }
        }

        private int getValidIndex(int index) {
            int i = this.mIndexMin;
            if (index >= i) {
                if (AudioService.this.mUseFixedVolume || index > this.mIndexMax) {
                    return this.mIndexMax;
                }
                return index;
            }
            return i;
        }

        public String getSettingNameForDevice(int device) {
            String suffix = AudioSystem.getOutputDeviceName(device);
            if (suffix.isEmpty()) {
                return this.mAudioVolumeGroup.name();
            }
            return this.mAudioVolumeGroup.name() + "_" + AudioSystem.getOutputDeviceName(device);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void dump(PrintWriter pw) {
            pw.println("- VOLUME GROUP " + this.mAudioVolumeGroup.name() + ":");
            pw.print("   Min: ");
            pw.println(this.mIndexMin);
            pw.print("   Max: ");
            pw.println(this.mIndexMax);
            pw.print("   Current: ");
            for (int i = 0; i < this.mIndexMap.size(); i++) {
                if (i > 0) {
                    pw.print(", ");
                }
                int device = this.mIndexMap.keyAt(i);
                pw.print(Integer.toHexString(device));
                String deviceName = device == 1073741824 ? BatteryService.HealthServiceWrapper.INSTANCE_VENDOR : AudioSystem.getOutputDeviceName(device);
                if (!deviceName.isEmpty()) {
                    pw.print(" (");
                    pw.print(deviceName);
                    pw.print(")");
                }
                pw.print(": ");
                pw.print(this.mIndexMap.valueAt(i));
            }
            pw.println();
            pw.print("   Devices: ");
            int n = 0;
            int devices = getDeviceForVolume();
            Iterator it = AudioSystem.DEVICE_OUT_ALL_SET.iterator();
            while (it.hasNext()) {
                int device2 = ((Integer) it.next()).intValue();
                if ((devices & device2) == device2) {
                    int n2 = n + 1;
                    if (n > 0) {
                        pw.print(", ");
                    }
                    pw.print(AudioSystem.getOutputDeviceName(device2));
                    n = n2;
                }
            }
        }
    }

    private class VolumeStreamState {
        private final SparseIntArray mIndexMap;
        private int mIndexMax;
        private int mIndexMin;
        private int mIndexMinNoPerm;
        private boolean mIsMuted;
        private boolean mIsMutedInternally;
        private int mObservedDevices;
        private final Intent mStreamDevicesChanged;
        private final int mStreamType;
        private final Intent mVolumeChanged;
        private String mVolumeIndexSettingName;

        private VolumeStreamState(String settingName, int streamType) {
            this.mIndexMap = new SparseIntArray(8) { // from class: com.android.server.audio.AudioService.VolumeStreamState.1
                @Override // android.util.SparseIntArray
                public void put(int key, int value) {
                    super.put(key, value);
                    record("put", key, value);
                }

                @Override // android.util.SparseIntArray
                public void setValueAt(int index, int value) {
                    super.setValueAt(index, value);
                    record("setValueAt", keyAt(index), value);
                }

                private void record(String event, int key, int value) {
                    String device = key == 1073741824 ? BatteryService.HealthServiceWrapper.INSTANCE_VENDOR : AudioSystem.getOutputDeviceName(key);
                    new MediaMetrics.Item("audio.volume." + AudioSystem.streamToString(VolumeStreamState.this.mStreamType) + "." + device).set(MediaMetrics.Property.EVENT, event).set(MediaMetrics.Property.INDEX, Integer.valueOf(value)).set(MediaMetrics.Property.MIN_INDEX, Integer.valueOf(VolumeStreamState.this.mIndexMin)).set(MediaMetrics.Property.MAX_INDEX, Integer.valueOf(VolumeStreamState.this.mIndexMax)).record();
                }
            };
            this.mVolumeIndexSettingName = settingName;
            this.mStreamType = streamType;
            int i = AudioService.MIN_STREAM_VOLUME[streamType] * 10;
            this.mIndexMin = i;
            this.mIndexMinNoPerm = i;
            int i2 = AudioService.MAX_STREAM_VOLUME[streamType] * 10;
            this.mIndexMax = i2;
            int status = AudioSystem.initStreamVolume(streamType, this.mIndexMin / 10, i2 / 10);
            if (status != 0) {
                AudioService.sLifecycleLogger.log(new AudioEventLogger.StringEvent("VSS() stream:" + streamType + " initStreamVolume=" + status).printLog(1, AudioService.TAG));
                AudioService.sendMsg(AudioService.this.mAudioHandler, 32, 1, 0, 0, "VSS()", 2000);
            }
            readSettings();
            Intent intent = new Intent("android.media.VOLUME_CHANGED_ACTION");
            this.mVolumeChanged = intent;
            intent.putExtra("android.media.EXTRA_VOLUME_STREAM_TYPE", this.mStreamType);
            Intent intent2 = new Intent("android.media.STREAM_DEVICES_CHANGED_ACTION");
            this.mStreamDevicesChanged = intent2;
            intent2.putExtra("android.media.EXTRA_VOLUME_STREAM_TYPE", this.mStreamType);
        }

        public void updateNoPermMinIndex(int index) {
            int i = index * 10;
            this.mIndexMinNoPerm = i;
            if (i < this.mIndexMin) {
                Log.e(AudioService.TAG, "Invalid mIndexMinNoPerm for stream " + this.mStreamType);
                this.mIndexMinNoPerm = this.mIndexMin;
            }
        }

        public int observeDevicesForStream_syncVSS(boolean checkOthers) {
            if (!AudioService.this.mSystemServer.isPrivileged()) {
                return 0;
            }
            int devices = AudioSystem.getDevicesForStream(this.mStreamType);
            if (devices == this.mObservedDevices) {
                return devices;
            }
            int prevDevices = this.mObservedDevices;
            this.mObservedDevices = devices;
            if (checkOthers) {
                AudioService.this.observeDevicesForStreams(this.mStreamType);
            }
            int[] iArr = AudioService.mStreamVolumeAlias;
            int i = this.mStreamType;
            if (iArr[i] == i) {
                EventLogTags.writeStreamDevicesChanged(i, prevDevices, devices);
            }
            AudioService.this.sendBroadcastToAll(this.mStreamDevicesChanged.putExtra("android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES", prevDevices).putExtra("android.media.EXTRA_VOLUME_STREAM_DEVICES", devices));
            return devices;
        }

        public String getSettingNameForDevice(int device) {
            if (!hasValidSettingsName()) {
                return null;
            }
            String suffix = AudioSystem.getOutputDeviceName(device);
            if (suffix.isEmpty()) {
                return this.mVolumeIndexSettingName;
            }
            return this.mVolumeIndexSettingName + "_" + suffix;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean hasValidSettingsName() {
            String str = this.mVolumeIndexSettingName;
            return (str == null || str.isEmpty()) ? false : true;
        }

        public void readSettings() {
            int defaultIndex;
            int index;
            synchronized (AudioService.this.mSettingsLock) {
                synchronized (VolumeStreamState.class) {
                    if (AudioService.this.mUseFixedVolume) {
                        this.mIndexMap.put(1073741824, this.mIndexMax);
                        if (this.mStreamType == 12) {
                            String name = getSettingNameForDevice(128);
                            int defaultIndex2 = AudioSystem.DEFAULT_STREAM_VOLUME[this.mStreamType];
                            int index2 = Settings.System.getIntForUser(AudioService.this.mContentResolver, name, defaultIndex2, -2);
                            this.mIndexMap.put(128, index2 * 10);
                        }
                        return;
                    }
                    if (this.mStreamType != 1 && this.mStreamType != 7) {
                        synchronized (VolumeStreamState.class) {
                            Iterator it = AudioSystem.DEVICE_OUT_ALL_SET.iterator();
                            while (it.hasNext()) {
                                int device = ((Integer) it.next()).intValue();
                                if (device != 1073741824) {
                                    defaultIndex = -1;
                                } else {
                                    defaultIndex = AudioSystem.DEFAULT_STREAM_VOLUME[this.mStreamType];
                                }
                                if (!hasValidSettingsName()) {
                                    index = defaultIndex;
                                } else {
                                    String name2 = getSettingNameForDevice(device);
                                    index = Settings.System.getIntForUser(AudioService.this.mContentResolver, name2, defaultIndex, -2);
                                }
                                if (index != -1) {
                                    this.mIndexMap.put(device, getValidIndex(index * 10, true));
                                }
                            }
                        }
                        return;
                    }
                    int index3 = AudioSystem.DEFAULT_STREAM_VOLUME[this.mStreamType] * 10;
                    if (AudioService.this.mCameraSoundForced) {
                        index3 = this.mIndexMax;
                    }
                    this.mIndexMap.put(1073741824, index3);
                }
            }
        }

        private int getAbsoluteVolumeIndex(int index) {
            if (index == 0) {
                return 0;
            }
            if (index > 0 && index <= 3) {
                return ((int) (this.mIndexMax * AudioService.this.mPrescaleAbsoluteVolume[index - 1])) / 10;
            }
            return (this.mIndexMax + 5) / 10;
        }

        private void setStreamVolumeIndex(int index, int device) {
            if (this.mStreamType == 6 && index == 0 && !isFullyMuted()) {
                index = 1;
            }
            Log.d(AudioService.TAG, "setStreamVolumeIndex stremType " + AudioSystem.STREAM_NAMES[this.mStreamType] + " index " + index + " device " + device);
            AudioSystem.setStreamVolumeIndexAS(this.mStreamType, index, device);
        }

        void applyDeviceVolume_syncVSS(int device) {
            int index;
            if (isFullyMuted()) {
                index = 0;
            } else if (!AudioSystem.DEVICE_OUT_ALL_A2DP_SET.contains(Integer.valueOf(device)) || !AudioService.this.mAvrcpAbsVolSupported) {
                if (AudioService.this.isFullVolumeDevice(device) || device == 134217728) {
                    index = (this.mIndexMax + 5) / 10;
                } else {
                    int index2 = getIndex(device);
                    index = (index2 + 5) / 10;
                }
            } else {
                index = getAbsoluteVolumeIndex((getIndex(device) + 5) / 10);
            }
            setStreamVolumeIndex(index, device);
        }

        public void applyAllVolumes() {
            int index;
            int index2;
            synchronized (VolumeStreamState.class) {
                for (int i = 0; i < this.mIndexMap.size(); i++) {
                    int device = this.mIndexMap.keyAt(i);
                    if (device != 1073741824) {
                        if (isFullyMuted()) {
                            index2 = 0;
                        } else if (!AudioSystem.DEVICE_OUT_ALL_A2DP_SET.contains(Integer.valueOf(device)) || !AudioService.this.mAvrcpAbsVolSupported) {
                            if (AudioService.this.isFullVolumeDevice(device) || device == 134217728) {
                                index2 = (this.mIndexMax + 5) / 10;
                            } else {
                                index2 = (this.mIndexMap.valueAt(i) + 5) / 10;
                            }
                        } else {
                            index2 = getAbsoluteVolumeIndex((getIndex(device) + 5) / 10);
                        }
                        setStreamVolumeIndex(index2, device);
                    }
                }
                if (isFullyMuted()) {
                    index = 0;
                } else {
                    int index3 = getIndex(1073741824);
                    index = (index3 + 5) / 10;
                }
                setStreamVolumeIndex(index, 1073741824);
            }
        }

        public boolean adjustIndex(int deltaIndex, int device, String caller, boolean hasModifyAudioSettings) {
            return setIndex(getIndex(device) + deltaIndex, device, caller, hasModifyAudioSettings);
        }

        public boolean setIndex(int index, int device, String caller, boolean hasModifyAudioSettings) {
            int oldIndex;
            boolean changed;
            synchronized (AudioService.this.mSettingsLock) {
                synchronized (VolumeStreamState.class) {
                    oldIndex = getIndex(device);
                    if (!AudioService.this.isBluetoothA2dpStreamType(this.mStreamType)) {
                        index = getValidIndex(index, hasModifyAudioSettings);
                    }
                    if (this.mStreamType == 7 && AudioService.this.mCameraSoundForced) {
                        index = this.mIndexMax;
                    }
                    this.mIndexMap.put(device, index);
                    changed = oldIndex != index;
                    boolean isCurrentDevice = device == AudioService.this.getDeviceForStream(this.mStreamType);
                    int numStreamTypes = AudioSystem.getNumStreamTypes();
                    for (int streamType = numStreamTypes - 1; streamType >= 0; streamType--) {
                        VolumeStreamState aliasStreamState = AudioService.this.mStreamStates[streamType];
                        if (streamType != this.mStreamType && AudioService.mStreamVolumeAlias[streamType] == this.mStreamType && (changed || !aliasStreamState.hasIndexForDevice(device))) {
                            int scaledIndex = AudioService.this.rescaleIndex(index, this.mStreamType, streamType);
                            aliasStreamState.setIndex(scaledIndex, device, caller, hasModifyAudioSettings);
                            if (isCurrentDevice) {
                                aliasStreamState.setIndex(scaledIndex, AudioService.this.getDeviceForStream(streamType), caller, hasModifyAudioSettings);
                            }
                        }
                    }
                    if (changed && this.mStreamType == 2 && device == 2) {
                        for (int i = 0; i < this.mIndexMap.size(); i++) {
                            int otherDevice = this.mIndexMap.keyAt(i);
                            if (AudioSystem.DEVICE_OUT_ALL_SCO_SET.contains(Integer.valueOf(otherDevice))) {
                                this.mIndexMap.put(otherDevice, index);
                            }
                        }
                    }
                }
            }
            if (changed) {
                int oldIndex2 = (oldIndex + 5) / 10;
                int index2 = (index + 5) / 10;
                int[] iArr = AudioService.mStreamVolumeAlias;
                int i2 = this.mStreamType;
                if (iArr[i2] == i2) {
                    if (caller == null) {
                        Log.w(AudioService.TAG, "No caller for volume_changed event", new Throwable());
                    }
                    EventLogTags.writeVolumeChanged(this.mStreamType, oldIndex2, index2, this.mIndexMax / 10, caller);
                }
                this.mVolumeChanged.putExtra("android.media.EXTRA_VOLUME_STREAM_VALUE", index2);
                this.mVolumeChanged.putExtra("android.media.EXTRA_PREV_VOLUME_STREAM_VALUE", oldIndex2);
                this.mVolumeChanged.putExtra("android.media.EXTRA_VOLUME_STREAM_TYPE_ALIAS", AudioService.mStreamVolumeAlias[this.mStreamType]);
                AudioService.this.sendBroadcastToAll(this.mVolumeChanged);
            }
            return changed;
        }

        public int getIndex(int device) {
            int index;
            synchronized (VolumeStreamState.class) {
                index = this.mIndexMap.get(device, -1);
                if (index == -1) {
                    index = this.mIndexMap.get(1073741824);
                }
            }
            return index;
        }

        public boolean hasIndexForDevice(int device) {
            boolean z;
            synchronized (VolumeStreamState.class) {
                z = this.mIndexMap.get(device, -1) != -1;
            }
            return z;
        }

        public int getMaxIndex() {
            return this.mIndexMax;
        }

        public int getMinIndex() {
            return this.mIndexMin;
        }

        public int getMinIndex(boolean isPrivileged) {
            return isPrivileged ? this.mIndexMin : this.mIndexMinNoPerm;
        }

        public void setAllIndexes(VolumeStreamState srcStream, String caller) {
            if (this.mStreamType == srcStream.mStreamType) {
                return;
            }
            int srcStreamType = srcStream.getStreamType();
            int index = srcStream.getIndex(1073741824);
            int index2 = AudioService.this.rescaleIndex(index, srcStreamType, this.mStreamType);
            for (int i = 0; i < this.mIndexMap.size(); i++) {
                SparseIntArray sparseIntArray = this.mIndexMap;
                sparseIntArray.put(sparseIntArray.keyAt(i), index2);
            }
            SparseIntArray srcMap = srcStream.mIndexMap;
            for (int i2 = 0; i2 < srcMap.size(); i2++) {
                int device = srcMap.keyAt(i2);
                int index3 = srcMap.valueAt(i2);
                setIndex(AudioService.this.rescaleIndex(index3, srcStreamType, this.mStreamType), device, caller, true);
            }
        }

        public void setAllIndexesToMax() {
            for (int i = 0; i < this.mIndexMap.size(); i++) {
                SparseIntArray sparseIntArray = this.mIndexMap;
                sparseIntArray.put(sparseIntArray.keyAt(i), this.mIndexMax);
            }
        }

        public boolean mute(boolean state) {
            boolean changed = false;
            synchronized (VolumeStreamState.class) {
                if (state != this.mIsMuted) {
                    changed = true;
                    this.mIsMuted = state;
                    AudioService.sendMsg(AudioService.this.mAudioHandler, 10, 2, 0, 0, this, 0);
                }
            }
            if (changed) {
                Intent intent = new Intent("android.media.STREAM_MUTE_CHANGED_ACTION");
                intent.putExtra("android.media.EXTRA_VOLUME_STREAM_TYPE", this.mStreamType);
                intent.putExtra("android.media.EXTRA_STREAM_VOLUME_MUTED", state);
                AudioService.this.sendBroadcastToAll(intent);
            }
            return changed;
        }

        public boolean muteInternally(boolean state) {
            boolean changed = false;
            synchronized (VolumeStreamState.class) {
                if (state != this.mIsMutedInternally) {
                    changed = true;
                    this.mIsMutedInternally = state;
                    applyAllVolumes();
                }
            }
            if (changed) {
                AudioService.sVolumeLogger.log(new AudioServiceEvents.VolumeEvent(9, this.mStreamType, state));
            }
            return changed;
        }

        public boolean isFullyMuted() {
            return this.mIsMuted || this.mIsMutedInternally;
        }

        public int getStreamType() {
            return this.mStreamType;
        }

        public void checkFixedVolumeDevices() {
            synchronized (VolumeStreamState.class) {
                if (AudioService.mStreamVolumeAlias[this.mStreamType] == 3) {
                    for (int i = 0; i < this.mIndexMap.size(); i++) {
                        int device = this.mIndexMap.keyAt(i);
                        int index = this.mIndexMap.valueAt(i);
                        if (AudioService.this.isFullVolumeDevice(device) || (AudioService.this.isFixedVolumeDevice(device) && index != 0)) {
                            this.mIndexMap.put(device, this.mIndexMax);
                        }
                        applyDeviceVolume_syncVSS(device);
                    }
                }
            }
        }

        private int getValidIndex(int index, boolean hasModifyAudioSettings) {
            int indexMin = hasModifyAudioSettings ? this.mIndexMin : this.mIndexMinNoPerm;
            if (index >= indexMin) {
                if (AudioService.this.mUseFixedVolume || index > this.mIndexMax) {
                    return this.mIndexMax;
                }
                return index;
            }
            return indexMin;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void dump(PrintWriter pw) {
            pw.print("   Muted: ");
            pw.println(this.mIsMuted);
            pw.print("   Muted Internally: ");
            pw.println(this.mIsMutedInternally);
            pw.print("   Min: ");
            pw.print((this.mIndexMin + 5) / 10);
            if (this.mIndexMin != this.mIndexMinNoPerm) {
                pw.print(" w/o perm:");
                pw.println((this.mIndexMinNoPerm + 5) / 10);
            } else {
                pw.println();
            }
            pw.print("   Max: ");
            pw.println((this.mIndexMax + 5) / 10);
            pw.print("   streamVolume:");
            pw.println(AudioService.this.getStreamVolume(this.mStreamType));
            pw.print("   Current: ");
            for (int i = 0; i < this.mIndexMap.size(); i++) {
                if (i > 0) {
                    pw.print(", ");
                }
                int device = this.mIndexMap.keyAt(i);
                pw.print(Integer.toHexString(device));
                String deviceName = device == 1073741824 ? BatteryService.HealthServiceWrapper.INSTANCE_VENDOR : AudioSystem.getOutputDeviceName(device);
                if (!deviceName.isEmpty()) {
                    pw.print(" (");
                    pw.print(deviceName);
                    pw.print(")");
                }
                pw.print(": ");
                int index = (this.mIndexMap.valueAt(i) + 5) / 10;
                pw.print(index);
            }
            pw.println();
            pw.print("   Devices: ");
            int devices = AudioService.this.getDevicesForStream(this.mStreamType);
            int i2 = 0;
            int n = 0;
            while (true) {
                int device2 = 1 << i2;
                if (device2 != 1073741824) {
                    if ((devices & device2) != 0) {
                        int n2 = n + 1;
                        if (n > 0) {
                            pw.print(", ");
                        }
                        pw.print(AudioSystem.getOutputDeviceName(device2));
                        n = n2;
                    }
                    i2++;
                } else {
                    return;
                }
            }
        }
    }

    private class AudioSystemThread extends Thread {
        AudioSystemThread() {
            super("AudioService");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Looper.prepare();
            synchronized (AudioService.this) {
                AudioService.this.mAudioHandler = new AudioHandler();
                AudioService.this.notify();
            }
            Looper.loop();
        }
    }

    private static final class DeviceVolumeUpdate {
        private static final int NO_NEW_INDEX = -2049;
        final String mCaller;
        final int mDevice;
        final int mStreamType;
        private final int mVssVolIndex;

        DeviceVolumeUpdate(int streamType, int vssVolIndex, int device, String caller) {
            this.mStreamType = streamType;
            this.mVssVolIndex = vssVolIndex;
            this.mDevice = device;
            this.mCaller = caller;
        }

        DeviceVolumeUpdate(int streamType, int device, String caller) {
            this.mStreamType = streamType;
            this.mVssVolIndex = NO_NEW_INDEX;
            this.mDevice = device;
            this.mCaller = caller;
        }

        boolean hasVolumeIndex() {
            return this.mVssVolIndex != NO_NEW_INDEX;
        }

        int getVolumeIndex() throws IllegalStateException {
            Preconditions.checkState(this.mVssVolIndex != NO_NEW_INDEX);
            return this.mVssVolIndex;
        }
    }

    public void postSetVolumeIndexOnDevice(int streamType, int vssVolIndex, int device, String caller) {
        sendMsg(this.mAudioHandler, 26, 2, 0, 0, new DeviceVolumeUpdate(streamType, vssVolIndex, device, caller), 0);
    }

    void postApplyVolumeOnDevice(int streamType, int device, String caller) {
        sendMsg(this.mAudioHandler, 26, 2, 0, 0, new DeviceVolumeUpdate(streamType, device, caller), 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSetVolumeIndexOnDevice(DeviceVolumeUpdate update) {
        VolumeStreamState streamState = this.mStreamStates[update.mStreamType];
        if (update.hasVolumeIndex()) {
            int index = update.getVolumeIndex();
            streamState.setIndex(index, update.mDevice, update.mCaller, true);
            sVolumeLogger.log(new AudioEventLogger.StringEvent(update.mCaller + " dev:0x" + Integer.toHexString(update.mDevice) + " volIdx:" + index));
        } else {
            sVolumeLogger.log(new AudioEventLogger.StringEvent(update.mCaller + " update vol on dev:0x" + Integer.toHexString(update.mDevice)));
        }
        setDeviceVolume(streamState, update.mDevice);
    }

    void setDeviceVolume(VolumeStreamState streamState, int device) {
        synchronized (VolumeStreamState.class) {
            streamState.applyDeviceVolume_syncVSS(device);
            int numStreamTypes = AudioSystem.getNumStreamTypes();
            for (int streamType = numStreamTypes - 1; streamType >= 0; streamType--) {
                if (streamType != streamState.mStreamType && mStreamVolumeAlias[streamType] == streamState.mStreamType) {
                    int streamDevice = getDeviceForStream(streamType);
                    if (device != streamDevice && this.mAvrcpAbsVolSupported && AudioSystem.DEVICE_OUT_ALL_A2DP_SET.contains(Integer.valueOf(device))) {
                        this.mStreamStates[streamType].applyDeviceVolume_syncVSS(device);
                    }
                    this.mStreamStates[streamType].applyDeviceVolume_syncVSS(streamDevice);
                }
            }
        }
        sendMsg(this.mAudioHandler, 1, 2, device, 0, streamState, 500);
    }

    private class AudioHandler extends Handler {
        private AudioHandler() {
        }

        private void setAllVolumes(VolumeStreamState streamState) {
            streamState.applyAllVolumes();
            int numStreamTypes = AudioSystem.getNumStreamTypes();
            for (int streamType = numStreamTypes - 1; streamType >= 0; streamType--) {
                if (streamType != streamState.mStreamType && AudioService.mStreamVolumeAlias[streamType] == streamState.mStreamType) {
                    AudioService.this.mStreamStates[streamType].applyAllVolumes();
                }
            }
        }

        private void persistVolume(VolumeStreamState streamState, int device) {
            if (!AudioService.this.mUseFixedVolume || AudioService.this.isBluetoothA2dpStreamType(streamState.getStreamType())) {
                if ((!AudioService.this.mIsSingleVolume || streamState.mStreamType == 3) && streamState.hasValidSettingsName()) {
                    Settings.System.putIntForUser(AudioService.this.mContentResolver, streamState.getSettingNameForDevice(device), (streamState.getIndex(device) + 5) / 10, -2);
                }
            }
        }

        private void persistRingerMode(int ringerMode) {
            if (!AudioService.this.mUseFixedVolume) {
                Settings.Global.putInt(AudioService.this.mContentResolver, "mode_ringer", ringerMode);
            }
        }

        private void onPersistSafeVolumeState(int state) {
            Settings.Global.putInt(AudioService.this.mContentResolver, "audio_safe_volume_state", state);
        }

        private void onNotifyVolumeEvent(IAudioPolicyCallback apc, int direction) {
            try {
                apc.notifyVolumeAdjust(direction);
            } catch (Exception e) {
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int i = msg.what;
            if (i == 0) {
                AudioService.this.setDeviceVolume((VolumeStreamState) msg.obj, msg.arg1);
                return;
            }
            if (i == 1) {
                persistVolume((VolumeStreamState) msg.obj, msg.arg1);
                return;
            }
            if (i == 2) {
                VolumeGroupState vgs = (VolumeGroupState) msg.obj;
                vgs.persistVolumeGroup(msg.arg1);
                return;
            }
            if (i == 3) {
                persistRingerMode(AudioService.this.getRingerModeInternal());
                return;
            }
            if (i == 4) {
                AudioService.this.onAudioServerDied();
                return;
            }
            if (i == 5) {
                AudioService.this.mSfxHelper.playSoundEffect(msg.arg1, msg.arg2);
                return;
            }
            if (i == 7) {
                LoadSoundEffectReply reply = (LoadSoundEffectReply) msg.obj;
                if (AudioService.this.mSystemReady) {
                    AudioService.this.mSfxHelper.loadSoundEffects(reply);
                    return;
                }
                Log.w(AudioService.TAG, "[schedule]loadSoundEffects() called before boot complete");
                if (reply != null) {
                    reply.run(false);
                    return;
                }
                return;
            }
            if (i == 8) {
                String eventSource = (String) msg.obj;
                int useCase = msg.arg1;
                int config = msg.arg2;
                if (useCase == 1) {
                    Log.wtf(AudioService.TAG, "Invalid force use FOR_MEDIA in AudioService from " + eventSource);
                    return;
                }
                new MediaMetrics.Item("audio.forceUse." + AudioSystem.forceUseUsageToString(useCase)).set(MediaMetrics.Property.EVENT, "setForceUse").set(MediaMetrics.Property.FORCE_USE_DUE_TO, eventSource).set(MediaMetrics.Property.FORCE_USE_MODE, AudioSystem.forceUseConfigToString(config)).record();
                AudioService.sForceUseLogger.log(new AudioServiceEvents.ForceUseEvent(useCase, config, eventSource));
                AudioSystem.setForceUse(useCase, config);
                return;
            }
            if (i == 100) {
                AudioService.this.mPlaybackMonitor.disableAudioForUid(msg.arg1 == 1, msg.arg2);
                AudioService.this.mAudioEventWakeLock.release();
                return;
            }
            switch (i) {
                case 10:
                    setAllVolumes((VolumeStreamState) msg.obj);
                    return;
                case 11:
                    AudioService.this.onCheckMusicActive((String) msg.obj);
                    return;
                case 12:
                case 13:
                    AudioService.this.onConfigureSafeVolume(msg.what == 13, (String) msg.obj);
                    return;
                case 14:
                    onPersistSafeVolumeState(msg.arg1);
                    return;
                case 15:
                    AudioService.this.mSfxHelper.unloadSoundEffects();
                    return;
                case 16:
                    AudioService.this.onSystemReady();
                    return;
                case 17:
                    int musicActiveMs = msg.arg1;
                    Settings.Secure.putIntForUser(AudioService.this.mContentResolver, "unsafe_volume_music_active_ms", musicActiveMs, -2);
                    return;
                case 18:
                    AudioService.this.onUnmuteStream(msg.arg1, msg.arg2);
                    return;
                case 19:
                    AudioService.this.onDynPolicyMixStateUpdate((String) msg.obj, msg.arg1);
                    return;
                case 20:
                    AudioService.this.onIndicateSystemReady();
                    return;
                case 21:
                    AudioService.this.onAccessoryPlugMediaUnmute(msg.arg1);
                    return;
                case 22:
                    onNotifyVolumeEvent((IAudioPolicyCallback) msg.obj, msg.arg1);
                    return;
                case 23:
                    AudioService.this.onDispatchAudioServerStateChange(msg.arg1 == 1);
                    return;
                case 24:
                    AudioService.this.onEnableSurroundFormats((ArrayList) msg.obj);
                    return;
                case 25:
                    AudioService.this.onUpdateRingerModeServiceInt();
                    return;
                case 26:
                    AudioService.this.onSetVolumeIndexOnDevice((DeviceVolumeUpdate) msg.obj);
                    return;
                case 27:
                    AudioService.this.onObserveDevicesForAllStreams();
                    return;
                case AudioService.MSG_HDMI_VOLUME_CHECK /* 28 */:
                    AudioService.this.onCheckVolumeCecOnHdmiConnection(msg.arg1, (String) msg.obj);
                    return;
                case 29:
                    AudioService.this.onPlaybackConfigChange((List) msg.obj);
                    return;
                case 30:
                    AudioService.this.mSystemServer.sendMicrophoneMuteChangedIntent();
                    return;
                case 31:
                    synchronized (AudioService.this.mDeviceBroker.mSetModeLock) {
                        if (msg.obj != null) {
                            SetModeDeathHandler h = (SetModeDeathHandler) msg.obj;
                            if (AudioService.this.mSetModeDeathHandlers.indexOf(h) >= 0) {
                                if (AudioService.this.getModeOwnerUid() != h.getUid() || AudioService.this.mRecordMonitor.isRecordingActiveForUid(h.getUid()) || AudioService.this.mPlaybackMonitor.isPlaybackActiveForUid(h.getUid())) {
                                    AudioService.sendMsg(AudioService.this.mAudioHandler, 31, 2, 0, 0, h, AudioService.CHECK_MODE_FOR_UID_PERIOD_MS);
                                } else {
                                    AudioService.this.setModeInt(0, h.getBinder(), h.getPid(), h.getUid(), h.isPrivileged(), "MSG_CHECK_MODE_FOR_UID");
                                    AudioService.this.mModeLogger.log(new AudioServiceEvents.PhoneStateEvent(h.getPackage(), h.getPid()));
                                }
                            }
                        }
                    }
                    return;
                case 32:
                    AudioService.this.onReinitVolumes((String) msg.obj);
                    return;
                default:
                    return;
            }
        }
    }

    private class SettingsObserver extends ContentObserver {
        SettingsObserver() {
            super(new Handler());
            AudioService.this.mContentResolver.registerContentObserver(Settings.Global.getUriFor("zen_mode"), false, this);
            AudioService.this.mContentResolver.registerContentObserver(Settings.Global.getUriFor("zen_mode_config_etag"), false, this);
            AudioService.this.mContentResolver.registerContentObserver(Settings.System.getUriFor("mode_ringer_streams_affected"), false, this);
            AudioService.this.mContentResolver.registerContentObserver(Settings.Global.getUriFor("dock_audio_media_enabled"), false, this);
            AudioService.this.mContentResolver.registerContentObserver(Settings.System.getUriFor("master_mono"), false, this);
            AudioService.this.mContentResolver.registerContentObserver(Settings.System.getUriFor("master_balance"), false, this);
            AudioService.this.mEncodedSurroundMode = Settings.Global.getInt(AudioService.this.mContentResolver, "encoded_surround_output", 0);
            AudioService.this.mContentResolver.registerContentObserver(Settings.Global.getUriFor("encoded_surround_output"), false, this);
            AudioService.this.mEnabledSurroundFormats = Settings.Global.getString(AudioService.this.mContentResolver, "encoded_surround_output_enabled_formats");
            AudioService.this.mContentResolver.registerContentObserver(Settings.Global.getUriFor("encoded_surround_output_enabled_formats"), false, this);
            AudioService.this.mContentResolver.registerContentObserver(Settings.Secure.getUriFor("voice_interaction_service"), false, this);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange) {
            super.onChange(selfChange);
            synchronized (AudioService.this.mSettingsLock) {
                if (AudioService.this.updateRingerAndZenModeAffectedStreams()) {
                    AudioService.this.setRingerModeInt(AudioService.this.getRingerModeInternal(), false);
                }
                AudioService.this.readDockAudioSettings(AudioService.this.mContentResolver);
                AudioService.this.updateMasterMono(AudioService.this.mContentResolver);
                AudioService.this.updateMasterBalance(AudioService.this.mContentResolver);
                updateEncodedSurroundOutput();
                AudioService.this.sendEnabledSurroundFormats(AudioService.this.mContentResolver, AudioService.this.mSurroundModeChanged);
                AudioService.this.updateAssistantUId(false);
            }
        }

        private void updateEncodedSurroundOutput() {
            int newSurroundMode = Settings.Global.getInt(AudioService.this.mContentResolver, "encoded_surround_output", 0);
            if (AudioService.this.mEncodedSurroundMode != newSurroundMode) {
                AudioService.this.sendEncodedSurroundMode(newSurroundMode, "SettingsObserver");
                AudioService.this.mDeviceBroker.toggleHdmiIfConnected_Async();
                AudioService.this.mEncodedSurroundMode = newSurroundMode;
                AudioService.this.mSurroundModeChanged = true;
                return;
            }
            AudioService.this.mSurroundModeChanged = false;
        }
    }

    public void avrcpSupportsAbsoluteVolume(String address, boolean support) {
        sVolumeLogger.log(new AudioEventLogger.StringEvent("avrcpSupportsAbsoluteVolume addr=" + address + " support=" + support));
        this.mAvrcpAbsVolSupported = support;
        this.mDeviceBroker.setAvrcpAbsoluteVolumeSupported(support);
        sendMsg(this.mAudioHandler, 0, 2, 128, 0, this.mStreamStates[3], 0);
    }

    public boolean hasMediaDynamicPolicy() {
        synchronized (this.mAudioPolicies) {
            if (this.mAudioPolicies.isEmpty()) {
                return false;
            }
            Collection<AudioPolicyProxy> appColl = this.mAudioPolicies.values();
            for (AudioPolicyProxy app : appColl) {
                if (app.hasMixAffectingUsage(1, 3)) {
                    return true;
                }
            }
            return false;
        }
    }

    void checkMusicActive(int deviceType, String caller) {
        if (this.mSafeMediaVolumeDevices.contains(Integer.valueOf(deviceType))) {
            sendMsg(this.mAudioHandler, 11, 0, 0, 0, caller, MUSIC_ACTIVE_POLL_PERIOD_MS);
        }
    }

    private class AudioServiceBroadcastReceiver extends BroadcastReceiver {
        private AudioServiceBroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int config;
            String action = intent.getAction();
            if (action.equals("android.intent.action.DOCK_EVENT")) {
                int dockState = intent.getIntExtra("android.intent.extra.DOCK_STATE", 0);
                if (dockState == 1) {
                    config = 7;
                } else if (dockState == 2) {
                    config = 6;
                } else if (dockState == 3) {
                    config = 8;
                } else if (dockState == 4) {
                    config = 9;
                } else {
                    config = 0;
                }
                if (dockState != 3 && (dockState != 0 || AudioService.this.mDockState != 3)) {
                    AudioService.this.mDeviceBroker.setForceUse_Async(3, config, "ACTION_DOCK_EVENT intent");
                }
                AudioService.this.mDockState = dockState;
                return;
            }
            if (action.equals("android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED") || action.equals("android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED")) {
                AudioService.this.mDeviceBroker.receiveBtEvent(intent);
                return;
            }
            if (action.equals("android.intent.action.SCREEN_ON")) {
                if (AudioService.this.mMonitorRotation) {
                    RotationHelper.enable();
                }
                AudioSystem.setParameters("screen_state=on");
                return;
            }
            if (action.equals("android.intent.action.SCREEN_OFF")) {
                if (AudioService.this.mMonitorRotation) {
                    RotationHelper.disable();
                }
                AudioSystem.setParameters("screen_state=off");
                return;
            }
            if (action.equals("android.intent.action.CONFIGURATION_CHANGED")) {
                AudioService.this.handleConfigurationChanged(context);
                return;
            }
            if (action.equals("android.intent.action.USER_SWITCHED")) {
                if (AudioService.this.mUserSwitchedReceived) {
                    AudioService.this.mDeviceBroker.postBroadcastBecomingNoisy();
                }
                AudioService.this.mUserSwitchedReceived = true;
                AudioService.this.mMediaFocusControl.discardAudioFocusOwner();
                AudioService.this.readAudioSettings(true);
                AudioService.sendMsg(AudioService.this.mAudioHandler, 10, 2, 0, 0, AudioService.this.mStreamStates[3], 0);
                return;
            }
            if (action.equals("android.intent.action.USER_BACKGROUND")) {
                int userId = intent.getIntExtra("android.intent.extra.user_handle", -1);
                if (userId >= 0) {
                    UserInfo userInfo = UserManagerService.getInstance().getUserInfo(userId);
                    AudioService.this.killBackgroundUserProcessesWithRecordAudioPermission(userInfo);
                }
                UserManagerService.getInstance().setUserRestriction("no_record_audio", true, userId);
                return;
            }
            if (action.equals("android.intent.action.USER_FOREGROUND")) {
                UserManagerService.getInstance().setUserRestriction("no_record_audio", false, intent.getIntExtra("android.intent.extra.user_handle", -1));
                return;
            }
            if (action.equals("android.bluetooth.adapter.action.STATE_CHANGED")) {
                int state = intent.getIntExtra("android.bluetooth.adapter.extra.STATE", -1);
                if (state == 10 || state == 13) {
                    AudioService.this.mDeviceBroker.disconnectAllBluetoothProfiles();
                    return;
                }
                return;
            }
            if (action.equals("android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION") || action.equals("android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION")) {
                AudioService.this.handleAudioEffectBroadcast(context, intent);
                return;
            }
            if (action.equals("android.intent.action.PACKAGES_SUSPENDED")) {
                int[] suspendedUids = intent.getIntArrayExtra("android.intent.extra.changed_uid_list");
                String[] suspendedPackages = intent.getStringArrayExtra("android.intent.extra.changed_package_list");
                if (suspendedPackages == null || suspendedUids == null || suspendedPackages.length != suspendedUids.length) {
                    return;
                }
                for (int i = 0; i < suspendedUids.length; i++) {
                    if (!TextUtils.isEmpty(suspendedPackages[i])) {
                        AudioService.this.mMediaFocusControl.noFocusForSuspendedApp(suspendedPackages[i], suspendedUids[i]);
                    }
                }
                return;
            }
            if (action.equals("mega.bluetooth.adapter.action.STATE_CHANGED")) {
                int state2 = intent.getIntExtra("mega.bluetooth.adapter.extra.STATE", -1);
                if (state2 == 10 || state2 == 13) {
                    AudioService.this.mDeviceBroker.disconnectAllBluetoothProfiles();
                }
            }
        }
    }

    private class AudioServiceUserRestrictionsListener implements UserManagerInternal.UserRestrictionsListener {
        private AudioServiceUserRestrictionsListener() {
        }

        @Override // android.os.UserManagerInternal.UserRestrictionsListener
        public void onUserRestrictionsChanged(int userId, Bundle newRestrictions, Bundle prevRestrictions) {
            boolean wasRestricted = prevRestrictions.getBoolean("no_unmute_microphone");
            boolean isRestricted = newRestrictions.getBoolean("no_unmute_microphone");
            if (wasRestricted != isRestricted) {
                AudioService.this.mMicMuteFromRestrictions = isRestricted;
                AudioService.this.setMicrophoneMuteNoCallerCheck(userId);
            }
            boolean z = true;
            boolean wasRestricted2 = prevRestrictions.getBoolean("no_adjust_volume") || prevRestrictions.getBoolean("disallow_unmute_device");
            if (!newRestrictions.getBoolean("no_adjust_volume") && !newRestrictions.getBoolean("disallow_unmute_device")) {
                z = false;
            }
            boolean isRestricted2 = z;
            if (wasRestricted2 != isRestricted2) {
                AudioService.this.setMasterMuteInternalNoCallerCheck(isRestricted2, 0, userId);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleAudioEffectBroadcast(Context context, Intent intent) {
        ResolveInfo ri;
        String target = intent.getPackage();
        if (target != null) {
            Log.w(TAG, "effect broadcast already targeted to " + target);
            return;
        }
        intent.addFlags(32);
        List<ResolveInfo> ril = context.getPackageManager().queryBroadcastReceivers(intent, 0);
        if (ril == null || ril.size() == 0 || (ri = ril.get(0)) == null || ri.activityInfo == null || ri.activityInfo.packageName == null) {
            Log.w(TAG, "couldn't find receiver package for effect intent");
        } else {
            intent.setPackage(ri.activityInfo.packageName);
            context.sendBroadcastAsUser(intent, UserHandle.ALL);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void killBackgroundUserProcessesWithRecordAudioPermission(UserInfo oldUser) {
        PackageManager pm = this.mContext.getPackageManager();
        ComponentName homeActivityName = null;
        if (!oldUser.isManagedProfile()) {
            homeActivityName = ((ActivityTaskManagerInternal) LocalServices.getService(ActivityTaskManagerInternal.class)).getHomeActivityForUser(oldUser.id);
        }
        String[] permissions = {"android.permission.RECORD_AUDIO"};
        try {
            List<PackageInfo> packages = AppGlobals.getPackageManager().getPackagesHoldingPermissions(permissions, 0, oldUser.id).getList();
            for (int j = packages.size() - 1; j >= 0; j--) {
                PackageInfo pkg = packages.get(j);
                if (UserHandle.getAppId(pkg.applicationInfo.uid) >= 10000 && pm.checkPermission("android.permission.INTERACT_ACROSS_USERS", pkg.packageName) != 0 && (homeActivityName == null || !pkg.packageName.equals(homeActivityName.getPackageName()) || !pkg.applicationInfo.isSystemApp())) {
                    try {
                        int uid = pkg.applicationInfo.uid;
                        ActivityManager.getService().killUid(UserHandle.getAppId(uid), UserHandle.getUserId(uid), "killBackgroundUserProcessesWithAudioRecordPermission");
                    } catch (RemoteException e) {
                        Log.w(TAG, "Error calling killUid", e);
                    }
                }
            }
        } catch (RemoteException e2) {
            throw new AndroidRuntimeException(e2);
        }
    }

    private boolean forceFocusDuckingForAccessibility(AudioAttributes aa, int request, int uid) {
        Bundle extraInfo;
        if (aa == null || aa.getUsage() != 11 || request != 3 || (extraInfo = aa.getBundle()) == null || !extraInfo.getBoolean("a11y_force_ducking")) {
            return false;
        }
        if (uid == 0) {
            return true;
        }
        synchronized (this.mAccessibilityServiceUidsLock) {
            if (this.mAccessibilityServiceUids != null) {
                int callingUid = Binder.getCallingUid();
                for (int i = 0; i < this.mAccessibilityServiceUids.length; i++) {
                    if (this.mAccessibilityServiceUids[i] == callingUid) {
                        return true;
                    }
                }
            }
            return false;
        }
    }

    private boolean isSupportedSystemUsage(int usage) {
        synchronized (this.mSupportedSystemUsagesLock) {
            for (int i = 0; i < this.mSupportedSystemUsages.length; i++) {
                if (this.mSupportedSystemUsages[i] == usage) {
                    return true;
                }
            }
            return false;
        }
    }

    private void validateAudioAttributesUsage(AudioAttributes audioAttributes) {
        int usage = audioAttributes.getSystemUsage();
        if (AudioAttributes.isSystemUsage(usage)) {
            if (callerHasPermission("android.permission.MODIFY_AUDIO_ROUTING")) {
                if (!isSupportedSystemUsage(usage)) {
                    throw new IllegalArgumentException("Unsupported usage " + AudioAttributes.usageToString(usage));
                }
                return;
            }
            throw new SecurityException("Missing MODIFY_AUDIO_ROUTING permission");
        }
    }

    private boolean isValidAudioAttributesUsage(AudioAttributes audioAttributes) {
        int usage = audioAttributes.getSystemUsage();
        if (AudioAttributes.isSystemUsage(usage)) {
            return callerHasPermission("android.permission.MODIFY_AUDIO_ROUTING") && isSupportedSystemUsage(usage);
        }
        return true;
    }

    public int requestAudioFocus(AudioAttributes aa, int durationHint, IBinder cb, IAudioFocusDispatcher fd, String clientId, String callingPackageName, int flags, IAudioPolicyCallback pcb, int sdk) {
        int uid = Binder.getCallingUid();
        MediaMetrics.Item mmi = new MediaMetrics.Item("audio.service.focus").setUid(uid).set(MediaMetrics.Property.CALLING_PACKAGE, callingPackageName).set(MediaMetrics.Property.CLIENT_NAME, clientId).set(MediaMetrics.Property.EVENT, "requestAudioFocus").set(MediaMetrics.Property.FLAGS, Integer.valueOf(flags));
        if (aa != null && !isValidAudioAttributesUsage(aa)) {
            Log.w(TAG, "Request using unsupported usage");
            mmi.set(MediaMetrics.Property.EARLY_RETURN, "Request using unsupported usage").record();
            return 0;
        }
        if ((flags & 4) == 4) {
            if ("AudioFocus_For_Phone_Ring_And_Calls".equals(clientId)) {
                if (this.mContext.checkCallingOrSelfPermission("android.permission.MODIFY_PHONE_STATE") != 0) {
                    Log.e(TAG, "Invalid permission to (un)lock audio focus", new Exception());
                    mmi.set(MediaMetrics.Property.EARLY_RETURN, "Invalid permission to (un)lock audio focus").record();
                    return 0;
                }
            } else {
                synchronized (this.mAudioPolicies) {
                    if (!this.mAudioPolicies.containsKey(pcb.asBinder())) {
                        Log.e(TAG, "Invalid unregistered AudioPolicy to (un)lock audio focus");
                        mmi.set(MediaMetrics.Property.EARLY_RETURN, "Invalid unregistered AudioPolicy to (un)lock audio focus").record();
                        return 0;
                    }
                }
            }
        }
        if (callingPackageName == null || clientId == null || aa == null) {
            Log.e(TAG, "Invalid null parameter to request audio focus");
            mmi.set(MediaMetrics.Property.EARLY_RETURN, "Invalid null parameter to request audio focus").record();
            return 0;
        }
        mmi.record();
        this.mAudioFocusStatus.put(clientId, 1);
        return this.mMediaFocusControl.requestAudioFocus(aa, durationHint, cb, fd, clientId, callingPackageName, flags, sdk, forceFocusDuckingForAccessibility(aa, durationHint, uid));
    }

    public int abandonAudioFocus(IAudioFocusDispatcher fd, String clientId, AudioAttributes aa, String callingPackageName) {
        MediaMetrics.Item mmi = new MediaMetrics.Item("audio.service.focus").set(MediaMetrics.Property.CALLING_PACKAGE, callingPackageName).set(MediaMetrics.Property.CLIENT_NAME, clientId).set(MediaMetrics.Property.EVENT, "abandonAudioFocus");
        if (aa != null && !isValidAudioAttributesUsage(aa)) {
            Log.w(TAG, "Request using unsupported usage.");
            mmi.set(MediaMetrics.Property.EARLY_RETURN, "unsupported usage").record();
            return 0;
        }
        mmi.record();
        this.mAudioFocusStatus.put(clientId, 0);
        return this.mMediaFocusControl.abandonAudioFocus(fd, clientId, aa, callingPackageName);
    }

    public void unregisterAudioFocusClient(String clientId) {
        new MediaMetrics.Item("audio.service.focus").set(MediaMetrics.Property.CLIENT_NAME, clientId).set(MediaMetrics.Property.EVENT, "unregisterAudioFocusClient").record();
        this.mMediaFocusControl.unregisterAudioFocusClient(clientId);
    }

    public int getCurrentAudioFocus() {
        return this.mMediaFocusControl.getCurrentAudioFocus();
    }

    public int getFocusRampTimeMs(int focusGain, AudioAttributes attr) {
        return MediaFocusControl.getFocusRampTimeMs(focusGain, attr);
    }

    public boolean hasAudioFocusUsers() {
        return this.mMediaFocusControl.hasAudioFocusUsers();
    }

    private boolean readCameraSoundForced() {
        return SystemProperties.getBoolean("audio.camerasound.force", false) || this.mContext.getResources().getBoolean(R.bool.config_batterySaver_full_forceAllAppsStandby);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleConfigurationChanged(Context context) {
        try {
            Configuration config = context.getResources().getConfiguration();
            sendMsg(this.mAudioHandler, 12, 0, 0, 0, TAG, 0);
            boolean cameraSoundForced = readCameraSoundForced();
            synchronized (this.mSettingsLock) {
                boolean cameraSoundForcedChanged = cameraSoundForced != this.mCameraSoundForced;
                this.mCameraSoundForced = cameraSoundForced;
                if (cameraSoundForcedChanged) {
                    if (!this.mIsSingleVolume) {
                        synchronized (VolumeStreamState.class) {
                            VolumeStreamState s = this.mStreamStates[7];
                            if (cameraSoundForced) {
                                s.setAllIndexesToMax();
                                this.mRingerModeAffectedStreams &= -129;
                            } else {
                                s.setAllIndexes(this.mStreamStates[1], TAG);
                                this.mRingerModeAffectedStreams |= 128;
                            }
                        }
                        setRingerModeInt(getRingerModeInternal(), false);
                    }
                    this.mDeviceBroker.setForceUse_Async(4, cameraSoundForced ? 11 : 0, "handleConfigurationChanged");
                    sendMsg(this.mAudioHandler, 10, 2, 0, 0, this.mStreamStates[7], 0);
                }
            }
            this.mVolumeController.setLayoutDirection(config.getLayoutDirection());
        } catch (Exception e) {
            Log.e(TAG, "Error handling configuration change: ", e);
        }
    }

    public void setRingtonePlayer(IRingtonePlayer player) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.REMOTE_AUDIO_PLAYBACK", null);
        this.mRingtonePlayer = player;
    }

    public IRingtonePlayer getRingtonePlayer() {
        return this.mRingtonePlayer;
    }

    public AudioRoutesInfo startWatchingRoutes(IAudioRoutesObserver observer) {
        return this.mDeviceBroker.startWatchingRoutes(observer);
    }

    private int safeMediaVolumeIndex(int device) {
        if (!this.mSafeMediaVolumeDevices.contains(Integer.valueOf(device))) {
            return MAX_STREAM_VOLUME[3];
        }
        if (device == 67108864) {
            return this.mSafeUsbMediaVolumeIndex;
        }
        return this.mSafeMediaVolumeIndex;
    }

    private void setSafeMediaVolumeEnabled(boolean on, String caller) {
        synchronized (this.mSafeMediaVolumeStateLock) {
            if (this.mSafeMediaVolumeState != 0 && this.mSafeMediaVolumeState != 1) {
                if (on && this.mSafeMediaVolumeState == 2) {
                    this.mSafeMediaVolumeState = 3;
                    enforceSafeMediaVolume(caller);
                } else if (!on && this.mSafeMediaVolumeState == 3) {
                    this.mSafeMediaVolumeState = 2;
                    this.mMusicActiveMs = 1;
                    saveMusicActiveMs();
                    sendMsg(this.mAudioHandler, 11, 0, 0, 0, caller, MUSIC_ACTIVE_POLL_PERIOD_MS);
                }
            }
        }
    }

    private void enforceSafeMediaVolume(String caller) {
        VolumeStreamState streamState = this.mStreamStates[3];
        Set<Integer> devices = this.mSafeMediaVolumeDevices;
        Iterator<Integer> it = devices.iterator();
        while (it.hasNext()) {
            int device = it.next().intValue();
            int index = streamState.getIndex(device);
            if (index > safeMediaVolumeIndex(device)) {
                streamState.setIndex(safeMediaVolumeIndex(device), device, caller, true);
                sendMsg(this.mAudioHandler, 0, 2, device, 0, streamState, 0);
            }
        }
    }

    private boolean checkSafeMediaVolume(int streamType, int index, int device) {
        synchronized (this.mSafeMediaVolumeStateLock) {
            if (this.mSafeMediaVolumeState == 3 && mStreamVolumeAlias[streamType] == 3 && this.mSafeMediaVolumeDevices.contains(Integer.valueOf(device)) && index > safeMediaVolumeIndex(device)) {
                return false;
            }
            return true;
        }
    }

    public void disableSafeMediaVolume(String callingPackage) {
        enforceVolumeController("disable the safe media volume");
        synchronized (this.mSafeMediaVolumeStateLock) {
            setSafeMediaVolumeEnabled(false, callingPackage);
            if (this.mPendingVolumeCommand != null) {
                onSetStreamVolume(this.mPendingVolumeCommand.mStreamType, this.mPendingVolumeCommand.mIndex, this.mPendingVolumeCommand.mFlags, this.mPendingVolumeCommand.mDevice, callingPackage, true);
                this.mPendingVolumeCommand = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHdmiCecSinkLocked(boolean hdmiCecSink) {
        this.mHdmiCecSink = hdmiCecSink;
        if (!hasDeviceVolumeBehavior(1024)) {
            if (this.mHdmiCecSink) {
                addAudioSystemDeviceOutToFullVolumeDevices(1024);
            } else {
                removeAudioSystemDeviceOutFromFullVolumeDevices(1024);
            }
        }
        checkAddAllFixedVolumeDevices(1024, "HdmiPlaybackClient.DisplayStatusCallback");
    }

    private class MyHdmiControlStatusChangeListenerCallback implements HdmiControlManager.HdmiControlStatusChangeListener {
        private MyHdmiControlStatusChangeListenerCallback() {
        }

        public void onStatusChange(boolean isCecEnabled, boolean isCecAvailable) {
            synchronized (AudioService.this.mHdmiClientLock) {
                if (AudioService.this.mHdmiManager == null) {
                    return;
                }
                AudioService.this.updateHdmiCecSinkLocked(isCecEnabled ? isCecAvailable : false);
            }
        }
    }

    private class MyHdmiCecVolumeControlFeatureListener implements HdmiControlManager.HdmiCecVolumeControlFeatureListener {
        private MyHdmiCecVolumeControlFeatureListener() {
        }

        public void onHdmiCecVolumeControlFeature(boolean enabled) {
            synchronized (AudioService.this.mHdmiClientLock) {
                if (AudioService.this.mHdmiManager == null) {
                    return;
                }
                AudioService.this.mHdmiCecVolumeControlEnabled = enabled;
            }
        }
    }

    public int setHdmiSystemAudioSupported(boolean on) {
        int device = 0;
        synchronized (this.mHdmiClientLock) {
            if (this.mHdmiManager != null) {
                if (this.mHdmiTvClient == null && this.mHdmiAudioSystemClient == null) {
                    Log.w(TAG, "Only Hdmi-Cec enabled TV or audio system device supportssystem audio mode.");
                    return 0;
                }
                if (this.mHdmiSystemAudioSupported != on) {
                    this.mHdmiSystemAudioSupported = on;
                    int config = on ? 12 : 0;
                    this.mDeviceBroker.setForceUse_Async(5, config, "setHdmiSystemAudioSupported");
                }
                device = getDevicesForStream(3);
            }
            return device;
        }
    }

    public boolean isHdmiSystemAudioSupported() {
        return this.mHdmiSystemAudioSupported;
    }

    private void initA11yMonitoring() {
        AccessibilityManager accessibilityManager = (AccessibilityManager) this.mContext.getSystemService("accessibility");
        updateDefaultStreamOverrideDelay(accessibilityManager.isTouchExplorationEnabled());
        updateA11yVolumeAlias(accessibilityManager.isAccessibilityVolumeStreamActive());
        accessibilityManager.addTouchExplorationStateChangeListener(this, null);
        accessibilityManager.addAccessibilityServicesStateChangeListener(this, (Handler) null);
    }

    @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
    public void onTouchExplorationStateChanged(boolean enabled) {
        updateDefaultStreamOverrideDelay(enabled);
    }

    private void updateDefaultStreamOverrideDelay(boolean touchExploreEnabled) {
        if (touchExploreEnabled) {
            sStreamOverrideDelayMs = 1000;
        } else {
            sStreamOverrideDelayMs = 0;
        }
    }

    @Override // android.view.accessibility.AccessibilityManager.AccessibilityServicesStateChangeListener
    public void onAccessibilityServicesStateChanged(AccessibilityManager accessibilityManager) {
        updateA11yVolumeAlias(accessibilityManager.isAccessibilityVolumeStreamActive());
    }

    private void updateA11yVolumeAlias(boolean a11VolEnabled) {
        if (sIndependentA11yVolume != a11VolEnabled) {
            sIndependentA11yVolume = a11VolEnabled;
            int i = 1;
            updateStreamVolumeAlias(true, TAG);
            VolumeController volumeController = this.mVolumeController;
            if (!sIndependentA11yVolume) {
                i = 0;
            }
            volumeController.setA11yMode(i);
            this.mVolumeController.postVolumeChanged(10, 0);
        }
    }

    public boolean isCameraSoundForced() {
        boolean z;
        synchronized (this.mSettingsLock) {
            z = this.mCameraSoundForced;
        }
        return z;
    }

    private void dumpRingerMode(PrintWriter pw) {
        pw.println("\nRinger mode: ");
        pw.println("- mode (internal) = " + RINGER_MODE_NAMES[this.mRingerMode]);
        pw.println("- mode (external) = " + RINGER_MODE_NAMES[this.mRingerModeExternal]);
        pw.println("- zen mode:" + Settings.Global.zenModeToString(this.mNm.getZenMode()));
        dumpRingerModeStreams(pw, "affected", this.mRingerModeAffectedStreams);
        dumpRingerModeStreams(pw, "muted", this.mRingerAndZenModeMutedStreams);
        pw.print("- delegate = ");
        pw.println(this.mRingerModeDelegate);
    }

    private void dumpRingerModeStreams(PrintWriter pw, String type, int streams) {
        pw.print("- ringer mode ");
        pw.print(type);
        pw.print(" streams = 0x");
        pw.print(Integer.toHexString(streams));
        if (streams != 0) {
            pw.print(" (");
            boolean first = true;
            for (int i = 0; i < AudioSystem.STREAM_NAMES.length; i++) {
                int stream = 1 << i;
                if ((streams & stream) != 0) {
                    if (!first) {
                        pw.print(',');
                    }
                    pw.print(AudioSystem.STREAM_NAMES[i]);
                    streams &= ~stream;
                    first = false;
                }
            }
            if (streams != 0) {
                if (!first) {
                    pw.print(',');
                }
                pw.print(streams);
            }
            pw.print(')');
        }
        pw.println();
    }

    private String dumpDeviceTypes(Set<Integer> deviceTypes) {
        Iterator<Integer> it = deviceTypes.iterator();
        if (!it.hasNext()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("0x" + Integer.toHexString(it.next().intValue()));
        while (it.hasNext()) {
            sb.append(",0x" + Integer.toHexString(it.next().intValue()));
        }
        return sb.toString();
    }

    protected void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        if (DumpUtils.checkDumpPermission(this.mContext, TAG, pw)) {
            sLifecycleLogger.dump(pw);
            if (this.mAudioHandler != null) {
                pw.println("\nMessage handler (watch for unhandled messages):");
                this.mAudioHandler.dump(new PrintWriterPrinter(pw), "  ");
            } else {
                pw.println("\nMessage handler is null");
            }
            this.mMediaFocusControl.dump(pw);
            dumpStreamStates(pw);
            dumpVolumeGroups(pw);
            dumpRingerMode(pw);
            pw.println("\nAudio routes:");
            pw.print("  mMainType=0x");
            pw.println(Integer.toHexString(this.mDeviceBroker.getCurAudioRoutes().mainType));
            pw.print("  mBluetoothName=");
            pw.println(this.mDeviceBroker.getCurAudioRoutes().bluetoothName);
            pw.println("\nOther state:");
            pw.print("  mVolumeController=");
            pw.println(this.mVolumeController);
            pw.print("  mSafeMediaVolumeState=");
            pw.println(safeMediaVolumeStateToString(this.mSafeMediaVolumeState));
            pw.print("  mSafeMediaVolumeIndex=");
            pw.println(this.mSafeMediaVolumeIndex);
            pw.print("  mSafeUsbMediaVolumeIndex=");
            pw.println(this.mSafeUsbMediaVolumeIndex);
            pw.print("  mSafeUsbMediaVolumeDbfs=");
            pw.println(this.mSafeUsbMediaVolumeDbfs);
            pw.print("  sIndependentA11yVolume=");
            pw.println(sIndependentA11yVolume);
            pw.print("  mPendingVolumeCommand=");
            pw.println(this.mPendingVolumeCommand);
            pw.print("  mMusicActiveMs=");
            pw.println(this.mMusicActiveMs);
            pw.print("  mMcc=");
            pw.println(this.mMcc);
            pw.print("  mCameraSoundForced=");
            pw.println(this.mCameraSoundForced);
            pw.print("  mHasVibrator=");
            pw.println(this.mHasVibrator);
            pw.print("  mVolumePolicy=");
            pw.println(this.mVolumePolicy);
            pw.print("  mAvrcpAbsVolSupported=");
            pw.println(this.mAvrcpAbsVolSupported);
            pw.print("  mIsSingleVolume=");
            pw.println(this.mIsSingleVolume);
            pw.print("  mUseFixedVolume=");
            pw.println(this.mUseFixedVolume);
            pw.print("  mFixedVolumeDevices=");
            pw.println(dumpDeviceTypes(this.mFixedVolumeDevices));
            pw.print("  mExtVolumeController=");
            pw.println(this.mExtVolumeController);
            pw.print("  mHdmiCecSink=");
            pw.println(this.mHdmiCecSink);
            pw.print("  mHdmiAudioSystemClient=");
            pw.println(this.mHdmiAudioSystemClient);
            pw.print("  mHdmiPlaybackClient=");
            pw.println(this.mHdmiPlaybackClient);
            pw.print("  mHdmiTvClient=");
            pw.println(this.mHdmiTvClient);
            pw.print("  mHdmiSystemAudioSupported=");
            pw.println(this.mHdmiSystemAudioSupported);
            pw.print("  mHdmiCecVolumeControlEnabled=");
            pw.println(this.mHdmiCecVolumeControlEnabled);
            pw.print("  mIsCallScreeningModeSupported=");
            pw.println(this.mIsCallScreeningModeSupported);
            pw.print("  mic mute FromSwitch=" + this.mMicMuteFromSwitch + " FromRestrictions=" + this.mMicMuteFromRestrictions + " FromApi=" + this.mMicMuteFromApi + " from system=" + this.mMicMuteFromSystemCached);
            pw.print("\n  mAssistantUid=");
            pw.println(this.mAssistantUid);
            pw.print("  mCurrentImeUid=");
            pw.println(this.mCurrentImeUid);
            dumpAccessibilityServiceUids(pw);
            pw.print("  mUseSystemAutoDuck=");
            pw.println(this.mUseSystemAutoDuck);
            pw.print("  mUseSystemHardwareDuck=");
            pw.println(this.mUseSystemHardwareDuck);
            dumpAudioPolicies(pw);
            this.mDynPolicyLogger.dump(pw);
            this.mPlaybackMonitor.dump(pw);
            this.mRecordMonitor.dump(pw);
            pw.println("\nAudioDeviceBroker:");
            this.mDeviceBroker.dump(pw, "  ");
            pw.println("\nSoundEffects:");
            this.mSfxHelper.dump(pw, "  ");
            pw.println("\n");
            pw.println("\nEvent logs:");
            this.mModeLogger.dump(pw);
            pw.println("\n");
            sDeviceLogger.dump(pw);
            pw.println("\n");
            sForceUseLogger.dump(pw);
            pw.println("\n");
            sVolumeLogger.dump(pw);
            pw.println("\n");
            dumpSupportedSystemUsage(pw);
        }
    }

    private void dumpSupportedSystemUsage(PrintWriter pw) {
        pw.println("Supported System Usages:");
        synchronized (this.mSupportedSystemUsagesLock) {
            for (int i = 0; i < this.mSupportedSystemUsages.length; i++) {
                pw.printf("\t%s\n", AudioAttributes.usageToString(this.mSupportedSystemUsages[i]));
            }
        }
    }

    private void dumpAccessibilityServiceUids(PrintWriter pw) {
        synchronized (this.mSupportedSystemUsagesLock) {
            if (this.mAccessibilityServiceUids != null && this.mAccessibilityServiceUids.length > 0) {
                pw.println("  Accessibility service Uids:");
                for (int uid : this.mAccessibilityServiceUids) {
                    pw.println("  - " + uid);
                }
            } else {
                pw.println("  No accessibility service Uids.");
            }
        }
    }

    private static String safeMediaVolumeStateToString(int state) {
        if (state == 0) {
            return "SAFE_MEDIA_VOLUME_NOT_CONFIGURED";
        }
        if (state == 1) {
            return "SAFE_MEDIA_VOLUME_DISABLED";
        }
        if (state == 2) {
            return "SAFE_MEDIA_VOLUME_INACTIVE";
        }
        if (state == 3) {
            return "SAFE_MEDIA_VOLUME_ACTIVE";
        }
        return null;
    }

    private static void readAndSetLowRamDevice() {
        boolean isLowRamDevice = ActivityManager.isLowRamDeviceStatic();
        long totalMemory = 1073741824;
        try {
            ActivityManager.MemoryInfo info = new ActivityManager.MemoryInfo();
            ActivityManager.getService().getMemoryInfo(info);
            totalMemory = info.totalMem;
        } catch (RemoteException e) {
            Log.w(TAG, "Cannot obtain MemoryInfo from ActivityManager, assume low memory device");
            isLowRamDevice = true;
        }
        int status = AudioSystem.setLowRamDevice(isLowRamDevice, totalMemory);
        if (status != 0) {
            Log.w(TAG, "AudioFlinger informed of device's low RAM attribute; status " + status);
        }
    }

    private void enforceVolumeController(String action) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.STATUS_BAR_SERVICE", "Only SystemUI can " + action);
    }

    public void setVolumeController(final IVolumeController controller) {
        enforceVolumeController("set the volume controller");
        if (this.mVolumeController.isSameBinder(controller)) {
            return;
        }
        this.mVolumeController.postDismiss();
        if (controller != null) {
            try {
                controller.asBinder().linkToDeath(new IBinder.DeathRecipient() { // from class: com.android.server.audio.AudioService.6
                    @Override // android.os.IBinder.DeathRecipient
                    public void binderDied() {
                        if (AudioService.this.mVolumeController.isSameBinder(controller)) {
                            Log.w(AudioService.TAG, "Current remote volume controller died, unregistering");
                            AudioService.this.setVolumeController(null);
                        }
                    }
                }, 0);
            } catch (RemoteException e) {
            }
        }
        this.mVolumeController.setController(controller);
    }

    public void notifyVolumeControllerVisible(IVolumeController controller, boolean visible) {
        enforceVolumeController("notify about volume controller visibility");
        if (!this.mVolumeController.isSameBinder(controller)) {
            return;
        }
        this.mVolumeController.setVisible(visible);
    }

    public void setVolumePolicy(VolumePolicy policy) {
        enforceVolumeController("set volume policy");
        if (policy != null && !policy.equals(this.mVolumePolicy)) {
            this.mVolumePolicy = policy;
        }
    }

    public static class VolumeController {
        private static final String TAG = "VolumeController";
        private IVolumeController mController;
        private int mLongPressTimeout;
        private long mNextLongPress;
        private boolean mVisible;

        public void setController(IVolumeController controller) {
            this.mController = controller;
            this.mVisible = false;
        }

        public void loadSettings(ContentResolver cr) {
            this.mLongPressTimeout = Settings.Secure.getIntForUser(cr, "long_press_timeout", 500, -2);
        }

        public boolean suppressAdjustment(int resolvedStream, int flags, boolean isMute) {
            if (isMute || resolvedStream != 3 || this.mController == null) {
                return false;
            }
            if (resolvedStream == 3 && AudioSystem.isStreamActive(3, this.mLongPressTimeout)) {
                return false;
            }
            long now = SystemClock.uptimeMillis();
            if ((flags & 1) != 0 && !this.mVisible) {
                if (this.mNextLongPress < now) {
                    this.mNextLongPress = ((long) this.mLongPressTimeout) + now;
                }
                return true;
            }
            long j = this.mNextLongPress;
            if (j <= 0) {
                return false;
            }
            if (now > j) {
                this.mNextLongPress = 0L;
                return false;
            }
            return true;
        }

        public void setVisible(boolean visible) {
            this.mVisible = visible;
        }

        public boolean isSameBinder(IVolumeController controller) {
            return Objects.equals(asBinder(), binder(controller));
        }

        public IBinder asBinder() {
            return binder(this.mController);
        }

        private static IBinder binder(IVolumeController controller) {
            if (controller == null) {
                return null;
            }
            return controller.asBinder();
        }

        public String toString() {
            return "VolumeController(" + asBinder() + ",mVisible=" + this.mVisible + ")";
        }

        public void postDisplaySafeVolumeWarning(int flags) {
            IVolumeController iVolumeController = this.mController;
            if (iVolumeController == null) {
                return;
            }
            try {
                iVolumeController.displaySafeVolumeWarning(flags);
            } catch (RemoteException e) {
                Log.w(TAG, "Error calling displaySafeVolumeWarning", e);
            }
        }

        public void postVolumeChanged(int streamType, int flags) {
            IVolumeController iVolumeController = this.mController;
            if (iVolumeController == null) {
                return;
            }
            try {
                iVolumeController.volumeChanged(streamType, flags);
            } catch (RemoteException e) {
                Log.w(TAG, "Error calling volumeChanged", e);
            }
        }

        public void postMasterMuteChanged(int flags) {
            IVolumeController iVolumeController = this.mController;
            if (iVolumeController == null) {
                return;
            }
            try {
                iVolumeController.masterMuteChanged(flags);
            } catch (RemoteException e) {
                Log.w(TAG, "Error calling masterMuteChanged", e);
            }
        }

        public void setLayoutDirection(int layoutDirection) {
            IVolumeController iVolumeController = this.mController;
            if (iVolumeController == null) {
                return;
            }
            try {
                iVolumeController.setLayoutDirection(layoutDirection);
            } catch (RemoteException e) {
                Log.w(TAG, "Error calling setLayoutDirection", e);
            }
        }

        public void postDismiss() {
            IVolumeController iVolumeController = this.mController;
            if (iVolumeController == null) {
                return;
            }
            try {
                iVolumeController.dismiss();
            } catch (RemoteException e) {
                Log.w(TAG, "Error calling dismiss", e);
            }
        }

        public void setA11yMode(int a11yMode) {
            IVolumeController iVolumeController = this.mController;
            if (iVolumeController == null) {
                return;
            }
            try {
                iVolumeController.setA11yMode(a11yMode);
            } catch (RemoteException e) {
                Log.w(TAG, "Error calling setA11Mode", e);
            }
        }
    }

    final class AudioServiceInternal extends AudioManagerInternal {
        AudioServiceInternal() {
        }

        public void setRingerModeDelegate(AudioManagerInternal.RingerModeDelegate delegate) {
            AudioService.this.mRingerModeDelegate = delegate;
            if (AudioService.this.mRingerModeDelegate != null) {
                synchronized (AudioService.this.mSettingsLock) {
                    AudioService.this.updateRingerAndZenModeAffectedStreams();
                }
                setRingerModeInternal(getRingerModeInternal(), "AS.AudioService.setRingerModeDelegate");
            }
        }

        public void adjustSuggestedStreamVolumeForUid(int streamType, int direction, int flags, String callingPackage, int uid, int pid) throws Throwable {
            boolean hasModifyAudioSettings = AudioService.this.mContext.checkPermission("android.permission.MODIFY_AUDIO_SETTINGS", pid, uid) == 0;
            AudioService.this.adjustSuggestedStreamVolume(direction, streamType, flags, callingPackage, callingPackage, uid, hasModifyAudioSettings, 0);
        }

        public void adjustStreamVolumeForUid(int streamType, int direction, int flags, String callingPackage, int uid, int pid) throws Throwable {
            if (direction != 0) {
                AudioService.sVolumeLogger.log(new AudioServiceEvents.VolumeEvent(5, streamType, direction, flags, callingPackage + " uid:" + uid));
            }
            boolean hasModifyAudioSettings = AudioService.this.mContext.checkPermission("android.permission.MODIFY_AUDIO_SETTINGS", pid, uid) == 0;
            AudioService.this.adjustStreamVolume(streamType, direction, flags, callingPackage, callingPackage, uid, hasModifyAudioSettings, 0);
        }

        public void setStreamVolumeForUid(int streamType, int direction, int flags, String callingPackage, int uid, int pid) throws Throwable {
            boolean hasModifyAudioSettings = AudioService.this.mContext.checkPermission("android.permission.MODIFY_AUDIO_SETTINGS", pid, uid) == 0;
            AudioService.this.setStreamVolume(streamType, direction, flags, callingPackage, callingPackage, uid, hasModifyAudioSettings);
        }

        public int getRingerModeInternal() {
            return AudioService.this.getRingerModeInternal();
        }

        public void setRingerModeInternal(int ringerMode, String caller) {
            AudioService.this.setRingerModeInternal(ringerMode, caller);
        }

        public void silenceRingerModeInternal(String caller) {
            AudioService.this.silenceRingerModeInternal(caller);
        }

        public void updateRingerModeAffectedStreamsInternal() {
            synchronized (AudioService.this.mSettingsLock) {
                if (AudioService.this.updateRingerAndZenModeAffectedStreams()) {
                    AudioService.this.setRingerModeInt(getRingerModeInternal(), false);
                }
            }
        }

        public void setAccessibilityServiceUids(IntArray uids) {
            synchronized (AudioService.this.mAccessibilityServiceUidsLock) {
                if (uids.size() == 0) {
                    AudioService.this.mAccessibilityServiceUids = null;
                } else {
                    boolean changed = AudioService.this.mAccessibilityServiceUids == null || AudioService.this.mAccessibilityServiceUids.length != uids.size();
                    if (!changed) {
                        for (int i = 0; i < AudioService.this.mAccessibilityServiceUids.length; i++) {
                            if (uids.get(i) != AudioService.this.mAccessibilityServiceUids[i]) {
                                changed = true;
                                break;
                            }
                        }
                    }
                    if (changed) {
                        AudioService.this.mAccessibilityServiceUids = uids.toArray();
                    }
                }
                AudioSystem.setA11yServicesUids(AudioService.this.mAccessibilityServiceUids);
            }
        }

        public void setInputMethodServiceUid(int uid) {
            synchronized (AudioService.this.mInputMethodServiceUidLock) {
                if (AudioService.this.mInputMethodServiceUid != uid) {
                    AudioService.this.mAudioSystem.setCurrentImeUid(uid);
                    AudioService.this.mInputMethodServiceUid = uid;
                }
            }
        }
    }

    public String registerAudioPolicy(AudioPolicyConfig policyConfig, IAudioPolicyCallback pcb, boolean hasFocusListener, boolean isFocusPolicy, boolean isTestFocusPolicy, boolean isVolumeController, IMediaProjection projection) throws RemoteException {
        HashMap<IBinder, AudioPolicyProxy> map;
        AudioSystem.setDynamicPolicyCallback(this.mDynPolicyCallback);
        if (!isPolicyRegisterAllowed(policyConfig, isFocusPolicy || isTestFocusPolicy || hasFocusListener, isVolumeController, projection)) {
            Slog.w(TAG, "Permission denied to register audio policy for pid " + Binder.getCallingPid() + " / uid " + Binder.getCallingUid() + ", need MODIFY_AUDIO_ROUTING or MediaProjection that can project audio");
            return null;
        }
        this.mDynPolicyLogger.log(new AudioEventLogger.StringEvent("registerAudioPolicy for " + pcb.asBinder() + " with config:" + policyConfig).printLog(TAG));
        HashMap<IBinder, AudioPolicyProxy> map2 = this.mAudioPolicies;
        synchronized (map2) {
            try {
                try {
                    if (this.mAudioPolicies.containsKey(pcb.asBinder())) {
                        Slog.e(TAG, "Cannot re-register policy");
                        return null;
                    }
                    try {
                        map = map2;
                        try {
                            AudioPolicyProxy app = new AudioPolicyProxy(policyConfig, pcb, hasFocusListener, isFocusPolicy, isTestFocusPolicy, isVolumeController, projection);
                            pcb.asBinder().linkToDeath(app, 0);
                            String regId = app.getRegistrationId();
                            this.mAudioPolicies.put(pcb.asBinder(), app);
                            return regId;
                        } catch (RemoteException e) {
                            e = e;
                            Slog.w(TAG, "Audio policy registration failed, could not link to " + pcb + " binder death", e);
                            return null;
                        } catch (IllegalStateException e2) {
                            e = e2;
                            Slog.w(TAG, "Audio policy registration failed for binder " + pcb, e);
                            return null;
                        }
                    } catch (RemoteException e3) {
                        e = e3;
                        map = map2;
                    } catch (IllegalStateException e4) {
                        e = e4;
                        map = map2;
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

    private boolean isPolicyRegisterAllowed(AudioPolicyConfig policyConfig, boolean hasFocusAccess, boolean isVolumeController, IMediaProjection projection) {
        boolean requireValidProjection = false;
        boolean requireCaptureAudioOrMediaOutputPerm = false;
        boolean requireModifyRouting = false;
        ArrayList<AudioMix> voiceCommunicationCaptureMixes = null;
        if (hasFocusAccess || isVolumeController || policyConfig.getMixes().isEmpty()) {
            requireModifyRouting = false | true;
        }
        for (AudioMix mix : policyConfig.getMixes()) {
            if (mix.getRule().allowPrivilegedPlaybackCapture()) {
                requireCaptureAudioOrMediaOutputPerm |= true;
                String error = AudioMix.canBeUsedForPrivilegedCapture(mix.getFormat());
                if (error != null) {
                    Log.e(TAG, error);
                    return false;
                }
                if (mix.containsMatchAttributeRuleForUsage(2)) {
                    if (voiceCommunicationCaptureMixes == null) {
                        voiceCommunicationCaptureMixes = new ArrayList<>();
                    }
                    voiceCommunicationCaptureMixes.add(mix);
                }
            }
            if (mix.getRouteFlags() == 3 && projection != null) {
                requireValidProjection |= true;
            } else {
                requireModifyRouting |= true;
            }
        }
        if (requireCaptureAudioOrMediaOutputPerm && !callerHasPermission("android.permission.CAPTURE_MEDIA_OUTPUT") && !callerHasPermission("android.permission.CAPTURE_AUDIO_OUTPUT")) {
            Log.e(TAG, "Privileged audio capture requires CAPTURE_MEDIA_OUTPUT or CAPTURE_AUDIO_OUTPUT system permission");
            return false;
        }
        if (voiceCommunicationCaptureMixes != null && voiceCommunicationCaptureMixes.size() > 0) {
            if (!callerHasPermission("android.permission.CAPTURE_VOICE_COMMUNICATION_OUTPUT")) {
                Log.e(TAG, "Privileged audio capture for voice communication requires CAPTURE_VOICE_COMMUNICATION_OUTPUT system permission");
                return false;
            }
            Iterator<AudioMix> it = voiceCommunicationCaptureMixes.iterator();
            while (it.hasNext()) {
                it.next().getRule().setVoiceCommunicationCaptureAllowed(true);
            }
        }
        if (requireValidProjection && !canProjectAudio(projection)) {
            return false;
        }
        if (!requireModifyRouting || callerHasPermission("android.permission.MODIFY_AUDIO_ROUTING")) {
            return true;
        }
        Log.e(TAG, "Can not capture audio without MODIFY_AUDIO_ROUTING");
        return false;
    }

    private boolean callerHasPermission(String permission) {
        return this.mContext.checkCallingPermission(permission) == 0;
    }

    private boolean canProjectAudio(IMediaProjection projection) {
        if (projection == null) {
            Log.e(TAG, "MediaProjection is null");
            return false;
        }
        IMediaProjectionManager projectionService = getProjectionService();
        if (projectionService == null) {
            Log.e(TAG, "Can't get service IMediaProjectionManager");
            return false;
        }
        try {
            if (!projectionService.isValidMediaProjection(projection)) {
                Log.w(TAG, "App passed invalid MediaProjection token");
                return false;
            }
            try {
                if (!projection.canProjectAudio()) {
                    Log.w(TAG, "App passed MediaProjection that can not project audio");
                    return false;
                }
                return true;
            } catch (RemoteException e) {
                Log.e(TAG, "Can't call .canProjectAudio() on valid IMediaProjection" + projection.asBinder(), e);
                return false;
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "Can't call .isValidMediaProjection() on IMediaProjectionManager" + projectionService.asBinder(), e2);
            return false;
        }
    }

    private IMediaProjectionManager getProjectionService() {
        if (this.mProjectionService == null) {
            IBinder b = ServiceManager.getService("media_projection");
            this.mProjectionService = IMediaProjectionManager.Stub.asInterface(b);
        }
        return this.mProjectionService;
    }

    public void unregisterAudioPolicyAsync(IAudioPolicyCallback pcb) {
        unregisterAudioPolicy(pcb);
    }

    public void unregisterAudioPolicy(IAudioPolicyCallback pcb) {
        if (pcb == null) {
            return;
        }
        unregisterAudioPolicyInt(pcb);
    }

    private void unregisterAudioPolicyInt(IAudioPolicyCallback pcb) {
        this.mDynPolicyLogger.log(new AudioEventLogger.StringEvent("unregisterAudioPolicyAsync for " + pcb.asBinder()).printLog(TAG));
        synchronized (this.mAudioPolicies) {
            AudioPolicyProxy app = this.mAudioPolicies.remove(pcb.asBinder());
            if (app == null) {
                Slog.w(TAG, "Trying to unregister unknown audio policy for pid " + Binder.getCallingPid() + " / uid " + Binder.getCallingUid());
                return;
            }
            pcb.asBinder().unlinkToDeath(app, 0);
            app.release();
        }
    }

    private AudioPolicyProxy checkUpdateForPolicy(IAudioPolicyCallback pcb, String errorMsg) {
        boolean hasPermissionForPolicy = this.mContext.checkCallingPermission("android.permission.MODIFY_AUDIO_ROUTING") == 0;
        if (!hasPermissionForPolicy) {
            Slog.w(TAG, errorMsg + " for pid " + Binder.getCallingPid() + " / uid " + Binder.getCallingUid() + ", need MODIFY_AUDIO_ROUTING");
            return null;
        }
        AudioPolicyProxy app = this.mAudioPolicies.get(pcb.asBinder());
        if (app == null) {
            Slog.w(TAG, errorMsg + " for pid " + Binder.getCallingPid() + " / uid " + Binder.getCallingUid() + ", unregistered policy");
            return null;
        }
        return app;
    }

    public int addMixForPolicy(AudioPolicyConfig policyConfig, IAudioPolicyCallback pcb) {
        synchronized (this.mAudioPolicies) {
            AudioPolicyProxy app = checkUpdateForPolicy(pcb, "Cannot add AudioMix in audio policy");
            int i = -1;
            if (app == null) {
                return -1;
            }
            if (app.addMixes(policyConfig.getMixes()) == 0) {
                i = 0;
            }
            return i;
        }
    }

    public int removeMixForPolicy(AudioPolicyConfig policyConfig, IAudioPolicyCallback pcb) {
        synchronized (this.mAudioPolicies) {
            AudioPolicyProxy app = checkUpdateForPolicy(pcb, "Cannot add AudioMix in audio policy");
            int i = -1;
            if (app == null) {
                return -1;
            }
            if (app.removeMixes(policyConfig.getMixes()) == 0) {
                i = 0;
            }
            return i;
        }
    }

    public int setUidDeviceAffinity(IAudioPolicyCallback pcb, int uid, int[] deviceTypes, String[] deviceAddresses) {
        synchronized (this.mAudioPolicies) {
            AudioPolicyProxy app = checkUpdateForPolicy(pcb, "Cannot change device affinity in audio policy");
            if (app == null) {
                return -1;
            }
            if (!app.hasMixRoutedToDevices(deviceTypes, deviceAddresses)) {
                return -1;
            }
            return app.setUidDeviceAffinities(uid, deviceTypes, deviceAddresses);
        }
    }

    public int setUserIdDeviceAffinity(IAudioPolicyCallback pcb, int userId, int[] deviceTypes, String[] deviceAddresses) {
        synchronized (this.mAudioPolicies) {
            AudioPolicyProxy app = checkUpdateForPolicy(pcb, "Cannot change device affinity in audio policy");
            if (app == null) {
                return -1;
            }
            if (!app.hasMixRoutedToDevices(deviceTypes, deviceAddresses)) {
                return -1;
            }
            return app.setUserIdDeviceAffinities(userId, deviceTypes, deviceAddresses);
        }
    }

    public int removeUidDeviceAffinity(IAudioPolicyCallback pcb, int uid) {
        synchronized (this.mAudioPolicies) {
            AudioPolicyProxy app = checkUpdateForPolicy(pcb, "Cannot remove device affinity in audio policy");
            if (app == null) {
                return -1;
            }
            return app.removeUidDeviceAffinities(uid);
        }
    }

    public int removeUserIdDeviceAffinity(IAudioPolicyCallback pcb, int userId) {
        synchronized (this.mAudioPolicies) {
            AudioPolicyProxy app = checkUpdateForPolicy(pcb, "Cannot remove device affinity in audio policy");
            if (app == null) {
                return -1;
            }
            return app.removeUserIdDeviceAffinities(userId);
        }
    }

    public int setFocusPropertiesForPolicy(int duckingBehavior, IAudioPolicyCallback pcb) {
        synchronized (this.mAudioPolicies) {
            AudioPolicyProxy app = checkUpdateForPolicy(pcb, "Cannot change audio policy focus properties");
            if (app == null) {
                return -1;
            }
            if (!this.mAudioPolicies.containsKey(pcb.asBinder())) {
                Slog.e(TAG, "Cannot change audio policy focus properties, unregistered policy");
                return -1;
            }
            boolean z = true;
            if (duckingBehavior == 1) {
                for (AudioPolicyProxy policy : this.mAudioPolicies.values()) {
                    if (policy.mFocusDuckBehavior == 1) {
                        Slog.e(TAG, "Cannot change audio policy ducking behavior, already handled");
                        return -1;
                    }
                }
            }
            app.mFocusDuckBehavior = duckingBehavior;
            MediaFocusControl mediaFocusControl = this.mMediaFocusControl;
            if (duckingBehavior != 1) {
                z = false;
            }
            mediaFocusControl.setDuckingInExtPolicyAvailable(z);
            return 0;
        }
    }

    public boolean hasRegisteredDynamicPolicy() {
        boolean z;
        synchronized (this.mAudioPolicies) {
            z = !this.mAudioPolicies.isEmpty();
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setExtVolumeController(IAudioPolicyCallback apc) {
        if (!this.mContext.getResources().getBoolean(R.bool.config_cecQuerySadDtsDisabled_allowed)) {
            Log.e(TAG, "Cannot set external volume controller: device not set for volume keys handled in PhoneWindowManager");
            return;
        }
        synchronized (this.mExtVolumeControllerLock) {
            if (this.mExtVolumeController != null && !this.mExtVolumeController.asBinder().pingBinder()) {
                Log.e(TAG, "Cannot set external volume controller: existing controller");
            }
            this.mExtVolumeController = apc;
        }
    }

    private void dumpAudioPolicies(PrintWriter pw) {
        pw.println("\nAudio policies:");
        synchronized (this.mAudioPolicies) {
            for (AudioPolicyProxy policy : this.mAudioPolicies.values()) {
                pw.println(policy.toLogFriendlyString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDynPolicyMixStateUpdate(String regId, int state) {
        synchronized (this.mAudioPolicies) {
            for (AudioPolicyProxy policy : this.mAudioPolicies.values()) {
                for (AudioMix mix : policy.getMixes()) {
                    if (mix.getRegistration().equals(regId)) {
                        try {
                            policy.mPolicyCallback.notifyMixStateUpdate(regId, state);
                        } catch (RemoteException e) {
                            Log.e(TAG, "Can't call notifyMixStateUpdate() on IAudioPolicyCallback " + policy.mPolicyCallback.asBinder(), e);
                        }
                        return;
                    }
                }
            }
        }
    }

    public void registerRecordingCallback(IRecordingConfigDispatcher rcdb) {
        boolean isPrivileged = this.mContext.checkCallingPermission("android.permission.MODIFY_AUDIO_ROUTING") == 0;
        this.mRecordMonitor.registerRecordingCallback(rcdb, isPrivileged);
    }

    public void unregisterRecordingCallback(IRecordingConfigDispatcher rcdb) {
        this.mRecordMonitor.unregisterRecordingCallback(rcdb);
    }

    public List<AudioRecordingConfiguration> getActiveRecordingConfigurations() {
        boolean isPrivileged = this.mContext.checkCallingPermission("android.permission.MODIFY_AUDIO_ROUTING") == 0;
        return this.mRecordMonitor.getActiveRecordingConfigurations(isPrivileged);
    }

    public int trackRecorder(IBinder recorder) {
        return this.mRecordMonitor.trackRecorder(recorder);
    }

    public void recorderEvent(int riid, int event) {
        this.mRecordMonitor.recorderEvent(riid, event);
    }

    public void releaseRecorder(int riid) {
        this.mRecordMonitor.releaseRecorder(riid);
    }

    public void disableRingtoneSync(int userId) {
        int callingUserId = UserHandle.getCallingUserId();
        if (callingUserId != userId) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.INTERACT_ACROSS_USERS_FULL", "disable sound settings syncing for another profile");
        }
        long token = Binder.clearCallingIdentity();
        try {
            Settings.Secure.putIntForUser(this.mContentResolver, "sync_parent_sounds", 0, userId);
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    public void registerPlaybackCallback(IPlaybackConfigDispatcher pcdb) {
        boolean isPrivileged = this.mContext.checkCallingOrSelfPermission("android.permission.MODIFY_AUDIO_ROUTING") == 0;
        this.mPlaybackMonitor.registerPlaybackCallback(pcdb, isPrivileged);
    }

    public void unregisterPlaybackCallback(IPlaybackConfigDispatcher pcdb) {
        this.mPlaybackMonitor.unregisterPlaybackCallback(pcdb);
    }

    public List<AudioPlaybackConfiguration> getActivePlaybackConfigurations() {
        boolean isPrivileged = this.mContext.checkCallingOrSelfPermission("android.permission.MODIFY_AUDIO_ROUTING") == 0;
        return this.mPlaybackMonitor.getActivePlaybackConfigurations(isPrivileged);
    }

    public int trackPlayer(PlayerBase.PlayerIdCard pic) {
        if (pic != null && pic.mAttributes != null) {
            validateAudioAttributesUsage(pic.mAttributes);
        }
        return this.mPlaybackMonitor.trackPlayer(pic);
    }

    public void playerAttributes(int piid, AudioAttributes attr) {
        if (attr != null) {
            validateAudioAttributesUsage(attr);
        }
        this.mPlaybackMonitor.playerAttributes(piid, attr, Binder.getCallingUid());
    }

    public void playerEvent(int piid, int event) {
        this.mPlaybackMonitor.playerEvent(piid, event, Binder.getCallingUid());
    }

    public void playerHasOpPlayAudio(int piid, boolean hasOpPlayAudio) {
        this.mPlaybackMonitor.playerHasOpPlayAudio(piid, hasOpPlayAudio, Binder.getCallingUid());
    }

    public void releasePlayer(int piid) {
        this.mPlaybackMonitor.releasePlayer(piid, Binder.getCallingUid());
    }

    public int setAllowedCapturePolicy(int capturePolicy) {
        int result;
        int callingUid = Binder.getCallingUid();
        int flags = AudioAttributes.capturePolicyToFlags(capturePolicy, 0);
        long identity = Binder.clearCallingIdentity();
        synchronized (this.mPlaybackMonitor) {
            result = AudioSystem.setAllowedCapturePolicy(callingUid, flags);
            if (result == 0) {
                this.mPlaybackMonitor.setAllowedCapturePolicy(callingUid, capturePolicy);
            }
            Binder.restoreCallingIdentity(identity);
        }
        return result;
    }

    public int getAllowedCapturePolicy() {
        int callingUid = Binder.getCallingUid();
        long identity = Binder.clearCallingIdentity();
        int capturePolicy = this.mPlaybackMonitor.getAllowedCapturePolicy(callingUid);
        Binder.restoreCallingIdentity(identity);
        return capturePolicy;
    }

    private static final class AudioDeviceArray {
        final String[] mDeviceAddresses;
        final int[] mDeviceTypes;

        AudioDeviceArray(int[] types, String[] addresses) {
            this.mDeviceTypes = types;
            this.mDeviceAddresses = addresses;
        }
    }

    public class AudioPolicyProxy extends AudioPolicyConfig implements IBinder.DeathRecipient {
        private static final String TAG = "AudioPolicyProxy";
        int mFocusDuckBehavior;
        final boolean mHasFocusListener;
        boolean mIsFocusPolicy;
        boolean mIsTestFocusPolicy;
        final boolean mIsVolumeController;
        final IAudioPolicyCallback mPolicyCallback;
        final IMediaProjection mProjection;
        UnregisterOnStopCallback mProjectionCallback;
        final HashMap<Integer, AudioDeviceArray> mUidDeviceAffinities;
        final HashMap<Integer, AudioDeviceArray> mUserIdDeviceAffinities;

        private final class UnregisterOnStopCallback extends IMediaProjectionCallback.Stub {
            private UnregisterOnStopCallback() {
            }

            public void onStop() {
                AudioService.this.unregisterAudioPolicyAsync(AudioPolicyProxy.this.mPolicyCallback);
            }
        }

        AudioPolicyProxy(AudioPolicyConfig config, IAudioPolicyCallback token, boolean hasFocusListener, boolean isFocusPolicy, boolean isTestFocusPolicy, boolean isVolumeController, IMediaProjection projection) {
            super(config);
            this.mUidDeviceAffinities = new HashMap<>();
            this.mUserIdDeviceAffinities = new HashMap<>();
            this.mFocusDuckBehavior = 0;
            this.mIsFocusPolicy = false;
            this.mIsTestFocusPolicy = false;
            setRegistration(new String(config.hashCode() + ":ap:" + AudioService.access$10108(AudioService.this)));
            this.mPolicyCallback = token;
            this.mHasFocusListener = hasFocusListener;
            this.mIsVolumeController = isVolumeController;
            this.mProjection = projection;
            if (hasFocusListener) {
                AudioService.this.mMediaFocusControl.addFocusFollower(this.mPolicyCallback);
                if (isFocusPolicy) {
                    this.mIsFocusPolicy = true;
                    this.mIsTestFocusPolicy = isTestFocusPolicy;
                    AudioService.this.mMediaFocusControl.setFocusPolicy(this.mPolicyCallback, this.mIsTestFocusPolicy);
                }
            }
            if (this.mIsVolumeController) {
                AudioService.this.setExtVolumeController(this.mPolicyCallback);
            }
            if (this.mProjection != null) {
                UnregisterOnStopCallback unregisterOnStopCallback = new UnregisterOnStopCallback();
                this.mProjectionCallback = unregisterOnStopCallback;
                try {
                    this.mProjection.registerCallback(unregisterOnStopCallback);
                } catch (RemoteException e) {
                    release();
                    throw new IllegalStateException("MediaProjection callback registration failed, could not link to " + projection + " binder death", e);
                }
            }
            int status = connectMixes();
            if (status != 0) {
                release();
                throw new IllegalStateException("Could not connect mix, error: " + status);
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            Log.i(TAG, "audio policy " + this.mPolicyCallback + " died");
            release();
        }

        String getRegistrationId() {
            return getRegistration();
        }

        void release() {
            if (this.mIsFocusPolicy) {
                AudioService.this.mMediaFocusControl.unsetFocusPolicy(this.mPolicyCallback, this.mIsTestFocusPolicy);
            }
            if (this.mFocusDuckBehavior == 1) {
                AudioService.this.mMediaFocusControl.setDuckingInExtPolicyAvailable(false);
            }
            if (this.mHasFocusListener) {
                AudioService.this.mMediaFocusControl.removeFocusFollower(this.mPolicyCallback);
            }
            UnregisterOnStopCallback unregisterOnStopCallback = this.mProjectionCallback;
            if (unregisterOnStopCallback != null) {
                try {
                    this.mProjection.unregisterCallback(unregisterOnStopCallback);
                } catch (RemoteException e) {
                    Log.e(TAG, "Fail to unregister Audiopolicy callback from MediaProjection");
                }
            }
            if (this.mIsVolumeController) {
                synchronized (AudioService.this.mExtVolumeControllerLock) {
                    AudioService.this.mExtVolumeController = null;
                }
            }
            long identity = Binder.clearCallingIdentity();
            AudioSystem.registerPolicyMixes(this.mMixes, false);
            Binder.restoreCallingIdentity(identity);
            synchronized (AudioService.this.mAudioPolicies) {
                AudioService.this.mAudioPolicies.remove(this.mPolicyCallback.asBinder());
            }
            try {
                this.mPolicyCallback.notifyUnregistration();
            } catch (RemoteException e2) {
            }
        }

        boolean hasMixAffectingUsage(int usage, int excludedFlags) {
            for (AudioMix mix : this.mMixes) {
                if (mix.isAffectingUsage(usage) && (mix.getRouteFlags() & excludedFlags) != excludedFlags) {
                    return true;
                }
            }
            return false;
        }

        boolean hasMixRoutedToDevices(int[] deviceTypes, String[] deviceAddresses) {
            for (int i = 0; i < deviceTypes.length; i++) {
                boolean hasDevice = false;
                for (AudioMix mix : this.mMixes) {
                    if (mix.isRoutedToDevice(deviceTypes[i], deviceAddresses[i])) {
                        hasDevice = true;
                        break;
                    }
                }
                if (!hasDevice) {
                    return false;
                }
            }
            return true;
        }

        int addMixes(ArrayList<AudioMix> mixes) {
            int iRegisterPolicyMixes;
            synchronized (this.mMixes) {
                AudioSystem.registerPolicyMixes(this.mMixes, false);
                add(mixes);
                iRegisterPolicyMixes = AudioSystem.registerPolicyMixes(this.mMixes, true);
            }
            return iRegisterPolicyMixes;
        }

        int removeMixes(ArrayList<AudioMix> mixes) {
            int iRegisterPolicyMixes;
            synchronized (this.mMixes) {
                AudioSystem.registerPolicyMixes(this.mMixes, false);
                remove(mixes);
                iRegisterPolicyMixes = AudioSystem.registerPolicyMixes(this.mMixes, true);
            }
            return iRegisterPolicyMixes;
        }

        int connectMixes() {
            long identity = Binder.clearCallingIdentity();
            int status = AudioSystem.registerPolicyMixes(this.mMixes, true);
            Binder.restoreCallingIdentity(identity);
            return status;
        }

        int setUidDeviceAffinities(int uid, int[] types, String[] addresses) {
            Integer Uid = new Integer(uid);
            if (this.mUidDeviceAffinities.remove(Uid) != null && removeUidDeviceAffinitiesFromSystem(uid) != 0) {
                Log.e(TAG, "AudioSystem. removeUidDeviceAffinities(" + uid + ") failed,  cannot call AudioSystem.setUidDeviceAffinities");
                return -1;
            }
            AudioDeviceArray deviceArray = new AudioDeviceArray(types, addresses);
            if (setUidDeviceAffinitiesOnSystem(uid, deviceArray) == 0) {
                this.mUidDeviceAffinities.put(Uid, deviceArray);
                return 0;
            }
            Log.e(TAG, "AudioSystem. setUidDeviceAffinities(" + uid + ") failed");
            return -1;
        }

        int removeUidDeviceAffinities(int uid) {
            if (this.mUidDeviceAffinities.remove(new Integer(uid)) != null && removeUidDeviceAffinitiesFromSystem(uid) == 0) {
                return 0;
            }
            Log.e(TAG, "AudioSystem. removeUidDeviceAffinities failed");
            return -1;
        }

        private int removeUidDeviceAffinitiesFromSystem(int uid) {
            long identity = Binder.clearCallingIdentity();
            try {
                return AudioSystem.removeUidDeviceAffinities(uid);
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }

        private int setUidDeviceAffinitiesOnSystem(int uid, AudioDeviceArray deviceArray) {
            long identity = Binder.clearCallingIdentity();
            try {
                return AudioSystem.setUidDeviceAffinities(uid, deviceArray.mDeviceTypes, deviceArray.mDeviceAddresses);
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }

        int setUserIdDeviceAffinities(int userId, int[] types, String[] addresses) {
            Integer UserId = new Integer(userId);
            if (this.mUserIdDeviceAffinities.remove(UserId) != null && removeUserIdDeviceAffinitiesFromSystem(userId) != 0) {
                Log.e(TAG, "AudioSystem. removeUserIdDeviceAffinities(" + UserId + ") failed,  cannot call AudioSystem.setUserIdDeviceAffinities");
                return -1;
            }
            AudioDeviceArray audioDeviceArray = new AudioDeviceArray(types, addresses);
            if (setUserIdDeviceAffinitiesOnSystem(userId, audioDeviceArray) == 0) {
                this.mUserIdDeviceAffinities.put(UserId, audioDeviceArray);
                return 0;
            }
            Log.e(TAG, "AudioSystem.setUserIdDeviceAffinities(" + userId + ") failed");
            return -1;
        }

        int removeUserIdDeviceAffinities(int userId) {
            if (this.mUserIdDeviceAffinities.remove(new Integer(userId)) != null && removeUserIdDeviceAffinitiesFromSystem(userId) == 0) {
                return 0;
            }
            Log.e(TAG, "AudioSystem.removeUserIdDeviceAffinities failed");
            return -1;
        }

        private int removeUserIdDeviceAffinitiesFromSystem(int userId) {
            long identity = Binder.clearCallingIdentity();
            try {
                return AudioSystem.removeUserIdDeviceAffinities(userId);
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }

        private int setUserIdDeviceAffinitiesOnSystem(int userId, AudioDeviceArray deviceArray) {
            long identity = Binder.clearCallingIdentity();
            try {
                return AudioSystem.setUserIdDeviceAffinities(userId, deviceArray.mDeviceTypes, deviceArray.mDeviceAddresses);
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }

        int setupDeviceAffinities() {
            for (Map.Entry<Integer, AudioDeviceArray> uidEntry : this.mUidDeviceAffinities.entrySet()) {
                int uidStatus = removeUidDeviceAffinitiesFromSystem(uidEntry.getKey().intValue());
                if (uidStatus != 0) {
                    Log.e(TAG, "setupDeviceAffinities failed to remove device affinity for uid " + uidEntry.getKey());
                    return uidStatus;
                }
                int uidStatus2 = setUidDeviceAffinitiesOnSystem(uidEntry.getKey().intValue(), uidEntry.getValue());
                if (uidStatus2 != 0) {
                    Log.e(TAG, "setupDeviceAffinities failed to set device affinity for uid " + uidEntry.getKey());
                    return uidStatus2;
                }
            }
            for (Map.Entry<Integer, AudioDeviceArray> userIdEntry : this.mUserIdDeviceAffinities.entrySet()) {
                int userIdStatus = removeUserIdDeviceAffinitiesFromSystem(userIdEntry.getKey().intValue());
                if (userIdStatus != 0) {
                    Log.e(TAG, "setupDeviceAffinities failed to remove device affinity for userId " + userIdEntry.getKey());
                    return userIdStatus;
                }
                int userIdStatus2 = setUserIdDeviceAffinitiesOnSystem(userIdEntry.getKey().intValue(), userIdEntry.getValue());
                if (userIdStatus2 != 0) {
                    Log.e(TAG, "setupDeviceAffinities failed to set device affinity for userId " + userIdEntry.getKey());
                    return userIdStatus2;
                }
            }
            return 0;
        }

        public String toLogFriendlyString() {
            String textDump = super.toLogFriendlyString();
            String textDump2 = (((((textDump + " Uid Device Affinities:\n") + logFriendlyAttributeDeviceArrayMap("Uid", this.mUidDeviceAffinities, "     ")) + " UserId Device Affinities:\n") + logFriendlyAttributeDeviceArrayMap("UserId", this.mUserIdDeviceAffinities, "     ")) + " Proxy:\n") + "   is focus policy= " + this.mIsFocusPolicy + "\n";
            if (this.mIsFocusPolicy) {
                textDump2 = ((textDump2 + "     focus duck behaviour= " + this.mFocusDuckBehavior + "\n") + "     is test focus policy= " + this.mIsTestFocusPolicy + "\n") + "     has focus listener= " + this.mHasFocusListener + "\n";
            }
            return textDump2 + "   media projection= " + this.mProjection + "\n";
        }

        private String logFriendlyAttributeDeviceArrayMap(String attribute, Map<Integer, AudioDeviceArray> map, String spacer) {
            StringBuilder stringBuilder = new StringBuilder();
            for (Map.Entry<Integer, AudioDeviceArray> mapEntry : map.entrySet()) {
                stringBuilder.append(spacer);
                stringBuilder.append(attribute);
                stringBuilder.append(": ");
                stringBuilder.append(mapEntry.getKey());
                stringBuilder.append("\n");
                AudioDeviceArray deviceArray = mapEntry.getValue();
                String deviceSpacer = spacer + "   ";
                for (int i = 0; i < deviceArray.mDeviceTypes.length; i++) {
                    stringBuilder.append(deviceSpacer);
                    stringBuilder.append("Type: 0x");
                    stringBuilder.append(Integer.toHexString(deviceArray.mDeviceTypes[i]));
                    stringBuilder.append(" Address: ");
                    stringBuilder.append(deviceArray.mDeviceAddresses[i]);
                    stringBuilder.append("\n");
                }
            }
            return stringBuilder.toString();
        }
    }

    public static String focusChangeToString(int focus) {
        switch (focus) {
            case -5:
                return "LOSS_TRANSIENT_CAN_DUCK2";
            case -4:
            default:
                return "[invalid focus change" + focus + "]";
            case -3:
                return "LOSS_TRANSIENT_CAN_DUCK";
            case -2:
                return "LOSS_TRANSIENT";
            case -1:
                return "LOSS";
            case 0:
                return "none";
            case 1:
                return "GAIN";
            case 2:
                return "GAIN_TRANSIENT";
            case 3:
                return "GAIN_TRANSIENT_MAY_DUCK";
            case 4:
                return "GAIN_TRANSIENT_EXCLUSIVE";
            case 5:
                return "GAIN_TRANSIENT_MAY_DUCK2";
        }
    }

    boolean handleSystemAutoDuckMode(AudioFocusInfo afi, int focusChange) {
        Log.d(TAG, "enter handleSystemAutoDuckMode");
        if (focusChange == -3) {
            this.mMediaFocusControl.duckClientIfNeeded(afi.getClientId());
            return true;
        }
        if (focusChange == -5) {
            this.mMediaFocusControl.duckRequestClientIfNeeded(afi.getClientId());
            return true;
        }
        if (focusChange != -2 && this.mMediaFocusControl.unduckSystemAutoDuckClient(afi.getClientId(), focusChange)) {
            return true;
        }
        return false;
    }

    boolean handleHardwareDuckMode(AudioFocusInfo afi, int focusChange) {
        Log.d(TAG, "enter handleHardwareDuckMode");
        return true;
    }

    public int dispatchFocusChange(AudioFocusInfo afi, int focusChange, IAudioPolicyCallback pcb) {
        if (afi == null) {
            throw new IllegalArgumentException("Illegal null AudioFocusInfo");
        }
        if (pcb == null) {
            throw new IllegalArgumentException("Illegal null AudioPolicy callback");
        }
        synchronized (this.mAudioPolicies) {
            if (!this.mAudioPolicies.containsKey(pcb.asBinder())) {
                throw new IllegalStateException("Unregistered AudioPolicy for focus dispatch");
            }
            Log.d(TAG, "dispatchFocusChange  " + focusChangeToString(focusChange) + " clientId " + afi.getClientId() + " " + afi.getPackageName());
            if (this.mUseFixedVolume && !this.mUseSystemHardwareDuck) {
                if (this.mUseSystemAutoDuck) {
                    if (handleSystemAutoDuckMode(afi, focusChange)) {
                        return 1;
                    }
                } else if (focusChange == -3) {
                    this.mMediaFocusControl.duckClientIfNeeded(afi.getClientId());
                } else {
                    this.mMediaFocusControl.unduckClientLegacy(afi.getClientId());
                }
            }
            if (focusChange > 0) {
                this.mMediaFocusControl.notifyExtPolicyFocusGrant_syncAf(afi, focusChange);
            } else {
                AudioFocusInfo temp = new AudioFocusInfo(afi.getAttributes(), afi.getClientUid(), afi.getClientId(), afi.getPackageName(), afi.getGainRequest(), focusChange, afi.getFlags(), afi.getSdkTarget());
                temp.setGen(afi.getGen());
                afi = temp;
                this.mMediaFocusControl.notifyExtPolicyFocusLoss_syncAf(afi, true);
            }
            return this.mMediaFocusControl.dispatchFocusChange(afi, focusChange);
        }
    }

    public void setFocusRequestResultFromExtPolicy(AudioFocusInfo afi, int requestResult, IAudioPolicyCallback pcb) {
        if (afi == null) {
            throw new IllegalArgumentException("Illegal null AudioFocusInfo");
        }
        if (pcb == null) {
            throw new IllegalArgumentException("Illegal null AudioPolicy callback");
        }
        synchronized (this.mAudioPolicies) {
            if (!this.mAudioPolicies.containsKey(pcb.asBinder())) {
                throw new IllegalStateException("Unregistered AudioPolicy for external focus");
            }
            this.mMediaFocusControl.setFocusRequestResultFromExtPolicy(afi, requestResult);
            if (requestResult == 1) {
                if (this.mAudioFocusStatus.get(afi.getClientId()) == null || this.mAudioFocusStatus.get(afi.getClientId()).intValue() != 1) {
                    this.mMediaFocusControl.notifyExtPolicyFocusLoss_syncAf(afi, true);
                } else {
                    this.mMediaFocusControl.notifyExtPolicyFocusGrant_syncAf(afi, requestResult);
                }
            }
            this.mAudioFocusStatus.remove(afi.getClientId());
        }
    }

    private class AsdProxy implements IBinder.DeathRecipient {
        private final IAudioServerStateDispatcher mAsd;

        AsdProxy(IAudioServerStateDispatcher asd) {
            this.mAsd = asd;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            synchronized (AudioService.this.mAudioServerStateListeners) {
                AudioService.this.mAudioServerStateListeners.remove(this.mAsd.asBinder());
            }
        }

        IAudioServerStateDispatcher callback() {
            return this.mAsd;
        }
    }

    private void checkMonitorAudioServerStatePermission() {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.MODIFY_PHONE_STATE") != 0 && this.mContext.checkCallingOrSelfPermission("android.permission.MODIFY_AUDIO_ROUTING") != 0) {
            throw new SecurityException("Not allowed to monitor audioserver state");
        }
    }

    public void registerAudioServerStateDispatcher(IAudioServerStateDispatcher asd) {
        checkMonitorAudioServerStatePermission();
        synchronized (this.mAudioServerStateListeners) {
            if (this.mAudioServerStateListeners.containsKey(asd.asBinder())) {
                Slog.w(TAG, "Cannot re-register audio server state dispatcher");
                return;
            }
            AsdProxy asdp = new AsdProxy(asd);
            try {
                asd.asBinder().linkToDeath(asdp, 0);
            } catch (RemoteException e) {
            }
            this.mAudioServerStateListeners.put(asd.asBinder(), asdp);
        }
    }

    public void unregisterAudioServerStateDispatcher(IAudioServerStateDispatcher asd) {
        checkMonitorAudioServerStatePermission();
        synchronized (this.mAudioServerStateListeners) {
            AsdProxy asdp = this.mAudioServerStateListeners.remove(asd.asBinder());
            if (asdp == null) {
                Slog.w(TAG, "Trying to unregister unknown audioserver state dispatcher for pid " + Binder.getCallingPid() + " / uid " + Binder.getCallingUid());
                return;
            }
            asd.asBinder().unlinkToDeath(asdp, 0);
        }
    }

    public boolean isAudioServerRunning() {
        checkMonitorAudioServerStatePermission();
        return AudioSystem.checkAudioFlinger() == 0;
    }

    private Set<Integer> getAudioHalPids() {
        try {
            IServiceManager serviceManager = IServiceManager.getService();
            ArrayList<IServiceManager.InstanceDebugInfo> dump = serviceManager.debugDump();
            HashSet<Integer> pids = new HashSet<>();
            for (IServiceManager.InstanceDebugInfo info : dump) {
                if (info.pid != -1 && info.interfaceName != null && info.interfaceName.startsWith(AUDIO_HAL_SERVICE_PREFIX)) {
                    pids.add(Integer.valueOf(info.pid));
                }
            }
            return pids;
        } catch (RemoteException e) {
            return new HashSet();
        }
    }

    private void updateAudioHalPids() {
        Set<Integer> pidsSet = getAudioHalPids();
        if (pidsSet.isEmpty()) {
            Slog.w(TAG, "Could not retrieve audio HAL service pids");
        } else {
            int[] pidsArray = pidsSet.stream().mapToInt(new ToIntFunction() { // from class: com.android.server.audio.-$$Lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw
                @Override // java.util.function.ToIntFunction
                public final int applyAsInt(Object obj) {
                    return ((Integer) obj).intValue();
                }
            }).toArray();
            AudioSystem.setAudioHalPids(pidsArray);
        }
    }

    public void setMultiAudioFocusEnabled(boolean enabled) {
        enforceModifyAudioRoutingPermission();
        MediaFocusControl mediaFocusControl = this.mMediaFocusControl;
        if (mediaFocusControl != null) {
            boolean mafEnabled = mediaFocusControl.getMultiAudioFocusEnabled();
            if (mafEnabled != enabled) {
                this.mMediaFocusControl.updateMultiAudioFocus(enabled);
                if (!enabled) {
                    this.mDeviceBroker.postBroadcastBecomingNoisy();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isFixedVolumeDevice(int deviceType) {
        if (deviceType == 32768 && this.mRecordMonitor.isLegacyRemoteSubmixActive()) {
            return false;
        }
        return this.mFixedVolumeDevices.contains(Integer.valueOf(deviceType));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isFullVolumeDevice(int deviceType) {
        if (deviceType == 32768 && this.mRecordMonitor.isLegacyRemoteSubmixActive()) {
            return false;
        }
        return this.mFullVolumeDevices.contains(Integer.valueOf(deviceType));
    }

    private static String getSettingsNameForDeviceVolumeBehavior(int deviceType) {
        return "AudioService_DeviceVolumeBehavior_" + AudioSystem.getOutputDeviceName(deviceType);
    }

    private void persistDeviceVolumeBehavior(int deviceType, int deviceVolumeBehavior) {
        Settings.System.putIntForUser(this.mContentResolver, getSettingsNameForDeviceVolumeBehavior(deviceType), deviceVolumeBehavior, -2);
    }

    private int retrieveStoredDeviceVolumeBehavior(int deviceType) {
        return Settings.System.getIntForUser(this.mContentResolver, getSettingsNameForDeviceVolumeBehavior(deviceType), -1, -2);
    }

    private void restoreDeviceVolumeBehavior() {
        Iterator<Integer> it = sDeviceVolumeBehaviorSupportedDeviceOutSet.iterator();
        while (it.hasNext()) {
            int deviceType = it.next().intValue();
            int deviceVolumeBehavior = retrieveStoredDeviceVolumeBehavior(deviceType);
            if (deviceVolumeBehavior != -1) {
                setDeviceVolumeBehaviorInternal(deviceType, deviceVolumeBehavior, "AudioService.restoreDeviceVolumeBehavior()");
            }
        }
    }

    private boolean hasDeviceVolumeBehavior(int audioSystemDeviceOut) {
        return retrieveStoredDeviceVolumeBehavior(audioSystemDeviceOut) != -1;
    }

    private void addAudioSystemDeviceOutToFixedVolumeDevices(int audioSystemDeviceOut) {
        this.mFixedVolumeDevices.add(Integer.valueOf(audioSystemDeviceOut));
    }

    private void removeAudioSystemDeviceOutFromFixedVolumeDevices(int audioSystemDeviceOut) {
        this.mFixedVolumeDevices.remove(Integer.valueOf(audioSystemDeviceOut));
    }

    private void addAudioSystemDeviceOutToFullVolumeDevices(int audioSystemDeviceOut) {
        this.mFullVolumeDevices.add(Integer.valueOf(audioSystemDeviceOut));
    }

    private void removeAudioSystemDeviceOutFromFullVolumeDevices(int audioSystemDeviceOut) {
        this.mFullVolumeDevices.remove(Integer.valueOf(audioSystemDeviceOut));
    }
}
