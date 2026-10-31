package org.apache.commons.net.nntp;

import ai.onnxruntime.AbstractC0074a;
import ai.onnxruntime.C0075b;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.net.MalformedServerReplyException;
import org.apache.commons.net.p162io.DotTerminatedMessageReader;
import org.apache.commons.net.p162io.DotTerminatedMessageWriter;
import org.apache.commons.net.util.NetConstants;
import org.apache.commons.p161io.IOUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class NNTPClient extends NNTP {
    private void ai2ap(ArticleInfo articleInfo, ArticlePointer articlePointer) {
        if (articlePointer != null) {
            articlePointer.articleId = articleInfo.articleId;
            articlePointer.articleNumber = (int) articleInfo.articleNumber;
        }
    }

    private ArticleInfo ap2ai(ArticlePointer articlePointer) {
        if (articlePointer == null) {
            return null;
        }
        return new ArticleInfo();
    }

    public static Article parseArticleEntry(String str) {
        Article article = new Article();
        article.setSubject(str);
        String[] strArrSplit = str.split("\t");
        if (strArrSplit.length > 6) {
            try {
                article.setArticleNumber(Long.parseLong(strArrSplit[0]));
                article.setSubject(strArrSplit[1]);
                article.setFrom(strArrSplit[2]);
                article.setDate(strArrSplit[3]);
                article.setArticleId(strArrSplit[4]);
                article.addReference(strArrSplit[5]);
            } catch (NumberFormatException unused) {
            }
        }
        return article;
    }

    private void parseArticlePointer(String str, ArticleInfo articleInfo) throws MalformedServerReplyException {
        String[] strArrSplit = str.split(" ");
        if (strArrSplit.length >= 3) {
            try {
                articleInfo.articleNumber = Long.parseLong(strArrSplit[1]);
                articleInfo.articleId = strArrSplit[2];
                return;
            } catch (NumberFormatException unused) {
            }
        }
        throw new MalformedServerReplyException("Could not parse article pointer.\nServer reply: ".concat(str));
    }

    private static void parseGroupReply(String str, NewsgroupInfo newsgroupInfo) throws MalformedServerReplyException {
        String[] strArrSplit = str.split(" ");
        if (strArrSplit.length >= 5) {
            try {
                newsgroupInfo.setArticleCount(Long.parseLong(strArrSplit[1]));
                newsgroupInfo.setFirstArticle(Long.parseLong(strArrSplit[2]));
                newsgroupInfo.setLastArticle(Long.parseLong(strArrSplit[3]));
                newsgroupInfo.setNewsgroup(strArrSplit[4]);
                newsgroupInfo.setPostingPermission(0);
                return;
            } catch (NumberFormatException unused) {
            }
        }
        throw new MalformedServerReplyException("Could not parse newsgroup info.\nServer reply: ".concat(str));
    }

    public static NewsgroupInfo parseNewsgroupListEntry(String str) {
        String[] strArrSplit = str.split(" ");
        if (strArrSplit.length < 4) {
            return null;
        }
        NewsgroupInfo newsgroupInfo = new NewsgroupInfo();
        newsgroupInfo.setNewsgroup(strArrSplit[0]);
        try {
            long j10 = Long.parseLong(strArrSplit[1]);
            long j11 = Long.parseLong(strArrSplit[2]);
            newsgroupInfo.setFirstArticle(j11);
            newsgroupInfo.setLastArticle(j10);
            if (j11 == 0 && j10 == 0) {
                newsgroupInfo.setArticleCount(0L);
            } else {
                newsgroupInfo.setArticleCount((j10 - j11) + 1);
            }
            char cCharAt = strArrSplit[3].charAt(0);
            if (cCharAt != 'M') {
                if (cCharAt != 'N') {
                    if (cCharAt == 'Y' || cCharAt == 'y') {
                        newsgroupInfo.setPostingPermission(2);
                        return newsgroupInfo;
                    }
                    if (cCharAt != 'm') {
                        if (cCharAt != 'n') {
                            newsgroupInfo.setPostingPermission(0);
                            return newsgroupInfo;
                        }
                    }
                }
                newsgroupInfo.setPostingPermission(3);
                return newsgroupInfo;
            }
            newsgroupInfo.setPostingPermission(1);
            return newsgroupInfo;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    private NewsgroupInfo[] readNewsgroupListing() {
        ArrayList arrayList = new ArrayList(2048);
        DotTerminatedMessageReader dotTerminatedMessageReader = new DotTerminatedMessageReader(this._reader_);
        while (true) {
            try {
                String line = dotTerminatedMessageReader.readLine();
                if (line == null) {
                    dotTerminatedMessageReader.close();
                    return arrayList.size() < 1 ? NewsgroupInfo.EMPTY_ARRAY : (NewsgroupInfo[]) arrayList.toArray(NewsgroupInfo.EMPTY_ARRAY);
                }
                NewsgroupInfo newsgroupListEntry = parseNewsgroupListEntry(line);
                if (newsgroupListEntry == null) {
                    throw new MalformedServerReplyException(line);
                }
                arrayList.add(newsgroupListEntry);
            } catch (Throwable th) {
                try {
                    dotTerminatedMessageReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    private BufferedReader retrieve(int i10, String str, ArticleInfo articleInfo) throws MalformedServerReplyException {
        if (str != null) {
            if (!NNTPReply.isPositiveCompletion(sendCommand(i10, str))) {
                return null;
            }
        } else if (!NNTPReply.isPositiveCompletion(sendCommand(i10))) {
            return null;
        }
        if (articleInfo != null) {
            parseArticlePointer(getReplyString(), articleInfo);
        }
        return new DotTerminatedMessageReader(this._reader_);
    }

    public boolean authenticate(String str, String str2) {
        if (authinfoUser(str) != 381 || authinfoPass(str2) != 281) {
            return false;
        }
        this._isAllowedToPost = true;
        return true;
    }

    public boolean completePendingCommand() {
        return NNTPReply.isPositiveCompletion(getReply());
    }

    public Writer forwardArticle(String str) {
        if (NNTPReply.isPositiveIntermediate(ihave(str))) {
            return new DotTerminatedMessageWriter(this._writer_);
        }
        return null;
    }

    public Iterable<Article> iterateArticleInfo(long j10, long j11) throws IOException {
        BufferedReader bufferedReaderRetrieveArticleInfo = retrieveArticleInfo(j10, j11);
        if (bufferedReaderRetrieveArticleInfo != null) {
            return new ArticleIterator(new ReplyIterator(bufferedReaderRetrieveArticleInfo, false));
        }
        C0075b.m198w(getReplyString(), "XOVER command failed: ");
        return null;
    }

    public Iterable<String> iterateNewNews(NewGroupsOrNewsQuery newGroupsOrNewsQuery) throws IOException {
        if (NNTPReply.isPositiveCompletion(newnews(newGroupsOrNewsQuery.getNewsgroups(), newGroupsOrNewsQuery.getDate(), newGroupsOrNewsQuery.getTime(), newGroupsOrNewsQuery.isGMT(), newGroupsOrNewsQuery.getDistributions()))) {
            return new ReplyIterator(this._reader_);
        }
        C0075b.m198w(getReplyString(), "NEWNEWS command failed: ");
        return null;
    }

    public Iterable<String> iterateNewNewsgroupListing(NewGroupsOrNewsQuery newGroupsOrNewsQuery) throws IOException {
        if (NNTPReply.isPositiveCompletion(newgroups(newGroupsOrNewsQuery.getDate(), newGroupsOrNewsQuery.getTime(), newGroupsOrNewsQuery.isGMT(), newGroupsOrNewsQuery.getDistributions()))) {
            return new ReplyIterator(this._reader_);
        }
        C0075b.m198w(getReplyString(), "NEWGROUPS command failed: ");
        return null;
    }

    public Iterable<NewsgroupInfo> iterateNewNewsgroups(NewGroupsOrNewsQuery newGroupsOrNewsQuery) {
        return new NewsgroupIterator(iterateNewNewsgroupListing(newGroupsOrNewsQuery));
    }

    public Iterable<String> iterateNewsgroupListing(String str) throws IOException {
        if (NNTPReply.isPositiveCompletion(listActive(str))) {
            return new ReplyIterator(this._reader_);
        }
        StringBuilder sbM173x = AbstractC0074a.m173x("LIST ACTIVE ", str, " command failed: ");
        sbM173x.append(getReplyString());
        throw new IOException(sbM173x.toString());
    }

    public Iterable<NewsgroupInfo> iterateNewsgroups() {
        return new NewsgroupIterator(iterateNewsgroupListing());
    }

    public String listHelp() throws IOException {
        if (!NNTPReply.isInformational(help())) {
            return null;
        }
        StringWriter stringWriter = new StringWriter();
        try {
            DotTerminatedMessageReader dotTerminatedMessageReader = new DotTerminatedMessageReader(this._reader_);
            try {
                IOUtils.copyLarge(dotTerminatedMessageReader, stringWriter);
                String string = stringWriter.toString();
                dotTerminatedMessageReader.close();
                stringWriter.close();
                return string;
            } catch (Throwable th) {
                try {
                    dotTerminatedMessageReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            try {
                stringWriter.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }

    public String[] listNewNews(NewGroupsOrNewsQuery newGroupsOrNewsQuery) {
        if (!NNTPReply.isPositiveCompletion(newnews(newGroupsOrNewsQuery.getNewsgroups(), newGroupsOrNewsQuery.getDate(), newGroupsOrNewsQuery.getTime(), newGroupsOrNewsQuery.isGMT(), newGroupsOrNewsQuery.getDistributions()))) {
            return null;
        }
        new ArrayList();
        DotTerminatedMessageReader dotTerminatedMessageReader = new DotTerminatedMessageReader(this._reader_);
        try {
            List<String> lines = IOUtils.readLines(dotTerminatedMessageReader);
            dotTerminatedMessageReader.close();
            return (String[]) lines.toArray(NetConstants.EMPTY_STRING_ARRAY);
        } catch (Throwable th) {
            try {
                dotTerminatedMessageReader.close();
                throw th;
            } catch (Throwable th2) {
                th.addSuppressed(th2);
                throw th;
            }
        }
    }

    public NewsgroupInfo[] listNewNewsgroups(NewGroupsOrNewsQuery newGroupsOrNewsQuery) {
        if (NNTPReply.isPositiveCompletion(newgroups(newGroupsOrNewsQuery.getDate(), newGroupsOrNewsQuery.getTime(), newGroupsOrNewsQuery.isGMT(), newGroupsOrNewsQuery.getDistributions()))) {
            return readNewsgroupListing();
        }
        return null;
    }

    public NewsgroupInfo[] listNewsgroups() {
        if (NNTPReply.isPositiveCompletion(list())) {
            return readNewsgroupListing();
        }
        return null;
    }

    public String[] listOverviewFmt() {
        if (!NNTPReply.isPositiveCompletion(sendCommand("LIST", "OVERVIEW.FMT"))) {
            return null;
        }
        DotTerminatedMessageReader dotTerminatedMessageReader = new DotTerminatedMessageReader(this._reader_);
        try {
            String[] strArr = (String[]) IOUtils.readLines(dotTerminatedMessageReader).toArray(NetConstants.EMPTY_STRING_ARRAY);
            dotTerminatedMessageReader.close();
            return strArr;
        } catch (Throwable th) {
            try {
                dotTerminatedMessageReader.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public boolean logout() {
        return NNTPReply.isPositiveCompletion(quit());
    }

    public Writer postArticle() {
        if (NNTPReply.isPositiveIntermediate(post())) {
            return new DotTerminatedMessageWriter(this._writer_);
        }
        return null;
    }

    @Deprecated
    public Reader retrieveArticle(int i10, ArticlePointer articlePointer) {
        ArticleInfo articleInfoAp2ai = ap2ai(articlePointer);
        BufferedReader bufferedReaderRetrieveArticle = retrieveArticle(i10, articleInfoAp2ai);
        ai2ap(articleInfoAp2ai, articlePointer);
        return bufferedReaderRetrieveArticle;
    }

    @Deprecated
    public Reader retrieveArticleBody(int i10, ArticlePointer articlePointer) {
        ArticleInfo articleInfoAp2ai = ap2ai(articlePointer);
        BufferedReader bufferedReaderRetrieveArticleBody = retrieveArticleBody(i10, articleInfoAp2ai);
        ai2ap(articleInfoAp2ai, articlePointer);
        return bufferedReaderRetrieveArticleBody;
    }

    @Deprecated
    public Reader retrieveArticleHeader(int i10, ArticlePointer articlePointer) {
        ArticleInfo articleInfoAp2ai = ap2ai(articlePointer);
        BufferedReader bufferedReaderRetrieveArticleHeader = retrieveArticleHeader(i10, articleInfoAp2ai);
        ai2ap(articleInfoAp2ai, articlePointer);
        return bufferedReaderRetrieveArticleHeader;
    }

    public BufferedReader retrieveArticleInfo(long j10, long j11) {
        return retrieveArticleInfo(j10 + "-" + j11);
    }

    public BufferedReader retrieveHeader(String str, long j10, long j11) {
        return retrieveHeader(str, j10 + "-" + j11);
    }

    public boolean selectArticle(String str, ArticleInfo articleInfo) throws MalformedServerReplyException {
        if (str != null) {
            if (!NNTPReply.isPositiveCompletion(stat(str))) {
                return false;
            }
        } else if (!NNTPReply.isPositiveCompletion(stat())) {
            return false;
        }
        if (articleInfo == null) {
            return true;
        }
        parseArticlePointer(getReplyString(), articleInfo);
        return true;
    }

    public boolean selectNewsgroup(String str, NewsgroupInfo newsgroupInfo) throws MalformedServerReplyException {
        if (!NNTPReply.isPositiveCompletion(group(str))) {
            return false;
        }
        if (newsgroupInfo == null) {
            return true;
        }
        parseGroupReply(getReplyString(), newsgroupInfo);
        return true;
    }

    public boolean selectNextArticle(ArticleInfo articleInfo) throws MalformedServerReplyException {
        if (!NNTPReply.isPositiveCompletion(next())) {
            return false;
        }
        if (articleInfo == null) {
            return true;
        }
        parseArticlePointer(getReplyString(), articleInfo);
        return true;
    }

    public boolean selectPreviousArticle(ArticleInfo articleInfo) throws MalformedServerReplyException {
        if (!NNTPReply.isPositiveCompletion(last())) {
            return false;
        }
        if (articleInfo == null) {
            return true;
        }
        parseArticlePointer(getReplyString(), articleInfo);
        return true;
    }

    public Iterable<NewsgroupInfo> iterateNewsgroups(String str) {
        return new NewsgroupIterator(iterateNewsgroupListing(str));
    }

    @Deprecated
    public Reader retrieveArticle(int i10) {
        return retrieveArticle(i10);
    }

    @Deprecated
    public Reader retrieveArticleBody(int i10) {
        return retrieveArticleBody(i10);
    }

    @Deprecated
    public Reader retrieveArticleHeader(int i10) {
        return retrieveArticleHeader(i10);
    }

    public Reader retrieveArticle() {
        return retrieveArticle((String) null);
    }

    public Reader retrieveArticleBody() {
        return retrieveArticleBody((String) null);
    }

    public Reader retrieveArticleHeader() {
        return retrieveArticleHeader((String) null);
    }

    public BufferedReader retrieveArticle(long j10) {
        return retrieveArticle(j10, (ArticleInfo) null);
    }

    public BufferedReader retrieveArticleBody(long j10) {
        return retrieveArticleBody(j10, (ArticleInfo) null);
    }

    public BufferedReader retrieveArticleHeader(long j10) {
        return retrieveArticleHeader(j10, (ArticleInfo) null);
    }

    public BufferedReader retrieveArticle(long j10, ArticleInfo articleInfo) {
        return retrieve(0, j10, articleInfo);
    }

    public BufferedReader retrieveArticleBody(long j10, ArticleInfo articleInfo) {
        return retrieve(1, j10, articleInfo);
    }

    public BufferedReader retrieveArticleHeader(long j10, ArticleInfo articleInfo) {
        return retrieve(3, j10, articleInfo);
    }

    public NewsgroupInfo[] listNewsgroups(String str) {
        if (NNTPReply.isPositiveCompletion(listActive(str))) {
            return readNewsgroupListing();
        }
        return null;
    }

    public Reader retrieveArticle(String str) {
        return retrieveArticle(str, (ArticleInfo) null);
    }

    public Reader retrieveArticleBody(String str) {
        return retrieveArticleBody(str, (ArticleInfo) null);
    }

    public Reader retrieveArticleHeader(String str) {
        return retrieveArticleHeader(str, (ArticleInfo) null);
    }

    public BufferedReader retrieveArticle(String str, ArticleInfo articleInfo) {
        return retrieve(0, str, articleInfo);
    }

    public BufferedReader retrieveArticleBody(String str, ArticleInfo articleInfo) {
        return retrieve(1, str, articleInfo);
    }

    public BufferedReader retrieveArticleHeader(String str, ArticleInfo articleInfo) {
        return retrieve(3, str, articleInfo);
    }

    @Deprecated
    public Reader retrieveArticle(String str, ArticlePointer articlePointer) {
        ArticleInfo articleInfoAp2ai = ap2ai(articlePointer);
        BufferedReader bufferedReaderRetrieveArticle = retrieveArticle(str, articleInfoAp2ai);
        ai2ap(articleInfoAp2ai, articlePointer);
        return bufferedReaderRetrieveArticle;
    }

    @Deprecated
    public Reader retrieveArticleBody(String str, ArticlePointer articlePointer) {
        ArticleInfo articleInfoAp2ai = ap2ai(articlePointer);
        BufferedReader bufferedReaderRetrieveArticleBody = retrieveArticleBody(str, articleInfoAp2ai);
        ai2ap(articleInfoAp2ai, articlePointer);
        return bufferedReaderRetrieveArticleBody;
    }

    @Deprecated
    public Reader retrieveArticleHeader(String str, ArticlePointer articlePointer) {
        ArticleInfo articleInfoAp2ai = ap2ai(articlePointer);
        BufferedReader bufferedReaderRetrieveArticleHeader = retrieveArticleHeader(str, articleInfoAp2ai);
        ai2ap(articleInfoAp2ai, articlePointer);
        return bufferedReaderRetrieveArticleHeader;
    }

    public boolean selectNewsgroup(String str) {
        return selectNewsgroup(str, null);
    }

    public boolean selectNextArticle() {
        return selectNextArticle((ArticleInfo) null);
    }

    public boolean selectPreviousArticle() {
        return selectPreviousArticle((ArticleInfo) null);
    }

    @Deprecated
    public boolean selectNextArticle(ArticlePointer articlePointer) throws MalformedServerReplyException {
        ArticleInfo articleInfoAp2ai = ap2ai(articlePointer);
        boolean zSelectNextArticle = selectNextArticle(articleInfoAp2ai);
        ai2ap(articleInfoAp2ai, articlePointer);
        return zSelectNextArticle;
    }

    @Deprecated
    public boolean selectPreviousArticle(ArticlePointer articlePointer) throws MalformedServerReplyException {
        ArticleInfo articleInfoAp2ai = ap2ai(articlePointer);
        boolean zSelectPreviousArticle = selectPreviousArticle(articleInfoAp2ai);
        ai2ap(articleInfoAp2ai, articlePointer);
        return zSelectPreviousArticle;
    }

    @Deprecated
    public Reader retrieveArticleInfo(int i10, int i11) {
        return retrieveArticleInfo(i10, i11);
    }

    @Deprecated
    public Reader retrieveHeader(String str, int i10, int i11) {
        return retrieveHeader(str, i10, i11);
    }

    public BufferedReader retrieveArticleInfo(long j10) {
        return retrieveArticleInfo(Long.toString(j10));
    }

    public BufferedReader retrieveHeader(String str, long j10) {
        return retrieveHeader(str, Long.toString(j10));
    }

    @Deprecated
    public Reader retrieveArticleInfo(int i10) {
        return retrieveArticleInfo(i10);
    }

    @Deprecated
    public Reader retrieveHeader(String str, int i10) {
        return retrieveHeader(str, i10);
    }

    private BufferedReader retrieveArticleInfo(String str) {
        if (NNTPReply.isPositiveCompletion(xover(str))) {
            return new DotTerminatedMessageReader(this._reader_);
        }
        return null;
    }

    private BufferedReader retrieveHeader(String str, String str2) {
        if (NNTPReply.isPositiveCompletion(xhdr(str, str2))) {
            return new DotTerminatedMessageReader(this._reader_);
        }
        return null;
    }

    @Deprecated
    public boolean selectArticle(ArticlePointer articlePointer) {
        ArticleInfo articleInfoAp2ai = ap2ai(articlePointer);
        boolean zSelectArticle = selectArticle(articleInfoAp2ai);
        ai2ap(articleInfoAp2ai, articlePointer);
        return zSelectArticle;
    }

    @Deprecated
    public boolean selectArticle(int i10) {
        return selectArticle(i10);
    }

    @Deprecated
    public boolean selectArticle(int i10, ArticlePointer articlePointer) throws MalformedServerReplyException {
        ArticleInfo articleInfoAp2ai = ap2ai(articlePointer);
        boolean zSelectArticle = selectArticle(i10, articleInfoAp2ai);
        ai2ap(articleInfoAp2ai, articlePointer);
        return zSelectArticle;
    }

    private BufferedReader retrieve(int i10, long j10, ArticleInfo articleInfo) throws MalformedServerReplyException {
        if (!NNTPReply.isPositiveCompletion(sendCommand(i10, Long.toString(j10)))) {
            return null;
        }
        if (articleInfo != null) {
            parseArticlePointer(getReplyString(), articleInfo);
        }
        return new DotTerminatedMessageReader(this._reader_);
    }

    public Iterable<String> iterateNewsgroupListing() throws IOException {
        if (NNTPReply.isPositiveCompletion(list())) {
            return new ReplyIterator(this._reader_);
        }
        C0075b.m198w(getReplyString(), "LIST command failed: ");
        return null;
    }

    public boolean selectArticle(long j10) {
        return selectArticle(j10, (ArticleInfo) null);
    }

    public boolean selectArticle(long j10, ArticleInfo articleInfo) throws MalformedServerReplyException {
        if (!NNTPReply.isPositiveCompletion(stat(j10))) {
            return false;
        }
        if (articleInfo == null) {
            return true;
        }
        parseArticlePointer(getReplyString(), articleInfo);
        return true;
    }

    public boolean selectArticle(String str) {
        return selectArticle(str, (ArticleInfo) null);
    }

    public boolean selectArticle(ArticleInfo articleInfo) {
        return selectArticle((String) null, articleInfo);
    }

    @Deprecated
    public boolean selectArticle(String str, ArticlePointer articlePointer) throws MalformedServerReplyException {
        ArticleInfo articleInfoAp2ai = ap2ai(articlePointer);
        boolean zSelectArticle = selectArticle(str, articleInfoAp2ai);
        ai2ap(articleInfoAp2ai, articlePointer);
        return zSelectArticle;
    }
}
