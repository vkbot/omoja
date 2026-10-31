package org.apache.commons.net.ftp.parser;

import java.util.Calendar;
import org.apache.commons.net.ftp.Configurable;
import org.apache.commons.net.ftp.FTPClientConfig;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class ConfigurableFTPFileEntryParserImpl extends RegexFTPFileEntryParserImpl implements Configurable {
    private final FTPTimestampParser timestampParser;

    public ConfigurableFTPFileEntryParserImpl(String str) {
        super(str);
        this.timestampParser = new FTPTimestampParserImpl();
    }

    @Override // org.apache.commons.net.ftp.Configurable
    public void configure(FTPClientConfig fTPClientConfig) {
        if (this.timestampParser instanceof Configurable) {
            FTPClientConfig defaultConfiguration = getDefaultConfiguration();
            if (fTPClientConfig == null) {
                ((Configurable) this.timestampParser).configure(defaultConfiguration);
                return;
            }
            if (fTPClientConfig.getDefaultDateFormatStr() == null) {
                fTPClientConfig.setDefaultDateFormatStr(defaultConfiguration.getDefaultDateFormatStr());
            }
            if (fTPClientConfig.getRecentDateFormatStr() == null) {
                fTPClientConfig.setRecentDateFormatStr(defaultConfiguration.getRecentDateFormatStr());
            }
            ((Configurable) this.timestampParser).configure(fTPClientConfig);
        }
    }

    public abstract FTPClientConfig getDefaultConfiguration();

    public Calendar parseTimestamp(String str) {
        return this.timestampParser.parseTimestamp(str);
    }

    public ConfigurableFTPFileEntryParserImpl(String str, int i10) {
        super(str, i10);
        this.timestampParser = new FTPTimestampParserImpl();
    }
}
