package androidx.exifinterface.media;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ExifInterface$ExifTag {
    public final String name;
    public final int number;
    public final int primaryFormat;
    public final int secondaryFormat;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ExifInterface$ExifTag(String str, int i9, int i10) {
        this.name = str;
        this.number = i9;
        this.primaryFormat = i10;
        this.secondaryFormat = -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isFormatCompatible(int i9) {
        int i10;
        int i11 = this.primaryFormat;
        if (i11 == 7 || i9 == 7 || i11 == i9 || (i10 = this.secondaryFormat) == i9) {
            return true;
        }
        if ((i11 == 4 || i10 == 4) && i9 == 3) {
            return true;
        }
        if ((i11 == 9 || i10 == 9) && i9 == 8) {
            return true;
        }
        return (i11 == 12 || i10 == 12) && i9 == 11;
    }

    public ExifInterface$ExifTag(String str, int i9, int i10, int i11) {
        this.name = str;
        this.number = i9;
        this.primaryFormat = i10;
        this.secondaryFormat = i11;
    }
}
