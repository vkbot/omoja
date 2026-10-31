package org.apache.commons.net.ftp.parser;

import ai.onnxruntime.AbstractC0074a;
import java.util.regex.MatchResult;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import org.apache.commons.net.ftp.FTPFileEntryParserImpl;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class RegexFTPFileEntryParserImpl extends FTPFileEntryParserImpl {
    protected Matcher _matcher_;
    private Pattern pattern;
    private MatchResult result;

    public RegexFTPFileEntryParserImpl(String str) {
        compileRegex(str, 0);
    }

    private void compileRegex(String str, int i10) {
        try {
            this.pattern = Pattern.compile(str, i10);
        } catch (PatternSyntaxException unused) {
            C1929i.m3029k(AbstractC0074a.m161l("Unparseable regex supplied: ", str));
        }
    }

    public int getGroupCnt() {
        MatchResult matchResult = this.result;
        if (matchResult == null) {
            return 0;
        }
        return matchResult.groupCount();
    }

    public String getGroupsAsString() {
        StringBuilder sb = new StringBuilder();
        for (int i10 = 1; i10 <= this.result.groupCount(); i10++) {
            sb.append(i10);
            sb.append(") ");
            sb.append(this.result.group(i10));
            sb.append(System.lineSeparator());
        }
        return sb.toString();
    }

    public String group(int i10) {
        MatchResult matchResult = this.result;
        if (matchResult == null) {
            return null;
        }
        return matchResult.group(i10);
    }

    public boolean matches(String str) {
        this.result = null;
        Matcher matcher = this.pattern.matcher(str);
        this._matcher_ = matcher;
        if (matcher.matches()) {
            this.result = this._matcher_.toMatchResult();
        }
        return this.result != null;
    }

    public boolean setRegex(String str) {
        compileRegex(str, 0);
        return true;
    }

    public boolean setRegex(String str, int i10) {
        compileRegex(str, i10);
        return true;
    }

    public RegexFTPFileEntryParserImpl(String str, int i10) {
        compileRegex(str, i10);
    }
}
