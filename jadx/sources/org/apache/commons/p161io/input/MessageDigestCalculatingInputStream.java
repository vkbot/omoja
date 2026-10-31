package org.apache.commons.p161io.input;

import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class MessageDigestCalculatingInputStream extends ObservableInputStream {
    private static final String DEFAULT_ALGORITHM = "MD5";
    private final MessageDigest messageDigest;

    @Deprecated
    public MessageDigestCalculatingInputStream(InputStream inputStream, MessageDigest messageDigest) {
        super(inputStream, new MessageDigestMaintainingObserver(messageDigest));
        this.messageDigest = messageDigest;
    }

    public static Builder builder() {
        return new Builder();
    }

    public static MessageDigest getDefaultMessageDigest() {
        return MessageDigest.getInstance(DEFAULT_ALGORITHM);
    }

    public MessageDigest getMessageDigest() {
        return this.messageDigest;
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Builder extends ObservableInputStream.AbstractBuilder<Builder> {
        private MessageDigest messageDigest;

        public Builder() {
            try {
                this.messageDigest = MessageDigestCalculatingInputStream.getDefaultMessageDigest();
            } catch (NoSuchAlgorithmException e) {
                throw new IllegalStateException(e);
            }
        }

        @Override // org.apache.commons.p161io.function.IOSupplier
        public MessageDigestCalculatingInputStream get() {
            setObservers(Arrays.asList(new MessageDigestMaintainingObserver(this.messageDigest)));
            return new MessageDigestCalculatingInputStream(this);
        }

        public void setMessageDigest(String str) {
            this.messageDigest = MessageDigest.getInstance(str);
        }

        public void setMessageDigest(MessageDigest messageDigest) {
            this.messageDigest = messageDigest;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class MessageDigestMaintainingObserver extends ObservableInputStream.Observer {
        private final MessageDigest messageDigest;

        public MessageDigestMaintainingObserver(MessageDigest messageDigest) {
            Objects.requireNonNull(messageDigest, "messageDigest");
            this.messageDigest = messageDigest;
        }

        @Override // org.apache.commons.io.input.ObservableInputStream.Observer
        public void data(int i10) {
            this.messageDigest.update((byte) i10);
        }

        @Override // org.apache.commons.io.input.ObservableInputStream.Observer
        public void data(byte[] bArr, int i10, int i11) {
            this.messageDigest.update(bArr, i10, i11);
        }
    }

    private MessageDigestCalculatingInputStream(Builder builder) {
        super(builder);
        this.messageDigest = builder.messageDigest;
    }

    @Deprecated
    public MessageDigestCalculatingInputStream(InputStream inputStream) {
        this(inputStream, getDefaultMessageDigest());
    }

    @Deprecated
    public MessageDigestCalculatingInputStream(InputStream inputStream, String str) {
        this(inputStream, MessageDigest.getInstance(str));
    }
}
