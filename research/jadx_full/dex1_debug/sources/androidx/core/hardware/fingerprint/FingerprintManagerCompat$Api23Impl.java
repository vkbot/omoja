package androidx.core.hardware.fingerprint;

import android.content.Context;
import android.hardware.fingerprint.FingerprintManager;
import android.hardware.fingerprint.FingerprintManager$AuthenticationCallback;
import android.hardware.fingerprint.FingerprintManager$AuthenticationResult;
import android.hardware.fingerprint.FingerprintManager$CryptoObject;
import android.os.CancellationSignal;
import android.os.Handler;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.annotation.RequiresPermission;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(23)
public class FingerprintManagerCompat$Api23Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private FingerprintManagerCompat$Api23Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresPermission("android.permission.USE_FINGERPRINT")
    @DoNotInline
    public static void authenticate(Object obj, Object obj2, CancellationSignal cancellationSignal, int i9, Object obj3, Handler handler) {
        ((FingerprintManager) obj).authenticate((FingerprintManager$CryptoObject) obj2, cancellationSignal, i9, (FingerprintManager$AuthenticationCallback) obj3, handler);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static FingerprintManager$CryptoObject getCryptoObject(Object obj) {
        return ((FingerprintManager$AuthenticationResult) obj).getCryptoObject();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static FingerprintManager getFingerprintManagerOrNull(Context context) {
        if (context.getPackageManager().hasSystemFeature("android.hardware.fingerprint")) {
            return (FingerprintManager) context.getSystemService(FingerprintManager.class);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresPermission("android.permission.USE_FINGERPRINT")
    @DoNotInline
    public static boolean hasEnrolledFingerprints(Object obj) {
        return ((FingerprintManager) obj).hasEnrolledFingerprints();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresPermission("android.permission.USE_FINGERPRINT")
    @DoNotInline
    public static boolean isHardwareDetected(Object obj) {
        return ((FingerprintManager) obj).isHardwareDetected();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static FingerprintManagerCompat$CryptoObject unwrapCryptoObject(Object obj) {
        FingerprintManager$CryptoObject fingerprintManager$CryptoObject = (FingerprintManager$CryptoObject) obj;
        if (fingerprintManager$CryptoObject == null) {
            return null;
        }
        if (fingerprintManager$CryptoObject.getCipher() != null) {
            return new FingerprintManagerCompat$CryptoObject(fingerprintManager$CryptoObject.getCipher());
        }
        if (fingerprintManager$CryptoObject.getSignature() != null) {
            return new FingerprintManagerCompat$CryptoObject(fingerprintManager$CryptoObject.getSignature());
        }
        if (fingerprintManager$CryptoObject.getMac() != null) {
            return new FingerprintManagerCompat$CryptoObject(fingerprintManager$CryptoObject.getMac());
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static FingerprintManager$CryptoObject wrapCryptoObject(FingerprintManagerCompat$CryptoObject fingerprintManagerCompat$CryptoObject) {
        if (fingerprintManagerCompat$CryptoObject == null) {
            return null;
        }
        if (fingerprintManagerCompat$CryptoObject.getCipher() != null) {
            return new FingerprintManager$CryptoObject(fingerprintManagerCompat$CryptoObject.getCipher());
        }
        if (fingerprintManagerCompat$CryptoObject.getSignature() != null) {
            return new FingerprintManager$CryptoObject(fingerprintManagerCompat$CryptoObject.getSignature());
        }
        if (fingerprintManagerCompat$CryptoObject.getMac() != null) {
            return new FingerprintManager$CryptoObject(fingerprintManagerCompat$CryptoObject.getMac());
        }
        return null;
    }
}
