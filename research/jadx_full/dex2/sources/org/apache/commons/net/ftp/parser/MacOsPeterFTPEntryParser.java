package org.apache.commons.net.ftp.parser;

import ai.onnxruntime.a;
import java.text.ParseException;
import org.apache.commons.net.ftp.FTPClientConfig;
import org.apache.commons.net.ftp.FTPFile;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class MacOsPeterFTPEntryParser extends ConfigurableFTPFileEntryParserImpl {
    static final String DEFAULT_DATE_FORMAT = "MMM d yyyy";
    static final String DEFAULT_RECENT_DATE_FORMAT = "MMM d HH:mm";
    private static final String REGEX = "([bcdelfmpSs-])(((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-])))\\+?\\s+((folder\\s+)|((\\d+)\\s+(\\d+)\\s+))(\\d+)\\s+((?:\\d+[-/]\\d+[-/]\\d+)|(?:\\S{3}\\s+\\d{1,2})|(?:\\d{1,2}\\s+\\S{3}))\\s+(\\d+(?::\\d+)?)\\s+(\\S*)(\\s*.*)";

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MacOsPeterFTPEntryParser(FTPClientConfig fTPClientConfig) {
        super(REGEX);
        configure(fTPClientConfig);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.ftp.parser.ConfigurableFTPFileEntryParserImpl
    public FTPClientConfig getDefaultConfiguration() {
        return new FTPClientConfig(FTPClientConfig.SYST_UNIX, "MMM d yyyy", "MMM d HH:mm");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:12:0x0066  */
    /* JADX WARN: Code duplicated, block: B:15:0x006f  */
    @Override // org.apache.commons.net.ftp.FTPFileEntryParser
    public FTPFile parseFTPEntry(String str) {
        int i;
        boolean z;
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
            i = 0;
            z = false;
        } else if (cCharAt != 'l') {
            switch (cCharAt) {
                case 'b':
                case 'c':
                    z = true;
                    i = 0;
                    break;
                case 'd':
                    i = 1;
                    z = false;
                    break;
                case 'e':
                    z = false;
                    i = 2;
                    break;
                case 'f':
                    i = 0;
                    z = false;
                    break;
                default:
                    z = false;
                    i = 3;
                    break;
            }
        } else {
            z = false;
            i = 2;
        }
        fTPFile.setType(i);
        int i2 = 0;
        int i3 = 4;
        for (int i4 = 3; i2 < i4; i4 = 3) {
            fTPFile.setPermission(i2, 0, !group(i3).equals("-"));
            fTPFile.setPermission(i2, 1, !group(i3 + 1).equals("-"));
            String strGroup5 = group(i3 + 2);
            fTPFile.setPermission(i2, 2, (strGroup5.equals("-") || Character.isUpperCase(strGroup5.charAt(0))) ? false : true);
            i2++;
            i3 += 4;
        }
        if (!z) {
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
            String strC = a.C(strGroup3, strGroup4);
            if (i != 2 || (iIndexOf = strC.indexOf(" -> ")) == -1) {
                fTPFile.setName(strC);
            } else {
                fTPFile.setName(strC.substring(0, iIndexOf));
                fTPFile.setLink(strC.substring(iIndexOf + 4));
            }
        }
        return fTPFile;
    }

    public MacOsPeterFTPEntryParser() {
        this(null);
    }
}
