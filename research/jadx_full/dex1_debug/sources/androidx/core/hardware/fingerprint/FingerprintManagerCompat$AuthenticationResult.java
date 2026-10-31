package androidx.core.hardware.fingerprint;

import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class FingerprintManagerCompat$AuthenticationResult {
    private final FingerprintManagerCompat$CryptoObject mCryptoObject;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FingerprintManagerCompat$AuthenticationResult(@NonNull FingerprintManagerCompat$CryptoObject fingerprintManagerCompat$CryptoObject) {
        this.mCryptoObject = fingerprintManagerCompat$CryptoObject;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public FingerprintManagerCompat$CryptoObject getCryptoObject() {
        return this.mCryptoObject;
    }
}
