package androidx.core.hardware.fingerprint;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.security.Signature;
import javax.crypto.Cipher;
import javax.crypto.Mac;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FingerprintManagerCompat$CryptoObject {
    private final Cipher mCipher;
    private final Mac mMac;
    private final Signature mSignature;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FingerprintManagerCompat$CryptoObject(@NonNull Signature signature) {
        this.mSignature = signature;
        this.mCipher = null;
        this.mMac = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Cipher getCipher() {
        return this.mCipher;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Mac getMac() {
        return this.mMac;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Signature getSignature() {
        return this.mSignature;
    }

    public FingerprintManagerCompat$CryptoObject(@NonNull Cipher cipher) {
        this.mCipher = cipher;
        this.mSignature = null;
        this.mMac = null;
    }

    public FingerprintManagerCompat$CryptoObject(@NonNull Mac mac) {
        this.mMac = mac;
        this.mCipher = null;
        this.mSignature = null;
    }
}
