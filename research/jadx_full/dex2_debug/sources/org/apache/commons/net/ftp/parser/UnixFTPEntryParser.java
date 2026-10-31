package org.apache.commons.net.ftp.parser;

import i7.k;
import java.text.ParseException;
import java.util.List;
import java.util.regex.Pattern;
import okhttp3.HttpUrl;
import org.apache.commons.net.ftp.FTPClientConfig;
import org.apache.commons.net.ftp.FTPFile;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class UnixFTPEntryParser extends ConfigurableFTPFileEntryParserImpl {
    static final String DEFAULT_DATE_FORMAT = "MMM d yyyy";
    private static final String DEFAULT_DATE_FORMAT_CN = "M'月' d yyyy";
    private static final String DEFAULT_DATE_FORMAT_JA = "M'月' d'日' yyyy'年'";
    static final String DEFAULT_RECENT_DATE_FORMAT = "MMM d HH:mm";
    private static final String DEFAULT_RECENT_DATE_FORMAT_CN = "M'月' d HH:mm";
    private static final String DEFAULT_RECENT_DATE_FORMAT_JA = "M'月' d'日' HH:mm";
    private static final String JA_DAY = "日";
    private static final String JA_MONTH = "月";
    private static final String JA_YEAR = "年";
    private static final String REGEX = "([bcdelfmpSs-])(((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-])))\\+?\\s*(\\d+)\\s+(?:(\\S+(?:\\s\\S+)*?)\\s+)?(?:(\\S+(?:\\s\\S+)*)\\s+)?(\\d+(?:,\\s*\\d+)?)\\s+((?:\\d+[-/]\\d+[-/]\\d+)|(?:\\S{3}\\s+\\d{1,2})|(?:\\d{1,2}\\s+\\S{3})|(?:\\d{1,2}月\\s+\\d{1,2}日)|(?:\\d{1,2}月\\s+\\d{1,2}))\\s+((?:\\d+(?::\\d+)?)|(?:\\d{4}年))\\s(.*)";
    final boolean trimLeadingSpaces;
    private static final Pattern TOTAL_PATTERN = Pattern.compile("^total \\d+$");
    static final String NUMERIC_DATE_FORMAT = "yyyy-MM-dd HH:mm";
    public static final FTPClientConfig NUMERIC_DATE_CONFIG = new FTPClientConfig(FTPClientConfig.SYST_UNIX, NUMERIC_DATE_FORMAT, null);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public UnixFTPEntryParser(FTPClientConfig fTPClientConfig, boolean z) {
        super(REGEX);
        configure(fTPClientConfig);
        this.trimLeadingSpaces = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean a(String str) {
        return lambda$preParse$0(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ boolean lambda$preParse$0(String str) {
        return TOTAL_PATTERN.matcher(str).matches();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.ftp.parser.ConfigurableFTPFileEntryParserImpl
    public FTPClientConfig getDefaultConfiguration() {
        return new FTPClientConfig(FTPClientConfig.SYST_UNIX, "MMM d yyyy", "MMM d HH:mm");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:25:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:28:0x00e6  */
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
        String strGroup2 = group(15);
        String strGroup3 = group(16);
        String strGroup4 = group(17);
        String strGroup5 = group(18);
        String str2 = group(19) + " " + group(20);
        String strGroup6 = group(21);
        if (this.trimLeadingSpaces) {
            strGroup6 = strGroup6.replaceFirst("^\\s+", HttpUrl.FRAGMENT_ENCODE_SET);
        }
        try {
            if (group(19).contains(JA_MONTH) && group(19).contains(JA_DAY)) {
                FTPTimestampParserImpl fTPTimestampParserImpl = new FTPTimestampParserImpl();
                fTPTimestampParserImpl.configure(new FTPClientConfig(FTPClientConfig.SYST_UNIX, DEFAULT_DATE_FORMAT_JA, DEFAULT_RECENT_DATE_FORMAT_JA));
                fTPFile.setTimestamp(fTPTimestampParserImpl.parseTimestamp(str2));
            } else if (!group(19).contains(JA_MONTH) || group(19).contains(JA_DAY)) {
                fTPFile.setTimestamp(super.parseTimestamp(str2));
            } else {
                FTPTimestampParserImpl fTPTimestampParserImpl2 = new FTPTimestampParserImpl();
                fTPTimestampParserImpl2.configure(new FTPClientConfig(FTPClientConfig.SYST_UNIX, DEFAULT_DATE_FORMAT_CN, DEFAULT_RECENT_DATE_FORMAT_CN));
                fTPFile.setTimestamp(fTPTimestampParserImpl2.parseTimestamp(str2));
            }
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
                    i = 0;
                    z = true;
                    break;
                case 'd':
                    z = false;
                    i = 1;
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
            String strGroup7 = group(i3 + 2);
            fTPFile.setPermission(i2, 2, (strGroup7.equals("-") || Character.isUpperCase(strGroup7.charAt(0))) ? false : true);
            i2++;
            i3 += 4;
        }
        if (!z) {
            try {
                fTPFile.setHardLinkCount(Integer.parseInt(strGroup2));
            } catch (NumberFormatException unused2) {
            }
        }
        fTPFile.setUser(strGroup3);
        fTPFile.setGroup(strGroup4);
        try {
            fTPFile.setSize(Long.parseLong(strGroup5));
        } catch (NumberFormatException unused3) {
        }
        if (i != 2 || (iIndexOf = strGroup6.indexOf(" -> ")) == -1) {
            fTPFile.setName(strGroup6);
        } else {
            fTPFile.setName(strGroup6.substring(0, iIndexOf));
            fTPFile.setLink(strGroup6.substring(iIndexOf + 4));
        }
        return fTPFile;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.ftp.FTPFileEntryParserImpl, org.apache.commons.net.ftp.FTPFileEntryParser
    public List<String> preParse(List<String> list) {
        list.removeIf(new k(6));
        return list;
    }

    public UnixFTPEntryParser(FTPClientConfig fTPClientConfig) {
        this(fTPClientConfig, false);
    }

    public UnixFTPEntryParser() {
        this(null);
    }
}
