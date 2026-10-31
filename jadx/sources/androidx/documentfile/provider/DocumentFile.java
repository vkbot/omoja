package androidx.documentfile.provider;

import android.content.Context;
import android.net.Uri;
import androidx.core.provider.DocumentsContractCompat;
import androidx.navigation.C0674b;
import java.io.File;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class DocumentFile {
    static final String TAG = "DocumentFile";
    private final DocumentFile mParent;

    public DocumentFile(DocumentFile documentFile) {
        this.mParent = documentFile;
    }

    public static DocumentFile fromFile(File file) {
        return new RawDocumentFile(null, file);
    }

    public static DocumentFile fromSingleUri(Context context, Uri uri) {
        return new SingleDocumentFile(null, context, uri);
    }

    public static DocumentFile fromTreeUri(Context context, Uri uri) {
        String treeDocumentId = DocumentsContractCompat.getTreeDocumentId(uri);
        if (DocumentsContractCompat.isDocumentUri(context, uri)) {
            treeDocumentId = DocumentsContractCompat.getDocumentId(uri);
        }
        if (treeDocumentId == null) {
            C0674b.m853t(uri, "Could not get document ID from Uri: ");
            return null;
        }
        Uri uriBuildDocumentUriUsingTree = DocumentsContractCompat.buildDocumentUriUsingTree(uri, treeDocumentId);
        if (uriBuildDocumentUriUsingTree != null) {
            return new TreeDocumentFile(null, context, uriBuildDocumentUriUsingTree);
        }
        throw new NullPointerException("Failed to build documentUri from a tree: " + uri);
    }

    public static boolean isDocumentUri(Context context, Uri uri) {
        return DocumentsContractCompat.isDocumentUri(context, uri);
    }

    public abstract boolean canRead();

    public abstract boolean canWrite();

    public abstract DocumentFile createDirectory(String str);

    public abstract DocumentFile createFile(String str, String str2);

    public abstract boolean delete();

    public abstract boolean exists();

    public DocumentFile findFile(String str) {
        for (DocumentFile documentFile : listFiles()) {
            if (str.equals(documentFile.getName())) {
                return documentFile;
            }
        }
        return null;
    }

    public abstract String getName();

    public DocumentFile getParentFile() {
        return this.mParent;
    }

    public abstract String getType();

    public abstract Uri getUri();

    public abstract boolean isDirectory();

    public abstract boolean isFile();

    public abstract boolean isVirtual();

    public abstract long lastModified();

    public abstract long length();

    public abstract DocumentFile[] listFiles();

    public abstract boolean renameTo(String str);
}
