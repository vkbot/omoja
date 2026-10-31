package androidx.exifinterface.media;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ExifInterface$Rational {
    public final long denominator;
    public final long numerator;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ExifInterface$Rational(long j9, long j10) {
        if (j10 == 0) {
            this.numerator = 0L;
            this.denominator = 1L;
        } else {
            this.numerator = j9;
            this.denominator = j10;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public double calculate() {
        return this.numerator / this.denominator;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return this.numerator + "/" + this.denominator;
    }

    public ExifInterface$Rational(double d) {
        this((long) (d * 10000.0d), 10000L);
    }
}
