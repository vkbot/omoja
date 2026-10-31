package androidx.appcompat.app;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class TwilightCalculator {
    private static final float ALTIDUTE_CORRECTION_CIVIL_TWILIGHT = -0.10471976f;
    private static final float C1 = 0.0334196f;
    private static final float C2 = 3.49066E-4f;
    private static final float C3 = 5.236E-6f;
    public static final int DAY = 0;
    private static final float DEGREES_TO_RADIANS = 0.017453292f;
    private static final float J0 = 9.0E-4f;
    public static final int NIGHT = 1;
    private static final float OBLIQUITY = 0.4092797f;
    private static final long UTC_2000 = 946728000000L;
    private static TwilightCalculator sInstance;
    public int state;
    public long sunrise;
    public long sunset;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static TwilightCalculator getInstance() {
        if (sInstance == null) {
            sInstance = new TwilightCalculator();
        }
        return sInstance;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void calculateTwilight(long j9, double d, double d9) {
        float f8 = (j9 - UTC_2000) / 8.64E7f;
        float f9 = (0.01720197f * f8) + 6.24006f;
        double d10 = f9;
        double dSin = (Math.sin(f9 * 3.0f) * 5.236000106378924E-6d) + ai.onnxruntime.a.a(2.0f * f9, 3.4906598739326E-4d, ai.onnxruntime.a.a(d10, 0.03341960161924362d, d10)) + 1.796593063d + 3.141592653589793d;
        double d11 = (-d9) / 360.0d;
        double dSin2 = (Math.sin(2.0d * dSin) * (-0.0069d)) + ai.onnxruntime.a.a(d10, 0.0053d, ((double) (Math.round(((double) (f8 - J0)) - d11) + J0)) + d11);
        double dAsin = Math.asin(Math.sin(0.4092797040939331d) * Math.sin(dSin));
        double d12 = 0.01745329238474369d * d;
        double dSin3 = (Math.sin(-0.10471975803375244d) - (Math.sin(dAsin) * Math.sin(d12))) / (Math.cos(dAsin) * Math.cos(d12));
        if (dSin3 >= 1.0d) {
            this.state = 1;
            this.sunset = -1L;
            this.sunrise = -1L;
        } else {
            if (dSin3 <= -1.0d) {
                this.state = 0;
                this.sunset = -1L;
                this.sunrise = -1L;
                return;
            }
            double dAcos = (float) (Math.acos(dSin3) / 6.283185307179586d);
            this.sunset = Math.round((dSin2 + dAcos) * 8.64E7d) + UTC_2000;
            long jRound = Math.round((dSin2 - dAcos) * 8.64E7d) + UTC_2000;
            this.sunrise = jRound;
            if (jRound >= j9 || this.sunset <= j9) {
                this.state = 1;
            } else {
                this.state = 0;
            }
        }
    }
}
