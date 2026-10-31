package org.apache.commons.net.ftp.parser;

import ai.onnxruntime.AbstractC0074a;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.location.LocationRequestCompat;
import java.text.ParseException;
import org.apache.commons.net.ftp.FTPClientConfig;
import org.apache.commons.net.ftp.FTPFile;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class MacOsPeterFTPEntryParser extends ConfigurableFTPFileEntryParserImpl {
    static final String DEFAULT_DATE_FORMAT = "MMM d yyyy";
    static final String DEFAULT_RECENT_DATE_FORMAT = "MMM d HH:mm";
    private static final String REGEX = "([bcdelfmpSs-])(((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-])))\\+?\\s+((folder\\s+)|((\\d+)\\s+(\\d+)\\s+))(\\d+)\\s+((?:\\d+[-/]\\d+[-/]\\d+)|(?:\\S{3}\\s+\\d{1,2})|(?:\\d{1,2}\\s+\\S{3}))\\s+(\\d+(?::\\d+)?)\\s+(\\S*)(\\s*.*)";

    public MacOsPeterFTPEntryParser(FTPClientConfig fTPClientConfig) {
        super(REGEX);
        configure(fTPClientConfig);
    }

    @Override // org.apache.commons.net.ftp.parser.ConfigurableFTPFileEntryParserImpl
    public FTPClientConfig getDefaultConfiguration() {
        return new FTPClientConfig(FTPClientConfig.SYST_UNIX, "MMM d yyyy", "MMM d HH:mm");
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0066  */
    /* JADX WARN: Code duplicated, block: B:15:0x006f  */
    @Override // org.apache.commons.net.ftp.FTPFileEntryParser
    public FTPFile parseFTPEntry(String str) {
        int i10;
        boolean z9;
        int iIndexOf;
        FTPFile fTPFile = new FTPFile();
        fTPFile.setRawListing(str);
        if (!matches(str)) {
            return null;
        }
        String strGroup = group(1);
        String strGroup2 = group(20);
        String str2 = group(21) + " " + group(22);
        String strGroup3 = group(23);
        String strGroup4 = group(24);
        try {
            fTPFile.setTimestamp(super.parseTimestamp(str2));
        } catch (ParseException unused) {
        }
        char cCharAt = strGroup.charAt(0);
        if (cCharAt == '-') {
            i10 = 0;
            z9 = false;
        } else if (cCharAt != 'l') {
            switch (cCharAt) {
                case 'b':
                case 'c':
                    z9 = true;
                    i10 = 0;
                    break;
                case 'd':
                    i10 = 1;
                    z9 = false;
                    break;
                case TypedValues.TYPE_TARGET /* 101 */:
                    z9 = false;
                    i10 = 2;
                    break;
                case LocationRequestCompat.QUALITY_BALANCED_POWER_ACCURACY /* 102 */:
                    i10 = 0;
                    z9 = false;
                    break;
                default:
                    z9 = false;
                    i10 = 3;
                    break;
            }
        } else {
            z9 = false;
            i10 = 2;
        }
        fTPFile.setType(i10);
        int i11 = 0;
        int i12 = 4;
        for (int i13 = 3; i11 < i13; i13 = 3) {
            fTPFile.setPermission(i11, 0, !group(i12).equals("-"));
            fTPFile.setPermission(i11, 1, !group(i12 + 1).equals("-"));
            String strGroup5 = group(i12 + 2);
            fTPFile.setPermission(i11, 2, (strGroup5.equals("-") || Character.isUpperCase(strGroup5.charAt(0))) ? false : true);
            i11++;
            i12 += 4;
        }
        if (!z9) {
            try {
                fTPFile.setHardLinkCount(Integer.parseInt("0"));
            } catch (NumberFormatException unused2) {
            }
        }
        fTPFile.setUser(null);
        fTPFile.setGroup(null);
        try {
            fTPFile.setSize(Long.parseLong(strGroup2));
        } catch (NumberFormatException unused3) {
        }
        if (strGroup4 == null) {
            fTPFile.setName(strGroup3);
        } else {
            String strM148C = AbstractC0074a.m148C(strGroup3, strGroup4);
            if (i10 != 2 || (iIndexOf = strM148C.indexOf(" -> ")) == -1) {
                fTPFile.setName(strM148C);
            } else {
                fTPFile.setName(strM148C.substring(0, iIndexOf));
                fTPFile.setLink(strM148C.substring(iIndexOf + 4));
            }
        }
        return fTPFile;
    }

    public MacOsPeterFTPEntryParser() {
        this(null);
    }
}
