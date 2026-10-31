package org.apache.commons.net.ftp.parser;

import org.apache.commons.net.ftp.FTPClientConfig;
import org.apache.commons.net.ftp.FTPFileEntryParser;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public interface FTPFileEntryParserFactory {
    FTPFileEntryParser createFileEntryParser(String str);

    FTPFileEntryParser createFileEntryParser(FTPClientConfig fTPClientConfig);
}
