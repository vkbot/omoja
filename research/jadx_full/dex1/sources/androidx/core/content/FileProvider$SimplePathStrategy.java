package androidx.core.content;

import android.net.Uri;
import android.net.Uri$Builder;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import j1.i;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map$Entry;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FileProvider$SimplePathStrategy implements FileProvider$PathStrategy {
    private final String mAuthority;
    private final HashMap<String, File> mRoots = new HashMap<>();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FileProvider$SimplePathStrategy(String str) {
        this.mAuthority = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean belongsToRoot(@NonNull String str, @NonNull String str2) {
        String strAccess$000 = FileProvider.access$000(str);
        String strAccess$001 = FileProvider.access$000(str2);
        if (strAccess$000.equals(strAccess$001)) {
            return true;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(strAccess$001);
        sb.append('/');
        return strAccess$000.startsWith(sb.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addRoot(String str, File file) {
        if (TextUtils.isEmpty(str)) {
            i.k("Name must not be empty");
            return;
        }
        try {
            this.mRoots.put(str, file.getCanonicalFile());
        } catch (IOException e) {
            throw new IllegalArgumentException("Failed to resolve canonical path for " + file, e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.content.FileProvider$PathStrategy
    public File getFileForUri(Uri uri) {
        String encodedPath = uri.getEncodedPath();
        int iIndexOf = encodedPath.indexOf(47, 1);
        String strDecode = Uri.decode(encodedPath.substring(1, iIndexOf));
        String strDecode2 = Uri.decode(encodedPath.substring(iIndexOf + 1));
        File file = this.mRoots.get(strDecode);
        if (file == null) {
            androidx.navigation.b.t(uri, "Unable to find configured root for ");
            return null;
        }
        File file2 = new File(file, strDecode2);
        try {
            File canonicalFile = file2.getCanonicalFile();
            if (belongsToRoot(canonicalFile.getPath(), file.getPath())) {
                return canonicalFile;
            }
            throw new SecurityException("Resolved path jumped beyond configured root");
        } catch (IOException unused) {
            androidx.navigation.b.t(file2, "Failed to resolve canonical path for ");
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.content.FileProvider$PathStrategy
    public Uri getUriForFile(File file) {
        try {
            String canonicalPath = file.getCanonicalPath();
            Map$Entry<String, File> map$Entry = null;
            for (Map$Entry<String, File> map$Entry2 : this.mRoots.entrySet()) {
                String path = map$Entry2.getValue().getPath();
                if (belongsToRoot(canonicalPath, path) && (map$Entry == null || path.length() > map$Entry.getValue().getPath().length())) {
                    map$Entry = map$Entry2;
                }
            }
            if (map$Entry == null) {
                i.k(ai.onnxruntime.a.l("Failed to find configured root that contains ", canonicalPath));
                return null;
            }
            String path2 = map$Entry.getValue().getPath();
            return new Uri$Builder().scheme("content").authority(this.mAuthority).encodedPath(Uri.encode(map$Entry.getKey()) + '/' + Uri.encode(path2.endsWith("/") ? canonicalPath.substring(path2.length()) : canonicalPath.substring(path2.length() + 1), "/")).build();
        } catch (IOException unused) {
            androidx.navigation.b.t(file, "Failed to resolve canonical path for ");
            return null;
        }
    }
}
