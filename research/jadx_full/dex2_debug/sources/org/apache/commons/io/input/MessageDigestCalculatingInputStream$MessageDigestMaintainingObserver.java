package org.apache.commons.io.input;

import java.security.MessageDigest;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class MessageDigestCalculatingInputStream$MessageDigestMaintainingObserver extends ObservableInputStream$Observer {
    private final MessageDigest messageDigest;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MessageDigestCalculatingInputStream$MessageDigestMaintainingObserver(MessageDigest messageDigest) {
        Objects.requireNonNull(messageDigest, "messageDigest");
        this.messageDigest = messageDigest;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.ObservableInputStream$Observer
    public void data(int i) {
        this.messageDigest.update((byte) i);
    }

    @Override // org.apache.commons.io.input.ObservableInputStream$Observer
    public void data(byte[] bArr, int i, int i2) {
        this.messageDigest.update(bArr, i, i2);
    }
}
