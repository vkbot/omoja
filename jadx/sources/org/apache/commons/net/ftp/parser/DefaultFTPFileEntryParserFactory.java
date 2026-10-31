package org.apache.commons.net.ftp.parser;

import java.util.Locale;
import java.util.regex.Pattern;
import org.apache.commons.net.ftp.Configurable;
import org.apache.commons.net.ftp.FTPClientConfig;
import org.apache.commons.net.ftp.FTPFileEntryParser;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class DefaultFTPFileEntryParserFactory implements FTPFileEntryParserFactory {
    private static final String JAVA_IDENTIFIER = "\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*";
    private static final String JAVA_QUALIFIED_NAME = "(\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*\\.)+\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*";
    private static final Pattern JAVA_QUALIFIED_NAME_PATTERN = Pattern.compile(JAVA_QUALIFIED_NAME);

    private FTPFileEntryParser createFileEntryParser(String str, FTPClientConfig fTPClientConfig) {
        FTPFileEntryParser fTPFileEntryParserCreateOS400FTPEntryParser = null;
        if (JAVA_QUALIFIED_NAME_PATTERN.matcher(str).matches()) {
            try {
                Class<?> cls = Class.forName(str);
                try {
                    fTPFileEntryParserCreateOS400FTPEntryParser = (FTPFileEntryParser) cls.getConstructor(null).newInstance(null);
                } catch (ClassCastException e) {
                    throw new ParserInitializationException(cls.getName() + " does not implement the interface " + FTPFileEntryParser.class.getCanonicalName(), e);
                } catch (Exception e6) {
                    e = e6;
                    throw new ParserInitializationException("Error initializing parser", e);
                } catch (LinkageError e10) {
                    e = e10;
                    throw new ParserInitializationException("Error initializing parser", e);
                }
            } catch (ClassNotFoundException unused) {
            }
        }
        if (fTPFileEntryParserCreateOS400FTPEntryParser == null) {
            String upperCase = str.toUpperCase(Locale.ENGLISH);
            if (upperCase.contains(FTPClientConfig.SYST_UNIX_TRIM_LEADING)) {
                fTPFileEntryParserCreateOS400FTPEntryParser = new UnixFTPEntryParser(fTPClientConfig, true);
            } else if (upperCase.contains(FTPClientConfig.SYST_UNIX)) {
                fTPFileEntryParserCreateOS400FTPEntryParser = new UnixFTPEntryParser(fTPClientConfig, false);
            } else if (upperCase.contains(FTPClientConfig.SYST_VMS)) {
                fTPFileEntryParserCreateOS400FTPEntryParser = new VMSVersioningFTPEntryParser(fTPClientConfig);
            } else if (upperCase.contains(FTPClientConfig.SYST_NT)) {
                fTPFileEntryParserCreateOS400FTPEntryParser = createNTFTPEntryParser(fTPClientConfig);
            } else if (upperCase.contains(FTPClientConfig.SYST_OS2)) {
                fTPFileEntryParserCreateOS400FTPEntryParser = new OS2FTPEntryParser(fTPClientConfig);
            } else if (upperCase.contains(FTPClientConfig.SYST_OS400) || upperCase.contains(FTPClientConfig.SYST_AS400)) {
                fTPFileEntryParserCreateOS400FTPEntryParser = createOS400FTPEntryParser(fTPClientConfig);
            } else if (upperCase.contains(FTPClientConfig.SYST_MVS)) {
                fTPFileEntryParserCreateOS400FTPEntryParser = new MVSFTPEntryParser();
            } else if (upperCase.contains(FTPClientConfig.SYST_NETWARE)) {
                fTPFileEntryParserCreateOS400FTPEntryParser = new NetwareFTPEntryParser(fTPClientConfig);
            } else if (upperCase.contains(FTPClientConfig.SYST_MACOS_PETER)) {
                fTPFileEntryParserCreateOS400FTPEntryParser = new MacOsPeterFTPEntryParser(fTPClientConfig);
            } else {
                if (!upperCase.contains(FTPClientConfig.SYST_L8)) {
                    throw new ParserInitializationException("Unknown parser type: ".concat(str));
                }
                fTPFileEntryParserCreateOS400FTPEntryParser = new UnixFTPEntryParser(fTPClientConfig);
            }
        }
        if (fTPFileEntryParserCreateOS400FTPEntryParser instanceof Configurable) {
            ((Configurable) fTPFileEntryParserCreateOS400FTPEntryParser).configure(fTPClientConfig);
        }
        return fTPFileEntryParserCreateOS400FTPEntryParser;
    }

    private FTPFileEntryParser createNTFTPEntryParser(FTPClientConfig fTPClientConfig) {
        if (fTPClientConfig != null && FTPClientConfig.SYST_NT.equals(fTPClientConfig.getServerSystemKey())) {
            return new NTFTPEntryParser(fTPClientConfig);
        }
        FTPClientConfig fTPClientConfig2 = fTPClientConfig != null ? new FTPClientConfig(fTPClientConfig) : null;
        return new CompositeFileEntryParser(new FTPFileEntryParser[]{new NTFTPEntryParser(fTPClientConfig), new UnixFTPEntryParser(fTPClientConfig2, fTPClientConfig2 != null && FTPClientConfig.SYST_UNIX_TRIM_LEADING.equals(fTPClientConfig2.getServerSystemKey()))});
    }

    private FTPFileEntryParser createOS400FTPEntryParser(FTPClientConfig fTPClientConfig) {
        if (fTPClientConfig != null && FTPClientConfig.SYST_OS400.equals(fTPClientConfig.getServerSystemKey())) {
            return new OS400FTPEntryParser(fTPClientConfig);
        }
        FTPClientConfig fTPClientConfig2 = fTPClientConfig != null ? new FTPClientConfig(fTPClientConfig) : null;
        return new CompositeFileEntryParser(new FTPFileEntryParser[]{new OS400FTPEntryParser(fTPClientConfig), new UnixFTPEntryParser(fTPClientConfig2, fTPClientConfig2 != null && FTPClientConfig.SYST_UNIX_TRIM_LEADING.equals(fTPClientConfig2.getServerSystemKey()))});
    }

    public FTPFileEntryParser createMVSEntryParser() {
        return new MVSFTPEntryParser();
    }

    public FTPFileEntryParser createNetwareFTPEntryParser() {
        return new NetwareFTPEntryParser();
    }

    public FTPFileEntryParser createOS2FTPEntryParser() {
        return new OS2FTPEntryParser();
    }

    public FTPFileEntryParser createUnixFTPEntryParser() {
        return new UnixFTPEntryParser();
    }

    public FTPFileEntryParser createVMSVersioningFTPEntryParser() {
        return new VMSVersioningFTPEntryParser();
    }

    public FTPFileEntryParser createNTFTPEntryParser() {
        return createNTFTPEntryParser(null);
    }

    public FTPFileEntryParser createOS400FTPEntryParser() {
        return createOS400FTPEntryParser(null);
    }

    @Override // org.apache.commons.net.ftp.parser.FTPFileEntryParserFactory
    public FTPFileEntryParser createFileEntryParser(String str) {
        if (str != null) {
            return createFileEntryParser(str, null);
        }
        throw new ParserInitializationException("Parser key cannot be null");
    }

    @Override // org.apache.commons.net.ftp.parser.FTPFileEntryParserFactory
    public FTPFileEntryParser createFileEntryParser(FTPClientConfig fTPClientConfig) {
        return createFileEntryParser(fTPClientConfig.getServerSystemKey(), fTPClientConfig);
    }
}
