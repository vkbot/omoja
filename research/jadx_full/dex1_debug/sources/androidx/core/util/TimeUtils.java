package androidx.core.util;

import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import java.io.PrintWriter;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
public final class TimeUtils {

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public static final int HUNDRED_DAY_FIELD_LEN = 19;
    private static final int SECONDS_PER_DAY = 86400;
    private static final int SECONDS_PER_HOUR = 3600;
    private static final int SECONDS_PER_MINUTE = 60;
    private static final Object sFormatSync = new Object();
    private static char[] sFormatStr = new char[24];

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private TimeUtils() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int accumField(int i9, int i10, boolean z8, int i11) {
        if (i9 > 99 || (z8 && i11 >= 3)) {
            return i10 + 3;
        }
        if (i9 > 9 || (z8 && i11 >= 2)) {
            return i10 + 2;
        }
        if (z8 || i9 > 0) {
            return i10 + 1;
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public static void formatDuration(long j9, PrintWriter printWriter, int i9) {
        synchronized (sFormatSync) {
            printWriter.print(new String(sFormatStr, 0, formatDurationLocked(j9, i9)));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int formatDurationLocked(long j9, int i9) {
        char c;
        int i10;
        int i11;
        int i12;
        int i13;
        long j10 = j9;
        if (sFormatStr.length < i9) {
            sFormatStr = new char[i9];
        }
        char[] cArr = sFormatStr;
        if (j10 == 0) {
            int i14 = i9 - 1;
            while (i14 > 0) {
                cArr[0] = ' ';
            }
            cArr[0] = '0';
            return 1;
        }
        if (j10 > 0) {
            c = '+';
        } else {
            j10 = -j10;
            c = '-';
        }
        int i15 = (int) (j10 % 1000);
        int iFloor = (int) Math.floor(j10 / 1000);
        if (iFloor > SECONDS_PER_DAY) {
            i10 = iFloor / SECONDS_PER_DAY;
            iFloor -= SECONDS_PER_DAY * i10;
        } else {
            i10 = 0;
        }
        if (iFloor > SECONDS_PER_HOUR) {
            i11 = iFloor / SECONDS_PER_HOUR;
            iFloor -= i11 * SECONDS_PER_HOUR;
        } else {
            i11 = 0;
        }
        if (iFloor > SECONDS_PER_MINUTE) {
            int i16 = iFloor / SECONDS_PER_MINUTE;
            iFloor -= i16 * SECONDS_PER_MINUTE;
            i12 = i16;
        } else {
            i12 = 0;
        }
        if (i9 != 0) {
            int iAccumField = accumField(i10, 1, false, 0);
            int iAccumField2 = iAccumField + accumField(i11, 1, iAccumField > 0, 2);
            int iAccumField3 = iAccumField2 + accumField(i12, 1, iAccumField2 > 0, 2);
            int iAccumField4 = iAccumField3 + accumField(iFloor, 1, iAccumField3 > 0, 2);
            i13 = 0;
            for (int iAccumField5 = accumField(i15, 2, true, iAccumField4 > 0 ? 3 : 0) + 1 + iAccumField4; iAccumField5 < i9; iAccumField5++) {
                cArr[i13] = ' ';
                i13++;
            }
        } else {
            i13 = 0;
        }
        cArr[i13] = c;
        int i17 = i13 + 1;
        boolean z8 = i9 != 0;
        int iPrintField = printField(cArr, i10, 'd', i17, false, 0);
        int iPrintField2 = printField(cArr, i11, 'h', iPrintField, iPrintField != i17, z8 ? 2 : 0);
        int iPrintField3 = printField(cArr, i12, 'm', iPrintField2, iPrintField2 != i17, z8 ? 2 : 0);
        int iPrintField4 = printField(cArr, iFloor, 's', iPrintField3, iPrintField3 != i17, z8 ? 2 : 0);
        int iPrintField5 = printField(cArr, i15, 'm', iPrintField4, true, (!z8 || iPrintField4 == i17) ? 0 : 3);
        cArr[iPrintField5] = 's';
        return iPrintField5 + 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int printField(char[] cArr, int i9, char c, int i10, boolean z8, int i11) {
        int i12;
        if (!z8 && i9 <= 0) {
            return i10;
        }
        if ((!z8 || i11 < 3) && i9 <= 99) {
            i12 = i10;
        } else {
            int i13 = i9 / 100;
            cArr[i10] = (char) (i13 + 48);
            i12 = i10 + 1;
            i9 -= i13 * 100;
        }
        if ((z8 && i11 >= 2) || i9 > 9 || i10 != i12) {
            int i14 = i9 / 10;
            cArr[i12] = (char) (i14 + 48);
            i12++;
            i9 -= i14 * 10;
        }
        cArr[i12] = (char) (i9 + 48);
        cArr[i12 + 1] = c;
        return i12 + 2;
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public static void formatDuration(long j9, StringBuilder sb) {
        synchronized (sFormatSync) {
            sb.append(sFormatStr, 0, formatDurationLocked(j9, 0));
        }
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public static void formatDuration(long j9, PrintWriter printWriter) {
        formatDuration(j9, printWriter, 0);
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public static void formatDuration(long j9, long j10, PrintWriter printWriter) {
        if (j9 == 0) {
            printWriter.print("--");
        } else {
            formatDuration(j9 - j10, printWriter, 0);
        }
    }
}
