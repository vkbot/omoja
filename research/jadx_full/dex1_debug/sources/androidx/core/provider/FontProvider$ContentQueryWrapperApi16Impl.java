package androidx.core.provider;

import android.content.ContentProviderClient;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.RemoteException;
import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FontProvider$ContentQueryWrapperApi16Impl implements FontProvider$ContentQueryWrapper {
    private final ContentProviderClient mClient;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FontProvider$ContentQueryWrapperApi16Impl(Context context, Uri uri) {
        this.mClient = context.getContentResolver().acquireUnstableContentProviderClient(uri);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.provider.FontProvider$ContentQueryWrapper
    public void close() {
        ContentProviderClient contentProviderClient = this.mClient;
        if (contentProviderClient != null) {
            contentProviderClient.release();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.provider.FontProvider$ContentQueryWrapper
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
        ContentProviderClient contentProviderClient = this.mClient;
        if (contentProviderClient == null) {
            return null;
        }
        try {
            return contentProviderClient.query(uri, strArr, str, strArr2, str2, cancellationSignal);
        } catch (RemoteException e) {
            Log.w("FontsProvider", "Unable to query the content provider", e);
            return null;
        }
    }
}
