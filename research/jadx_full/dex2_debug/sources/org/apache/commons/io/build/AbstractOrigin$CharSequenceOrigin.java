package org.apache.commons.io.build;

import java.io.InputStream;
import java.io.Reader;
import java.nio.channels.Channel;
import java.nio.charset.Charset;
import java.nio.file.OpenOption;
import java.util.Arrays;
import org.apache.commons.io.channels.ByteArraySeekableByteChannel;
import org.apache.commons.io.d;
import org.apache.commons.io.input.CharSequenceInputStream;
import org.apache.commons.io.input.CharSequenceInputStream$Builder;
import org.apache.commons.io.input.CharSequenceReader;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class AbstractOrigin$CharSequenceOrigin extends AbstractOrigin<CharSequence, AbstractOrigin$CharSequenceOrigin> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AbstractOrigin$CharSequenceOrigin(CharSequence charSequence) {
        super(charSequence);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public byte[] getByteArray() {
        return ((CharSequence) this.origin).toString().getBytes(Charset.defaultCharset());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public Channel getChannel(OpenOption... openOptionArr) {
        for (OpenOption openOption : openOptionArr) {
            if (openOption == d.j()) {
                androidx.navigation.b.e(Arrays.toString(openOptionArr), "Only READ is supported for CharSequence origins: ");
                return null;
            }
        }
        return ByteArraySeekableByteChannel.wrap(getByteArray());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public CharSequence getCharSequence(Charset charset) {
        return get();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r2v2, resolved type: B */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public InputStream getInputStream(OpenOption... openOptionArr) {
        return ((CharSequenceInputStream$Builder) CharSequenceInputStream.builder().setCharSequence(getCharSequence(Charset.defaultCharset()))).get();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public Reader getReader(Charset charset) {
        return new CharSequenceReader(get());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public long size() {
        return ((CharSequence) this.origin).length();
    }
}
