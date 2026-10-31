package org.apache.commons.io.input;

import java.security.MessageDigest;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class MessageDigestInputStream extends ObservableInputStream {
    private final MessageDigest messageDigest;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private MessageDigestInputStream(MessageDigestInputStream$Builder messageDigestInputStream$Builder) {
        super(messageDigestInputStream$Builder);
        MessageDigest messageDigestAccess$100 = MessageDigestInputStream$Builder.access$100(messageDigestInputStream$Builder);
        Objects.requireNonNull(messageDigestAccess$100, "builder.messageDigest");
        this.messageDigest = messageDigestAccess$100;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static MessageDigestInputStream$Builder builder() {
        return new MessageDigestInputStream$Builder();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MessageDigest getMessageDigest() {
        return this.messageDigest;
    }

    public /* synthetic */ MessageDigestInputStream(MessageDigestInputStream$Builder messageDigestInputStream$Builder, MessageDigestInputStream$1 messageDigestInputStream$1) {
        this(messageDigestInputStream$Builder);
    }
}
