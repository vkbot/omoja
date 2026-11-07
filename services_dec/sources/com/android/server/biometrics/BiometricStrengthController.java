package com.android.server.biometrics;

import android.provider.DeviceConfig;
import android.util.Slog;
import com.android.internal.os.BackgroundThread;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class BiometricStrengthController {
    public static final String DEFAULT_BIOMETRIC_STRENGTHS = null;
    private static final String KEY_BIOMETRIC_STRENGTHS = "biometric_strengths";
    private static final String TAG = "BiometricStrengthController";
    private DeviceConfig.OnPropertiesChangedListener mDeviceConfigListener = new DeviceConfig.OnPropertiesChangedListener() { // from class: com.android.server.biometrics.-$$Lambda$BiometricStrengthController$tO9bm1fJ-LRkdtTtLs_q184crJU
        public final void onPropertiesChanged(DeviceConfig.Properties properties) {
            this.f$0.lambda$new$0$BiometricStrengthController(properties);
        }
    };
    private final BiometricService mService;

    public /* synthetic */ void lambda$new$0$BiometricStrengthController(DeviceConfig.Properties properties) {
        for (String name : properties.getKeyset()) {
            if (KEY_BIOMETRIC_STRENGTHS.equals(name)) {
                updateStrengths();
            }
        }
    }

    public BiometricStrengthController(BiometricService service) {
        this.mService = service;
    }

    public void startListening() {
        DeviceConfig.addOnPropertiesChangedListener("biometrics", BackgroundThread.getExecutor(), this.mDeviceConfigListener);
    }

    public void updateStrengths() {
        Map<Integer, Integer> idToStrength = getIdToStrengthMap();
        if (idToStrength == null) {
            return;
        }
        for (BiometricService.AuthenticatorWrapper authenticator : this.mService.mAuthenticators) {
            int id = authenticator.id;
            if (idToStrength.containsKey(Integer.valueOf(id))) {
                int newStrength = idToStrength.get(Integer.valueOf(id)).intValue();
                authenticator.updateStrength(newStrength);
            }
        }
    }

    private Map<Integer, Integer> getIdToStrengthMap() {
        String flags = DeviceConfig.getString("biometrics", KEY_BIOMETRIC_STRENGTHS, DEFAULT_BIOMETRIC_STRENGTHS);
        if (flags == null || flags.isEmpty()) {
            Slog.d(TAG, "Flags are null or empty");
            return null;
        }
        Map<Integer, Integer> map = new HashMap<>();
        try {
            for (String item : flags.split(",")) {
                String[] elems = item.split(":");
                int id = Integer.parseInt(elems[0]);
                int strength = Integer.parseInt(elems[1]);
                map.put(Integer.valueOf(id), Integer.valueOf(strength));
            }
            return map;
        } catch (Exception e) {
            Slog.e(TAG, "Can't parse flag: " + flags);
            return null;
        }
    }
}
