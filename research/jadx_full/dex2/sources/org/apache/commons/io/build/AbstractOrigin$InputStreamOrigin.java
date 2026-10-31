package org.apache.commons.io.build;

import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.channels.Channel;
import java.nio.channels.Channels;
import java.nio.charset.Charset;
import java.nio.file.OpenOption;
import org.apache.commons.io.Charsets;
import org.apache.commons.io.IOUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class AbstractOrigin$InputStreamOrigin extends AbstractOrigin<InputStream, AbstractOrigin$InputStreamOrigin> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AbstractOrigin$InputStreamOrigin(InputStream inputStream) {
        super(inputStream);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r0v0, resolved type: T */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public byte[] getByteArray() {
        return IOUtils.toByteArray((InputStream) this.origin);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public Channel getChannel(OpenOption... openOptionArr) {
        return Channels.newChannel(getInputStream(openOptionArr));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public InputStream getInputStream(OpenOption... openOptionArr) {
        return get();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public Reader getReader(Charset charset) {
        return new InputStreamReader(getInputStream(new OpenOption[0]), Charsets.toCharset(charset));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r0v0, resolved type: T */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public long size() {
        T t = this.origin;
        if (t instanceof FileInputStream) {
            return ((FileInputStream) t).getChannel().size();
        }
        throw unsupportedOperation("size");
    }
}
