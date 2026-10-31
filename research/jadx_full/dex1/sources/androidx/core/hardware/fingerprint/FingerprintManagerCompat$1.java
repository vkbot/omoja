package androidx.core.hardware.fingerprint;

import android.hardware.fingerprint.FingerprintManager$AuthenticationCallback;
import android.hardware.fingerprint.FingerprintManager$AuthenticationResult;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FingerprintManagerCompat$1 extends FingerprintManager$AuthenticationCallback {
    final /* synthetic */ FingerprintManagerCompat$AuthenticationCallback val$callback;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FingerprintManagerCompat$1(FingerprintManagerCompat$AuthenticationCallback fingerprintManagerCompat$AuthenticationCallback) {
        this.val$callback = fingerprintManagerCompat$AuthenticationCallback;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.hardware.fingerprint.FingerprintManager$AuthenticationCallback
    public void onAuthenticationError(int i9, CharSequence charSequence) {
        this.val$callback.onAuthenticationError(i9, charSequence);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.hardware.fingerprint.FingerprintManager$AuthenticationCallback
    public void onAuthenticationFailed() {
        this.val$callback.onAuthenticationFailed();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.hardware.fingerprint.FingerprintManager$AuthenticationCallback
    public void onAuthenticationHelp(int i9, CharSequence charSequence) {
        this.val$callback.onAuthenticationHelp(i9, charSequence);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.hardware.fingerprint.FingerprintManager$AuthenticationCallback
    public void onAuthenticationSucceeded(FingerprintManager$AuthenticationResult fingerprintManager$AuthenticationResult) {
        this.val$callback.onAuthenticationSucceeded(new FingerprintManagerCompat$AuthenticationResult(FingerprintManagerCompat.unwrapCryptoObject(FingerprintManagerCompat$Api23Impl.getCryptoObject(fingerprintManager$AuthenticationResult))));
    }
}
