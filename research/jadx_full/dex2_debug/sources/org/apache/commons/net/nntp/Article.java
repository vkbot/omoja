package org.apache.commons.net.nntp;

import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Collections;
import okhttp3.HttpUrl;
import org.apache.commons.net.util.NetConstants;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class Article implements Threadable<Article> {
    private String articleId;
    private long articleNumber = -1;
    private String date;
    private String from;
    private boolean isReply;

    @Deprecated
    public Article kid;

    @Deprecated
    public Article next;
    private ArrayList<String> references;
    private String simplifiedSubject;
    private String subject;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void flushSubjectCache() {
        this.simplifiedSubject = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void printThread(Article article, int i, PrintStream printStream) {
        for (int i2 = 0; i2 < i; i2++) {
            printStream.print("==>");
        }
        printStream.println(article.getSubject() + "\t" + article.getFrom() + "\t" + article.getArticleId());
        Article article2 = article.kid;
        if (article2 != null) {
            printThread(article2, i + 1);
        }
        Article article3 = article.next;
        if (article3 != null) {
            printThread(article3, i);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:44:0x0097  */
    private void simplifySubject() {
        boolean z;
        String subject = getSubject();
        int length = subject.length();
        int i = 0;
        for (boolean z2 = false; !z2; z2 = z) {
            while (i < length && subject.charAt(i) == ' ') {
                i++;
            }
            int i2 = length - 2;
            if (i >= i2 || !(subject.charAt(i) == 'r' || subject.charAt(i) == 'R')) {
                z = true;
            } else {
                int i3 = i + 1;
                if (subject.charAt(i3) == 'e' || subject.charAt(i3) == 'E') {
                    int i4 = i + 2;
                    if (subject.charAt(i4) == ':') {
                        i += 3;
                    } else {
                        if (i < i2 && (subject.charAt(i4) == '[' || subject.charAt(i4) == '(')) {
                            int i5 = i + 3;
                            while (i5 < length && subject.charAt(i5) >= '0' && subject.charAt(i5) <= '9') {
                                i5++;
                            }
                            if (i5 < length - 1 && ((subject.charAt(i5) == ']' || subject.charAt(i5) == ')') && subject.charAt(i5 + 1) == ':')) {
                                i = i5 + 2;
                            }
                        }
                        z = true;
                    }
                    z = false;
                } else {
                    z = true;
                }
            }
            if ("(no subject)".equals(this.simplifiedSubject)) {
                this.simplifiedSubject = HttpUrl.FRAGMENT_ENCODE_SET;
            }
            int i6 = length;
            while (i6 > i && subject.charAt(i6 - 1) < ' ') {
                i6--;
            }
            if (i == 0 && i6 == length) {
                this.simplifiedSubject = subject;
            } else {
                this.simplifiedSubject = subject.substring(i, i6);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addReference(String str) {
        if (str == null || str.isEmpty()) {
            return;
        }
        if (this.references == null) {
            this.references = new ArrayList<>();
        }
        this.isReply = true;
        Collections.addAll(this.references, str.split(" "));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getArticleId() {
        return this.articleId;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public int getArticleNumber() {
        return (int) this.articleNumber;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getArticleNumberLong() {
        return this.articleNumber;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Article getChild() {
        return this.kid;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getDate() {
        return this.date;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getFrom() {
        return this.from;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Article getNext() {
        return this.next;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String[] getReferences() {
        ArrayList<String> arrayList = this.references;
        return arrayList == null ? NetConstants.EMPTY_STRING_ARRAY : (String[]) arrayList.toArray(NetConstants.EMPTY_STRING_ARRAY);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getSubject() {
        return this.subject;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.nntp.Threadable
    public boolean isDummy() {
        return this.articleNumber == -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.nntp.Threadable
    public Article makeDummy() {
        return new Article();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.nntp.Threadable
    public String messageThreadId() {
        return this.articleId;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.nntp.Threadable
    public String[] messageThreadReferences() {
        return getReferences();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setArticleId(String str) {
        this.articleId = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void setArticleNumber(int i) {
        this.articleNumber = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.nntp.Threadable
    public /* bridge */ /* synthetic */ void setChild(Threadable threadable) {
        setChild((Article) threadable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDate(String str) {
        this.date = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setFrom(String str) {
        this.from = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.nntp.Threadable
    public /* bridge */ /* synthetic */ void setNext(Threadable threadable) {
        setNext((Article) threadable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSubject(String str) {
        this.subject = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.nntp.Threadable
    public String simplifiedSubject() {
        if (this.simplifiedSubject == null) {
            simplifySubject();
        }
        return this.simplifiedSubject;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.nntp.Threadable
    public boolean subjectIsReply() {
        return this.isReply;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return this.articleNumber + " " + this.articleId + " " + this.subject;
    }

    public void setArticleNumber(long j) {
        this.articleNumber = j;
    }

    @Override // org.apache.commons.net.nntp.Threadable
    public /* bridge */ /* synthetic */ Threadable makeDummy() {
        return makeDummy();
    }

    public void setChild(Article article) {
        this.kid = article;
        flushSubjectCache();
    }

    public void setNext(Article article) {
        this.next = article;
        flushSubjectCache();
    }

    public static void printThread(Article article, int i) {
        printThread(article, i, System.out);
    }

    public static void printThread(Article article) {
        printThread(article, 0, System.out);
    }

    public static void printThread(Article article, PrintStream printStream) {
        printThread(article, 0, printStream);
    }

    @Deprecated
    public void addHeaderField(String str, String str2) {
    }
}
