package org.apache.commons.p161io.file.spi;

import java.net.URI;
import java.net.URL;
import java.nio.file.FileSystems;
import java.nio.file.Path;
import java.nio.file.spi.FileSystemProvider;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import kotlin.internal.jdk8.AbstractC2109a;
import org.apache.commons.p161io.file.AbstractC2796f;
import org.apache.commons.p161io.file.C2801k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class FileSystemProviders {
    private static final FileSystemProviders INSTALLED = new FileSystemProviders(FileSystemProvider.installedProviders());
    private static final String SCHEME_FILE = "file";
    private final List<FileSystemProvider> providers;

    private FileSystemProviders(List<FileSystemProvider> list) {
        this.providers = list == null ? Collections.EMPTY_LIST : list;
    }

    public static FileSystemProviders installed() {
        return INSTALLED;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getFileSystemProvider$0(String str, FileSystemProvider fileSystemProvider) {
        return fileSystemProvider.getScheme().equalsIgnoreCase(str);
    }

    public FileSystemProvider getFileSystemProvider(String str) {
        Objects.requireNonNull(str, "scheme");
        return str.equalsIgnoreCase(SCHEME_FILE) ? FileSystems.getDefault().provider() : AbstractC2796f.m4411n(this.providers.stream().filter(new C2801k(1, str)).findFirst().orElse(null));
    }

    public static FileSystemProvider getFileSystemProvider(Path path) {
        Objects.requireNonNull(path, "path");
        return AbstractC2109a.m3281m(path).getFileSystem().provider();
    }

    public FileSystemProvider getFileSystemProvider(URI uri) {
        Objects.requireNonNull(uri, "uri");
        return getFileSystemProvider(uri.getScheme());
    }

    public FileSystemProvider getFileSystemProvider(URL url) {
        Objects.requireNonNull(url, "url");
        return getFileSystemProvider(url.getProtocol());
    }
}
