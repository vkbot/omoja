package com.android.server.biometrics;

import android.R;
import android.app.AppOpsManager;
import android.content.Context;
import android.hardware.biometrics.IAuthService;
import android.hardware.biometrics.IBiometricAuthenticator;
import android.hardware.biometrics.IBiometricEnabledOnKeyguardCallback;
import android.hardware.biometrics.IBiometricService;
import android.hardware.biometrics.IBiometricServiceReceiver;
import android.hardware.face.IFaceService;
import android.hardware.fingerprint.IFingerprintService;
import android.hardware.iris.IIrisService;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.UserHandle;
import android.util.Slog;
import com.android.server.SystemService;
import com.android.server.biometrics.face.FaceAuthenticator;
import com.android.server.biometrics.fingerprint.FingerprintAuthenticator;
import com.android.server.biometrics.iris.IrisAuthenticator;

/* JADX INFO: loaded from: classes.dex */
public class AuthService extends SystemService {
    private static final boolean DEBUG = false;
    private static final String TAG = "AuthService";
    private IBiometricService mBiometricService;
    final IAuthService.Stub mImpl;
    private final Injector mInjector;

    public static class Injector {
        public IBiometricService getBiometricService() {
            return IBiometricService.Stub.asInterface(ServiceManager.getService("biometric"));
        }

        public void publishBinderService(AuthService service, IAuthService.Stub impl) {
            service.publishBinderService("auth", impl);
        }

        public String[] getConfiguration(Context context) {
            return context.getResources().getStringArray(R.array.config_bg_current_drain_high_threshold_to_bg_restricted);
        }

        public IFingerprintService getFingerprintService() {
            return IFingerprintService.Stub.asInterface(ServiceManager.getService("fingerprint"));
        }

        public IFaceService getFaceService() {
            return IFaceService.Stub.asInterface(ServiceManager.getService("face"));
        }

        public IIrisService getIrisService() {
            return IIrisService.Stub.asInterface(ServiceManager.getService("iris"));
        }

        public AppOpsManager getAppOps(Context context) {
            return (AppOpsManager) context.getSystemService(AppOpsManager.class);
        }
    }

    private final class AuthServiceImpl extends IAuthService.Stub {
        private AuthServiceImpl() {
        }

        public void authenticate(IBinder token, long sessionId, int userId, IBiometricServiceReceiver receiver, String opPackageName, Bundle bundle) throws Throwable {
            int callingUserId = UserHandle.getCallingUserId();
            int callingUid = Binder.getCallingUid();
            int callingPid = Binder.getCallingPid();
            if (userId == callingUserId) {
                AuthService.this.checkPermission();
            } else {
                Slog.w(AuthService.TAG, "User " + callingUserId + " is requesting authentication of userid: " + userId);
                AuthService.this.checkInternalPermission();
            }
            if (!AuthService.this.checkAppOps(callingUid, opPackageName, "authenticate()")) {
                Slog.e(AuthService.TAG, "Denied by app ops: " + opPackageName);
                return;
            }
            if (!Utils.isForeground(callingUid, callingPid)) {
                Slog.e(AuthService.TAG, "Caller is not foreground: " + opPackageName);
                return;
            }
            if (token == null || receiver == null || opPackageName == null || bundle == null) {
                Slog.e(AuthService.TAG, "Unable to authenticate, one or more null arguments");
                return;
            }
            if (bundle.getBoolean("check_dpm") || bundle.getBoolean("use_default_title", false) || bundle.getCharSequence("device_credential_title") != null || bundle.getCharSequence("device_credential_subtitle") != null || bundle.getCharSequence("device_credential_description") != null || bundle.getBoolean("receive_system_events", false)) {
                AuthService.this.checkInternalPermission();
            }
            long identity = Binder.clearCallingIdentity();
            try {
                try {
                    AuthService.this.mBiometricService.authenticate(token, sessionId, userId, receiver, opPackageName, bundle, callingUid, callingPid, callingUserId);
                    Binder.restoreCallingIdentity(identity);
                } catch (Throwable th) {
                    th = th;
                    Binder.restoreCallingIdentity(identity);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }

        public void cancelAuthentication(IBinder token, String opPackageName) throws RemoteException {
            AuthService.this.checkPermission();
            if (token == null || opPackageName == null) {
                Slog.e(AuthService.TAG, "Unable to authenticate, one or more null arguments");
                return;
            }
            int callingUid = Binder.getCallingUid();
            int callingPid = Binder.getCallingPid();
            int callingUserId = UserHandle.getCallingUserId();
            long identity = Binder.clearCallingIdentity();
            try {
                AuthService.this.mBiometricService.cancelAuthentication(token, opPackageName, callingUid, callingPid, callingUserId);
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }

        public int canAuthenticate(String opPackageName, int userId, int authenticators) throws RemoteException {
            int callingUserId = UserHandle.getCallingUserId();
            if (userId != callingUserId) {
                AuthService.this.checkInternalPermission();
            } else {
                AuthService.this.checkPermission();
            }
            long identity = Binder.clearCallingIdentity();
            try {
                int result = AuthService.this.mBiometricService.canAuthenticate(opPackageName, userId, callingUserId, authenticators);
                Slog.d(AuthService.TAG, "canAuthenticate, userId: " + userId + ", callingUserId: " + callingUserId + ", authenticators: " + authenticators + ", result: " + result);
                return result;
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }

        public boolean hasEnrolledBiometrics(int userId, String opPackageName) throws RemoteException {
            AuthService.this.checkInternalPermission();
            long identity = Binder.clearCallingIdentity();
            try {
                return AuthService.this.mBiometricService.hasEnrolledBiometrics(userId, opPackageName);
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }

        public void registerEnabledOnKeyguardCallback(IBiometricEnabledOnKeyguardCallback callback) throws RemoteException {
            AuthService.this.checkInternalPermission();
            int callingUserId = UserHandle.getCallingUserId();
            long identity = Binder.clearCallingIdentity();
            try {
                AuthService.this.mBiometricService.registerEnabledOnKeyguardCallback(callback, callingUserId);
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }

        public void setActiveUser(int userId) throws RemoteException {
            AuthService.this.checkInternalPermission();
            long identity = Binder.clearCallingIdentity();
            try {
                AuthService.this.mBiometricService.setActiveUser(userId);
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }

        public void resetLockout(byte[] token) throws RemoteException {
            AuthService.this.checkInternalPermission();
            long identity = Binder.clearCallingIdentity();
            try {
                AuthService.this.mBiometricService.resetLockout(token);
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }

        public long[] getAuthenticatorIds() throws RemoteException {
            int callingUserId = UserHandle.getCallingUserId();
            long identity = Binder.clearCallingIdentity();
            try {
                return AuthService.this.mBiometricService.getAuthenticatorIds(callingUserId);
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }
    }

    public AuthService(Context context) {
        this(context, new Injector());
    }

    public AuthService(Context context, Injector injector) {
        super(context);
        this.mInjector = injector;
        this.mImpl = new AuthServiceImpl();
    }

    @Override // com.android.server.SystemService
    public void onStart() {
        this.mBiometricService = this.mInjector.getBiometricService();
        String[] configs = this.mInjector.getConfiguration(getContext());
        for (String config : configs) {
            try {
                registerAuthenticator(new SensorConfig(config));
            } catch (RemoteException e) {
                Slog.e(TAG, "Remote exception", e);
            }
        }
        this.mInjector.publishBinderService(this, this.mImpl);
    }

    private void registerAuthenticator(SensorConfig config) throws RemoteException {
        IBiometricAuthenticator fingerprintAuthenticator;
        Slog.d(TAG, "Registering ID: " + config.mId + " Modality: " + config.mModality + " Strength: " + config.mStrength);
        int i = config.mModality;
        if (i == 2) {
            IFingerprintService fingerprintService = this.mInjector.getFingerprintService();
            if (fingerprintService == null) {
                Slog.e(TAG, "Attempting to register with null FingerprintService. Please check your device configuration.");
                return;
            } else {
                fingerprintAuthenticator = new FingerprintAuthenticator(fingerprintService);
                fingerprintService.initConfiguredStrength(config.mStrength);
            }
        } else if (i == 4) {
            IIrisService irisService = this.mInjector.getIrisService();
            if (irisService == null) {
                Slog.e(TAG, "Attempting to register with null IrisService. Please check your device configuration.");
                return;
            } else {
                fingerprintAuthenticator = new IrisAuthenticator(irisService);
                irisService.initConfiguredStrength(config.mStrength);
            }
        } else if (i == 8) {
            IFaceService faceService = this.mInjector.getFaceService();
            if (faceService == null) {
                Slog.e(TAG, "Attempting to register with null FaceService. Please check  your device configuration.");
                return;
            } else {
                fingerprintAuthenticator = new FaceAuthenticator(faceService);
                faceService.initConfiguredStrength(config.mStrength);
            }
        } else {
            Slog.e(TAG, "Unknown modality: " + config.mModality);
            return;
        }
        this.mBiometricService.registerAuthenticator(config.mId, config.mModality, config.mStrength, fingerprintAuthenticator);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkInternalPermission() {
        getContext().enforceCallingOrSelfPermission("android.permission.USE_BIOMETRIC_INTERNAL", "Must have USE_BIOMETRIC_INTERNAL permission");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkPermission() {
        if (getContext().checkCallingOrSelfPermission("android.permission.USE_FINGERPRINT") != 0) {
            getContext().enforceCallingOrSelfPermission("android.permission.USE_BIOMETRIC", "Must have USE_BIOMETRIC permission");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkAppOps(int uid, String opPackageName, String reason) {
        return this.mInjector.getAppOps(getContext()).noteOp(78, uid, opPackageName, (String) null, reason) == 0;
    }
}
