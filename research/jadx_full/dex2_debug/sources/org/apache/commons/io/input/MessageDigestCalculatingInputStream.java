package org.apache.commons.io.input;

import java.io.InputStream;
import java.security.MessageDigest;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Deprecated
public class MessageDigestCalculatingInputStream extends ObservableInputStream {
    private static final String DEFAULT_ALGORITHM = "MD5";
    private final MessageDigest messageDigest;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public MessageDigestCalculatingInputStream(InputStream inputStream, MessageDigest messageDigest) {
        super(inputStream, new MessageDigestCalculatingInputStream$MessageDigestMaintainingObserver(messageDigest));
        this.messageDigest = messageDigest;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static MessageDigestCalculatingInputStream$Builder builder() {
        return new MessageDigestCalculatingInputStream$Builder();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static MessageDigest getDefaultMessageDigest() {
        return MessageDigest.getInstance(DEFAULT_ALGORITHM);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MessageDigest getMessageDigest() {
        return this.messageDigest;
    }

    private MessageDigestCalculatingInputStream(MessageDigestCalculatingInputStream$Builder messageDigestCalculatingInputStream$Builder) {
        super(messageDigestCalculatingInputStream$Builder);
        this.messageDigest = MessageDigestCalculatingInputStream$Builder.access$100(messageDigestCalculatingInputStream$Builder);
    }

    @Deprecated
    public MessageDigestCalculatingInputStream(InputStream inputStream) {
        this(inputStream, getDefaultMessageDigest());
    }

    public /* synthetic */ MessageDigestCalculatingInputStream(MessageDigestCalculatingInputStream$Builder messageDigestCalculatingInputStream$Builder, MessageDigestCalculatingInputStream$1 messageDigestCalculatingInputStream$1) {
        this(messageDigestCalculatingInputStream$Builder);
    }

    @Deprecated
    public MessageDigestCalculatingInputStream(InputStream inputStream, String str) {
        this(inputStream, MessageDigest.getInstance(str));
    }
}
