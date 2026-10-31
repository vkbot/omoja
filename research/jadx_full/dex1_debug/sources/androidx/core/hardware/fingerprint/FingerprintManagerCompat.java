package androidx.core.hardware.fingerprint;

import android.content.Context;
import android.hardware.fingerprint.FingerprintManager;
import android.hardware.fingerprint.FingerprintManager$AuthenticationCallback;
import android.hardware.fingerprint.FingerprintManager$CryptoObject;
import android.os.CancellationSignal;
import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RequiresPermission;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
@Deprecated
public class FingerprintManagerCompat {
    private final Context mContext;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private FingerprintManagerCompat(Context context) {
        this.mContext = context;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static FingerprintManagerCompat from(@NonNull Context context) {
        return new FingerprintManagerCompat(context);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @RequiresApi(23)
    private static FingerprintManager getFingerprintManagerOrNull(@NonNull Context context) {
        return FingerprintManagerCompat$Api23Impl.getFingerprintManagerOrNull(context);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresApi(23)
    public static FingerprintManagerCompat$CryptoObject unwrapCryptoObject(FingerprintManager$CryptoObject fingerprintManager$CryptoObject) {
        return FingerprintManagerCompat$Api23Impl.unwrapCryptoObject(fingerprintManager$CryptoObject);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresApi(23)
    private static FingerprintManager$AuthenticationCallback wrapCallback(FingerprintManagerCompat$AuthenticationCallback fingerprintManagerCompat$AuthenticationCallback) {
        return new FingerprintManagerCompat$1(fingerprintManagerCompat$AuthenticationCallback);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresApi(23)
    private static FingerprintManager$CryptoObject wrapCryptoObject(FingerprintManagerCompat$CryptoObject fingerprintManagerCompat$CryptoObject) {
        return FingerprintManagerCompat$Api23Impl.wrapCryptoObject(fingerprintManagerCompat$CryptoObject);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresPermission("android.permission.USE_FINGERPRINT")
    public void authenticate(@Nullable FingerprintManagerCompat$CryptoObject fingerprintManagerCompat$CryptoObject, int i9, @Nullable CancellationSignal cancellationSignal, @NonNull FingerprintManagerCompat$AuthenticationCallback fingerprintManagerCompat$AuthenticationCallback, @Nullable Handler handler) {
        FingerprintManager fingerprintManagerOrNull = getFingerprintManagerOrNull(this.mContext);
        if (fingerprintManagerOrNull != null) {
            FingerprintManagerCompat$Api23Impl.authenticate(fingerprintManagerOrNull, wrapCryptoObject(fingerprintManagerCompat$CryptoObject), cancellationSignal, i9, wrapCallback(fingerprintManagerCompat$AuthenticationCallback), handler);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresPermission("android.permission.USE_FINGERPRINT")
    public boolean hasEnrolledFingerprints() {
        FingerprintManager fingerprintManagerOrNull = getFingerprintManagerOrNull(this.mContext);
        return fingerprintManagerOrNull != null && FingerprintManagerCompat$Api23Impl.hasEnrolledFingerprints(fingerprintManagerOrNull);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresPermission("android.permission.USE_FINGERPRINT")
    public boolean isHardwareDetected() {
        FingerprintManager fingerprintManagerOrNull = getFingerprintManagerOrNull(this.mContext);
        return fingerprintManagerOrNull != null && FingerprintManagerCompat$Api23Impl.isHardwareDetected(fingerprintManagerOrNull);
    }

    @RequiresPermission("android.permission.USE_FINGERPRINT")
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public void authenticate(@Nullable FingerprintManagerCompat$CryptoObject fingerprintManagerCompat$CryptoObject, int i9, @Nullable androidx.core.os.CancellationSignal cancellationSignal, @NonNull FingerprintManagerCompat$AuthenticationCallback fingerprintManagerCompat$AuthenticationCallback, @Nullable Handler handler) {
        authenticate(fingerprintManagerCompat$CryptoObject, i9, cancellationSignal != null ? (CancellationSignal) cancellationSignal.getCancellationSignalObject() : null, fingerprintManagerCompat$AuthenticationCallback, handler);
    }
}
