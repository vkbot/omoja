package org.apache.commons.io.input;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class MessageDigestCalculatingInputStream$Builder extends ObservableInputStream$AbstractBuilder<MessageDigestCalculatingInputStream$Builder> {
    private MessageDigest messageDigest;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MessageDigestCalculatingInputStream$Builder() {
        try {
            this.messageDigest = MessageDigestCalculatingInputStream.getDefaultMessageDigest();
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException(e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ MessageDigest access$100(MessageDigestCalculatingInputStream$Builder messageDigestCalculatingInputStream$Builder) {
        return messageDigestCalculatingInputStream$Builder.messageDigest;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOSupplier
    public MessageDigestCalculatingInputStream get() {
        setObservers(Arrays.asList(new MessageDigestCalculatingInputStream$MessageDigestMaintainingObserver(this.messageDigest)));
        return new MessageDigestCalculatingInputStream(this, (MessageDigestCalculatingInputStream$1) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMessageDigest(String str) {
        this.messageDigest = MessageDigest.getInstance(str);
    }

    public void setMessageDigest(MessageDigest messageDigest) {
        this.messageDigest = messageDigest;
    }

    @Override // org.apache.commons.io.function.IOSupplier
    public /* bridge */ /* synthetic */ Object get() {
        return get();
    }
}
