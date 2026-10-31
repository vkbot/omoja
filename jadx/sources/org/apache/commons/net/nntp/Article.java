package org.apache.commons.net.nntp;

import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Collections;
import org.apache.commons.net.util.NetConstants;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
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

    private void flushSubjectCache() {
        this.simplifiedSubject = null;
    }

    public static void printThread(Article article, int i10, PrintStream printStream) {
        for (int i11 = 0; i11 < i10; i11++) {
            printStream.print("==>");
        }
        printStream.println(article.getSubject() + "\t" + article.getFrom() + "\t" + article.getArticleId());
        Article article2 = article.kid;
        if (article2 != null) {
            printThread(article2, i10 + 1);
        }
        Article article3 = article.next;
        if (article3 != null) {
            printThread(article3, i10);
        }
    }

    /* JADX WARN: Code duplicated, block: B:44:0x0097  */
    private void simplifySubject() {
        boolean z9;
        String subject = getSubject();
        int length = subject.length();
        int i10 = 0;
        for (boolean z10 = false; !z10; z10 = z9) {
            while (i10 < length && subject.charAt(i10) == ' ') {
                i10++;
            }
            int i11 = length - 2;
            if (i10 >= i11 || !(subject.charAt(i10) == 'r' || subject.charAt(i10) == 'R')) {
                z9 = true;
            } else {
                int i12 = i10 + 1;
                if (subject.charAt(i12) == 'e' || subject.charAt(i12) == 'E') {
                    int i13 = i10 + 2;
                    if (subject.charAt(i13) == ':') {
                        i10 += 3;
                    } else {
                        if (i10 < i11 && (subject.charAt(i13) == '[' || subject.charAt(i13) == '(')) {
                            int i14 = i10 + 3;
                            while (i14 < length && subject.charAt(i14) >= '0' && subject.charAt(i14) <= '9') {
                                i14++;
                            }
                            if (i14 < length - 1 && ((subject.charAt(i14) == ']' || subject.charAt(i14) == ')') && subject.charAt(i14 + 1) == ':')) {
                                i10 = i14 + 2;
                            }
                        }
                        z9 = true;
                    }
                    z9 = false;
                } else {
                    z9 = true;
                }
            }
            if ("(no subject)".equals(this.simplifiedSubject)) {
                this.simplifiedSubject = "";
            }
            int i15 = length;
            while (i15 > i10 && subject.charAt(i15 - 1) < ' ') {
                i15--;
            }
            if (i10 == 0 && i15 == length) {
                this.simplifiedSubject = subject;
            } else {
                this.simplifiedSubject = subject.substring(i10, i15);
            }
        }
    }

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

    public String getArticleId() {
        return this.articleId;
    }

    @Deprecated
    public int getArticleNumber() {
        return (int) this.articleNumber;
    }

    public long getArticleNumberLong() {
        return this.articleNumber;
    }

    public Article getChild() {
        return this.kid;
    }

    public String getDate() {
        return this.date;
    }

    public String getFrom() {
        return this.from;
    }

    public Article getNext() {
        return this.next;
    }

    public String[] getReferences() {
        ArrayList<String> arrayList = this.references;
        return arrayList == null ? NetConstants.EMPTY_STRING_ARRAY : (String[]) arrayList.toArray(NetConstants.EMPTY_STRING_ARRAY);
    }

    public String getSubject() {
        return this.subject;
    }

    @Override // org.apache.commons.net.nntp.Threadable
    public boolean isDummy() {
        return this.articleNumber == -1;
    }

    @Override // org.apache.commons.net.nntp.Threadable
    public Article makeDummy() {
        return new Article();
    }

    @Override // org.apache.commons.net.nntp.Threadable
    public String messageThreadId() {
        return this.articleId;
    }

    @Override // org.apache.commons.net.nntp.Threadable
    public String[] messageThreadReferences() {
        return getReferences();
    }

    public void setArticleId(String str) {
        this.articleId = str;
    }

    @Deprecated
    public void setArticleNumber(int i10) {
        this.articleNumber = i10;
    }

    public void setDate(String str) {
        this.date = str;
    }

    public void setFrom(String str) {
        this.from = str;
    }

    public void setSubject(String str) {
        this.subject = str;
    }

    @Override // org.apache.commons.net.nntp.Threadable
    public String simplifiedSubject() {
        if (this.simplifiedSubject == null) {
            simplifySubject();
        }
        return this.simplifiedSubject;
    }

    @Override // org.apache.commons.net.nntp.Threadable
    public boolean subjectIsReply() {
        return this.isReply;
    }

    public String toString() {
        return this.articleNumber + " " + this.articleId + " " + this.subject;
    }

    public void setArticleNumber(long j10) {
        this.articleNumber = j10;
    }

    @Override // org.apache.commons.net.nntp.Threadable
    public void setChild(Article article) {
        this.kid = article;
        flushSubjectCache();
    }

    @Override // org.apache.commons.net.nntp.Threadable
    public void setNext(Article article) {
        this.next = article;
        flushSubjectCache();
    }

    public static void printThread(Article article, int i10) {
        printThread(article, i10, System.out);
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
