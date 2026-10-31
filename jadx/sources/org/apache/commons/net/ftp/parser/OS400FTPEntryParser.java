package org.apache.commons.net.ftp.parser;

import java.io.File;
import java.text.ParseException;
import java.util.Locale;
import org.apache.commons.net.ftp.FTPClientConfig;
import org.apache.commons.net.ftp.FTPFile;
import org.apache.commons.p161io.IOUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class OS400FTPEntryParser extends ConfigurableFTPFileEntryParserImpl {
    private static final String DEFAULT_DATE_FORMAT = "yy/MM/dd HH:mm:ss";
    private static final String REGEX = "(\\S+)\\s+(?:(\\d+)\\s+)?(?:(\\S+)\\s+(\\S+)\\s+)?(\\*STMF|\\*DIR|\\*FILE|\\*MEM)\\s+((\\S+\\s*)+)?";

    public OS400FTPEntryParser(FTPClientConfig fTPClientConfig) {
        super(REGEX);
        configure(fTPClientConfig);
    }

    private boolean isNullOrEmpty(String str) {
        return str == null || str.isEmpty();
    }

    @Override // org.apache.commons.net.ftp.parser.ConfigurableFTPFileEntryParserImpl
    public FTPClientConfig getDefaultConfiguration() {
        return new FTPClientConfig(FTPClientConfig.SYST_OS400, DEFAULT_DATE_FORMAT, null);
    }

    @Override // org.apache.commons.net.ftp.FTPFileEntryParser
    public FTPFile parseFTPEntry(String str) {
        String str2;
        int i10;
        int iLastIndexOf;
        FTPFile fTPFile = new FTPFile();
        fTPFile.setRawListing(str);
        if (!matches(str)) {
            return null;
        }
        String strGroup = group(1);
        String strGroup2 = group(2);
        int i11 = 3;
        if (isNullOrEmpty(group(3)) && isNullOrEmpty(group(4))) {
            str2 = "";
        } else {
            str2 = group(3) + " " + group(4);
        }
        String strGroup3 = group(5);
        String strGroup4 = group(6);
        try {
            fTPFile.setTimestamp(super.parseTimestamp(str2));
        } catch (ParseException unused) {
        }
        if (!strGroup3.equalsIgnoreCase("*STMF")) {
            if (!strGroup3.equalsIgnoreCase("*DIR")) {
                if (strGroup3.equalsIgnoreCase("*FILE")) {
                    if (strGroup4 == null || !strGroup4.toUpperCase(Locale.ROOT).endsWith(".SAVF")) {
                        return null;
                    }
                } else if (!strGroup3.equalsIgnoreCase("*MEM")) {
                    i10 = 1;
                } else {
                    if (isNullOrEmpty(strGroup4) || !isNullOrEmpty(strGroup2) || !isNullOrEmpty(str2)) {
                        return null;
                    }
                    strGroup4 = strGroup4.replace(IOUtils.DIR_SEPARATOR_UNIX, File.separatorChar);
                }
                i10 = 0;
            } else {
                if (isNullOrEmpty(strGroup2) || isNullOrEmpty(strGroup4)) {
                    return null;
                }
                i10 = 1;
            }
            i11 = i10;
        } else {
            if (isNullOrEmpty(strGroup2) || isNullOrEmpty(strGroup4)) {
                return null;
            }
            i10 = 1;
            i11 = 0;
        }
        fTPFile.setType(i11);
        fTPFile.setUser(strGroup);
        try {
            fTPFile.setSize(Long.parseLong(strGroup2));
        } catch (NumberFormatException unused2) {
        }
        if (strGroup4.endsWith("/")) {
            strGroup4 = strGroup4.substring(0, strGroup4.length() - 1);
        }
        if (i10 != 0 && (iLastIndexOf = strGroup4.lastIndexOf(47)) > -1) {
            strGroup4 = strGroup4.substring(iLastIndexOf + 1);
        }
        fTPFile.setName(strGroup4);
        return fTPFile;
    }

    public OS400FTPEntryParser() {
        this(null);
    }
}
