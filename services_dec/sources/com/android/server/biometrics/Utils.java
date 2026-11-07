package com.android.server.biometrics;

import android.R;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;
import android.provider.Settings;
import android.util.Slog;
import com.android.internal.widget.LockPatternUtils;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Utils {
    private static final String TAG = "BiometricUtils";

    public static boolean isDebugEnabled(Context context, int targetUserId) {
        if (targetUserId == -10000) {
            return false;
        }
        if ((!Build.IS_ENG && !Build.IS_USERDEBUG) || Settings.Secure.getIntForUser(context.getContentResolver(), "biometric_debug_enabled", 0, targetUserId) == 0) {
            return false;
        }
        return true;
    }

    public static void combineAuthenticatorBundles(Bundle bundle) {
        int authenticators;
        boolean deviceCredentialAllowed = bundle.getBoolean("allow_device_credential", false);
        bundle.remove("allow_device_credential");
        if (bundle.containsKey("authenticators_allowed")) {
            authenticators = bundle.getInt("authenticators_allowed", 0);
        } else if (deviceCredentialAllowed) {
            authenticators = 33023;
        } else {
            authenticators = 255;
        }
        bundle.putInt("authenticators_allowed", authenticators);
    }

    public static boolean isCredentialRequested(int authenticators) {
        return (32768 & authenticators) != 0;
    }

    public static boolean isCredentialRequested(Bundle bundle) {
        return isCredentialRequested(bundle.getInt("authenticators_allowed"));
    }

    public static int getPublicBiometricStrength(int authenticators) {
        return authenticators & 255;
    }

    public static int getPublicBiometricStrength(Bundle bundle) {
        return getPublicBiometricStrength(bundle.getInt("authenticators_allowed"));
    }

    public static boolean isBiometricRequested(Bundle bundle) {
        return getPublicBiometricStrength(bundle) != 0;
    }

    public static boolean isAtLeastStrength(int sensorStrength, int requestedStrength) {
        int sensorStrength2 = sensorStrength & 32767;
        if (((~requestedStrength) & sensorStrength2) != 0) {
            return false;
        }
        for (int i = 1; i <= requestedStrength; i = (i << 1) | 1) {
            if (i == sensorStrength2) {
                return true;
            }
        }
        Slog.e("BiometricService", "Unknown sensorStrength: " + sensorStrength2 + ", requestedStrength: " + requestedStrength);
        return false;
    }

    public static boolean isValidAuthenticatorConfig(Bundle bundle) {
        int authenticators = bundle.getInt("authenticators_allowed");
        return isValidAuthenticatorConfig(authenticators);
    }

    public static boolean isValidAuthenticatorConfig(int authenticators) {
        if (authenticators == 0) {
            return true;
        }
        if (((-65536) & authenticators) != 0) {
            Slog.e("BiometricService", "Non-biometric, non-credential bits found. Authenticators: " + authenticators);
            return false;
        }
        int biometricBits = authenticators & 32767;
        if ((biometricBits == 0 && isCredentialRequested(authenticators)) || biometricBits == 15 || biometricBits == 255) {
            return true;
        }
        Slog.e("BiometricService", "Unsupported biometric flags. Authenticators: " + authenticators);
        return false;
    }

    public static int biometricConstantsToBiometricManager(int biometricConstantsCode) {
        if (biometricConstantsCode == 0) {
            return 0;
        }
        if (biometricConstantsCode != 1) {
            if (biometricConstantsCode != 11) {
                if (biometricConstantsCode == 12) {
                    return 12;
                }
                if (biometricConstantsCode != 14) {
                    if (biometricConstantsCode == 15) {
                        return 15;
                    }
                    Slog.e("BiometricService", "Unhandled result code: " + biometricConstantsCode);
                    return 1;
                }
            }
            return 11;
        }
        return 1;
    }

    public static int getAuthenticationTypeForResult(int reason) {
        if (reason == 1 || reason == 4) {
            return 2;
        }
        if (reason == 7) {
            return 1;
        }
        throw new IllegalArgumentException("Unsupported dismissal reason: " + reason);
    }

    public static boolean isForeground(int callingUid, int callingPid) {
        try {
            List<ActivityManager.RunningAppProcessInfo> procs = ActivityManager.getService().getRunningAppProcesses();
            if (procs == null) {
                Slog.e(TAG, "No running app processes found, defaulting to true");
                return true;
            }
            for (int i = 0; i < procs.size(); i++) {
                ActivityManager.RunningAppProcessInfo proc = procs.get(i);
                if (proc.pid == callingPid && proc.uid == callingUid && proc.importance <= 125) {
                    return true;
                }
            }
            return false;
        } catch (RemoteException e) {
            Slog.w(TAG, "am.getRunningAppProcesses() failed");
            return false;
        }
    }

    public static boolean isKeyguard(Context context, String clientPackage) {
        boolean hasPermission = context.checkCallingOrSelfPermission("android.permission.USE_BIOMETRIC_INTERNAL") == 0;
        ComponentName keyguardComponent = ComponentName.unflattenFromString(context.getResources().getString(R.string.config_incidentReportApproverPackage));
        String keyguardPackage = keyguardComponent != null ? keyguardComponent.getPackageName() : null;
        return hasPermission && keyguardPackage != null && keyguardPackage.equals(clientPackage);
    }

    private static boolean containsFlag(int haystack, int needle) {
        return (haystack & needle) != 0;
    }

    public static boolean isUserEncryptedOrLockdown(LockPatternUtils lpu, int user) {
        int strongAuth = lpu.getStrongAuthForUser(user);
        boolean isEncrypted = containsFlag(strongAuth, 1);
        boolean isLockDown = containsFlag(strongAuth, 2) || containsFlag(strongAuth, 32);
        Slog.d(TAG, "isEncrypted: " + isEncrypted + " isLockdown: " + isLockDown);
        return isEncrypted || isLockDown;
    }
}
