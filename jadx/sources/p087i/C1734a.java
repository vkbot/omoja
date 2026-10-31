package p087i;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;

/* JADX INFO: renamed from: i.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1734a {

    /* JADX INFO: renamed from: c */
    public static final String[] f4512c = {"_data"};

    /* JADX INFO: renamed from: d */
    public static final String[] f4513d = {"_data"};

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f4514a;

    /* JADX INFO: renamed from: b */
    public final ContentResolver f4515b;

    public /* synthetic */ C1734a(ContentResolver contentResolver, int i10) {
        this.f4514a = i10;
        this.f4515b = contentResolver;
    }

    /* JADX INFO: renamed from: a */
    public final Cursor m2853a(Uri uri) {
        switch (this.f4514a) {
            case 0:
                String lastPathSegment = uri.getLastPathSegment();
                return this.f4515b.query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, f4512c, "kind = 1 AND image_id = ?", new String[]{lastPathSegment}, null);
            default:
                String lastPathSegment2 = uri.getLastPathSegment();
                return this.f4515b.query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, f4513d, "kind = 1 AND video_id = ?", new String[]{lastPathSegment2}, null);
        }
    }
}
