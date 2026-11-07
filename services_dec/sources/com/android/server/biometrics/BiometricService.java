package com.android.server.biometrics;

import android.R;
import android.app.ActivityManager;
import android.app.IActivityManager;
import android.app.UserSwitchObserver;
import android.app.admin.DevicePolicyManager;
import android.app.trust.ITrustManager;
import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.hardware.biometrics.BiometricSourceType;
import android.hardware.biometrics.IBiometricAuthenticator;
import android.hardware.biometrics.IBiometricEnabledOnKeyguardCallback;
import android.hardware.biometrics.IBiometricService;
import android.hardware.biometrics.IBiometricServiceReceiver;
import android.hardware.biometrics.IBiometricServiceReceiverInternal;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.UserHandle;
import android.provider.Settings;
import android.security.KeyStore;
import android.text.TextUtils;
import android.util.Pair;
import android.util.Slog;
import com.android.internal.os.SomeArgs;
import com.android.internal.statusbar.IStatusBarService;
import com.android.internal.util.FrameworkStatsLog;
import com.android.server.SystemService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class BiometricService extends SystemService {
    private static final int BIOMETRIC_DISABLED_BY_DEVICE_POLICY = 2;
    private static final int BIOMETRIC_HARDWARE_NOT_DETECTED = 5;
    private static final int BIOMETRIC_INSUFFICIENT_STRENGTH = 3;
    private static final int BIOMETRIC_INSUFFICIENT_STRENGTH_AFTER_DOWNGRADE = 4;
    private static final int BIOMETRIC_NOT_ENABLED_FOR_APPS = 7;
    private static final int BIOMETRIC_NOT_ENROLLED = 6;
    private static final int BIOMETRIC_NO_HARDWARE = 0;
    private static final int BIOMETRIC_OK = 1;
    private static final boolean DEBUG = true;
    private static final int MSG_AUTHENTICATE = 9;
    private static final int MSG_CANCEL_AUTHENTICATION = 10;
    private static final int MSG_CLIENT_DIED = 14;
    private static final int MSG_ON_ACQUIRED = 5;
    private static final int MSG_ON_AUTHENTICATION_REJECTED = 3;
    private static final int MSG_ON_AUTHENTICATION_SUCCEEDED = 2;
    private static final int MSG_ON_AUTHENTICATION_TIMED_OUT = 11;
    private static final int MSG_ON_DEVICE_CREDENTIAL_PRESSED = 12;
    private static final int MSG_ON_DISMISSED = 6;
    private static final int MSG_ON_ERROR = 4;
    private static final int MSG_ON_READY_FOR_AUTHENTICATION = 8;
    private static final int MSG_ON_SYSTEM_EVENT = 13;
    private static final int MSG_ON_TRY_AGAIN_PRESSED = 7;
    static final int STATE_AUTHENTICATED_PENDING_SYSUI = 6;
    static final int STATE_AUTH_CALLED = 1;
    static final int STATE_AUTH_IDLE = 0;
    static final int STATE_AUTH_PAUSED = 3;
    static final int STATE_AUTH_PENDING_CONFIRM = 5;
    static final int STATE_AUTH_STARTED = 2;
    static final int STATE_CLIENT_DIED_CANCELLING = 9;
    static final int STATE_ERROR_PENDING_SYSUI = 7;
    static final int STATE_SHOWING_DEVICE_CREDENTIAL = 8;
    static final String TAG = "BiometricService";
    final ArrayList<AuthenticatorWrapper> mAuthenticators;
    BiometricStrengthController mBiometricStrengthController;
    AuthSession mCurrentAuthSession;
    private final DevicePolicyManager mDevicePolicyManager;
    private final List<EnabledOnKeyguardCallback> mEnabledOnKeyguardCallbacks;
    final Handler mHandler;
    final IBiometricService.Stub mImpl;
    private final Injector mInjector;
    final IBiometricServiceReceiverInternal mInternalReceiver;
    KeyStore mKeyStore;
    AuthSession mPendingAuthSession;
    private final Random mRandom;
    final SettingObserver mSettingObserver;
    IStatusBarService mStatusBarService;
    ITrustManager mTrustManager;

    @interface BiometricStatus {
    }

    final class AuthSession implements IBinder.DeathRecipient {
        private long mAuthenticatedTimeMs;
        final Bundle mBundle;
        final int mCallingPid;
        final int mCallingUid;
        final int mCallingUserId;
        final IBiometricServiceReceiver mClientReceiver;
        int mErrorEscrow;
        final HashMap<Integer, Integer> mModalitiesWaiting;
        final int mModality;
        final String mOpPackageName;
        final boolean mRequireConfirmation;
        final long mSessionId;
        private long mStartTimeMs;
        final int mSysUiSessionId;
        final IBinder mToken;
        byte[] mTokenEscrow;
        final int mUserId;
        int mVendorCodeEscrow;
        final HashMap<Integer, Integer> mModalitiesMatched = new HashMap<>();
        int mState = 0;

        AuthSession(HashMap<Integer, Integer> modalities, IBinder token, long sessionId, int userId, IBiometricServiceReceiver receiver, String opPackageName, Bundle bundle, int callingUid, int callingPid, int callingUserId, int modality, boolean requireConfirmation) {
            this.mModalitiesWaiting = modalities;
            this.mToken = token;
            this.mSessionId = sessionId;
            this.mUserId = userId;
            this.mClientReceiver = receiver;
            this.mOpPackageName = opPackageName;
            this.mBundle = bundle;
            this.mSysUiSessionId = BiometricService.this.mRandom.nextInt();
            this.mCallingUid = callingUid;
            this.mCallingPid = callingPid;
            this.mCallingUserId = callingUserId;
            this.mModality = modality;
            this.mRequireConfirmation = requireConfirmation;
            Slog.d(BiometricService.TAG, "New AuthSession, mSysUiSessionId: " + this.mSysUiSessionId);
            try {
                this.mClientReceiver.asBinder().linkToDeath(this, 0);
            } catch (RemoteException e) {
                Slog.w(BiometricService.TAG, "Unable to link to death");
            }
        }

        boolean isCrypto() {
            return this.mSessionId != 0;
        }

        boolean containsCookie(int cookie) {
            HashMap<Integer, Integer> map = this.mModalitiesWaiting;
            if (map != null && map.containsValue(Integer.valueOf(cookie))) {
                return true;
            }
            HashMap<Integer, Integer> map2 = this.mModalitiesMatched;
            return map2 != null && map2.containsValue(Integer.valueOf(cookie));
        }

        boolean isAllowDeviceCredential() {
            return Utils.isCredentialRequested(this.mBundle);
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            Slog.e(BiometricService.TAG, "Binder died, sysUiSessionId: " + this.mSysUiSessionId);
            BiometricService.this.mHandler.obtainMessage(14).sendToTarget();
        }
    }

    public static final class AuthenticatorWrapper {
        public final int OEMStrength;
        public final int id;
        public final IBiometricAuthenticator impl;
        public final int modality;
        private int updatedStrength;

        AuthenticatorWrapper(int id, int modality, int strength, IBiometricAuthenticator impl) {
            this.id = id;
            this.modality = modality;
            this.OEMStrength = strength;
            this.updatedStrength = strength;
            this.impl = impl;
        }

        int getActualStrength() {
            return this.OEMStrength | this.updatedStrength;
        }

        boolean isDowngraded() {
            return this.OEMStrength != this.updatedStrength;
        }

        void updateStrength(int newStrength) {
            String log = "updateStrength: Before(" + toString() + ")";
            this.updatedStrength = newStrength;
            Slog.d(BiometricService.TAG, log + " After(" + toString() + ")");
        }

        public String toString() {
            return "ID(" + this.id + ") OEMStrength: " + this.OEMStrength + " updatedStrength: " + this.updatedStrength + " modality " + this.modality + " authenticator: " + this.impl;
        }
    }

    public static class SettingObserver extends ContentObserver {
        private static final boolean DEFAULT_ALWAYS_REQUIRE_CONFIRMATION = false;
        private static final boolean DEFAULT_APP_ENABLED = true;
        private static final boolean DEFAULT_KEYGUARD_ENABLED = true;
        private final Uri FACE_UNLOCK_ALWAYS_REQUIRE_CONFIRMATION;
        private final Uri FACE_UNLOCK_APP_ENABLED;
        private final Uri FACE_UNLOCK_KEYGUARD_ENABLED;
        private final List<EnabledOnKeyguardCallback> mCallbacks;
        private final ContentResolver mContentResolver;
        private final Map<Integer, Boolean> mFaceAlwaysRequireConfirmation;
        private final Map<Integer, Boolean> mFaceEnabledForApps;
        private final Map<Integer, Boolean> mFaceEnabledOnKeyguard;

        public SettingObserver(Context context, Handler handler, List<EnabledOnKeyguardCallback> callbacks) {
            super(handler);
            this.FACE_UNLOCK_KEYGUARD_ENABLED = Settings.Secure.getUriFor("face_unlock_keyguard_enabled");
            this.FACE_UNLOCK_APP_ENABLED = Settings.Secure.getUriFor("face_unlock_app_enabled");
            this.FACE_UNLOCK_ALWAYS_REQUIRE_CONFIRMATION = Settings.Secure.getUriFor("face_unlock_always_require_confirmation");
            this.mFaceEnabledOnKeyguard = new HashMap();
            this.mFaceEnabledForApps = new HashMap();
            this.mFaceAlwaysRequireConfirmation = new HashMap();
            this.mContentResolver = context.getContentResolver();
            this.mCallbacks = callbacks;
            updateContentObserver();
        }

        public void updateContentObserver() {
            this.mContentResolver.unregisterContentObserver(this);
            this.mContentResolver.registerContentObserver(this.FACE_UNLOCK_KEYGUARD_ENABLED, false, this, -1);
            this.mContentResolver.registerContentObserver(this.FACE_UNLOCK_APP_ENABLED, false, this, -1);
            this.mContentResolver.registerContentObserver(this.FACE_UNLOCK_ALWAYS_REQUIRE_CONFIRMATION, false, this, -1);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange, Uri uri, int userId) {
            if (this.FACE_UNLOCK_KEYGUARD_ENABLED.equals(uri)) {
                this.mFaceEnabledOnKeyguard.put(Integer.valueOf(userId), Boolean.valueOf(Settings.Secure.getIntForUser(this.mContentResolver, "face_unlock_keyguard_enabled", 1, userId) != 0));
                if (userId == ActivityManager.getCurrentUser() && !selfChange) {
                    notifyEnabledOnKeyguardCallbacks(userId);
                    return;
                }
                return;
            }
            if (this.FACE_UNLOCK_APP_ENABLED.equals(uri)) {
                this.mFaceEnabledForApps.put(Integer.valueOf(userId), Boolean.valueOf(Settings.Secure.getIntForUser(this.mContentResolver, "face_unlock_app_enabled", 1, userId) != 0));
            } else if (this.FACE_UNLOCK_ALWAYS_REQUIRE_CONFIRMATION.equals(uri)) {
                this.mFaceAlwaysRequireConfirmation.put(Integer.valueOf(userId), Boolean.valueOf(Settings.Secure.getIntForUser(this.mContentResolver, "face_unlock_always_require_confirmation", 0, userId) != 0));
            }
        }

        public boolean getFaceEnabledOnKeyguard() {
            int user = ActivityManager.getCurrentUser();
            if (!this.mFaceEnabledOnKeyguard.containsKey(Integer.valueOf(user))) {
                onChange(true, this.FACE_UNLOCK_KEYGUARD_ENABLED, user);
            }
            return this.mFaceEnabledOnKeyguard.get(Integer.valueOf(user)).booleanValue();
        }

        public boolean getFaceEnabledForApps(int userId) {
            if (!this.mFaceEnabledForApps.containsKey(Integer.valueOf(userId))) {
                onChange(true, this.FACE_UNLOCK_APP_ENABLED, userId);
            }
            return this.mFaceEnabledForApps.getOrDefault(Integer.valueOf(userId), true).booleanValue();
        }

        public boolean getFaceAlwaysRequireConfirmation(int userId) {
            if (!this.mFaceAlwaysRequireConfirmation.containsKey(Integer.valueOf(userId))) {
                onChange(true, this.FACE_UNLOCK_ALWAYS_REQUIRE_CONFIRMATION, userId);
            }
            return this.mFaceAlwaysRequireConfirmation.get(Integer.valueOf(userId)).booleanValue();
        }

        public void notifyEnabledOnKeyguardCallbacks(int userId) {
            List<EnabledOnKeyguardCallback> callbacks = this.mCallbacks;
            for (int i = 0; i < callbacks.size(); i++) {
                callbacks.get(i).notify(BiometricSourceType.FACE, this.mFaceEnabledOnKeyguard.getOrDefault(Integer.valueOf(userId), true).booleanValue(), userId);
            }
        }
    }

    final class EnabledOnKeyguardCallback implements IBinder.DeathRecipient {
        private final IBiometricEnabledOnKeyguardCallback mCallback;

        EnabledOnKeyguardCallback(IBiometricEnabledOnKeyguardCallback callback) {
            this.mCallback = callback;
            try {
                callback.asBinder().linkToDeath(this, 0);
            } catch (RemoteException e) {
                Slog.w(BiometricService.TAG, "Unable to linkToDeath", e);
            }
        }

        void notify(BiometricSourceType sourceType, boolean enabled, int userId) {
            try {
                this.mCallback.onChanged(sourceType, enabled, userId);
            } catch (DeadObjectException e) {
                Slog.w(BiometricService.TAG, "Death while invoking notify", e);
                BiometricService.this.mEnabledOnKeyguardCallbacks.remove(this);
            } catch (RemoteException e2) {
                Slog.w(BiometricService.TAG, "Failed to invoke onChanged", e2);
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            Slog.e(BiometricService.TAG, "Enabled callback binder died");
            BiometricService.this.mEnabledOnKeyguardCallbacks.remove(this);
        }
    }

    private final class BiometricServiceWrapper extends IBiometricService.Stub {
        private BiometricServiceWrapper() {
        }

        public void onReadyForAuthentication(int cookie, boolean requireConfirmation, int userId) {
            BiometricService.this.checkInternalPermission();
            SomeArgs args = SomeArgs.obtain();
            args.argi1 = cookie;
            args.arg1 = Boolean.valueOf(requireConfirmation);
            args.argi2 = userId;
            BiometricService.this.mHandler.obtainMessage(8, args).sendToTarget();
        }

        public void authenticate(IBinder token, long sessionId, int userId, IBiometricServiceReceiver receiver, String opPackageName, Bundle bundle, int callingUid, int callingPid, int callingUserId) {
            BiometricService.this.checkInternalPermission();
            if (token == null || receiver == null || opPackageName == null || bundle == null) {
                Slog.e(BiometricService.TAG, "Unable to authenticate, one or more null arguments");
                return;
            }
            if (!Utils.isValidAuthenticatorConfig(bundle)) {
                throw new SecurityException("Invalid authenticator configuration");
            }
            Utils.combineAuthenticatorBundles(bundle);
            if (bundle.getBoolean("use_default_title", false) && TextUtils.isEmpty(bundle.getCharSequence("title"))) {
                bundle.putCharSequence("title", BiometricService.this.getContext().getString(R.string.config_UsbDeviceConnectionHandling_component));
            }
            SomeArgs args = SomeArgs.obtain();
            args.arg1 = token;
            args.arg2 = Long.valueOf(sessionId);
            args.argi1 = userId;
            args.arg3 = receiver;
            args.arg4 = opPackageName;
            args.arg5 = bundle;
            args.argi2 = callingUid;
            args.argi3 = callingPid;
            args.argi4 = callingUserId;
            BiometricService.this.mHandler.obtainMessage(9, args).sendToTarget();
        }

        public void cancelAuthentication(IBinder token, String opPackageName, int callingUid, int callingPid, int callingUserId) {
            BiometricService.this.checkInternalPermission();
            SomeArgs args = SomeArgs.obtain();
            args.arg1 = token;
            args.arg2 = opPackageName;
            args.argi1 = callingUid;
            args.argi2 = callingPid;
            args.argi3 = callingUserId;
            BiometricService.this.mHandler.obtainMessage(10, args).sendToTarget();
        }

        public int canAuthenticate(String opPackageName, int userId, int callingUserId, int authenticators) {
            BiometricService.this.checkInternalPermission();
            Slog.d(BiometricService.TAG, "canAuthenticate: User=" + userId + ", Caller=" + callingUserId + ", Authenticators=" + authenticators);
            if (!Utils.isValidAuthenticatorConfig(authenticators)) {
                throw new SecurityException("Invalid authenticator configuration");
            }
            Bundle bundle = new Bundle();
            bundle.putInt("authenticators_allowed", authenticators);
            int biometricConstantsResult = 1;
            try {
                biometricConstantsResult = ((Integer) BiometricService.this.checkAndGetAuthenticators(userId, bundle, opPackageName, false).second).intValue();
            } catch (RemoteException e) {
                Slog.e(BiometricService.TAG, "Remote exception", e);
            }
            return Utils.biometricConstantsToBiometricManager(biometricConstantsResult);
        }

        public boolean hasEnrolledBiometrics(int userId, String opPackageName) {
            BiometricService.this.checkInternalPermission();
            try {
                for (AuthenticatorWrapper authenticator : BiometricService.this.mAuthenticators) {
                    if (authenticator.impl.hasEnrolledTemplates(userId, opPackageName)) {
                        return true;
                    }
                }
                return false;
            } catch (RemoteException e) {
                Slog.e(BiometricService.TAG, "Remote exception", e);
                return false;
            }
        }

        public void registerAuthenticator(int id, int modality, int strength, IBiometricAuthenticator authenticator) {
            BiometricService.this.checkInternalPermission();
            Slog.d(BiometricService.TAG, "Registering ID: " + id + " Modality: " + modality + " Strength: " + strength);
            if (authenticator == null) {
                throw new IllegalArgumentException("Authenticator must not be null. Did you forget to modify the core/res/res/values/xml overlay for config_biometric_sensors?");
            }
            if (strength != 15 && strength != 255 && strength != 4095) {
                throw new IllegalStateException("Unsupported strength");
            }
            for (AuthenticatorWrapper wrapper : BiometricService.this.mAuthenticators) {
                if (wrapper.id == id) {
                    throw new IllegalStateException("Cannot register duplicate authenticator");
                }
            }
            String[] configs = BiometricService.this.mInjector.getConfiguration(BiometricService.this.getContext());
            boolean idFound = false;
            for (String str : configs) {
                SensorConfig config = new SensorConfig(str);
                if (config.mId == id) {
                    idFound = true;
                    break;
                }
            }
            if (!idFound) {
                throw new IllegalStateException("Cannot register unknown id");
            }
            BiometricService.this.mAuthenticators.add(new AuthenticatorWrapper(id, modality, strength, authenticator));
            BiometricService.this.mBiometricStrengthController.updateStrengths();
        }

        public void registerEnabledOnKeyguardCallback(IBiometricEnabledOnKeyguardCallback callback, int callingUserId) {
            BiometricService.this.checkInternalPermission();
            BiometricService.this.mEnabledOnKeyguardCallbacks.add(BiometricService.this.new EnabledOnKeyguardCallback(callback));
            try {
                callback.onChanged(BiometricSourceType.FACE, BiometricService.this.mSettingObserver.getFaceEnabledOnKeyguard(), callingUserId);
            } catch (RemoteException e) {
                Slog.w(BiometricService.TAG, "Remote exception", e);
            }
        }

        public void setActiveUser(int userId) {
            BiometricService.this.checkInternalPermission();
            try {
                for (AuthenticatorWrapper authenticator : BiometricService.this.mAuthenticators) {
                    authenticator.impl.setActiveUser(userId);
                }
            } catch (RemoteException e) {
                Slog.e(BiometricService.TAG, "Remote exception", e);
            }
        }

        public void resetLockout(byte[] token) {
            BiometricService.this.checkInternalPermission();
            try {
                for (AuthenticatorWrapper authenticator : BiometricService.this.mAuthenticators) {
                    authenticator.impl.resetLockout(token);
                }
            } catch (RemoteException e) {
                Slog.e(BiometricService.TAG, "Remote exception", e);
            }
        }

        public long[] getAuthenticatorIds(int callingUserId) {
            BiometricService.this.checkInternalPermission();
            List<Long> ids = new ArrayList<>();
            for (AuthenticatorWrapper authenticator : BiometricService.this.mAuthenticators) {
                try {
                    long id = authenticator.impl.getAuthenticatorId(callingUserId);
                    if (!Utils.isAtLeastStrength(authenticator.getActualStrength(), 15) || id == 0) {
                        Slog.d(BiometricService.TAG, "Authenticator " + authenticator + ", authenticatorID " + id + " cannot participate in Keystore operations");
                    } else {
                        ids.add(Long.valueOf(id));
                    }
                } catch (RemoteException e) {
                    Slog.e(BiometricService.TAG, "RemoteException", e);
                }
            }
            long[] result = new long[ids.size()];
            for (int i = 0; i < ids.size(); i++) {
                result[i] = ids.get(i).longValue();
            }
            return result;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkInternalPermission() {
        getContext().enforceCallingOrSelfPermission("android.permission.USE_BIOMETRIC_INTERNAL", "Must have USE_BIOMETRIC_INTERNAL permission");
    }

    public static class Injector {
        public IActivityManager getActivityManagerService() {
            return ActivityManager.getService();
        }

        public ITrustManager getTrustManager() {
            return ITrustManager.Stub.asInterface(ServiceManager.getService("trust"));
        }

        public IStatusBarService getStatusBarService() {
            return IStatusBarService.Stub.asInterface(ServiceManager.getService("statusbar"));
        }

        public SettingObserver getSettingObserver(Context context, Handler handler, List<EnabledOnKeyguardCallback> callbacks) {
            return new SettingObserver(context, handler, callbacks);
        }

        public KeyStore getKeyStore() {
            return KeyStore.getInstance();
        }

        public boolean isDebugEnabled(Context context, int userId) {
            return Utils.isDebugEnabled(context, userId);
        }

        public void publishBinderService(BiometricService service, IBiometricService.Stub impl) {
            service.publishBinderService("biometric", impl);
        }

        public BiometricStrengthController getBiometricStrengthController(BiometricService service) {
            return new BiometricStrengthController(service);
        }

        public String[] getConfiguration(Context context) {
            return context.getResources().getStringArray(R.array.config_bg_current_drain_high_threshold_to_bg_restricted);
        }
    }

    public BiometricService(Context context) {
        this(context, new Injector());
    }

    BiometricService(Context context, Injector injector) {
        super(context);
        this.mRandom = new Random();
        this.mAuthenticators = new ArrayList<>();
        this.mHandler = new Handler(Looper.getMainLooper()) { // from class: com.android.server.biometrics.BiometricService.1
            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                switch (msg.what) {
                    case 2:
                        SomeArgs args = (SomeArgs) msg.obj;
                        BiometricService.this.handleAuthenticationSucceeded(((Boolean) args.arg1).booleanValue(), (byte[]) args.arg2, ((Boolean) args.arg3).booleanValue());
                        args.recycle();
                        break;
                    case 3:
                        BiometricService.this.handleAuthenticationRejected();
                        break;
                    case 4:
                        SomeArgs args2 = (SomeArgs) msg.obj;
                        BiometricService.this.handleOnError(args2.argi1, args2.argi2, args2.argi3, args2.argi4);
                        args2.recycle();
                        break;
                    case 5:
                        SomeArgs args3 = (SomeArgs) msg.obj;
                        BiometricService.this.handleOnAcquired(args3.argi1, (String) args3.arg1);
                        args3.recycle();
                        break;
                    case 6:
                        BiometricService.this.handleOnDismissed(msg.arg1, (byte[]) msg.obj);
                        break;
                    case 7:
                        BiometricService.this.handleOnTryAgainPressed();
                        break;
                    case 8:
                        SomeArgs args4 = (SomeArgs) msg.obj;
                        BiometricService.this.handleOnReadyForAuthentication(args4.argi1, ((Boolean) args4.arg1).booleanValue(), args4.argi2);
                        args4.recycle();
                        break;
                    case 9:
                        SomeArgs args5 = (SomeArgs) msg.obj;
                        BiometricService.this.handleAuthenticate((IBinder) args5.arg1, ((Long) args5.arg2).longValue(), args5.argi1, (IBiometricServiceReceiver) args5.arg3, (String) args5.arg4, (Bundle) args5.arg5, args5.argi2, args5.argi3, args5.argi4);
                        args5.recycle();
                        break;
                    case 10:
                        SomeArgs args6 = (SomeArgs) msg.obj;
                        BiometricService.this.handleCancelAuthentication((IBinder) args6.arg1, (String) args6.arg2, args6.argi1, args6.argi2, args6.argi3);
                        args6.recycle();
                        break;
                    case 11:
                        SomeArgs args7 = (SomeArgs) msg.obj;
                        BiometricService.this.handleAuthenticationTimedOut(args7.argi1, args7.argi2, args7.argi3);
                        args7.recycle();
                        break;
                    case 12:
                        BiometricService.this.handleOnDeviceCredentialPressed();
                        break;
                    case 13:
                        BiometricService.this.handleOnSystemEvent(((Integer) msg.obj).intValue());
                        break;
                    case 14:
                        BiometricService.this.handleClientDied();
                        break;
                    default:
                        Slog.e(BiometricService.TAG, "Unknown message: " + msg);
                        break;
                }
            }
        };
        this.mInternalReceiver = new IBiometricServiceReceiverInternal.Stub() { // from class: com.android.server.biometrics.BiometricService.2
            public void onAuthenticationSucceeded(boolean requireConfirmation, byte[] token, boolean isStrongBiometric) {
                SomeArgs args = SomeArgs.obtain();
                args.arg1 = Boolean.valueOf(requireConfirmation);
                args.arg2 = token;
                args.arg3 = Boolean.valueOf(isStrongBiometric);
                BiometricService.this.mHandler.obtainMessage(2, args).sendToTarget();
            }

            public void onAuthenticationFailed() {
                Slog.v(BiometricService.TAG, "onAuthenticationFailed");
                BiometricService.this.mHandler.obtainMessage(3).sendToTarget();
            }

            public void onError(int cookie, int modality, int error, int vendorCode) throws RemoteException {
                if (error == 3) {
                    SomeArgs args = SomeArgs.obtain();
                    args.argi1 = modality;
                    args.argi2 = error;
                    args.argi3 = vendorCode;
                    BiometricService.this.mHandler.obtainMessage(11, args).sendToTarget();
                    return;
                }
                SomeArgs args2 = SomeArgs.obtain();
                args2.argi1 = cookie;
                args2.argi2 = modality;
                args2.argi3 = error;
                args2.argi4 = vendorCode;
                BiometricService.this.mHandler.obtainMessage(4, args2).sendToTarget();
            }

            public void onAcquired(int acquiredInfo, String message) throws RemoteException {
                SomeArgs args = SomeArgs.obtain();
                args.argi1 = acquiredInfo;
                args.arg1 = message;
                BiometricService.this.mHandler.obtainMessage(5, args).sendToTarget();
            }

            public void onDialogDismissed(int reason, byte[] credentialAttestation) throws RemoteException {
                BiometricService.this.mHandler.obtainMessage(6, reason, 0, credentialAttestation).sendToTarget();
            }

            public void onTryAgainPressed() {
                BiometricService.this.mHandler.sendEmptyMessage(7);
            }

            public void onDeviceCredentialPressed() {
                BiometricService.this.mHandler.sendEmptyMessage(12);
            }

            public void onSystemEvent(int event) {
                BiometricService.this.mHandler.obtainMessage(13, Integer.valueOf(event)).sendToTarget();
            }
        };
        this.mInjector = injector;
        this.mDevicePolicyManager = (DevicePolicyManager) context.getSystemService("device_policy");
        this.mImpl = new BiometricServiceWrapper();
        ArrayList arrayList = new ArrayList();
        this.mEnabledOnKeyguardCallbacks = arrayList;
        this.mSettingObserver = this.mInjector.getSettingObserver(context, this.mHandler, arrayList);
        try {
            injector.getActivityManagerService().registerUserSwitchObserver(new UserSwitchObserver() { // from class: com.android.server.biometrics.BiometricService.3
                public void onUserSwitchComplete(int newUserId) {
                    BiometricService.this.mSettingObserver.updateContentObserver();
                    BiometricService.this.mSettingObserver.notifyEnabledOnKeyguardCallbacks(newUserId);
                }
            }, BiometricService.class.getName());
        } catch (RemoteException e) {
            Slog.e(TAG, "Failed to register user switch observer", e);
        }
    }

    @Override // com.android.server.SystemService
    public void onStart() {
        this.mKeyStore = this.mInjector.getKeyStore();
        this.mStatusBarService = this.mInjector.getStatusBarService();
        this.mTrustManager = this.mInjector.getTrustManager();
        this.mInjector.publishBinderService(this, this.mImpl);
        BiometricStrengthController biometricStrengthController = this.mInjector.getBiometricStrengthController(this);
        this.mBiometricStrengthController = biometricStrengthController;
        biometricStrengthController.startListening();
    }

    private int mapModalityToDevicePolicyType(int modality) {
        if (modality == 2) {
            return 32;
        }
        if (modality == 4) {
            return 256;
        }
        if (modality == 8) {
            return 128;
        }
        Slog.e(TAG, "Error modality=" + modality);
        return 0;
    }

    private boolean isBiometricDisabledByDevicePolicy(int modality, int effectiveUserId) {
        int biometricToCheck = mapModalityToDevicePolicyType(modality);
        if (biometricToCheck == 0) {
            Slog.e(TAG, "Allowing unknown modality " + modality + " to pass Device Policy check");
            return false;
        }
        int devicePolicyDisabledFeatures = this.mDevicePolicyManager.getKeyguardDisabledFeatures(null, effectiveUserId);
        boolean isBiometricDisabled = (biometricToCheck & devicePolicyDisabledFeatures) != 0;
        Slog.w(TAG, "isBiometricDisabledByDevicePolicy(" + modality + "," + effectiveUserId + ")=" + isBiometricDisabled);
        return isBiometricDisabled;
    }

    private static int biometricStatusToBiometricConstant(int status) {
        if (status == 0) {
            return 12;
        }
        if (status == 1) {
            return 0;
        }
        if (status == 3) {
            return 12;
        }
        if (status != 4) {
            return status != 6 ? 1 : 11;
        }
        return 15;
    }

    private Pair<Integer, Integer> getStatusForBiometricAuthenticator(AuthenticatorWrapper authenticator, int userId, String opPackageName, boolean checkDevicePolicyManager, int requestedStrength) {
        if (checkDevicePolicyManager && isBiometricDisabledByDevicePolicy(authenticator.modality, userId)) {
            return new Pair<>(0, 2);
        }
        boolean wasStrongEnough = Utils.isAtLeastStrength(authenticator.OEMStrength, requestedStrength);
        boolean isStrongEnough = Utils.isAtLeastStrength(authenticator.getActualStrength(), requestedStrength);
        if (wasStrongEnough && !isStrongEnough) {
            return new Pair<>(Integer.valueOf(authenticator.modality), 4);
        }
        if (!wasStrongEnough) {
            return new Pair<>(0, 3);
        }
        try {
            if (!authenticator.impl.isHardwareDetected(opPackageName)) {
                return new Pair<>(Integer.valueOf(authenticator.modality), 5);
            }
            if (!authenticator.impl.hasEnrolledTemplates(userId, opPackageName)) {
                return new Pair<>(Integer.valueOf(authenticator.modality), 6);
            }
            if (!isEnabledForApp(authenticator.modality, userId)) {
                return new Pair<>(0, 7);
            }
            return new Pair<>(Integer.valueOf(authenticator.modality), 1);
        } catch (RemoteException e) {
            return new Pair<>(Integer.valueOf(authenticator.modality), 5);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Pair<Integer, Integer> checkAndGetAuthenticators(int userId, Bundle bundle, String opPackageName, boolean checkDevicePolicyManager) throws RemoteException {
        String str;
        boolean biometricRequested = Utils.isBiometricRequested(bundle);
        boolean credentialRequested = Utils.isCredentialRequested(bundle);
        boolean credentialOk = this.mTrustManager.isDeviceSecure(userId);
        int biometricModality = 0;
        Iterator<AuthenticatorWrapper> it = this.mAuthenticators.iterator();
        int firstBiometricModality = 0;
        int firstBiometricStatus = 0;
        int biometricStatus = 0;
        while (true) {
            if (!it.hasNext()) {
                str = TAG;
                break;
            }
            AuthenticatorWrapper authenticator = it.next();
            int requestedStrength = Utils.getPublicBiometricStrength(bundle);
            str = TAG;
            Pair<Integer, Integer> result = getStatusForBiometricAuthenticator(authenticator, userId, opPackageName, checkDevicePolicyManager, requestedStrength);
            biometricStatus = ((Integer) result.second).intValue();
            Slog.d(str, "Package: " + opPackageName + " Authenticator ID: " + authenticator.id + " Modality: " + authenticator.modality + " Reported Modality: " + result.first + " Status: " + biometricStatus);
            if (firstBiometricModality == 0) {
                int firstBiometricModality2 = ((Integer) result.first).intValue();
                firstBiometricModality = firstBiometricModality2;
                firstBiometricStatus = biometricStatus;
            }
            if (biometricStatus == 1) {
                biometricModality = ((Integer) result.first).intValue();
                break;
            }
        }
        if (biometricRequested && credentialRequested) {
            if (credentialOk || biometricStatus == 1) {
                if (biometricStatus != 1) {
                    bundle.putInt("authenticators_allowed", 32768);
                }
                return new Pair<>(Integer.valueOf(biometricModality), 0);
            }
            return new Pair<>(Integer.valueOf(firstBiometricModality), 11);
        }
        if (biometricRequested) {
            if (biometricStatus == 1) {
                return new Pair<>(Integer.valueOf(biometricModality), Integer.valueOf(biometricStatusToBiometricConstant(biometricStatus)));
            }
            return new Pair<>(Integer.valueOf(firstBiometricModality), Integer.valueOf(biometricStatusToBiometricConstant(firstBiometricStatus)));
        }
        if (credentialRequested) {
            if (credentialOk) {
                return new Pair<>(0, 0);
            }
            return new Pair<>(0, 14);
        }
        Slog.e(str, "No authenticators requested");
        return new Pair<>(0, 12);
    }

    private boolean isEnabledForApp(int modality, int userId) {
        if (modality == 2 || modality == 4) {
            return true;
        }
        if (modality == 8) {
            return this.mSettingObserver.getFaceEnabledForApps(userId);
        }
        Slog.w(TAG, "Unsupported modality: " + modality);
        return false;
    }

    private void logDialogDismissed(int reason) {
        int error;
        if (reason == 1) {
            long latency = System.currentTimeMillis() - this.mCurrentAuthSession.mAuthenticatedTimeMs;
            FrameworkStatsLog.write(88, statsModality(), this.mCurrentAuthSession.mUserId, this.mCurrentAuthSession.isCrypto(), 2, this.mCurrentAuthSession.mRequireConfirmation, 3, latency, this.mInjector.isDebugEnabled(getContext(), this.mCurrentAuthSession.mUserId));
            return;
        }
        long latency2 = System.currentTimeMillis() - this.mCurrentAuthSession.mStartTimeMs;
        if (reason == 2) {
            error = 13;
        } else if (reason == 3) {
            error = 10;
        } else {
            error = 0;
        }
        FrameworkStatsLog.write(89, statsModality(), this.mCurrentAuthSession.mUserId, this.mCurrentAuthSession.isCrypto(), 2, 2, error, 0, this.mInjector.isDebugEnabled(getContext(), this.mCurrentAuthSession.mUserId), latency2);
    }

    private int statsModality() {
        int modality = 0;
        AuthSession authSession = this.mCurrentAuthSession;
        if (authSession == null) {
            return 0;
        }
        if ((authSession.mModality & 2) != 0) {
            modality = 0 | 1;
        }
        if ((this.mCurrentAuthSession.mModality & 4) != 0) {
            modality |= 2;
        }
        if ((this.mCurrentAuthSession.mModality & 8) != 0) {
            return modality | 4;
        }
        return modality;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleAuthenticationSucceeded(boolean requireConfirmation, byte[] token, boolean isStrongBiometric) {
        try {
            if (this.mCurrentAuthSession == null) {
                Slog.e(TAG, "handleAuthenticationSucceeded: Auth session is null");
                return;
            }
            if (isStrongBiometric) {
                this.mCurrentAuthSession.mTokenEscrow = token;
            } else if (token != null) {
                Slog.w(TAG, "Dropping authToken for non-strong biometric");
            }
            if (!requireConfirmation) {
                this.mCurrentAuthSession.mState = 6;
            } else {
                this.mCurrentAuthSession.mAuthenticatedTimeMs = System.currentTimeMillis();
                this.mCurrentAuthSession.mState = 5;
            }
            this.mStatusBarService.onBiometricAuthenticated();
        } catch (RemoteException e) {
            Slog.e(TAG, "Remote exception", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleAuthenticationRejected() {
        Slog.v(TAG, "handleAuthenticationRejected()");
        try {
            if (this.mCurrentAuthSession == null) {
                Slog.e(TAG, "handleAuthenticationRejected: Auth session is null");
                return;
            }
            this.mStatusBarService.onBiometricError(0, 100, 0);
            if ((this.mCurrentAuthSession.mModality & 8) != 0) {
                this.mCurrentAuthSession.mState = 3;
            }
            this.mCurrentAuthSession.mClientReceiver.onAuthenticationFailed();
        } catch (RemoteException e) {
            Slog.e(TAG, "Remote exception", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleAuthenticationTimedOut(int modality, int error, int vendorCode) {
        Slog.v(TAG, String.format("handleAuthenticationTimedOut(%d, %d, %d)", Integer.valueOf(modality), Integer.valueOf(error), Integer.valueOf(vendorCode)));
        try {
            if (this.mCurrentAuthSession == null) {
                Slog.e(TAG, "handleAuthenticationTimedOut: Auth session is null");
            } else {
                this.mStatusBarService.onBiometricError(modality, error, vendorCode);
                this.mCurrentAuthSession.mState = 3;
            }
        } catch (RemoteException e) {
            Slog.e(TAG, "Remote exception", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleOnError(int cookie, int modality, int error, int vendorCode) {
        Slog.d(TAG, "handleOnError: " + error + " cookie: " + cookie);
        try {
            if (this.mCurrentAuthSession != null && this.mCurrentAuthSession.containsCookie(cookie)) {
                this.mCurrentAuthSession.mErrorEscrow = error;
                this.mCurrentAuthSession.mVendorCodeEscrow = vendorCode;
                if (this.mCurrentAuthSession.mState != 2) {
                    if (this.mCurrentAuthSession.mState == 3) {
                        this.mCurrentAuthSession.mClientReceiver.onError(modality, error, vendorCode);
                        this.mStatusBarService.hideAuthenticationDialog();
                        this.mCurrentAuthSession = null;
                        return;
                    } else {
                        if (this.mCurrentAuthSession.mState == 8) {
                            Slog.d(TAG, "Biometric canceled, ignoring from state: " + this.mCurrentAuthSession.mState);
                            return;
                        }
                        if (this.mCurrentAuthSession.mState == 9) {
                            this.mStatusBarService.hideAuthenticationDialog();
                            this.mCurrentAuthSession = null;
                            return;
                        } else {
                            Slog.e(TAG, "Impossible session error state: " + this.mCurrentAuthSession.mState);
                            return;
                        }
                    }
                }
                boolean errorLockout = error == 7 || error == 9;
                if (this.mCurrentAuthSession.isAllowDeviceCredential() && errorLockout) {
                    this.mCurrentAuthSession.mState = 8;
                    this.mStatusBarService.onBiometricError(modality, error, vendorCode);
                } else if (error != 5) {
                    this.mCurrentAuthSession.mState = 7;
                    this.mStatusBarService.onBiometricError(modality, error, vendorCode);
                } else {
                    this.mStatusBarService.hideAuthenticationDialog();
                    this.mCurrentAuthSession.mClientReceiver.onError(modality, error, vendorCode);
                    this.mCurrentAuthSession = null;
                }
                return;
            }
            if (this.mPendingAuthSession != null && this.mPendingAuthSession.containsCookie(cookie)) {
                if (this.mPendingAuthSession.mState == 1) {
                    if (this.mPendingAuthSession.isAllowDeviceCredential()) {
                        int authenticators = this.mPendingAuthSession.mBundle.getInt("authenticators_allowed", 0);
                        this.mPendingAuthSession.mBundle.putInt("authenticators_allowed", authenticators & (-256));
                        AuthSession authSession = this.mPendingAuthSession;
                        this.mCurrentAuthSession = authSession;
                        authSession.mState = 8;
                        this.mPendingAuthSession = null;
                        this.mStatusBarService.showAuthenticationDialog(this.mCurrentAuthSession.mBundle, this.mInternalReceiver, 0, false, this.mCurrentAuthSession.mUserId, this.mCurrentAuthSession.mOpPackageName, this.mCurrentAuthSession.mSessionId, this.mCurrentAuthSession.mSysUiSessionId);
                        return;
                    }
                    this.mPendingAuthSession.mClientReceiver.onError(modality, error, vendorCode);
                    this.mPendingAuthSession = null;
                    return;
                }
                Slog.e(TAG, "Impossible pending session error state: " + this.mPendingAuthSession.mState);
                return;
            }
            Slog.e(TAG, "Unknown cookie: " + cookie);
        } catch (RemoteException e) {
            Slog.e(TAG, "Remote exception", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleOnAcquired(int acquiredInfo, String message) {
        if (this.mCurrentAuthSession == null) {
            Slog.e(TAG, "onAcquired(): Auth session is null");
            return;
        }
        if (message == null) {
            Slog.w(TAG, "Ignoring null message: " + acquiredInfo);
            return;
        }
        try {
            this.mStatusBarService.onBiometricHelp(message);
        } catch (RemoteException e) {
            Slog.e(TAG, "Remote exception", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:17:0x008f A[Catch: RemoteException -> 0x00ab, TryCatch #0 {RemoteException -> 0x00ab, blocks: (B:10:0x002b, B:11:0x0031, B:12:0x0037, B:23:0x00c1, B:13:0x004c, B:14:0x006e, B:15:0x0089, B:17:0x008f, B:19:0x009f, B:18:0x0099, B:22:0x00ad), top: B:27:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:18:0x0099 A[Catch: RemoteException -> 0x00ab, TryCatch #0 {RemoteException -> 0x00ab, blocks: (B:10:0x002b, B:11:0x0031, B:12:0x0037, B:23:0x00c1, B:13:0x004c, B:14:0x006e, B:15:0x0089, B:17:0x008f, B:19:0x009f, B:18:0x0099, B:22:0x00ad), top: B:27:0x0024 }] */
    public void handleOnDismissed(int reason, byte[] credentialAttestation) {
        if (this.mCurrentAuthSession == null) {
            Slog.e(TAG, "onDismissed: " + reason + ", auth session null");
            return;
        }
        logDialogDismissed(reason);
        try {
            switch (reason) {
                case 1:
                case 4:
                    if (this.mCurrentAuthSession.mTokenEscrow != null) {
                        this.mKeyStore.addAuthToken(this.mCurrentAuthSession.mTokenEscrow);
                    } else {
                        Slog.e(TAG, "mTokenEscrow is null");
                    }
                    this.mCurrentAuthSession.mClientReceiver.onAuthenticationSucceeded(Utils.getAuthenticationTypeForResult(reason));
                    break;
                case 2:
                    this.mCurrentAuthSession.mClientReceiver.onDialogDismissed(reason);
                    cancelInternal(null, null, this.mCurrentAuthSession.mCallingUid, this.mCurrentAuthSession.mCallingPid, this.mCurrentAuthSession.mCallingUserId, false);
                    break;
                case 3:
                    this.mCurrentAuthSession.mClientReceiver.onError(this.mCurrentAuthSession.mModality, 10, 0);
                    cancelInternal(null, null, Binder.getCallingUid(), Binder.getCallingPid(), UserHandle.getCallingUserId(), false);
                    break;
                case 5:
                case 6:
                    this.mCurrentAuthSession.mClientReceiver.onError(this.mCurrentAuthSession.mModality, this.mCurrentAuthSession.mErrorEscrow, this.mCurrentAuthSession.mVendorCodeEscrow);
                    break;
                case 7:
                    if (credentialAttestation != null) {
                        this.mKeyStore.addAuthToken(credentialAttestation);
                    } else {
                        Slog.e(TAG, "Credential confirmed but attestation is null");
                    }
                    if (this.mCurrentAuthSession.mTokenEscrow != null) {
                        this.mKeyStore.addAuthToken(this.mCurrentAuthSession.mTokenEscrow);
                    } else {
                        Slog.e(TAG, "mTokenEscrow is null");
                    }
                    this.mCurrentAuthSession.mClientReceiver.onAuthenticationSucceeded(Utils.getAuthenticationTypeForResult(reason));
                    break;
                default:
                    Slog.w(TAG, "Unhandled reason: " + reason);
                    break;
            }
            this.mCurrentAuthSession = null;
        } catch (RemoteException e) {
            Slog.e(TAG, "Remote exception", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleOnTryAgainPressed() {
        Slog.d(TAG, "onTryAgainPressed");
        authenticateInternal(this.mCurrentAuthSession.mToken, this.mCurrentAuthSession.mSessionId, this.mCurrentAuthSession.mUserId, this.mCurrentAuthSession.mClientReceiver, this.mCurrentAuthSession.mOpPackageName, this.mCurrentAuthSession.mBundle, this.mCurrentAuthSession.mCallingUid, this.mCurrentAuthSession.mCallingPid, this.mCurrentAuthSession.mCallingUserId, this.mCurrentAuthSession.mModality);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleOnDeviceCredentialPressed() {
        Slog.d(TAG, "onDeviceCredentialPressed");
        if (this.mCurrentAuthSession == null) {
            Slog.e(TAG, "Auth session null");
        } else {
            cancelInternal(null, null, Binder.getCallingUid(), Binder.getCallingPid(), UserHandle.getCallingUserId(), false);
            this.mCurrentAuthSession.mState = 8;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleOnSystemEvent(int event) {
        AuthSession authSession = this.mCurrentAuthSession;
        if (authSession == null) {
            Slog.e(TAG, "Auth session null");
            return;
        }
        boolean shouldReceive = authSession.mBundle.getBoolean("receive_system_events", false);
        Slog.d(TAG, "onSystemEvent: " + event + ", shouldReceive: " + shouldReceive);
        if (!shouldReceive) {
            return;
        }
        try {
            this.mCurrentAuthSession.mClientReceiver.onSystemEvent(event);
        } catch (RemoteException e) {
            Slog.e(TAG, "RemoteException", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleClientDied() {
        if (this.mCurrentAuthSession == null) {
            Slog.e(TAG, "Auth session null");
            return;
        }
        Slog.e(TAG, "SysUiSessionId: " + this.mCurrentAuthSession.mSysUiSessionId + " State: " + this.mCurrentAuthSession.mState);
        try {
            if (this.mCurrentAuthSession.mState == 2) {
                this.mCurrentAuthSession.mState = 9;
                cancelInternal(this.mCurrentAuthSession.mToken, this.mCurrentAuthSession.mOpPackageName, this.mCurrentAuthSession.mCallingUid, this.mCurrentAuthSession.mCallingPid, this.mCurrentAuthSession.mCallingUserId, false);
            } else {
                this.mStatusBarService.hideAuthenticationDialog();
                this.mCurrentAuthSession = null;
            }
        } catch (RemoteException e) {
            Slog.e(TAG, "Remote exception: " + e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleOnReadyForAuthentication(int cookie, boolean requireConfirmation, int userId) {
        AuthSession authSession = this.mPendingAuthSession;
        if (authSession == null) {
            Slog.w(TAG, "Pending auth session null");
            return;
        }
        for (Map.Entry<Integer, Integer> pair : authSession.mModalitiesWaiting.entrySet()) {
            if (pair.getValue().intValue() == cookie) {
                this.mPendingAuthSession.mModalitiesMatched.put(pair.getKey(), pair.getValue());
                this.mPendingAuthSession.mModalitiesWaiting.remove(pair.getKey());
                Slog.d(TAG, "Matched cookie: " + cookie + ", " + this.mPendingAuthSession.mModalitiesWaiting.size() + " remaining");
                break;
            }
        }
        if (this.mPendingAuthSession.mModalitiesWaiting.isEmpty()) {
            AuthSession authSession2 = this.mCurrentAuthSession;
            boolean continuing = authSession2 != null && authSession2.mState == 3;
            AuthSession authSession3 = this.mPendingAuthSession;
            this.mCurrentAuthSession = authSession3;
            authSession3.mStartTimeMs = System.currentTimeMillis();
            this.mPendingAuthSession = null;
            this.mCurrentAuthSession.mState = 2;
            int modality = 0;
            for (Map.Entry<Integer, Integer> pair2 : this.mCurrentAuthSession.mModalitiesMatched.entrySet()) {
                boolean foundAuthenticator = false;
                for (AuthenticatorWrapper authenticator : this.mAuthenticators) {
                    if (authenticator.modality == pair2.getKey().intValue()) {
                        try {
                            authenticator.impl.startPreparedClient(pair2.getValue().intValue());
                        } catch (RemoteException e) {
                            Slog.e(TAG, "Remote exception", e);
                        }
                        foundAuthenticator = true;
                    }
                }
                if (!foundAuthenticator) {
                    Slog.e(TAG, "Unknown modality: " + pair2.getKey());
                }
                modality |= pair2.getKey().intValue();
            }
            if (!continuing) {
                try {
                    try {
                        this.mStatusBarService.showAuthenticationDialog(this.mCurrentAuthSession.mBundle, this.mInternalReceiver, modality, requireConfirmation, userId, this.mCurrentAuthSession.mOpPackageName, this.mCurrentAuthSession.mSessionId, this.mCurrentAuthSession.mSysUiSessionId);
                    } catch (RemoteException e2) {
                        e = e2;
                        Slog.e(TAG, "Remote exception", e);
                    }
                } catch (RemoteException e3) {
                    e = e3;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleAuthenticate(final IBinder token, final long sessionId, final int userId, final IBiometricServiceReceiver receiver, final String opPackageName, final Bundle bundle, final int callingUid, final int callingPid, final int callingUserId) {
        this.mHandler.post(new Runnable() { // from class: com.android.server.biometrics.-$$Lambda$BiometricService$IIHhqSKogJZG56VmePRbTOf_5qo
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$handleAuthenticate$0$BiometricService(bundle, userId, opPackageName, token, sessionId, receiver, callingUid, callingPid, callingUserId);
            }
        });
    }

    public /* synthetic */ void lambda$handleAuthenticate$0$BiometricService(Bundle bundle, int userId, String opPackageName, IBinder token, long sessionId, IBiometricServiceReceiver receiver, int callingUid, int callingPid, int callingUserId) {
        try {
            boolean checkDevicePolicyManager = bundle.getBoolean("check_dpm", false);
            try {
                Pair<Integer, Integer> pair = checkAndGetAuthenticators(userId, bundle, opPackageName, checkDevicePolicyManager);
                int modality = ((Integer) pair.first).intValue();
                int result = ((Integer) pair.second).intValue();
                if (result == 0) {
                    authenticateInternal(token, sessionId, userId, receiver, opPackageName, bundle, callingUid, callingPid, callingUserId, modality);
                    return;
                } else {
                    try {
                        receiver.onError(modality, result, 0);
                        return;
                    } catch (RemoteException e) {
                        e = e;
                    }
                }
            } catch (RemoteException e2) {
                e = e2;
            }
        } catch (RemoteException e3) {
            e = e3;
        }
        Slog.e(TAG, "Remote exception", e);
    }

    private void authenticateInternal(IBinder token, long sessionId, int userId, IBiometricServiceReceiver receiver, String opPackageName, Bundle bundle, int callingUid, int callingPid, int callingUserId, int modality) {
        boolean requireConfirmation;
        boolean requireConfirmation2 = bundle.getBoolean("require_confirmation", true);
        if ((modality & 8) != 0) {
            requireConfirmation = requireConfirmation2 || this.mSettingObserver.getFaceAlwaysRequireConfirmation(userId);
        } else {
            requireConfirmation = requireConfirmation2;
        }
        int cookie = this.mRandom.nextInt(2147483646) + 1;
        int authenticators = bundle.getInt("authenticators_allowed", 0);
        Slog.d(TAG, "Creating auth session. Modality: " + modality + ", cookie: " + cookie + ", authenticators: " + authenticators);
        HashMap<Integer, Integer> modalities = new HashMap<>();
        if (((-32769) & authenticators) != 0) {
            modalities.put(Integer.valueOf(modality), Integer.valueOf(cookie));
        }
        AuthSession authSession = new AuthSession(modalities, token, sessionId, userId, receiver, opPackageName, bundle, callingUid, callingPid, callingUserId, modality, requireConfirmation);
        this.mPendingAuthSession = authSession;
        try {
            if (authenticators == 32768) {
                authSession.mState = 8;
                AuthSession authSession2 = this.mPendingAuthSession;
                this.mCurrentAuthSession = authSession2;
                this.mPendingAuthSession = null;
                this.mStatusBarService.showAuthenticationDialog(authSession2.mBundle, this.mInternalReceiver, 0, false, this.mCurrentAuthSession.mUserId, this.mCurrentAuthSession.mOpPackageName, sessionId, this.mCurrentAuthSession.mSysUiSessionId);
            } else {
                authSession.mState = 1;
                for (AuthenticatorWrapper authenticator : this.mAuthenticators) {
                    if (authenticator.modality == modality) {
                        try {
                            authenticator.impl.prepareForAuthentication(requireConfirmation, token, sessionId, userId, this.mInternalReceiver, opPackageName, cookie, callingUid, callingPid, callingUserId);
                            break;
                        } catch (RemoteException e) {
                            Slog.e(TAG, "Unable to start authentication", e);
                        }
                    }
                }
            }
        } catch (RemoteException e2) {
            Slog.e(TAG, "Unable to start authentication", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCancelAuthentication(IBinder token, String opPackageName, int callingUid, int callingPid, int callingUserId) {
        if (token == null || opPackageName == null) {
            Slog.e(TAG, "Unable to cancel, one or more null arguments");
            return;
        }
        AuthSession authSession = this.mCurrentAuthSession;
        if (authSession != null && authSession.mState != 2) {
            try {
                this.mCurrentAuthSession.mClientReceiver.onError(this.mCurrentAuthSession.mModality, 5, 0);
                this.mCurrentAuthSession = null;
                this.mStatusBarService.hideAuthenticationDialog();
                return;
            } catch (RemoteException e) {
                Slog.e(TAG, "Remote exception", e);
                return;
            }
        }
        cancelInternal(token, opPackageName, callingUid, callingPid, callingUserId, true);
    }

    void cancelInternal(IBinder token, String opPackageName, int callingUid, int callingPid, int callingUserId, boolean fromClient) {
        AuthSession authSession = this.mCurrentAuthSession;
        if (authSession == null) {
            Slog.w(TAG, "Skipping cancelInternal");
            return;
        }
        if (authSession.mState != 2 && this.mCurrentAuthSession.mState != 9) {
            Slog.w(TAG, "Skipping cancelInternal, state: " + this.mCurrentAuthSession.mState);
            return;
        }
        for (AuthenticatorWrapper authenticator : this.mAuthenticators) {
            if ((authenticator.modality & this.mCurrentAuthSession.mModality) != 0) {
                try {
                    authenticator.impl.cancelAuthenticationFromService(token, opPackageName, callingUid, callingPid, callingUserId, fromClient);
                } catch (RemoteException e) {
                    Slog.e(TAG, "Unable to cancel authentication");
                }
            }
        }
    }
}
