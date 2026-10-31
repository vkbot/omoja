package org.apache.commons.net.ftp.parser;

import java.util.HashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.regex.MatchResult;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.net.ftp.FTPClientConfig;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class VMSVersioningFTPEntryParser extends VMSFTPEntryParser {
    private static final String REGEX = "(.*?);([0-9]{1,20})\\s{0,80}.{0,80}";
    private static final Pattern PATTERN = Pattern.compile(REGEX);

    public VMSVersioningFTPEntryParser(FTPClientConfig fTPClientConfig) {
        configure(fTPClientConfig);
    }

    @Override // org.apache.commons.net.ftp.parser.VMSFTPEntryParser
    public boolean isVersioning() {
        return true;
    }

    @Override // org.apache.commons.net.ftp.FTPFileEntryParserImpl, org.apache.commons.net.ftp.FTPFileEntryParser
    public List<String> preParse(List<String> list) {
        HashMap map = new HashMap();
        ListIterator<String> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            Matcher matcher = PATTERN.matcher(listIterator.next().trim());
            if (matcher.matches()) {
                MatchResult matchResult = matcher.toMatchResult();
                String strGroup = matchResult.group(1);
                Integer numValueOf = Integer.valueOf(matchResult.group(2));
                Integer num = (Integer) map.get(strGroup);
                if (num == null || numValueOf.intValue() >= num.intValue()) {
                    map.put(strGroup, numValueOf);
                } else {
                    listIterator.remove();
                }
            }
        }
        while (listIterator.hasPrevious()) {
            Matcher matcher2 = PATTERN.matcher(listIterator.previous().trim());
            if (matcher2.matches()) {
                MatchResult matchResult2 = matcher2.toMatchResult();
                String strGroup2 = matchResult2.group(1);
                int i10 = Integer.parseInt(matchResult2.group(2));
                Integer num2 = (Integer) map.get(strGroup2);
                if (num2 != null && i10 < num2.intValue()) {
                    listIterator.remove();
                }
            }
        }
        return list;
    }

    public VMSVersioningFTPEntryParser() {
        this(null);
    }
}
