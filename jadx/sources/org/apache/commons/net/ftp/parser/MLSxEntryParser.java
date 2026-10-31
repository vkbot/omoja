package org.apache.commons.net.ftp.parser;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Locale;
import java.util.TimeZone;
import org.apache.commons.net.ftp.FTPFile;
import org.apache.commons.net.ftp.FTPFileEntryParserImpl;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class MLSxEntryParser extends FTPFileEntryParserImpl {
    private static final MLSxEntryParser INSTANCE = new MLSxEntryParser();
    private static final HashMap<String, Integer> TYPE_TO_INT;
    private static final int[] UNIX_GROUPS;
    private static final int[][] UNIX_PERMS;

    static {
        HashMap<String, Integer> map = new HashMap<>();
        TYPE_TO_INT = map;
        map.put("file", 0);
        map.put("cdir", 1);
        map.put("pdir", 1);
        map.put("dir", 1);
        UNIX_GROUPS = new int[]{0, 1, 2};
        UNIX_PERMS = new int[][]{new int[0], new int[]{2}, new int[]{1}, new int[]{2, 1}, new int[]{0}, new int[]{0, 2}, new int[]{0, 1}, new int[]{0, 1, 2}};
    }

    @Deprecated
    public MLSxEntryParser() {
    }

    private void doUnixPerms(FTPFile fTPFile, String str) {
        for (char c : str.toCharArray()) {
            if (c == 'a') {
                fTPFile.setPermission(0, 1, true);
            } else if (c == 'p') {
                fTPFile.setPermission(0, 1, true);
            } else if (c == 'r') {
                fTPFile.setPermission(0, 0, true);
            } else if (c == 'w') {
                fTPFile.setPermission(0, 1, true);
            } else if (c == 'l') {
                fTPFile.setPermission(0, 2, true);
            } else if (c != 'm') {
                switch (c) {
                    case 'c':
                        fTPFile.setPermission(0, 1, true);
                        break;
                    case 'd':
                        fTPFile.setPermission(0, 1, true);
                        break;
                    case TypedValues.TYPE_TARGET /* 101 */:
                        fTPFile.setPermission(0, 0, true);
                        break;
                }
            } else {
                fTPFile.setPermission(0, 1, true);
            }
        }
    }

    public static MLSxEntryParser getInstance() {
        return INSTANCE;
    }

    public static FTPFile parseEntry(String str) {
        return INSTANCE.parseFTPEntry(str);
    }

    public static Calendar parseGMTdateTime(String str) {
        SimpleDateFormat simpleDateFormat;
        boolean z9;
        if (str.contains(".")) {
            simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss.SSS");
            z9 = true;
        } else {
            simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
            z9 = false;
        }
        TimeZone timeZone = TimeZone.getTimeZone("GMT");
        simpleDateFormat.setTimeZone(timeZone);
        GregorianCalendar gregorianCalendar = new GregorianCalendar(timeZone);
        ParsePosition parsePosition = new ParsePosition(0);
        simpleDateFormat.setLenient(false);
        Date date = simpleDateFormat.parse(str, parsePosition);
        if (parsePosition.getIndex() != str.length()) {
            return null;
        }
        gregorianCalendar.setTime(date);
        if (!z9) {
            gregorianCalendar.clear(14);
        }
        return gregorianCalendar;
    }

    public static Instant parseGmtInstant(String str) {
        return parseGMTdateTime(str).toInstant();
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // org.apache.commons.net.ftp.FTPFileEntryParser
    public FTPFile parseFTPEntry(String str) {
        int i10;
        FTPFile fTPFile;
        FTPFile fTPFile2 = null;
        if (str.startsWith(" ")) {
            if (str.length() <= 1) {
                return null;
            }
            FTPFile fTPFile3 = new FTPFile();
            fTPFile3.setRawListing(str);
            fTPFile3.setName(str.substring(1));
            return fTPFile3;
        }
        int i11 = 2;
        String[] strArrSplit = str.split(" ", 2);
        if (strArrSplit.length != 2 || strArrSplit[1].isEmpty()) {
            return null;
        }
        String str2 = strArrSplit[0];
        if (!str2.endsWith(";")) {
            return null;
        }
        FTPFile fTPFile4 = new FTPFile();
        fTPFile4.setRawListing(str);
        fTPFile4.setName(strArrSplit[1]);
        String[] strArrSplit2 = str2.split(";");
        boolean zContains = strArrSplit[0].toLowerCase(Locale.ENGLISH).contains("unix.mode=");
        int length = strArrSplit2.length;
        int i12 = 0;
        while (i12 < length) {
            int i13 = -1;
            String[] strArrSplit3 = strArrSplit2[i12].split("=", -1);
            if (strArrSplit3.length != i11) {
                return fTPFile2;
            }
            String str3 = strArrSplit3[0];
            Locale locale = Locale.ENGLISH;
            String lowerCase = str3.toLowerCase(locale);
            String str4 = strArrSplit3[1];
            if (!str4.isEmpty()) {
                String lowerCase2 = str4.toLowerCase(locale);
                lowerCase.getClass();
                switch (lowerCase.hashCode()) {
                    case -1068795718:
                        i10 = !lowerCase.equals("modify") ? -1 : 0;
                        break;
                    case 3530752:
                        i10 = !lowerCase.equals("sizd") ? -1 : 1;
                        break;
                    case 3530753:
                        i10 = !lowerCase.equals("size") ? -1 : i11;
                        break;
                    case 3575610:
                        i10 = !lowerCase.equals("type") ? -1 : 3;
                        break;
                    default:
                        i10 = -1;
                        break;
                }
                switch (i10) {
                    case 0:
                        fTPFile = fTPFile2;
                        Calendar gMTdateTime = parseGMTdateTime(str4);
                        if (gMTdateTime == null) {
                            return fTPFile;
                        }
                        fTPFile4.setTimestamp(gMTdateTime);
                        break;
                    case 1:
                    case 2:
                        fTPFile = fTPFile2;
                        fTPFile4.setSize(Long.parseLong(str4));
                        break;
                    case 3:
                        fTPFile = fTPFile2;
                        Integer num = TYPE_TO_INT.get(lowerCase2);
                        if (num != null) {
                            fTPFile4.setType(num.intValue());
                        } else {
                            fTPFile4.setType(3);
                        }
                        break;
                    default:
                        if (!lowerCase.startsWith("unix.")) {
                            fTPFile = fTPFile2;
                            if (!zContains && "perm".equals(lowerCase)) {
                                doUnixPerms(fTPFile4, lowerCase2);
                                break;
                            }
                        } else {
                            String lowerCase3 = lowerCase.substring(5).toLowerCase(locale);
                            lowerCase3.getClass();
                            switch (lowerCase3.hashCode()) {
                                case 3357091:
                                    if (lowerCase3.equals("mode")) {
                                        i13 = 0;
                                    }
                                    break;
                                case 98629247:
                                    if (lowerCase3.equals("group")) {
                                        i13 = 1;
                                    }
                                    break;
                                case 106164915:
                                    if (lowerCase3.equals("owner")) {
                                        i13 = i11;
                                    }
                                    break;
                            }
                            switch (i13) {
                                case 0:
                                    int length2 = str4.length() - 3;
                                    int i14 = 0;
                                    while (i14 < 3) {
                                        int iCharAt = str4.charAt(length2 + i14) - '0';
                                        if (iCharAt >= 0 && iCharAt <= 7) {
                                            int[] iArr = UNIX_PERMS[iCharAt];
                                            int length3 = iArr.length;
                                            int i15 = 0;
                                            while (i15 < length3) {
                                                fTPFile4.setPermission(UNIX_GROUPS[i14], iArr[i15], true);
                                                i15++;
                                                fTPFile2 = fTPFile2;
                                            }
                                        }
                                        i14++;
                                        fTPFile2 = fTPFile2;
                                    }
                                    break;
                                case 1:
                                    fTPFile4.setGroup(str4);
                                    break;
                                case 2:
                                    fTPFile4.setUser(str4);
                                    break;
                            }
                            fTPFile = fTPFile2;
                        }
                        break;
                }
            } else {
                fTPFile = fTPFile2;
            }
            i12++;
            fTPFile2 = fTPFile;
            i11 = 2;
        }
        return fTPFile4;
    }
}
