package org.apache.commons.io.build;

import java.io.OutputStream;
import java.io.Writer;
import java.nio.channels.Channel;
import java.nio.channels.Channels;
import java.nio.charset.Charset;
import java.nio.file.OpenOption;
import org.apache.commons.io.output.WriterOutputStream;
import org.apache.commons.io.output.WriterOutputStream$Builder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class AbstractOrigin$WriterOrigin extends AbstractOrigin<Writer, AbstractOrigin$WriterOrigin> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AbstractOrigin$WriterOrigin(Writer writer) {
        super(writer);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public Channel getChannel(OpenOption... openOptionArr) {
        return Channels.newChannel(getOutputStream(new OpenOption[0]));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r0v0, resolved type: T */
    /* JADX DEBUG: Multi-variable search result rejected for r2v2, resolved type: B */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public OutputStream getOutputStream(OpenOption... openOptionArr) {
        return ((WriterOutputStream$Builder) WriterOutputStream.builder().setWriter((Writer) this.origin)).setCharset(Charset.defaultCharset()).get();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public Writer getWriter(Charset charset, OpenOption... openOptionArr) {
        return get();
    }
}
