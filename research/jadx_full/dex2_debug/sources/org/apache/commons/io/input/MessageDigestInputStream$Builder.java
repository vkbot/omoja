package org.apache.commons.io.input;

import java.security.MessageDigest;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class MessageDigestInputStream$Builder extends ObservableInputStream$AbstractBuilder<MessageDigestInputStream$Builder> {
    private MessageDigest messageDigest;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ MessageDigest access$100(MessageDigestInputStream$Builder messageDigestInputStream$Builder) {
        return messageDigestInputStream$Builder.messageDigest;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOSupplier
    public MessageDigestInputStream get() {
        setObservers(Arrays.asList(new MessageDigestInputStream$MessageDigestMaintainingObserver(this.messageDigest)));
        return new MessageDigestInputStream(this, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MessageDigestInputStream$Builder setMessageDigest(String str) {
        this.messageDigest = MessageDigest.getInstance(str);
        return this;
    }

    public MessageDigestInputStream$Builder setMessageDigest(MessageDigest messageDigest) {
        this.messageDigest = messageDigest;
        return this;
    }

    @Override // org.apache.commons.io.function.IOSupplier
    public /* bridge */ /* synthetic */ Object get() {
        return get();
    }
}
