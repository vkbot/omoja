package org.apache.commons.net.nntp;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class SimpleNNTPHeader {
    private final String from;
    private final String subject;
    private final StringBuilder newsgroups = new StringBuilder();
    private final StringBuilder headerFields = new StringBuilder();
    private int newsgroupCount = 0;

    public SimpleNNTPHeader(String str, String str2) {
        this.from = str;
        this.subject = str2;
    }

    public void addHeaderField(String str, String str2) {
        this.headerFields.append(str);
        this.headerFields.append(": ");
        this.headerFields.append(str2);
        this.headerFields.append('\n');
    }

    public void addNewsgroup(String str) {
        int i10 = this.newsgroupCount;
        this.newsgroupCount = i10 + 1;
        if (i10 > 0) {
            this.newsgroups.append(',');
        }
        this.newsgroups.append(str);
    }

    public String getFromAddress() {
        return this.from;
    }

    public String getNewsgroups() {
        return this.newsgroups.toString();
    }

    public String getSubject() {
        return this.subject;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("From: ");
        sb.append(this.from);
        sb.append("\nNewsgroups: ");
        sb.append(this.newsgroups.toString());
        sb.append("\nSubject: ");
        sb.append(this.subject);
        sb.append('\n');
        if (this.headerFields.length() > 0) {
            sb.append(this.headerFields.toString());
        }
        sb.append('\n');
        return sb.toString();
    }
}
