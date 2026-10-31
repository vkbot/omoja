package org.apache.commons.io.file.spi;

import java.net.URI;
import java.net.URL;
import java.nio.file.Path;
import java.nio.file.spi.FileSystemProvider;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import kotlin.internal.jdk8.a;
import org.apache.commons.io.file.f;
import org.apache.commons.io.file.k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class FileSystemProviders {
    private static final FileSystemProviders INSTALLED = new FileSystemProviders(f.s());
    private static final String SCHEME_FILE = "file";
    private final List<FileSystemProvider> providers;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private FileSystemProviders(List<FileSystemProvider> list) {
        this.providers = list == null ? Collections.EMPTY_LIST : list;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean a(String str, FileSystemProvider fileSystemProvider) {
        return lambda$getFileSystemProvider$0(str, fileSystemProvider);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FileSystemProviders installed() {
        return INSTALLED;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ boolean lambda$getFileSystemProvider$0(String str, FileSystemProvider fileSystemProvider) {
        return f.c(fileSystemProvider).equalsIgnoreCase(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FileSystemProvider getFileSystemProvider(String str) {
        Objects.requireNonNull(str, "scheme");
        return str.equalsIgnoreCase(SCHEME_FILE) ? f.o(f.e()) : f.n(this.providers.stream().filter(new k(1, str)).findFirst().orElse(null));
    }

    public static FileSystemProvider getFileSystemProvider(Path path) {
        Objects.requireNonNull(path, "path");
        return f.o(a.g(a.m(path)));
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
