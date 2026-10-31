package i;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore$Images$Thumbnails;
import android.provider.MediaStore$Video$Thumbnails;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a {
    public static final String[] c = {"_data"};
    public static final String[] d = {"_data"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2628a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ContentResolver f2629b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(ContentResolver contentResolver, int i9) {
        this.f2628a = i9;
        this.f2629b = contentResolver;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Cursor a(Uri uri) {
        switch (this.f2628a) {
            case 0:
                String lastPathSegment = uri.getLastPathSegment();
                return this.f2629b.query(MediaStore$Images$Thumbnails.EXTERNAL_CONTENT_URI, c, "kind = 1 AND image_id = ?", new String[]{lastPathSegment}, null);
            default:
                String lastPathSegment2 = uri.getLastPathSegment();
                return this.f2629b.query(MediaStore$Video$Thumbnails.EXTERNAL_CONTENT_URI, d, "kind = 1 AND video_id = ?", new String[]{lastPathSegment2}, null);
        }
    }
}
