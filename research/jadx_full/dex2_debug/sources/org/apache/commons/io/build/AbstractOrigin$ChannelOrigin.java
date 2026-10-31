package org.apache.commons.io.build;

import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.nio.channels.Channel;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.SeekableByteChannel;
import java.nio.channels.WritableByteChannel;
import java.nio.charset.Charset;
import java.nio.file.OpenOption;
import org.apache.commons.io.Charsets;
import org.apache.commons.io.IOUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class AbstractOrigin$ChannelOrigin extends AbstractOrigin<Channel, AbstractOrigin$ChannelOrigin> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AbstractOrigin$ChannelOrigin(Channel channel) {
        super(channel);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public byte[] getByteArray() {
        return IOUtils.toByteArray(getInputStream(new OpenOption[0]));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public Channel getChannel(OpenOption... openOptionArr) {
        return get();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public InputStream getInputStream(OpenOption... openOptionArr) {
        return Channels.newInputStream((ReadableByteChannel) getChannel(ReadableByteChannel.class, openOptionArr));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public OutputStream getOutputStream(OpenOption... openOptionArr) {
        return Channels.newOutputStream((WritableByteChannel) getChannel(WritableByteChannel.class, openOptionArr));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public Reader getReader(Charset charset) {
        return Channels.newReader((ReadableByteChannel) getChannel(ReadableByteChannel.class, new OpenOption[0]), Charsets.toCharset(charset).newDecoder(), -1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public Writer getWriter(Charset charset, OpenOption... openOptionArr) {
        return Channels.newWriter((WritableByteChannel) getChannel(WritableByteChannel.class, openOptionArr), Charsets.toCharset(charset).newEncoder(), -1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public long size() {
        T t = this.origin;
        if (t instanceof SeekableByteChannel) {
            return ((SeekableByteChannel) t).size();
        }
        throw unsupportedOperation("size");
    }
}
