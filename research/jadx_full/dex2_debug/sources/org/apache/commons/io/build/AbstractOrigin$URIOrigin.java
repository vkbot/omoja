package org.apache.commons.io.build;

import ai.onnxruntime.c;
import java.io.File;
import java.io.InputStream;
import java.net.URI;
import java.nio.channels.Channel;
import java.nio.channels.Channels;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import kotlin.io.path.f;
import org.apache.commons.io.d;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class AbstractOrigin$URIOrigin extends AbstractOrigin<URI, AbstractOrigin$URIOrigin> {
    private static final String SCHEME_HTTP = "http";
    private static final String SCHEME_HTTPS = "https";

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AbstractOrigin$URIOrigin(URI uri) {
        super(uri);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public Channel getChannel(OpenOption... openOptionArr) {
        URI uri = get();
        String scheme = uri.getScheme();
        return (SCHEME_HTTP.equalsIgnoreCase(scheme) || SCHEME_HTTPS.equalsIgnoreCase(scheme)) ? Channels.newChannel(uri.toURL().openStream()) : d.h(getPath(), openOptionArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public File getFile() {
        return c.r(getPath());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public InputStream getInputStream(OpenOption... openOptionArr) {
        URI uri = get();
        String scheme = uri.getScheme();
        return (SCHEME_HTTP.equalsIgnoreCase(scheme) || SCHEME_HTTPS.equalsIgnoreCase(scheme)) ? uri.toURL().openStream() : f.e(getPath(), openOptionArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractOrigin
    public Path getPath() {
        return kotlin.io.path.a.i(get());
    }
}
