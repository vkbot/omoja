package com.android.server;

import android.app.ActivityManager;
import android.app.AppOpsManager;
import android.app.compat.CompatChanges;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Process;
import android.os.RemoteException;
import android.os.UserHandle;
import android.provider.DeviceConfig;
import android.telephony.BarringInfo;
import android.telephony.CallAttributes;
import android.telephony.CallQuality;
import android.telephony.CellIdentity;
import android.telephony.CellInfo;
import android.telephony.CellLocation;
import android.telephony.CellSignalStrength;
import android.telephony.CellSignalStrengthCdma;
import android.telephony.CellSignalStrengthGsm;
import android.telephony.CellSignalStrengthLte;
import android.telephony.CellSignalStrengthNr;
import android.telephony.CellSignalStrengthTdscdma;
import android.telephony.CellSignalStrengthWcdma;
import android.telephony.LocationAccessPolicy;
import android.telephony.PhoneCapability;
import android.telephony.PreciseCallState;
import android.telephony.PreciseDataConnectionState;
import android.telephony.Rlog;
import android.telephony.ServiceState;
import android.telephony.SignalStrength;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyDisplayInfo;
import android.telephony.TelephonyManager;
import android.telephony.data.ApnSetting;
import android.telephony.emergency.EmergencyNumber;
import android.telephony.ims.ImsReasonInfo;
import android.util.LocalLog;
import com.android.internal.app.IBatteryStats;
import com.android.internal.telephony.IOnSubscriptionsChangedListener;
import com.android.internal.telephony.IPhoneStateListener;
import com.android.internal.telephony.ITelephonyRegistry;
import com.android.internal.telephony.TelephonyPermissions;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.FrameworkStatsLog;
import com.android.internal.util.FunctionalUtils;
import com.android.internal.util.IndentingPrintWriter;
import com.android.server.am.BatteryStatsService;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.function.IntPredicate;

/* JADX INFO: loaded from: classes.dex */
public class TelephonyRegistry extends ITelephonyRegistry.Stub {
    private static final String ACTION_ANY_DATA_CONNECTION_STATE_CHANGED = "android.intent.action.ANY_DATA_STATE";
    public static final String ACTION_SIGNAL_STRENGTH_CHANGED = "android.intent.action.SIG_STR";
    private static final String ACTION_SUBSCRIPTION_PHONE_STATE_CHANGED = "android.intent.action.SUBSCRIPTION_PHONE_STATE";
    private static final boolean DBG = false;
    private static final boolean DBG_LOC = false;
    static final int ENFORCE_LOCATION_PERMISSION_MASK = -1073740784;
    static final int ENFORCE_PHONE_STATE_PERMISSION_MASK = 17825804;
    static final int ENFORCE_PRECISE_PHONE_STATE_PERMISSION_MASK = -838854656;
    private static final int MSG_UPDATE_DEFAULT_SUB = 2;
    private static final int MSG_USER_SWITCHED = 1;
    private static final String PHONE_CONSTANTS_DATA_APN_KEY = "apn";
    private static final String PHONE_CONSTANTS_DATA_APN_TYPE_KEY = "apnType";
    private static final String PHONE_CONSTANTS_SLOT_KEY = "slot";
    private static final String PHONE_CONSTANTS_STATE_KEY = "state";
    private static final String PHONE_CONSTANTS_SUBSCRIPTION_KEY = "subscription";
    static final int READ_ACTIVE_EMERGENCY_SESSION_PERMISSION_MASK = 805306368;
    static final int READ_PRIVILEGED_PHONE_STATE_PERMISSION_MASK = 8568832;
    private static final String TAG = "TelephonyRegistry";
    private static final boolean VDBG = false;
    private final AppOpsManager mAppOps;
    private int[] mBackgroundCallState;
    private List<BarringInfo> mBarringInfo;
    private final IBatteryStats mBatteryStats;
    private CallAttributes[] mCallAttributes;
    private int[] mCallDisconnectCause;
    private boolean[] mCallForwarding;
    private String[] mCallIncomingNumber;
    private int[] mCallNetworkType;
    private int[] mCallPreciseDisconnectCause;
    private CallQuality[] mCallQuality;
    private int[] mCallState;
    private CellIdentity[] mCellIdentity;
    private ArrayList<List<CellInfo>> mCellInfo;
    private ConfigurationProvider mConfigurationProvider;
    private final Context mContext;
    private int[] mDataActivationState;
    private int[] mDataActivity;
    private int[] mDataConnectionNetworkType;
    private int[] mDataConnectionState;
    private Map<Integer, List<EmergencyNumber>> mEmergencyNumberList;
    private int[] mForegroundCallState;
    private List<ImsReasonInfo> mImsReasonInfo;
    private boolean[] mMessageWaiting;
    private int mNumPhones;
    private EmergencyNumber[] mOutgoingCallEmergencyNumber;
    private EmergencyNumber[] mOutgoingSmsEmergencyNumber;
    private PreciseCallState[] mPreciseCallState;
    private List<Map<Integer, PreciseDataConnectionState>> mPreciseDataConnectionStates;
    private int[] mRingingCallState;
    private ServiceState[] mServiceState;
    private SignalStrength[] mSignalStrength;
    private int[] mSrvccState;
    private TelephonyDisplayInfo[] mTelephonyDisplayInfos;
    private boolean[] mUserMobileDataState;
    private int[] mVoiceActivationState;
    private final ArrayList<IBinder> mRemoveList = new ArrayList<>();
    private final ArrayList<Record> mRecords = new ArrayList<>();
    private boolean mHasNotifySubscriptionInfoChangedOccurred = false;
    private boolean mHasNotifyOpportunisticSubscriptionInfoChangedOccurred = false;
    private int mDefaultSubId = -1;
    private int mDefaultPhoneId = -1;
    private boolean mCarrierNetworkChangeState = false;
    private PhoneCapability mPhoneCapability = null;
    private int mActiveDataSubId = -1;
    private int mRadioPowerState = 2;
    private final LocalLog mLocalLog = new LocalLog(100);
    private final LocalLog mListenLog = new LocalLog(100);
    private final Handler mHandler = new Handler() { // from class: com.android.server.TelephonyRegistry.1
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int i = msg.what;
            if (i == 1) {
                int numPhones = TelephonyRegistry.this.getTelephonyManager().getPhoneCount();
                for (int sub = 0; sub < numPhones; sub++) {
                    TelephonyRegistry telephonyRegistry = TelephonyRegistry.this;
                    telephonyRegistry.notifyCellLocationForSubscriber(sub, telephonyRegistry.mCellIdentity[sub]);
                }
                return;
            }
            if (i == 2) {
                int newDefaultPhoneId = msg.arg1;
                int newDefaultSubId = msg.arg2;
                synchronized (TelephonyRegistry.this.mRecords) {
                    for (Record r : TelephonyRegistry.this.mRecords) {
                        if (r.subId == Integer.MAX_VALUE) {
                            TelephonyRegistry.this.checkPossibleMissNotify(r, newDefaultPhoneId);
                        }
                    }
                    TelephonyRegistry.this.handleRemoveListLocked();
                }
                TelephonyRegistry.this.mDefaultSubId = newDefaultSubId;
                TelephonyRegistry.this.mDefaultPhoneId = newDefaultPhoneId;
                TelephonyRegistry.this.mLocalLog.log("Default subscription updated: mDefaultPhoneId=" + TelephonyRegistry.this.mDefaultPhoneId + ", mDefaultSubId=" + TelephonyRegistry.this.mDefaultSubId);
            }
        }
    };
    private final BroadcastReceiver mBroadcastReceiver = new BroadcastReceiver() { // from class: com.android.server.TelephonyRegistry.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("android.intent.action.USER_SWITCHED".equals(action)) {
                int userHandle = intent.getIntExtra("android.intent.extra.user_handle", 0);
                TelephonyRegistry.this.mHandler.sendMessage(TelephonyRegistry.this.mHandler.obtainMessage(1, userHandle, 0));
                return;
            }
            if (action.equals("android.telephony.action.DEFAULT_SUBSCRIPTION_CHANGED")) {
                int newDefaultSubId = intent.getIntExtra("android.telephony.extra.SUBSCRIPTION_INDEX", SubscriptionManager.getDefaultSubscriptionId());
                int newDefaultPhoneId = intent.getIntExtra("android.telephony.extra.SLOT_INDEX", TelephonyRegistry.this.getPhoneIdFromSubId(newDefaultSubId));
                if (TelephonyRegistry.this.validatePhoneId(newDefaultPhoneId)) {
                    if (newDefaultSubId != TelephonyRegistry.this.mDefaultSubId || newDefaultPhoneId != TelephonyRegistry.this.mDefaultPhoneId) {
                        TelephonyRegistry.this.mHandler.sendMessage(TelephonyRegistry.this.mHandler.obtainMessage(2, newDefaultPhoneId, newDefaultSubId));
                        return;
                    }
                    return;
                }
                return;
            }
            if (action.equals("android.telephony.action.MULTI_SIM_CONFIG_CHANGED")) {
                TelephonyRegistry.this.onMultiSimConfigChanged();
            }
        }
    };

    private static class Record {
        IBinder binder;
        IPhoneStateListener callback;
        int callerPid;
        int callerUid;
        String callingFeatureId;
        String callingPackage;
        Context context;
        TelephonyRegistryDeathRecipient deathRecipient;
        int events;
        IOnSubscriptionsChangedListener onOpportunisticSubscriptionsChangedListenerCallback;
        IOnSubscriptionsChangedListener onSubscriptionsChangedListenerCallback;
        int phoneId;
        int subId;

        private Record() {
            this.subId = -1;
            this.phoneId = -1;
        }

        boolean matchPhoneStateListenerEvent(int events) {
            return (this.callback == null || (this.events & events) == 0) ? false : true;
        }

        boolean matchOnSubscriptionsChangedListener() {
            return this.onSubscriptionsChangedListenerCallback != null;
        }

        boolean matchOnOpportunisticSubscriptionsChangedListener() {
            return this.onOpportunisticSubscriptionsChangedListenerCallback != null;
        }

        boolean canReadCallLog() {
            try {
                return TelephonyPermissions.checkReadCallLog(this.context, this.subId, this.callerPid, this.callerUid, this.callingPackage, this.callingFeatureId);
            } catch (SecurityException e) {
                return false;
            }
        }

        public String toString() {
            return "{callingPackage=" + TelephonyRegistry.pii(this.callingPackage) + " callerUid=" + this.callerUid + " binder=" + this.binder + " callback=" + this.callback + " onSubscriptionsChangedListenererCallback=" + this.onSubscriptionsChangedListenerCallback + " onOpportunisticSubscriptionsChangedListenererCallback=" + this.onOpportunisticSubscriptionsChangedListenerCallback + " subId=" + this.subId + " phoneId=" + this.phoneId + " events=" + Integer.toHexString(this.events) + "}";
        }
    }

    public static class ConfigurationProvider {
        public int getRegistrationLimit() {
            return ((Integer) Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.-$$Lambda$TelephonyRegistry$ConfigurationProvider$A5xhR3lZDw53BlzyFNt_k-u3iFQ
                public final Object getOrThrow() {
                    return Integer.valueOf(DeviceConfig.getInt("telephony", "phone_state_listener_per_pid_registration_limit", 50));
                }
            })).intValue();
        }

        public boolean isRegistrationLimitEnabledInPlatformCompat(final int uid) {
            return ((Boolean) Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.-$$Lambda$TelephonyRegistry$ConfigurationProvider$BAHbE7Yttp6aPP9zqDcJXshJtks
                public final Object getOrThrow() {
                    return Boolean.valueOf(CompatChanges.isChangeEnabled(150880553L, uid));
                }
            })).booleanValue();
        }
    }

    private class TelephonyRegistryDeathRecipient implements IBinder.DeathRecipient {
        private final IBinder binder;

        TelephonyRegistryDeathRecipient(IBinder binder) {
            this.binder = binder;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            TelephonyRegistry.this.remove(this.binder);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TelephonyManager getTelephonyManager() {
        return (TelephonyManager) this.mContext.getSystemService("phone");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onMultiSimConfigChanged() {
        int oldNumPhones = this.mNumPhones;
        int activeModemCount = getTelephonyManager().getActiveModemCount();
        this.mNumPhones = activeModemCount;
        if (oldNumPhones == activeModemCount) {
            return;
        }
        int[] iArrCopyOf = Arrays.copyOf(this.mCallState, activeModemCount);
        this.mCallState = iArrCopyOf;
        this.mDataActivity = Arrays.copyOf(iArrCopyOf, this.mNumPhones);
        this.mDataConnectionState = Arrays.copyOf(this.mCallState, this.mNumPhones);
        this.mDataConnectionNetworkType = Arrays.copyOf(this.mCallState, this.mNumPhones);
        this.mCallIncomingNumber = (String[]) Arrays.copyOf(this.mCallIncomingNumber, this.mNumPhones);
        this.mServiceState = (ServiceState[]) Arrays.copyOf(this.mServiceState, this.mNumPhones);
        this.mVoiceActivationState = Arrays.copyOf(this.mVoiceActivationState, this.mNumPhones);
        this.mDataActivationState = Arrays.copyOf(this.mDataActivationState, this.mNumPhones);
        this.mUserMobileDataState = Arrays.copyOf(this.mUserMobileDataState, this.mNumPhones);
        SignalStrength[] signalStrengthArr = this.mSignalStrength;
        if (signalStrengthArr != null) {
            this.mSignalStrength = (SignalStrength[]) Arrays.copyOf(signalStrengthArr, this.mNumPhones);
        } else {
            this.mSignalStrength = new SignalStrength[this.mNumPhones];
        }
        this.mMessageWaiting = Arrays.copyOf(this.mMessageWaiting, this.mNumPhones);
        this.mCallForwarding = Arrays.copyOf(this.mCallForwarding, this.mNumPhones);
        this.mCellIdentity = (CellIdentity[]) Arrays.copyOf(this.mCellIdentity, this.mNumPhones);
        this.mSrvccState = Arrays.copyOf(this.mSrvccState, this.mNumPhones);
        this.mPreciseCallState = (PreciseCallState[]) Arrays.copyOf(this.mPreciseCallState, this.mNumPhones);
        this.mForegroundCallState = Arrays.copyOf(this.mForegroundCallState, this.mNumPhones);
        this.mBackgroundCallState = Arrays.copyOf(this.mBackgroundCallState, this.mNumPhones);
        this.mRingingCallState = Arrays.copyOf(this.mRingingCallState, this.mNumPhones);
        this.mCallDisconnectCause = Arrays.copyOf(this.mCallDisconnectCause, this.mNumPhones);
        this.mCallPreciseDisconnectCause = Arrays.copyOf(this.mCallPreciseDisconnectCause, this.mNumPhones);
        this.mCallQuality = (CallQuality[]) Arrays.copyOf(this.mCallQuality, this.mNumPhones);
        this.mCallNetworkType = Arrays.copyOf(this.mCallNetworkType, this.mNumPhones);
        this.mCallAttributes = (CallAttributes[]) Arrays.copyOf(this.mCallAttributes, this.mNumPhones);
        this.mOutgoingCallEmergencyNumber = (EmergencyNumber[]) Arrays.copyOf(this.mOutgoingCallEmergencyNumber, this.mNumPhones);
        this.mOutgoingSmsEmergencyNumber = (EmergencyNumber[]) Arrays.copyOf(this.mOutgoingSmsEmergencyNumber, this.mNumPhones);
        this.mTelephonyDisplayInfos = (TelephonyDisplayInfo[]) Arrays.copyOf(this.mTelephonyDisplayInfos, this.mNumPhones);
        int i = this.mNumPhones;
        if (i < oldNumPhones) {
            cutListToSize(this.mCellInfo, i);
            cutListToSize(this.mImsReasonInfo, this.mNumPhones);
            cutListToSize(this.mPreciseDataConnectionStates, this.mNumPhones);
            cutListToSize(this.mBarringInfo, this.mNumPhones);
            return;
        }
        for (int i2 = oldNumPhones; i2 < this.mNumPhones; i2++) {
            this.mCallState[i2] = 0;
            this.mDataActivity[i2] = 0;
            this.mDataConnectionState[i2] = -1;
            this.mVoiceActivationState[i2] = 0;
            this.mDataActivationState[i2] = 0;
            this.mCallIncomingNumber[i2] = "";
            this.mServiceState[i2] = new ServiceState();
            this.mSignalStrength[i2] = null;
            this.mUserMobileDataState[i2] = false;
            this.mMessageWaiting[i2] = false;
            this.mCallForwarding[i2] = false;
            this.mCellIdentity[i2] = null;
            this.mCellInfo.add(i2, null);
            this.mImsReasonInfo.add(i2, null);
            this.mSrvccState[i2] = -1;
            this.mCallDisconnectCause[i2] = -1;
            this.mCallPreciseDisconnectCause[i2] = -1;
            this.mCallQuality[i2] = createCallQuality();
            this.mCallAttributes[i2] = new CallAttributes(createPreciseCallState(), 0, createCallQuality());
            this.mCallNetworkType[i2] = 0;
            this.mPreciseCallState[i2] = createPreciseCallState();
            this.mRingingCallState[i2] = 0;
            this.mForegroundCallState[i2] = 0;
            this.mBackgroundCallState[i2] = 0;
            this.mPreciseDataConnectionStates.add(new HashMap());
            this.mBarringInfo.add(i2, new BarringInfo());
            this.mTelephonyDisplayInfos[i2] = null;
        }
    }

    private void cutListToSize(List list, int size) {
        if (list == null) {
            return;
        }
        while (list.size() > size) {
            list.remove(list.size() - 1);
        }
    }

    public TelephonyRegistry(Context context, ConfigurationProvider configurationProvider) {
        this.mCellInfo = null;
        this.mImsReasonInfo = null;
        this.mBarringInfo = null;
        this.mPreciseDataConnectionStates = new ArrayList();
        CellLocation.getEmpty();
        this.mContext = context;
        this.mConfigurationProvider = configurationProvider;
        this.mBatteryStats = BatteryStatsService.getService();
        int numPhones = getTelephonyManager().getActiveModemCount();
        this.mNumPhones = numPhones;
        this.mCallState = new int[numPhones];
        this.mDataActivity = new int[numPhones];
        this.mDataConnectionState = new int[numPhones];
        this.mDataConnectionNetworkType = new int[numPhones];
        this.mCallIncomingNumber = new String[numPhones];
        this.mServiceState = new ServiceState[numPhones];
        this.mVoiceActivationState = new int[numPhones];
        this.mDataActivationState = new int[numPhones];
        this.mUserMobileDataState = new boolean[numPhones];
        this.mSignalStrength = new SignalStrength[numPhones];
        this.mMessageWaiting = new boolean[numPhones];
        this.mCallForwarding = new boolean[numPhones];
        this.mCellIdentity = new CellIdentity[numPhones];
        this.mSrvccState = new int[numPhones];
        this.mPreciseCallState = new PreciseCallState[numPhones];
        this.mForegroundCallState = new int[numPhones];
        this.mBackgroundCallState = new int[numPhones];
        this.mRingingCallState = new int[numPhones];
        this.mCallDisconnectCause = new int[numPhones];
        this.mCallPreciseDisconnectCause = new int[numPhones];
        this.mCallQuality = new CallQuality[numPhones];
        this.mCallNetworkType = new int[numPhones];
        this.mCallAttributes = new CallAttributes[numPhones];
        this.mPreciseDataConnectionStates = new ArrayList();
        this.mCellInfo = new ArrayList<>();
        this.mImsReasonInfo = new ArrayList();
        this.mEmergencyNumberList = new HashMap();
        this.mOutgoingCallEmergencyNumber = new EmergencyNumber[numPhones];
        this.mOutgoingSmsEmergencyNumber = new EmergencyNumber[numPhones];
        this.mBarringInfo = new ArrayList();
        this.mTelephonyDisplayInfos = new TelephonyDisplayInfo[numPhones];
        for (int i = 0; i < numPhones; i++) {
            this.mCallState[i] = 0;
            this.mDataActivity[i] = 0;
            this.mDataConnectionState[i] = -1;
            this.mVoiceActivationState[i] = 0;
            this.mDataActivationState[i] = 0;
            this.mCallIncomingNumber[i] = "";
            this.mServiceState[i] = new ServiceState();
            this.mSignalStrength[i] = null;
            this.mUserMobileDataState[i] = false;
            this.mMessageWaiting[i] = false;
            this.mCallForwarding[i] = false;
            this.mCellIdentity[i] = null;
            this.mCellInfo.add(i, null);
            this.mImsReasonInfo.add(i, null);
            this.mSrvccState[i] = -1;
            this.mCallDisconnectCause[i] = -1;
            this.mCallPreciseDisconnectCause[i] = -1;
            this.mCallQuality[i] = createCallQuality();
            this.mCallAttributes[i] = new CallAttributes(createPreciseCallState(), 0, createCallQuality());
            this.mCallNetworkType[i] = 0;
            this.mPreciseCallState[i] = createPreciseCallState();
            this.mRingingCallState[i] = 0;
            this.mForegroundCallState[i] = 0;
            this.mBackgroundCallState[i] = 0;
            this.mPreciseDataConnectionStates.add(new HashMap());
            this.mBarringInfo.add(i, new BarringInfo());
            this.mTelephonyDisplayInfos[i] = null;
        }
        this.mAppOps = (AppOpsManager) this.mContext.getSystemService(AppOpsManager.class);
    }

    public void systemRunning() {
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.USER_SWITCHED");
        filter.addAction("android.intent.action.USER_REMOVED");
        filter.addAction("android.telephony.action.DEFAULT_SUBSCRIPTION_CHANGED");
        filter.addAction("android.telephony.action.MULTI_SIM_CONFIG_CHANGED");
        log("systemRunning register for intents");
        this.mContext.registerReceiver(this.mBroadcastReceiver, filter);
    }

    public void addOnSubscriptionsChangedListener(String callingPackage, String callingFeatureId, IOnSubscriptionsChangedListener callback) {
        UserHandle.getCallingUserId();
        this.mAppOps.checkPackage(Binder.getCallingUid(), callingPackage);
        synchronized (this.mRecords) {
            IBinder b = callback.asBinder();
            Record r = add(b, Binder.getCallingUid(), Binder.getCallingPid(), false);
            if (r == null) {
                return;
            }
            r.context = this.mContext;
            r.onSubscriptionsChangedListenerCallback = callback;
            r.callingPackage = callingPackage;
            r.callingFeatureId = callingFeatureId;
            r.callerUid = Binder.getCallingUid();
            r.callerPid = Binder.getCallingPid();
            r.events = 0;
            if (this.mHasNotifySubscriptionInfoChangedOccurred) {
                try {
                    r.onSubscriptionsChangedListenerCallback.onSubscriptionsChanged();
                } catch (RemoteException e) {
                    remove(r.binder);
                }
            } else {
                log("listen oscl: mHasNotifySubscriptionInfoChangedOccurred==false no callback");
            }
        }
    }

    public void removeOnSubscriptionsChangedListener(String pkgForDebug, IOnSubscriptionsChangedListener callback) {
        remove(callback.asBinder());
    }

    public void addOnOpportunisticSubscriptionsChangedListener(String callingPackage, String callingFeatureId, IOnSubscriptionsChangedListener callback) {
        UserHandle.getCallingUserId();
        this.mAppOps.checkPackage(Binder.getCallingUid(), callingPackage);
        synchronized (this.mRecords) {
            IBinder b = callback.asBinder();
            Record r = add(b, Binder.getCallingUid(), Binder.getCallingPid(), false);
            if (r == null) {
                return;
            }
            r.context = this.mContext;
            r.onOpportunisticSubscriptionsChangedListenerCallback = callback;
            r.callingPackage = callingPackage;
            r.callingFeatureId = callingFeatureId;
            r.callerUid = Binder.getCallingUid();
            r.callerPid = Binder.getCallingPid();
            r.events = 0;
            if (this.mHasNotifyOpportunisticSubscriptionInfoChangedOccurred) {
                try {
                    r.onOpportunisticSubscriptionsChangedListenerCallback.onSubscriptionsChanged();
                } catch (RemoteException e) {
                    remove(r.binder);
                }
            } else {
                log("listen ooscl: hasNotifyOpptSubInfoChangedOccurred==false no callback");
            }
        }
    }

    public void notifySubscriptionInfoChanged() {
        synchronized (this.mRecords) {
            if (!this.mHasNotifySubscriptionInfoChangedOccurred) {
                log("notifySubscriptionInfoChanged: first invocation mRecords.size=" + this.mRecords.size());
            }
            this.mHasNotifySubscriptionInfoChangedOccurred = true;
            this.mRemoveList.clear();
            for (Record r : this.mRecords) {
                if (r.matchOnSubscriptionsChangedListener()) {
                    try {
                        r.onSubscriptionsChangedListenerCallback.onSubscriptionsChanged();
                    } catch (RemoteException e) {
                        this.mRemoveList.add(r.binder);
                    }
                }
            }
            handleRemoveListLocked();
        }
    }

    public void notifyOpportunisticSubscriptionInfoChanged() {
        synchronized (this.mRecords) {
            if (!this.mHasNotifyOpportunisticSubscriptionInfoChangedOccurred) {
                log("notifyOpptSubscriptionInfoChanged: first invocation mRecords.size=" + this.mRecords.size());
            }
            this.mHasNotifyOpportunisticSubscriptionInfoChangedOccurred = true;
            this.mRemoveList.clear();
            for (Record r : this.mRecords) {
                if (r.matchOnOpportunisticSubscriptionsChangedListener()) {
                    try {
                        r.onOpportunisticSubscriptionsChangedListenerCallback.onSubscriptionsChanged();
                    } catch (RemoteException e) {
                        this.mRemoveList.add(r.binder);
                    }
                }
            }
            handleRemoveListLocked();
        }
    }

    @Deprecated
    public void listen(String callingPackage, IPhoneStateListener callback, int events, boolean notifyNow) throws Throwable {
        listenWithFeature(callingPackage, null, callback, events, notifyNow);
    }

    public void listenWithFeature(String callingPackage, String callingFeatureId, IPhoneStateListener callback, int events, boolean notifyNow) throws Throwable {
        listenForSubscriber(Integer.MAX_VALUE, callingPackage, callingFeatureId, callback, events, notifyNow);
    }

    public void listenForSubscriber(int subId, String callingPackage, String callingFeatureId, IPhoneStateListener callback, int events, boolean notifyNow) throws Throwable {
        listen(callingPackage, callingFeatureId, callback, events, notifyNow, subId);
    }

    private void listen(String callingPackage, String callingFeatureId, IPhoneStateListener callback, int events, boolean notifyNow, int subId) throws Throwable {
        int callerUserId = UserHandle.getCallingUserId();
        this.mAppOps.checkPackage(Binder.getCallingUid(), callingPackage);
        String str = "listen: E pkg=" + pii(callingPackage) + " uid=" + Binder.getCallingUid() + " events=0x" + Integer.toHexString(events) + " notifyNow=" + notifyNow + " subId=" + subId + " myUserId=" + UserHandle.myUserId() + " callerUserId=" + callerUserId;
        this.mListenLog.log(str);
        if (events == 0) {
            remove(callback.asBinder());
            return;
        }
        if (!checkListenerPermission(events, subId, callingPackage, callingFeatureId, "listen")) {
            return;
        }
        int phoneId = getPhoneIdFromSubId(subId);
        synchronized (this.mRecords) {
            try {
                IBinder b = callback.asBinder();
                boolean doesLimitApply = (Binder.getCallingUid() == 1000 || Binder.getCallingUid() == 1001 || Binder.getCallingUid() == Process.myUid()) ? false : true;
                Record r = add(b, Binder.getCallingUid(), Binder.getCallingPid(), doesLimitApply);
                if (r == null) {
                    return;
                }
                r.context = this.mContext;
                try {
                    r.callback = callback;
                    r.callingPackage = callingPackage;
                    try {
                        r.callingFeatureId = callingFeatureId;
                        r.callerUid = Binder.getCallingUid();
                        r.callerPid = Binder.getCallingPid();
                        if (!SubscriptionManager.isValidSubscriptionId(subId)) {
                            r.subId = Integer.MAX_VALUE;
                        } else {
                            r.subId = subId;
                        }
                        r.phoneId = phoneId;
                        r.events = events;
                        if (notifyNow && validatePhoneId(phoneId)) {
                            if ((events & 1) != 0) {
                                try {
                                    ServiceState rawSs = new ServiceState(this.mServiceState[phoneId]);
                                    if (!checkFineLocationAccess(r, 29)) {
                                        if (checkCoarseLocationAccess(r, 29)) {
                                            try {
                                                try {
                                                    r.callback.onServiceStateChanged(rawSs.createLocationInfoSanitizedCopy(false));
                                                } catch (RemoteException e) {
                                                    IBinder b2 = r.binder;
                                                    remove(b2);
                                                }
                                            } catch (RemoteException e2) {
                                            }
                                        } else {
                                            try {
                                                try {
                                                    r.callback.onServiceStateChanged(rawSs.createLocationInfoSanitizedCopy(true));
                                                } catch (RemoteException e3) {
                                                    IBinder b3 = r.binder;
                                                    remove(b3);
                                                }
                                            } catch (RemoteException e4) {
                                            }
                                        }
                                    } else {
                                        try {
                                            r.callback.onServiceStateChanged(rawSs);
                                        } catch (RemoteException e5) {
                                            IBinder b4 = r.binder;
                                            remove(b4);
                                        }
                                    }
                                } catch (RemoteException e6) {
                                }
                            }
                            if ((events & 2) != 0) {
                                try {
                                    if (this.mSignalStrength[phoneId] != null) {
                                        int gsmSignalStrength = this.mSignalStrength[phoneId].getGsmSignalStrength();
                                        r.callback.onSignalStrengthChanged(gsmSignalStrength == 99 ? -1 : gsmSignalStrength);
                                    }
                                } catch (RemoteException e7) {
                                    remove(r.binder);
                                }
                            }
                            if ((events & 4) != 0) {
                                try {
                                    r.callback.onMessageWaitingIndicatorChanged(this.mMessageWaiting[phoneId]);
                                } catch (RemoteException e8) {
                                    remove(r.binder);
                                }
                            }
                            if ((events & 8) != 0) {
                                try {
                                    r.callback.onCallForwardingIndicatorChanged(this.mCallForwarding[phoneId]);
                                } catch (RemoteException e9) {
                                    remove(r.binder);
                                }
                            }
                            if (validateEventsAndUserLocked(r, 16)) {
                                try {
                                    if (checkCoarseLocationAccess(r, 1) && checkFineLocationAccess(r, 29)) {
                                        r.callback.onCellLocationChanged(this.mCellIdentity[phoneId]);
                                    }
                                } catch (RemoteException e10) {
                                    remove(r.binder);
                                }
                            }
                            if ((events & 32) != 0) {
                                try {
                                    r.callback.onCallStateChanged(this.mCallState[phoneId], getCallIncomingNumber(r, phoneId));
                                } catch (RemoteException e11) {
                                    remove(r.binder);
                                }
                            }
                            if ((events & 64) != 0) {
                                try {
                                    r.callback.onDataConnectionStateChanged(this.mDataConnectionState[phoneId], this.mDataConnectionNetworkType[phoneId]);
                                } catch (RemoteException e12) {
                                    remove(r.binder);
                                }
                            }
                            if ((events & 128) != 0) {
                                try {
                                    r.callback.onDataActivity(this.mDataActivity[phoneId]);
                                } catch (RemoteException e13) {
                                    remove(r.binder);
                                }
                            }
                            if ((events & 256) != 0) {
                                try {
                                    if (this.mSignalStrength[phoneId] != null) {
                                        r.callback.onSignalStrengthsChanged(this.mSignalStrength[phoneId]);
                                    }
                                } catch (RemoteException e14) {
                                    remove(r.binder);
                                }
                            }
                            if ((events & 512) != 0) {
                                updateReportSignalStrengthDecision(r.subId);
                                try {
                                    if (this.mSignalStrength[phoneId] != null) {
                                        r.callback.onSignalStrengthsChanged(this.mSignalStrength[phoneId]);
                                    }
                                } catch (RemoteException e15) {
                                    remove(r.binder);
                                }
                            }
                            if (validateEventsAndUserLocked(r, 1024)) {
                                try {
                                    if (checkCoarseLocationAccess(r, 1) && checkFineLocationAccess(r, 29)) {
                                        r.callback.onCellInfoChanged(this.mCellInfo.get(phoneId));
                                    }
                                } catch (RemoteException e16) {
                                    remove(r.binder);
                                }
                            }
                            if ((events & 2048) != 0) {
                                try {
                                    r.callback.onPreciseCallStateChanged(this.mPreciseCallState[phoneId]);
                                } catch (RemoteException e17) {
                                    remove(r.binder);
                                }
                            }
                            if ((33554432 & events) != 0) {
                                try {
                                    r.callback.onCallDisconnectCauseChanged(this.mCallDisconnectCause[phoneId], this.mCallPreciseDisconnectCause[phoneId]);
                                } catch (RemoteException e18) {
                                    remove(r.binder);
                                }
                            }
                            if ((134217728 & events) != 0) {
                                try {
                                    r.callback.onImsCallDisconnectCauseChanged(this.mImsReasonInfo.get(phoneId));
                                } catch (RemoteException e19) {
                                    remove(r.binder);
                                }
                            }
                            if ((events & 4096) != 0) {
                                try {
                                    for (PreciseDataConnectionState pdcs : this.mPreciseDataConnectionStates.get(phoneId).values()) {
                                        r.callback.onPreciseDataConnectionStateChanged(pdcs);
                                    }
                                } catch (RemoteException e20) {
                                    remove(r.binder);
                                }
                            }
                            if ((65536 & events) != 0) {
                                try {
                                    r.callback.onCarrierNetworkChange(this.mCarrierNetworkChangeState);
                                } catch (RemoteException e21) {
                                    remove(r.binder);
                                }
                            }
                            if ((131072 & events) != 0) {
                                try {
                                    r.callback.onVoiceActivationStateChanged(this.mVoiceActivationState[phoneId]);
                                } catch (RemoteException e22) {
                                    remove(r.binder);
                                }
                            }
                            if ((262144 & events) != 0) {
                                try {
                                    r.callback.onDataActivationStateChanged(this.mDataActivationState[phoneId]);
                                } catch (RemoteException e23) {
                                    remove(r.binder);
                                }
                            }
                            if ((524288 & events) != 0) {
                                try {
                                    r.callback.onUserMobileDataStateChanged(this.mUserMobileDataState[phoneId]);
                                } catch (RemoteException e24) {
                                    remove(r.binder);
                                }
                            }
                            if ((1048576 & events) != 0) {
                                try {
                                    if (this.mTelephonyDisplayInfos[phoneId] != null) {
                                        r.callback.onDisplayInfoChanged(this.mTelephonyDisplayInfos[phoneId]);
                                    }
                                } catch (RemoteException e25) {
                                    remove(r.binder);
                                }
                            }
                            if ((16777216 & events) != 0) {
                                try {
                                    r.callback.onEmergencyNumberListChanged(this.mEmergencyNumberList);
                                } catch (RemoteException e26) {
                                    remove(r.binder);
                                }
                            }
                            if ((2097152 & events) != 0) {
                                try {
                                    r.callback.onPhoneCapabilityChanged(this.mPhoneCapability);
                                } catch (RemoteException e27) {
                                    remove(r.binder);
                                }
                            }
                            if ((4194304 & events) != 0) {
                                try {
                                    r.callback.onActiveDataSubIdChanged(this.mActiveDataSubId);
                                } catch (RemoteException e28) {
                                    remove(r.binder);
                                }
                            }
                            if ((8388608 & events) != 0) {
                                try {
                                    r.callback.onRadioPowerStateChanged(this.mRadioPowerState);
                                } catch (RemoteException e29) {
                                    remove(r.binder);
                                }
                            }
                            if ((events & 16384) != 0) {
                                try {
                                    r.callback.onSrvccStateChanged(this.mSrvccState[phoneId]);
                                } catch (RemoteException e30) {
                                    remove(r.binder);
                                }
                            }
                            if ((67108864 & events) != 0) {
                                try {
                                    r.callback.onCallAttributesChanged(this.mCallAttributes[phoneId]);
                                } catch (RemoteException e31) {
                                    remove(r.binder);
                                }
                            }
                            if ((Integer.MIN_VALUE & events) != 0) {
                                BarringInfo barringInfo = this.mBarringInfo.get(phoneId);
                                BarringInfo biNoLocation = barringInfo != null ? barringInfo.createLocationInfoSanitizedCopy() : null;
                                try {
                                    r.callback.onBarringInfoChanged(checkFineLocationAccess(r, 1) ? barringInfo : biNoLocation);
                                } catch (RemoteException e32) {
                                    remove(r.binder);
                                }
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    private void updateReportSignalStrengthDecision(int subscriptionId) {
        synchronized (this.mRecords) {
            TelephonyManager telephonyManager = (TelephonyManager) this.mContext.getSystemService("phone");
            for (Record r : this.mRecords) {
                if (r.matchPhoneStateListenerEvent(512)) {
                    telephonyManager.createForSubscriptionId(subscriptionId).setAlwaysReportSignalStrength(true);
                    return;
                }
            }
            telephonyManager.createForSubscriptionId(subscriptionId).setAlwaysReportSignalStrength(false);
        }
    }

    private String getCallIncomingNumber(Record record, int phoneId) {
        return record.canReadCallLog() ? this.mCallIncomingNumber[phoneId] : "";
    }

    private Record add(IBinder binder, int callingUid, int callingPid, boolean doesLimitApply) {
        synchronized (this.mRecords) {
            int N = this.mRecords.size();
            int numRecordsForPid = 0;
            for (int i = 0; i < N; i++) {
                Record r = this.mRecords.get(i);
                if (binder == r.binder) {
                    return r;
                }
                if (r.callerPid == callingPid) {
                    numRecordsForPid++;
                }
            }
            int registrationLimit = this.mConfigurationProvider.getRegistrationLimit();
            if (doesLimitApply && registrationLimit >= 1 && numRecordsForPid >= registrationLimit) {
                String errorMsg = "Pid " + callingPid + " has exceeded the number of permissible registered listeners. Ignoring request to add.";
                loge(errorMsg);
                if (this.mConfigurationProvider.isRegistrationLimitEnabledInPlatformCompat(callingUid)) {
                    throw new IllegalStateException(errorMsg);
                }
            } else if (doesLimitApply && numRecordsForPid >= 25) {
                Rlog.w(TAG, "Pid " + callingPid + " has exceeded half the number of permissible registered listeners. Now at " + numRecordsForPid);
            }
            Record r2 = new Record();
            r2.binder = binder;
            r2.deathRecipient = new TelephonyRegistryDeathRecipient(binder);
            try {
                binder.linkToDeath(r2.deathRecipient, 0);
                this.mRecords.add(r2);
                return r2;
            } catch (RemoteException e) {
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void remove(IBinder binder) {
        synchronized (this.mRecords) {
            int recordCount = this.mRecords.size();
            for (int i = 0; i < recordCount; i++) {
                Record r = this.mRecords.get(i);
                if (r.binder == binder) {
                    if (r.deathRecipient != null) {
                        try {
                            binder.unlinkToDeath(r.deathRecipient, 0);
                        } catch (NoSuchElementException e) {
                        }
                    }
                    this.mRecords.remove(i);
                    if (r.matchPhoneStateListenerEvent(512)) {
                        updateReportSignalStrengthDecision(r.subId);
                    }
                    return;
                }
            }
        }
    }

    public void notifyCallStateForAllSubs(int state, String phoneNumber) {
        if (!checkNotifyPermission("notifyCallState()")) {
            return;
        }
        synchronized (this.mRecords) {
            for (Record r : this.mRecords) {
                if (r.matchPhoneStateListenerEvent(32) && r.subId == Integer.MAX_VALUE) {
                    try {
                        String phoneNumberOrEmpty = r.canReadCallLog() ? phoneNumber : "";
                        r.callback.onCallStateChanged(state, phoneNumberOrEmpty);
                    } catch (RemoteException e) {
                        this.mRemoveList.add(r.binder);
                    }
                }
            }
            handleRemoveListLocked();
        }
        broadcastCallStateChanged(state, phoneNumber, -1, -1);
    }

    public void notifyCallState(int phoneId, int subId, int state, String incomingNumber) {
        if (!checkNotifyPermission("notifyCallState()")) {
            return;
        }
        synchronized (this.mRecords) {
            if (validatePhoneId(phoneId)) {
                this.mCallState[phoneId] = state;
                this.mCallIncomingNumber[phoneId] = incomingNumber;
                for (Record r : this.mRecords) {
                    if (r.matchPhoneStateListenerEvent(32) && r.subId == subId && r.subId != Integer.MAX_VALUE) {
                        try {
                            String incomingNumberOrEmpty = getCallIncomingNumber(r, phoneId);
                            r.callback.onCallStateChanged(state, incomingNumberOrEmpty);
                        } catch (RemoteException e) {
                            this.mRemoveList.add(r.binder);
                        }
                    }
                }
                handleRemoveListLocked();
            } else {
                handleRemoveListLocked();
            }
            throw th;
        }
        broadcastCallStateChanged(state, incomingNumber, phoneId, subId);
    }

    public void notifyServiceStateForPhoneId(int phoneId, int subId, ServiceState state) {
        ServiceState stateToSend;
        if (!checkNotifyPermission("notifyServiceState()")) {
            return;
        }
        synchronized (this.mRecords) {
            String str = "notifyServiceStateForSubscriber: subId=" + subId + " phoneId=" + phoneId + " state=" + state;
            this.mLocalLog.log(str);
            if (validatePhoneId(phoneId) && SubscriptionManager.isValidSubscriptionId(subId)) {
                this.mServiceState[phoneId] = state;
                for (Record r : this.mRecords) {
                    if (r.matchPhoneStateListenerEvent(1) && idMatch(r.subId, subId, phoneId)) {
                        try {
                            if (checkFineLocationAccess(r, 29)) {
                                stateToSend = new ServiceState(state);
                            } else if (checkCoarseLocationAccess(r, 29)) {
                                stateToSend = state.createLocationInfoSanitizedCopy(false);
                            } else {
                                stateToSend = state.createLocationInfoSanitizedCopy(true);
                            }
                            r.callback.onServiceStateChanged(stateToSend);
                        } catch (RemoteException e) {
                            this.mRemoveList.add(r.binder);
                        }
                    }
                }
            } else {
                log("notifyServiceStateForSubscriber: INVALID phoneId=" + phoneId + " or subId=" + subId);
            }
            handleRemoveListLocked();
        }
        broadcastServiceStateChanged(state, phoneId, subId);
    }

    public void notifySimActivationStateChangedForPhoneId(int phoneId, int subId, int activationType, int activationState) {
        if (!checkNotifyPermission("notifySimActivationState()")) {
            return;
        }
        synchronized (this.mRecords) {
            if (validatePhoneId(phoneId)) {
                if (activationType != 0) {
                    if (activationType != 1) {
                        return;
                    } else {
                        this.mDataActivationState[phoneId] = activationState;
                    }
                } else {
                    this.mVoiceActivationState[phoneId] = activationState;
                }
                for (Record r : this.mRecords) {
                    if (activationType == 0) {
                        try {
                            if (r.matchPhoneStateListenerEvent(131072) && idMatch(r.subId, subId, phoneId)) {
                                r.callback.onVoiceActivationStateChanged(activationState);
                            }
                            if (activationType != 1 && r.matchPhoneStateListenerEvent(262144) && idMatch(r.subId, subId, phoneId)) {
                                r.callback.onDataActivationStateChanged(activationState);
                            }
                        } catch (RemoteException e) {
                            this.mRemoveList.add(r.binder);
                        }
                    } else if (activationType != 1) {
                    }
                }
            } else {
                log("notifySimActivationStateForPhoneId: INVALID phoneId=" + phoneId);
            }
            handleRemoveListLocked();
        }
    }

    public void notifySignalStrengthForPhoneId(int phoneId, int subId, SignalStrength signalStrength) {
        if (!checkNotifyPermission("notifySignalStrength()")) {
            return;
        }
        synchronized (this.mRecords) {
            if (validatePhoneId(phoneId)) {
                this.mSignalStrength[phoneId] = signalStrength;
                for (Record r : this.mRecords) {
                    if ((r.matchPhoneStateListenerEvent(256) || r.matchPhoneStateListenerEvent(512)) && idMatch(r.subId, subId, phoneId)) {
                        try {
                            r.callback.onSignalStrengthsChanged(new SignalStrength(signalStrength));
                        } catch (RemoteException e) {
                            this.mRemoveList.add(r.binder);
                        }
                        if (!r.matchPhoneStateListenerEvent(2) && idMatch(r.subId, subId, phoneId)) {
                            try {
                                int gsmSignalStrength = signalStrength.getGsmSignalStrength();
                                int ss = gsmSignalStrength == 99 ? -1 : gsmSignalStrength;
                                r.callback.onSignalStrengthChanged(ss);
                            } catch (RemoteException e2) {
                                this.mRemoveList.add(r.binder);
                            }
                        }
                    } else if (!r.matchPhoneStateListenerEvent(2)) {
                    }
                    throw th;
                }
            }
            log("notifySignalStrengthForPhoneId: invalid phoneId=" + phoneId);
            handleRemoveListLocked();
        }
        broadcastSignalStrengthChanged(signalStrength, phoneId, subId);
    }

    public void notifyCarrierNetworkChange(boolean active) {
        int[] subIds = Arrays.stream(SubscriptionManager.from(this.mContext).getCompleteActiveSubscriptionIdList()).filter(new IntPredicate() { // from class: com.android.server.-$$Lambda$TelephonyRegistry$1bce8MzlZGgWfCoSiX5udUvFDQ0
            @Override // java.util.function.IntPredicate
            public final boolean test(int i) {
                return this.f$0.lambda$notifyCarrierNetworkChange$0$TelephonyRegistry(i);
            }
        }).toArray();
        if (ArrayUtils.isEmpty(subIds)) {
            loge("notifyCarrierNetworkChange without carrier privilege");
            throw new SecurityException("notifyCarrierNetworkChange without carrier privilege");
        }
        synchronized (this.mRecords) {
            this.mCarrierNetworkChangeState = active;
            for (int subId : subIds) {
                int phoneId = getPhoneIdFromSubId(subId);
                for (Record r : this.mRecords) {
                    if (r.matchPhoneStateListenerEvent(65536) && idMatch(r.subId, subId, phoneId)) {
                        try {
                            r.callback.onCarrierNetworkChange(active);
                        } catch (RemoteException e) {
                            this.mRemoveList.add(r.binder);
                        }
                    }
                }
            }
            handleRemoveListLocked();
        }
    }

    public /* synthetic */ boolean lambda$notifyCarrierNetworkChange$0$TelephonyRegistry(int i) {
        return TelephonyPermissions.checkCarrierPrivilegeForSubId(this.mContext, i);
    }

    public void notifyCellInfo(List<CellInfo> cellInfo) {
        notifyCellInfoForSubscriber(Integer.MAX_VALUE, cellInfo);
    }

    public void notifyCellInfoForSubscriber(int subId, List<CellInfo> cellInfo) {
        if (!checkNotifyPermission("notifyCellInfoForSubscriber()")) {
            return;
        }
        int phoneId = getPhoneIdFromSubId(subId);
        synchronized (this.mRecords) {
            if (validatePhoneId(phoneId)) {
                this.mCellInfo.set(phoneId, cellInfo);
                for (Record r : this.mRecords) {
                    if (validateEventsAndUserLocked(r, 1024) && idMatch(r.subId, subId, phoneId) && checkCoarseLocationAccess(r, 1) && checkFineLocationAccess(r, 29)) {
                        try {
                            r.callback.onCellInfoChanged(cellInfo);
                        } catch (RemoteException e) {
                            this.mRemoveList.add(r.binder);
                        }
                    }
                }
                handleRemoveListLocked();
            } else {
                handleRemoveListLocked();
            }
            throw th;
        }
    }

    public void notifyMessageWaitingChangedForPhoneId(int phoneId, int subId, boolean mwi) {
        if (!checkNotifyPermission("notifyMessageWaitingChanged()")) {
            return;
        }
        synchronized (this.mRecords) {
            if (validatePhoneId(phoneId)) {
                this.mMessageWaiting[phoneId] = mwi;
                for (Record r : this.mRecords) {
                    if (r.matchPhoneStateListenerEvent(4) && idMatch(r.subId, subId, phoneId)) {
                        try {
                            r.callback.onMessageWaitingIndicatorChanged(mwi);
                        } catch (RemoteException e) {
                            this.mRemoveList.add(r.binder);
                        }
                    }
                }
                handleRemoveListLocked();
            } else {
                handleRemoveListLocked();
            }
            throw th;
        }
    }

    public void notifyUserMobileDataStateChangedForPhoneId(int phoneId, int subId, boolean state) {
        if (!checkNotifyPermission("notifyUserMobileDataStateChanged()")) {
            return;
        }
        synchronized (this.mRecords) {
            if (validatePhoneId(phoneId)) {
                this.mUserMobileDataState[phoneId] = state;
                for (Record r : this.mRecords) {
                    if (r.matchPhoneStateListenerEvent(524288) && idMatch(r.subId, subId, phoneId)) {
                        try {
                            r.callback.onUserMobileDataStateChanged(state);
                        } catch (RemoteException e) {
                            this.mRemoveList.add(r.binder);
                        }
                    }
                }
                handleRemoveListLocked();
            } else {
                handleRemoveListLocked();
            }
            throw th;
        }
    }

    public void notifyDisplayInfoChanged(int phoneId, int subId, TelephonyDisplayInfo telephonyDisplayInfo) {
        if (!checkNotifyPermission("notifyDisplayInfoChanged()")) {
            return;
        }
        synchronized (this.mRecords) {
            if (validatePhoneId(phoneId)) {
                this.mTelephonyDisplayInfos[phoneId] = telephonyDisplayInfo;
                for (Record r : this.mRecords) {
                    if (r.matchPhoneStateListenerEvent(1048576) && idMatchWithoutDefaultPhoneCheck(r.subId, subId)) {
                        try {
                            r.callback.onDisplayInfoChanged(telephonyDisplayInfo);
                        } catch (RemoteException e) {
                            this.mRemoveList.add(r.binder);
                        }
                    }
                }
                handleRemoveListLocked();
            } else {
                handleRemoveListLocked();
            }
            throw th;
        }
    }

    public void notifyCallForwardingChanged(boolean cfi) {
        notifyCallForwardingChangedForSubscriber(Integer.MAX_VALUE, cfi);
    }

    public void notifyCallForwardingChangedForSubscriber(int subId, boolean cfi) {
        if (!checkNotifyPermission("notifyCallForwardingChanged()")) {
            return;
        }
        int phoneId = getPhoneIdFromSubId(subId);
        synchronized (this.mRecords) {
            if (validatePhoneId(phoneId)) {
                this.mCallForwarding[phoneId] = cfi;
                for (Record r : this.mRecords) {
                    if (r.matchPhoneStateListenerEvent(8) && idMatch(r.subId, subId, phoneId)) {
                        try {
                            r.callback.onCallForwardingIndicatorChanged(cfi);
                        } catch (RemoteException e) {
                            this.mRemoveList.add(r.binder);
                        }
                    }
                }
                handleRemoveListLocked();
            } else {
                handleRemoveListLocked();
            }
            throw th;
        }
    }

    public void notifyDataActivity(int state) {
        notifyDataActivityForSubscriber(Integer.MAX_VALUE, state);
    }

    public void notifyDataActivityForSubscriber(int subId, int state) {
        if (!checkNotifyPermission("notifyDataActivity()")) {
            return;
        }
        int phoneId = getPhoneIdFromSubId(subId);
        synchronized (this.mRecords) {
            if (validatePhoneId(phoneId)) {
                this.mDataActivity[phoneId] = state;
                for (Record r : this.mRecords) {
                    if (r.matchPhoneStateListenerEvent(128) && idMatch(r.subId, subId, phoneId)) {
                        try {
                            r.callback.onDataActivity(state);
                        } catch (RemoteException e) {
                            this.mRemoveList.add(r.binder);
                        }
                    }
                }
                handleRemoveListLocked();
            } else {
                handleRemoveListLocked();
            }
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00b4 A[Catch: all -> 0x011d, TryCatch #2 {, blocks: (B:10:0x0024, B:12:0x002a, B:14:0x002e, B:16:0x0034, B:18:0x003a, B:19:0x007a, B:21:0x0080, B:23:0x008e, B:25:0x0096, B:28:0x009d, B:30:0x00a5, B:33:0x00b4, B:40:0x00e4, B:41:0x00ea, B:43:0x00f0, B:45:0x00fe, B:47:0x0106, B:50:0x010d, B:38:0x00ca, B:52:0x0115, B:53:0x0118), top: B:63:0x0024, inners: #0, #1 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:36:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:38:0x00ca A[Catch: all -> 0x011d, TryCatch #2 {, blocks: (B:10:0x0024, B:12:0x002a, B:14:0x002e, B:16:0x0034, B:18:0x003a, B:19:0x007a, B:21:0x0080, B:23:0x008e, B:25:0x0096, B:28:0x009d, B:30:0x00a5, B:33:0x00b4, B:40:0x00e4, B:41:0x00ea, B:43:0x00f0, B:45:0x00fe, B:47:0x0106, B:50:0x010d, B:38:0x00ca, B:52:0x0115, B:53:0x0118), top: B:63:0x0024, inners: #0, #1 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x00e4 A[Catch: all -> 0x011d, TryCatch #2 {, blocks: (B:10:0x0024, B:12:0x002a, B:14:0x002e, B:16:0x0034, B:18:0x003a, B:19:0x007a, B:21:0x0080, B:23:0x008e, B:25:0x0096, B:28:0x009d, B:30:0x00a5, B:33:0x00b4, B:40:0x00e4, B:41:0x00ea, B:43:0x00f0, B:45:0x00fe, B:47:0x0106, B:50:0x010d, B:38:0x00ca, B:52:0x0115, B:53:0x0118), top: B:63:0x0024, inners: #0, #1 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00f0 A[Catch: all -> 0x011d, TryCatch #2 {, blocks: (B:10:0x0024, B:12:0x002a, B:14:0x002e, B:16:0x0034, B:18:0x003a, B:19:0x007a, B:21:0x0080, B:23:0x008e, B:25:0x0096, B:28:0x009d, B:30:0x00a5, B:33:0x00b4, B:40:0x00e4, B:41:0x00ea, B:43:0x00f0, B:45:0x00fe, B:47:0x0106, B:50:0x010d, B:38:0x00ca, B:52:0x0115, B:53:0x0118), top: B:63:0x0024, inners: #0, #1 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x0115 A[Catch: all -> 0x011d, TryCatch #2 {, blocks: (B:10:0x0024, B:12:0x002a, B:14:0x002e, B:16:0x0034, B:18:0x003a, B:19:0x007a, B:21:0x0080, B:23:0x008e, B:25:0x0096, B:28:0x009d, B:30:0x00a5, B:33:0x00b4, B:40:0x00e4, B:41:0x00ea, B:43:0x00f0, B:45:0x00fe, B:47:0x0106, B:50:0x010d, B:38:0x00ca, B:52:0x0115, B:53:0x0118), top: B:63:0x0024, inners: #0, #1 }] */
    public void notifyDataConnectionForSubscriber(int phoneId, int subId, int apnType, PreciseDataConnectionState preciseState) {
        boolean z;
        boolean needsNotify;
        if (!checkNotifyPermission("notifyDataConnection()")) {
            return;
        }
        String apn = "";
        int state = -1;
        int networkType = 0;
        if (preciseState != null) {
            apn = preciseState.getDataConnectionApn();
            state = preciseState.getState();
            networkType = preciseState.getNetworkType();
            preciseState.getDataConnectionLinkProperties();
        }
        synchronized (this.mRecords) {
            if (validatePhoneId(phoneId)) {
                if ((apnType & 17) != 0 && (this.mDataConnectionState[phoneId] != state || this.mDataConnectionNetworkType[phoneId] != networkType)) {
                    String str = "onDataConnectionStateChanged(" + dataStateToString(state) + ", " + getNetworkTypeName(networkType) + ") subId=" + subId + ", phoneId=" + phoneId;
                    log(str);
                    this.mLocalLog.log(str);
                    for (Record r : this.mRecords) {
                        if (r.matchPhoneStateListenerEvent(64) && idMatch(r.subId, subId, phoneId)) {
                            try {
                                r.callback.onDataConnectionStateChanged(state, networkType);
                            } catch (RemoteException e) {
                                this.mRemoveList.add(r.binder);
                            }
                        }
                    }
                    handleRemoveListLocked();
                    this.mDataConnectionState[phoneId] = state;
                    this.mDataConnectionNetworkType[phoneId] = networkType;
                    z = true;
                    if (preciseState == null) {
                        if (this.mPreciseDataConnectionStates.get(phoneId).remove(Integer.valueOf(apnType)) != null) {
                            z = false;
                        }
                        needsNotify = z;
                    } else {
                        PreciseDataConnectionState oldPreciseState = this.mPreciseDataConnectionStates.get(phoneId).put(Integer.valueOf(apnType), preciseState);
                        needsNotify = true ^ preciseState.equals(oldPreciseState);
                    }
                    if (needsNotify) {
                        while (r6.hasNext()) {
                            if (!r.matchPhoneStateListenerEvent(4096)) {
                            }
                        }
                        handleRemoveListLocked();
                    } else {
                        handleRemoveListLocked();
                    }
                } else {
                    z = true;
                    if (preciseState == null) {
                        if (this.mPreciseDataConnectionStates.get(phoneId).remove(Integer.valueOf(apnType)) != null) {
                            z = false;
                        }
                        needsNotify = z;
                    } else {
                        PreciseDataConnectionState oldPreciseState2 = this.mPreciseDataConnectionStates.get(phoneId).put(Integer.valueOf(apnType), preciseState);
                        needsNotify = true ^ preciseState.equals(oldPreciseState2);
                    }
                    if (needsNotify) {
                        for (Record r2 : this.mRecords) {
                            if (!r2.matchPhoneStateListenerEvent(4096) && idMatch(r2.subId, subId, phoneId)) {
                                try {
                                    r2.callback.onPreciseDataConnectionStateChanged(preciseState);
                                } catch (RemoteException e2) {
                                    this.mRemoveList.add(r2.binder);
                                }
                            }
                        }
                        handleRemoveListLocked();
                    } else {
                        handleRemoveListLocked();
                    }
                }
            } else {
                handleRemoveListLocked();
            }
            throw th;
        }
        broadcastDataConnectionStateChanged(state, apn, apnType, subId);
    }

    public void notifyDataConnectionFailed(String apnType) {
        loge("This function should not be invoked");
    }

    private void notifyDataConnectionFailedForSubscriber(int phoneId, int subId, int apnType) {
        if (!checkNotifyPermission("notifyDataConnectionFailed()")) {
            return;
        }
        synchronized (this.mRecords) {
            if (validatePhoneId(phoneId)) {
                this.mPreciseDataConnectionStates.get(phoneId).put(Integer.valueOf(apnType), new PreciseDataConnectionState(-1, 0, apnType, null, null, 0, null));
                for (Record r : this.mRecords) {
                    if (r.matchPhoneStateListenerEvent(4096) && idMatch(r.subId, subId, phoneId)) {
                        try {
                            r.callback.onPreciseDataConnectionStateChanged(this.mPreciseDataConnectionStates.get(phoneId).get(Integer.valueOf(apnType)));
                        } catch (RemoteException e) {
                            this.mRemoveList.add(r.binder);
                        }
                    }
                }
                handleRemoveListLocked();
            } else {
                handleRemoveListLocked();
            }
            throw th;
        }
    }

    public void notifyCellLocation(CellIdentity cellLocation) {
        notifyCellLocationForSubscriber(Integer.MAX_VALUE, cellLocation);
    }

    public void notifyCellLocationForSubscriber(int subId, CellIdentity cellLocation) {
        log("notifyCellLocationForSubscriber: subId=" + subId + " cellLocation=" + cellLocation);
        if (!checkNotifyPermission("notifyCellLocation()")) {
            return;
        }
        int phoneId = getPhoneIdFromSubId(subId);
        synchronized (this.mRecords) {
            if (validatePhoneId(phoneId)) {
                this.mCellIdentity[phoneId] = cellLocation;
                for (Record r : this.mRecords) {
                    if (validateEventsAndUserLocked(r, 16) && idMatch(r.subId, subId, phoneId) && checkCoarseLocationAccess(r, 1) && checkFineLocationAccess(r, 29)) {
                        try {
                            r.callback.onCellLocationChanged(cellLocation);
                        } catch (RemoteException e) {
                            this.mRemoveList.add(r.binder);
                        }
                    }
                }
                handleRemoveListLocked();
            } else {
                handleRemoveListLocked();
            }
            throw th;
        }
    }

    public void notifyPreciseCallState(int phoneId, int subId, int ringingCallState, int foregroundCallState, int backgroundCallState) {
        if (!checkNotifyPermission("notifyPreciseCallState()")) {
            return;
        }
        synchronized (this.mRecords) {
            if (validatePhoneId(phoneId)) {
                this.mRingingCallState[phoneId] = ringingCallState;
                this.mForegroundCallState[phoneId] = foregroundCallState;
                this.mBackgroundCallState[phoneId] = backgroundCallState;
                this.mPreciseCallState[phoneId] = new PreciseCallState(ringingCallState, foregroundCallState, backgroundCallState, -1, -1);
                boolean notifyCallAttributes = true;
                if (this.mCallQuality == null) {
                    log("notifyPreciseCallState: mCallQuality is null, skipping call attributes");
                    notifyCallAttributes = false;
                } else {
                    if (this.mPreciseCallState[phoneId].getForegroundCallState() != 1) {
                        this.mCallNetworkType[phoneId] = 0;
                        this.mCallQuality[phoneId] = createCallQuality();
                    }
                    this.mCallAttributes[phoneId] = new CallAttributes(this.mPreciseCallState[phoneId], this.mCallNetworkType[phoneId], this.mCallQuality[phoneId]);
                }
                for (Record r : this.mRecords) {
                    if (r.matchPhoneStateListenerEvent(2048) && idMatch(r.subId, subId, phoneId)) {
                        try {
                            r.callback.onPreciseCallStateChanged(this.mPreciseCallState[phoneId]);
                        } catch (RemoteException e) {
                            this.mRemoveList.add(r.binder);
                        }
                        if (!notifyCallAttributes) {
                        }
                    } else if (!notifyCallAttributes && r.matchPhoneStateListenerEvent(67108864) && idMatch(r.subId, subId, phoneId)) {
                        try {
                            r.callback.onCallAttributesChanged(this.mCallAttributes[phoneId]);
                        } catch (RemoteException e2) {
                            this.mRemoveList.add(r.binder);
                        }
                    }
                }
                handleRemoveListLocked();
            } else {
                handleRemoveListLocked();
            }
            throw th;
        }
    }

    public void notifyDisconnectCause(int phoneId, int subId, int disconnectCause, int preciseDisconnectCause) {
        if (!checkNotifyPermission("notifyDisconnectCause()")) {
            return;
        }
        synchronized (this.mRecords) {
            if (validatePhoneId(phoneId)) {
                this.mCallDisconnectCause[phoneId] = disconnectCause;
                this.mCallPreciseDisconnectCause[phoneId] = preciseDisconnectCause;
                for (Record r : this.mRecords) {
                    if (r.matchPhoneStateListenerEvent(33554432) && idMatch(r.subId, subId, phoneId)) {
                        try {
                            r.callback.onCallDisconnectCauseChanged(this.mCallDisconnectCause[phoneId], this.mCallPreciseDisconnectCause[phoneId]);
                        } catch (RemoteException e) {
                            this.mRemoveList.add(r.binder);
                        }
                    }
                }
                handleRemoveListLocked();
            } else {
                handleRemoveListLocked();
            }
            throw th;
        }
    }

    public void notifyImsDisconnectCause(int subId, ImsReasonInfo imsReasonInfo) {
        if (!checkNotifyPermission("notifyImsCallDisconnectCause()")) {
            return;
        }
        int phoneId = getPhoneIdFromSubId(subId);
        synchronized (this.mRecords) {
            if (validatePhoneId(phoneId)) {
                this.mImsReasonInfo.set(phoneId, imsReasonInfo);
                for (Record r : this.mRecords) {
                    if (r.matchPhoneStateListenerEvent(AudioFormat.OPUS) && idMatch(r.subId, subId, phoneId)) {
                        try {
                            r.callback.onImsCallDisconnectCauseChanged(this.mImsReasonInfo.get(phoneId));
                        } catch (RemoteException e) {
                            this.mRemoveList.add(r.binder);
                        }
                    }
                }
                handleRemoveListLocked();
            } else {
                handleRemoveListLocked();
            }
            throw th;
        }
    }

    public void notifyPreciseDataConnectionFailed(int phoneId, int subId, int apnType, String apn, int failCause) throws Throwable {
        if (!checkNotifyPermission("notifyPreciseDataConnectionFailed()")) {
            return;
        }
        notifyDataConnectionFailedForSubscriber(phoneId, subId, apnType);
        synchronized (this.mRecords) {
            try {
                if (validatePhoneId(phoneId)) {
                    this.mPreciseDataConnectionStates.get(phoneId).put(Integer.valueOf(apnType), new PreciseDataConnectionState(-1, 0, apnType, null, null, failCause, null));
                    for (Record r : this.mRecords) {
                        if (r.matchPhoneStateListenerEvent(4096)) {
                            try {
                                if (idMatch(r.subId, subId, phoneId)) {
                                    try {
                                        r.callback.onPreciseDataConnectionStateChanged(this.mPreciseDataConnectionStates.get(phoneId).get(Integer.valueOf(apnType)));
                                    } catch (RemoteException e) {
                                        this.mRemoveList.add(r.binder);
                                    }
                                }
                            } catch (Throwable th) {
                                th = th;
                                throw th;
                            }
                        }
                    }
                }
                handleRemoveListLocked();
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    public void notifySrvccStateChanged(int subId, int state) {
        if (!checkNotifyPermission("notifySrvccStateChanged()")) {
            return;
        }
        int phoneId = getPhoneIdFromSubId(subId);
        synchronized (this.mRecords) {
            if (validatePhoneId(phoneId)) {
                this.mSrvccState[phoneId] = state;
                for (Record r : this.mRecords) {
                    if (r.matchPhoneStateListenerEvent(16384) && idMatch(r.subId, subId, phoneId)) {
                        try {
                            r.callback.onSrvccStateChanged(state);
                        } catch (RemoteException e) {
                            this.mRemoveList.add(r.binder);
                        }
                    }
                }
                handleRemoveListLocked();
            } else {
                handleRemoveListLocked();
            }
            throw th;
        }
    }

    public void notifyOemHookRawEventForSubscriber(int phoneId, int subId, byte[] rawData) {
        if (!checkNotifyPermission("notifyOemHookRawEventForSubscriber")) {
            return;
        }
        synchronized (this.mRecords) {
            if (validatePhoneId(phoneId)) {
                for (Record r : this.mRecords) {
                    if (r.matchPhoneStateListenerEvent(32768) && idMatch(r.subId, subId, phoneId)) {
                        try {
                            r.callback.onOemHookRawEvent(rawData);
                        } catch (RemoteException e) {
                            this.mRemoveList.add(r.binder);
                        }
                    }
                }
                handleRemoveListLocked();
            } else {
                handleRemoveListLocked();
            }
            throw th;
        }
    }

    public void notifyPhoneCapabilityChanged(PhoneCapability capability) {
        if (!checkNotifyPermission("notifyPhoneCapabilityChanged()")) {
            return;
        }
        synchronized (this.mRecords) {
            this.mPhoneCapability = capability;
            for (Record r : this.mRecords) {
                if (r.matchPhoneStateListenerEvent(2097152)) {
                    try {
                        r.callback.onPhoneCapabilityChanged(capability);
                    } catch (RemoteException e) {
                        this.mRemoveList.add(r.binder);
                    }
                }
            }
            handleRemoveListLocked();
        }
    }

    public void notifyActiveDataSubIdChanged(int activeDataSubId) {
        if (!checkNotifyPermission("notifyActiveDataSubIdChanged()")) {
            return;
        }
        this.mActiveDataSubId = activeDataSubId;
        synchronized (this.mRecords) {
            for (Record r : this.mRecords) {
                if (r.matchPhoneStateListenerEvent(4194304)) {
                    try {
                        r.callback.onActiveDataSubIdChanged(activeDataSubId);
                    } catch (RemoteException e) {
                        this.mRemoveList.add(r.binder);
                    }
                }
            }
            handleRemoveListLocked();
        }
    }

    public void notifyRadioPowerStateChanged(int phoneId, int subId, int state) {
        if (!checkNotifyPermission("notifyRadioPowerStateChanged()")) {
            return;
        }
        synchronized (this.mRecords) {
            if (validatePhoneId(phoneId)) {
                this.mRadioPowerState = state;
                for (Record r : this.mRecords) {
                    if (r.matchPhoneStateListenerEvent(8388608) && idMatch(r.subId, subId, phoneId)) {
                        try {
                            r.callback.onRadioPowerStateChanged(state);
                        } catch (RemoteException e) {
                            this.mRemoveList.add(r.binder);
                        }
                    }
                }
                handleRemoveListLocked();
            } else {
                handleRemoveListLocked();
            }
            throw th;
        }
    }

    public void notifyEmergencyNumberList(int phoneId, int subId) {
        if (!checkNotifyPermission("notifyEmergencyNumberList()")) {
            return;
        }
        synchronized (this.mRecords) {
            if (validatePhoneId(phoneId)) {
                TelephonyManager tm = (TelephonyManager) this.mContext.getSystemService("phone");
                this.mEmergencyNumberList = tm.getEmergencyNumberList();
                for (Record r : this.mRecords) {
                    if (r.matchPhoneStateListenerEvent(16777216) && idMatch(r.subId, subId, phoneId)) {
                        try {
                            r.callback.onEmergencyNumberListChanged(this.mEmergencyNumberList);
                        } catch (RemoteException e) {
                            this.mRemoveList.add(r.binder);
                        }
                    }
                }
                handleRemoveListLocked();
            } else {
                handleRemoveListLocked();
            }
            throw th;
        }
    }

    public void notifyOutgoingEmergencyCall(int phoneId, int subId, EmergencyNumber emergencyNumber) {
        if (!checkNotifyPermission("notifyOutgoingEmergencyCall()")) {
            return;
        }
        synchronized (this.mRecords) {
            if (validatePhoneId(phoneId)) {
                this.mOutgoingCallEmergencyNumber[phoneId] = emergencyNumber;
                for (Record r : this.mRecords) {
                    if (r.matchPhoneStateListenerEvent(AudioFormat.EVRC) && idMatch(r.subId, subId, phoneId)) {
                        try {
                            r.callback.onOutgoingEmergencyCall(emergencyNumber);
                        } catch (RemoteException e) {
                            this.mRemoveList.add(r.binder);
                        }
                    }
                }
                handleRemoveListLocked();
            } else {
                handleRemoveListLocked();
            }
            throw th;
        }
    }

    public void notifyOutgoingEmergencySms(int phoneId, int subId, EmergencyNumber emergencyNumber) {
        if (!checkNotifyPermission("notifyOutgoingEmergencySms()")) {
            return;
        }
        synchronized (this.mRecords) {
            if (validatePhoneId(phoneId)) {
                this.mOutgoingSmsEmergencyNumber[phoneId] = emergencyNumber;
                for (Record r : this.mRecords) {
                    if (r.matchPhoneStateListenerEvent(AudioFormat.APTX) && idMatch(r.subId, subId, phoneId)) {
                        try {
                            r.callback.onOutgoingEmergencySms(emergencyNumber);
                        } catch (RemoteException e) {
                            this.mRemoveList.add(r.binder);
                        }
                    }
                }
                handleRemoveListLocked();
            } else {
                handleRemoveListLocked();
            }
            throw th;
        }
    }

    public void notifyCallQualityChanged(CallQuality callQuality, int phoneId, int subId, int callNetworkType) {
        if (!checkNotifyPermission("notifyCallQualityChanged()")) {
            return;
        }
        synchronized (this.mRecords) {
            if (validatePhoneId(phoneId)) {
                this.mCallQuality[phoneId] = callQuality;
                this.mCallNetworkType[phoneId] = callNetworkType;
                this.mCallAttributes[phoneId] = new CallAttributes(this.mPreciseCallState[phoneId], callNetworkType, callQuality);
                for (Record r : this.mRecords) {
                    if (r.matchPhoneStateListenerEvent(67108864) && idMatch(r.subId, subId, phoneId)) {
                        try {
                            r.callback.onCallAttributesChanged(this.mCallAttributes[phoneId]);
                        } catch (RemoteException e) {
                            this.mRemoveList.add(r.binder);
                        }
                    }
                }
                handleRemoveListLocked();
            } else {
                handleRemoveListLocked();
            }
            throw th;
        }
    }

    public void notifyRegistrationFailed(int phoneId, int subId, CellIdentity cellIdentity, String chosenPlmn, int domain, int causeCode, int additionalCauseCode) throws Throwable {
        if (!checkNotifyPermission("notifyRegistrationFailed()")) {
            return;
        }
        CellIdentity noLocationCi = cellIdentity.sanitizeLocationInfo();
        synchronized (this.mRecords) {
            try {
                if (validatePhoneId(phoneId)) {
                    for (Record r : this.mRecords) {
                        if (r.matchPhoneStateListenerEvent(1073741824)) {
                            try {
                                if (idMatch(r.subId, subId, phoneId)) {
                                    try {
                                        r.callback.onRegistrationFailed(checkFineLocationAccess(r, 1) ? cellIdentity : noLocationCi, chosenPlmn, domain, causeCode, additionalCauseCode);
                                    } catch (RemoteException e) {
                                        this.mRemoveList.add(r.binder);
                                    }
                                }
                            } catch (Throwable th) {
                                th = th;
                                throw th;
                            }
                        }
                    }
                }
                handleRemoveListLocked();
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    public void notifyBarringInfoChanged(int phoneId, int subId, BarringInfo barringInfo) {
        if (!checkNotifyPermission("notifyBarringInfo()")) {
            return;
        }
        if (barringInfo == null) {
            log("Received null BarringInfo for subId=" + subId + ", phoneId=" + phoneId);
            this.mBarringInfo.set(phoneId, new BarringInfo());
            return;
        }
        synchronized (this.mRecords) {
            if (validatePhoneId(phoneId)) {
                this.mBarringInfo.set(phoneId, barringInfo);
                BarringInfo biNoLocation = barringInfo.createLocationInfoSanitizedCopy();
                for (Record r : this.mRecords) {
                    if (r.matchPhoneStateListenerEvent(Integer.MIN_VALUE) && idMatch(r.subId, subId, phoneId)) {
                        try {
                            r.callback.onBarringInfoChanged(checkFineLocationAccess(r, 1) ? barringInfo : biNoLocation);
                        } catch (RemoteException e) {
                            this.mRemoveList.add(r.binder);
                        }
                    }
                }
                handleRemoveListLocked();
            } else {
                handleRemoveListLocked();
            }
            throw th;
        }
    }

    public void dump(FileDescriptor fd, PrintWriter writer, String[] args) {
        IndentingPrintWriter pw = new IndentingPrintWriter(writer, "  ");
        if (DumpUtils.checkDumpPermission(this.mContext, TAG, pw)) {
            synchronized (this.mRecords) {
                int recordCount = this.mRecords.size();
                pw.println("last known state:");
                pw.increaseIndent();
                for (int i = 0; i < getTelephonyManager().getPhoneCount(); i++) {
                    pw.println("Phone Id=" + i);
                    pw.increaseIndent();
                    pw.println("mCallState=" + this.mCallState[i]);
                    pw.println("mRingingCallState=" + this.mRingingCallState[i]);
                    pw.println("mForegroundCallState=" + this.mForegroundCallState[i]);
                    pw.println("mBackgroundCallState=" + this.mBackgroundCallState[i]);
                    pw.println("mPreciseCallState=" + this.mPreciseCallState[i]);
                    pw.println("mCallDisconnectCause=" + this.mCallDisconnectCause[i]);
                    pw.println("mCallIncomingNumber=" + this.mCallIncomingNumber[i]);
                    pw.println("mServiceState=" + this.mServiceState[i]);
                    pw.println("mVoiceActivationState= " + this.mVoiceActivationState[i]);
                    pw.println("mDataActivationState= " + this.mDataActivationState[i]);
                    pw.println("mUserMobileDataState= " + this.mUserMobileDataState[i]);
                    pw.println("mSignalStrength=" + this.mSignalStrength[i]);
                    pw.println("mMessageWaiting=" + this.mMessageWaiting[i]);
                    pw.println("mCallForwarding=" + this.mCallForwarding[i]);
                    pw.println("mDataActivity=" + this.mDataActivity[i]);
                    pw.println("mDataConnectionState=" + this.mDataConnectionState[i]);
                    pw.println("mCellIdentity=" + this.mCellIdentity[i]);
                    pw.println("mCellInfo=" + this.mCellInfo.get(i));
                    pw.println("mImsCallDisconnectCause=" + this.mImsReasonInfo.get(i));
                    pw.println("mSrvccState=" + this.mSrvccState[i]);
                    pw.println("mCallPreciseDisconnectCause=" + this.mCallPreciseDisconnectCause[i]);
                    pw.println("mCallQuality=" + this.mCallQuality[i]);
                    pw.println("mCallAttributes=" + this.mCallAttributes[i]);
                    pw.println("mCallNetworkType=" + this.mCallNetworkType[i]);
                    pw.println("mPreciseDataConnectionStates=" + this.mPreciseDataConnectionStates.get(i));
                    pw.println("mOutgoingCallEmergencyNumber=" + this.mOutgoingCallEmergencyNumber[i]);
                    pw.println("mOutgoingSmsEmergencyNumber=" + this.mOutgoingSmsEmergencyNumber[i]);
                    pw.println("mBarringInfo=" + this.mBarringInfo.get(i));
                    pw.decreaseIndent();
                }
                pw.println("mCarrierNetworkChangeState=" + this.mCarrierNetworkChangeState);
                pw.println("mPhoneCapability=" + this.mPhoneCapability);
                pw.println("mActiveDataSubId=" + this.mActiveDataSubId);
                pw.println("mRadioPowerState=" + this.mRadioPowerState);
                pw.println("mEmergencyNumberList=" + this.mEmergencyNumberList);
                pw.println("mDefaultPhoneId=" + this.mDefaultPhoneId);
                pw.println("mDefaultSubId=" + this.mDefaultSubId);
                pw.decreaseIndent();
                pw.println("local logs:");
                pw.increaseIndent();
                this.mLocalLog.dump(fd, pw, args);
                pw.println("listen logs:");
                this.mListenLog.dump(fd, pw, args);
                pw.decreaseIndent();
                pw.println("registrations: count=" + recordCount);
                pw.increaseIndent();
                for (Record r : this.mRecords) {
                    pw.println(r);
                }
                pw.decreaseIndent();
            }
        }
    }

    private void broadcastServiceStateChanged(ServiceState state, int phoneId, int subId) {
        long ident = Binder.clearCallingIdentity();
        try {
            this.mBatteryStats.notePhoneState(state.getState());
        } catch (RemoteException e) {
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(ident);
            throw th;
        }
        Binder.restoreCallingIdentity(ident);
        Intent intent = new Intent("android.intent.action.SERVICE_STATE");
        intent.addFlags(16777216);
        Bundle data = new Bundle();
        state.fillInNotifierBundle(data);
        intent.putExtras(data);
        intent.putExtra(PHONE_CONSTANTS_SUBSCRIPTION_KEY, subId);
        intent.putExtra("android.telephony.extra.SUBSCRIPTION_INDEX", subId);
        intent.putExtra(PHONE_CONSTANTS_SLOT_KEY, phoneId);
        intent.putExtra("android.telephony.extra.SLOT_INDEX", phoneId);
        this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL, "android.permission.READ_PHONE_STATE");
    }

    private void broadcastSignalStrengthChanged(SignalStrength signalStrength, int phoneId, int subId) {
        long ident = Binder.clearCallingIdentity();
        try {
            this.mBatteryStats.notePhoneSignalStrength(signalStrength);
        } catch (RemoteException e) {
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(ident);
            throw th;
        }
        Binder.restoreCallingIdentity(ident);
        Intent intent = new Intent(ACTION_SIGNAL_STRENGTH_CHANGED);
        Bundle data = new Bundle();
        fillInSignalStrengthNotifierBundle(signalStrength, data);
        intent.putExtras(data);
        intent.putExtra(PHONE_CONSTANTS_SUBSCRIPTION_KEY, subId);
        intent.putExtra(PHONE_CONSTANTS_SLOT_KEY, phoneId);
        this.mContext.sendStickyBroadcastAsUser(intent, UserHandle.ALL);
    }

    private void fillInSignalStrengthNotifierBundle(SignalStrength signalStrength, Bundle bundle) {
        List<CellSignalStrength> cellSignalStrengths = signalStrength.getCellSignalStrengths();
        for (CellSignalStrength cellSignalStrength : cellSignalStrengths) {
            if (cellSignalStrength instanceof CellSignalStrengthLte) {
                bundle.putParcelable("Lte", (CellSignalStrengthLte) cellSignalStrength);
            } else if (cellSignalStrength instanceof CellSignalStrengthCdma) {
                bundle.putParcelable("Cdma", (CellSignalStrengthCdma) cellSignalStrength);
            } else if (cellSignalStrength instanceof CellSignalStrengthGsm) {
                bundle.putParcelable("Gsm", (CellSignalStrengthGsm) cellSignalStrength);
            } else if (cellSignalStrength instanceof CellSignalStrengthWcdma) {
                bundle.putParcelable("Wcdma", (CellSignalStrengthWcdma) cellSignalStrength);
            } else if (cellSignalStrength instanceof CellSignalStrengthTdscdma) {
                bundle.putParcelable("Tdscdma", (CellSignalStrengthTdscdma) cellSignalStrength);
            } else if (cellSignalStrength instanceof CellSignalStrengthNr) {
                bundle.putParcelable("Nr", (CellSignalStrengthNr) cellSignalStrength);
            }
        }
    }

    private void broadcastCallStateChanged(int state, String incomingNumber, int phoneId, int subId) {
        long ident = Binder.clearCallingIdentity();
        try {
            if (state == 0) {
                this.mBatteryStats.notePhoneOff();
                FrameworkStatsLog.write(95, 0);
            } else {
                this.mBatteryStats.notePhoneOn();
                FrameworkStatsLog.write(95, 1);
            }
        } catch (RemoteException e) {
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(ident);
            throw th;
        }
        Binder.restoreCallingIdentity(ident);
        Intent intent = new Intent("android.intent.action.PHONE_STATE");
        intent.putExtra(PHONE_CONSTANTS_STATE_KEY, callStateToString(state));
        if (subId != -1) {
            intent.setAction(ACTION_SUBSCRIPTION_PHONE_STATE_CHANGED);
            intent.putExtra(PHONE_CONSTANTS_SUBSCRIPTION_KEY, subId);
            intent.putExtra("android.telephony.extra.SUBSCRIPTION_INDEX", subId);
        }
        if (phoneId != -1) {
            intent.putExtra(PHONE_CONSTANTS_SLOT_KEY, phoneId);
            intent.putExtra("android.telephony.extra.SLOT_INDEX", phoneId);
        }
        intent.addFlags(16777216);
        Intent intentWithPhoneNumber = new Intent(intent);
        intentWithPhoneNumber.putExtra("incoming_number", incomingNumber);
        this.mContext.sendBroadcastAsUser(intentWithPhoneNumber, UserHandle.ALL, "android.permission.READ_PRIVILEGED_PHONE_STATE");
        this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL, "android.permission.READ_PHONE_STATE", 51);
        this.mContext.sendBroadcastAsUserMultiplePermissions(intentWithPhoneNumber, UserHandle.ALL, new String[]{"android.permission.READ_PHONE_STATE", "android.permission.READ_CALL_LOG"});
    }

    private static String callStateToString(int callState) {
        if (callState == 1) {
            return TelephonyManager.EXTRA_STATE_RINGING;
        }
        if (callState == 2) {
            return TelephonyManager.EXTRA_STATE_OFFHOOK;
        }
        return TelephonyManager.EXTRA_STATE_IDLE;
    }

    private void broadcastDataConnectionStateChanged(int state, String apn, int apnType, int subId) {
        Intent intent = new Intent(ACTION_ANY_DATA_CONNECTION_STATE_CHANGED);
        intent.putExtra(PHONE_CONSTANTS_STATE_KEY, dataStateToString(state));
        intent.putExtra(PHONE_CONSTANTS_DATA_APN_KEY, apn);
        intent.putExtra(PHONE_CONSTANTS_DATA_APN_TYPE_KEY, ApnSetting.getApnTypesStringFromBitmask(apnType));
        intent.putExtra(PHONE_CONSTANTS_SUBSCRIPTION_KEY, subId);
        this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL, "android.permission.READ_PHONE_STATE");
    }

    private void enforceNotifyPermissionOrCarrierPrivilege(String method) {
        if (checkNotifyPermission()) {
            return;
        }
        TelephonyPermissions.enforceCallingOrSelfCarrierPrivilege(this.mContext, SubscriptionManager.getDefaultSubscriptionId(), method);
    }

    private boolean checkNotifyPermission(String method) {
        if (checkNotifyPermission()) {
            return true;
        }
        String str = "Modify Phone State Permission Denial: " + method + " from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid();
        return false;
    }

    private boolean checkNotifyPermission() {
        return this.mContext.checkCallingOrSelfPermission("android.permission.MODIFY_PHONE_STATE") == 0;
    }

    private boolean checkListenerPermission(int events, int subId, String callingPackage, String callingFeatureId, String message) {
        LocationAccessPolicy.LocationPermissionQuery.Builder locationQueryBuilder = new LocationAccessPolicy.LocationPermissionQuery.Builder().setCallingPackage(callingPackage).setCallingFeatureId(callingFeatureId).setMethod(message + " events: " + events).setCallingPid(Binder.getCallingPid()).setCallingUid(Binder.getCallingUid());
        if ((ENFORCE_LOCATION_PERMISSION_MASK & events) != 0) {
            locationQueryBuilder.setMinSdkVersionForFine(29);
            locationQueryBuilder.setMinSdkVersionForCoarse(0);
            LocationAccessPolicy.LocationPermissionResult result = LocationAccessPolicy.checkLocationPermission(this.mContext, locationQueryBuilder.build());
            int i = AnonymousClass3.$SwitchMap$android$telephony$LocationAccessPolicy$LocationPermissionResult[result.ordinal()];
            if (i == 1) {
                throw new SecurityException("Unable to listen for events " + events + " due to insufficient location permissions.");
            }
            if (i == 2) {
                return false;
            }
        }
        if ((ENFORCE_PHONE_STATE_PERMISSION_MASK & events) != 0 && !TelephonyPermissions.checkCallingOrSelfReadPhoneState(this.mContext, subId, callingPackage, callingFeatureId, message)) {
            return false;
        }
        if ((ENFORCE_PRECISE_PHONE_STATE_PERMISSION_MASK & events) != 0) {
            try {
                this.mContext.enforceCallingOrSelfPermission("android.permission.READ_PRECISE_PHONE_STATE", null);
            } catch (SecurityException e) {
                TelephonyPermissions.enforceCallingOrSelfCarrierPrivilege(this.mContext, subId, message);
            }
        }
        if ((READ_ACTIVE_EMERGENCY_SESSION_PERMISSION_MASK & events) != 0) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.READ_ACTIVE_EMERGENCY_SESSION", null);
        }
        if ((events & 512) != 0) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.LISTEN_ALWAYS_REPORTED_SIGNAL_STRENGTH", null);
        }
        if ((READ_PRIVILEGED_PHONE_STATE_PERMISSION_MASK & events) != 0) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.READ_PRIVILEGED_PHONE_STATE", null);
        }
        return true;
    }

    /* JADX INFO: renamed from: com.android.server.TelephonyRegistry$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$android$telephony$LocationAccessPolicy$LocationPermissionResult;

        static {
            int[] iArr = new int[LocationAccessPolicy.LocationPermissionResult.values().length];
            $SwitchMap$android$telephony$LocationAccessPolicy$LocationPermissionResult = iArr;
            try {
                iArr[LocationAccessPolicy.LocationPermissionResult.DENIED_HARD.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$android$telephony$LocationAccessPolicy$LocationPermissionResult[LocationAccessPolicy.LocationPermissionResult.DENIED_SOFT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleRemoveListLocked() {
        int size = this.mRemoveList.size();
        if (size > 0) {
            for (IBinder b : this.mRemoveList) {
                remove(b);
            }
            this.mRemoveList.clear();
        }
    }

    private boolean validateEventsAndUserLocked(Record r, int events) {
        long callingIdentity = Binder.clearCallingIdentity();
        try {
            int foregroundUser = ActivityManager.getCurrentUser();
            boolean valid = UserHandle.getUserId(r.callerUid) == foregroundUser && r.matchPhoneStateListenerEvent(events);
            return valid;
        } finally {
            Binder.restoreCallingIdentity(callingIdentity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean validatePhoneId(int phoneId) {
        return phoneId >= 0 && phoneId < this.mNumPhones;
    }

    private static void log(String s) {
        Rlog.d(TAG, s);
    }

    private static void loge(String s) {
        Rlog.e(TAG, s);
    }

    private boolean idMatchWithoutDefaultPhoneCheck(int subIdInRecord, int subIdToNotify) {
        if (subIdInRecord == Integer.MAX_VALUE) {
            return subIdToNotify == this.mDefaultSubId;
        }
        return subIdInRecord == subIdToNotify;
    }

    boolean idMatch(int rSubId, int subId, int phoneId) {
        if (subId < 0) {
            return this.mDefaultPhoneId == phoneId;
        }
        if (rSubId == Integer.MAX_VALUE) {
            return subId == this.mDefaultSubId;
        }
        return rSubId == subId;
    }

    private boolean checkFineLocationAccess(Record r, int minSdk) {
        final LocationAccessPolicy.LocationPermissionQuery query = new LocationAccessPolicy.LocationPermissionQuery.Builder().setCallingPackage(r.callingPackage).setCallingFeatureId(r.callingFeatureId).setCallingPid(r.callerPid).setCallingUid(r.callerUid).setMethod("TelephonyRegistry push").setLogAsInfo(true).setMinSdkVersionForFine(minSdk).build();
        return ((Boolean) Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.-$$Lambda$TelephonyRegistry$ANYH01Imb6dMua6cgKvMEl4kD3I
            public final Object getOrThrow() {
                return this.f$0.lambda$checkFineLocationAccess$1$TelephonyRegistry(query);
            }
        })).booleanValue();
    }

    public /* synthetic */ Boolean lambda$checkFineLocationAccess$1$TelephonyRegistry(LocationAccessPolicy.LocationPermissionQuery query) throws Exception {
        LocationAccessPolicy.LocationPermissionResult locationResult = LocationAccessPolicy.checkLocationPermission(this.mContext, query);
        return Boolean.valueOf(locationResult == LocationAccessPolicy.LocationPermissionResult.ALLOWED);
    }

    private boolean checkCoarseLocationAccess(Record r, int minSdk) {
        final LocationAccessPolicy.LocationPermissionQuery query = new LocationAccessPolicy.LocationPermissionQuery.Builder().setCallingPackage(r.callingPackage).setCallingFeatureId(r.callingFeatureId).setCallingPid(r.callerPid).setCallingUid(r.callerUid).setMethod("TelephonyRegistry push").setLogAsInfo(true).setMinSdkVersionForCoarse(minSdk).build();
        return ((Boolean) Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.-$$Lambda$TelephonyRegistry$KwKYEFoKdijV5jZbDqX1IUV4CzY
            public final Object getOrThrow() {
                return this.f$0.lambda$checkCoarseLocationAccess$2$TelephonyRegistry(query);
            }
        })).booleanValue();
    }

    public /* synthetic */ Boolean lambda$checkCoarseLocationAccess$2$TelephonyRegistry(LocationAccessPolicy.LocationPermissionQuery query) throws Exception {
        LocationAccessPolicy.LocationPermissionResult locationResult = LocationAccessPolicy.checkLocationPermission(this.mContext, query);
        return Boolean.valueOf(locationResult == LocationAccessPolicy.LocationPermissionResult.ALLOWED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkPossibleMissNotify(Record r, int phoneId) {
        int events = r.events;
        if ((events & 1) != 0) {
            try {
                ServiceState ss = new ServiceState(this.mServiceState[phoneId]);
                if (checkFineLocationAccess(r, 29)) {
                    r.callback.onServiceStateChanged(ss);
                } else if (checkCoarseLocationAccess(r, 29)) {
                    r.callback.onServiceStateChanged(ss.createLocationInfoSanitizedCopy(false));
                } else {
                    r.callback.onServiceStateChanged(ss.createLocationInfoSanitizedCopy(true));
                }
            } catch (RemoteException e) {
                this.mRemoveList.add(r.binder);
            }
        }
        if ((events & 256) != 0 || (events & 512) != 0) {
            try {
                if (this.mSignalStrength[phoneId] != null) {
                    SignalStrength signalStrength = this.mSignalStrength[phoneId];
                    r.callback.onSignalStrengthsChanged(new SignalStrength(signalStrength));
                }
            } catch (RemoteException e2) {
                this.mRemoveList.add(r.binder);
            }
        }
        if ((events & 2) != 0) {
            try {
                if (this.mSignalStrength[phoneId] != null) {
                    int gsmSignalStrength = this.mSignalStrength[phoneId].getGsmSignalStrength();
                    r.callback.onSignalStrengthChanged(gsmSignalStrength == 99 ? -1 : gsmSignalStrength);
                }
            } catch (RemoteException e3) {
                this.mRemoveList.add(r.binder);
            }
        }
        if (validateEventsAndUserLocked(r, 1024)) {
            try {
                if (checkCoarseLocationAccess(r, 1) && checkFineLocationAccess(r, 29)) {
                    r.callback.onCellInfoChanged(this.mCellInfo.get(phoneId));
                }
            } catch (RemoteException e4) {
                this.mRemoveList.add(r.binder);
            }
        }
        if ((524288 & events) != 0) {
            try {
                r.callback.onUserMobileDataStateChanged(this.mUserMobileDataState[phoneId]);
            } catch (RemoteException e5) {
                this.mRemoveList.add(r.binder);
            }
        }
        if ((1048576 & events) != 0) {
            try {
                if (this.mTelephonyDisplayInfos[phoneId] != null) {
                    r.callback.onDisplayInfoChanged(this.mTelephonyDisplayInfos[phoneId]);
                }
            } catch (RemoteException e6) {
                this.mRemoveList.add(r.binder);
            }
        }
        if ((events & 4) != 0) {
            try {
                r.callback.onMessageWaitingIndicatorChanged(this.mMessageWaiting[phoneId]);
            } catch (RemoteException e7) {
                this.mRemoveList.add(r.binder);
            }
        }
        if ((events & 8) != 0) {
            try {
                r.callback.onCallForwardingIndicatorChanged(this.mCallForwarding[phoneId]);
            } catch (RemoteException e8) {
                this.mRemoveList.add(r.binder);
            }
        }
        if (validateEventsAndUserLocked(r, 16)) {
            try {
                if (checkCoarseLocationAccess(r, 1) && checkFineLocationAccess(r, 29)) {
                    r.callback.onCellLocationChanged(this.mCellIdentity[phoneId]);
                }
            } catch (RemoteException e9) {
                this.mRemoveList.add(r.binder);
            }
        }
        if ((events & 64) != 0) {
            try {
                r.callback.onDataConnectionStateChanged(this.mDataConnectionState[phoneId], this.mDataConnectionNetworkType[phoneId]);
            } catch (RemoteException e10) {
                this.mRemoveList.add(r.binder);
            }
        }
    }

    private static String dataStateToString(int state) {
        if (state == 0) {
            return "DISCONNECTED";
        }
        if (state == 1) {
            return "CONNECTING";
        }
        if (state == 2) {
            return "CONNECTED";
        }
        if (state == 3) {
            return "SUSPENDED";
        }
        return "UNKNOWN(" + state + ")";
    }

    private String getNetworkTypeName(int type) {
        switch (type) {
            case 1:
                return "GPRS";
            case 2:
                return "EDGE";
            case 3:
                return "UMTS";
            case 4:
                return "CDMA";
            case 5:
                return "CDMA - EvDo rev. 0";
            case 6:
                return "CDMA - EvDo rev. A";
            case 7:
                return "CDMA - 1xRTT";
            case 8:
                return "HSDPA";
            case 9:
                return "HSUPA";
            case 10:
                return "HSPA";
            case 11:
                return "iDEN";
            case 12:
                return "CDMA - EvDo rev. B";
            case 13:
                return "LTE";
            case 14:
                return "CDMA - eHRPD";
            case 15:
                return "HSPA+";
            case 16:
                return "GSM";
            case 17:
                return "TD_SCDMA";
            case 18:
                return "IWLAN";
            case 19:
            default:
                return "UNKNOWN";
            case 20:
                return "NR";
        }
    }

    private static PreciseCallState createPreciseCallState() {
        return new PreciseCallState(-1, -1, -1, -1, -1);
    }

    private static CallQuality createCallQuality() {
        return new CallQuality(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getPhoneIdFromSubId(int subId) {
        SubscriptionManager subManager = (SubscriptionManager) this.mContext.getSystemService("telephony_subscription_service");
        if (subManager == null) {
            return -1;
        }
        if (subId == Integer.MAX_VALUE) {
            subId = SubscriptionManager.getDefaultSubscriptionId();
        }
        SubscriptionInfo info = subManager.getActiveSubscriptionInfo(subId);
        if (info == null) {
            return -1;
        }
        return info.getSimSlotIndex();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String pii(String packageName) {
        return Build.IS_DEBUGGABLE ? packageName : "***";
    }
}
