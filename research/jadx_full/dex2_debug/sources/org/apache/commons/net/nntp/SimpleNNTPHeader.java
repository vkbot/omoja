package org.apache.commons.net.nntp;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class SimpleNNTPHeader {
    private final String from;
    private final String subject;
    private final StringBuilder newsgroups = new StringBuilder();
    private final StringBuilder headerFields = new StringBuilder();
    private int newsgroupCount = 0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SimpleNNTPHeader(String str, String str2) {
        this.from = str;
        this.subject = str2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addHeaderField(String str, String str2) {
        this.headerFields.append(str);
        this.headerFields.append(": ");
        this.headerFields.append(str2);
        this.headerFields.append('\n');
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addNewsgroup(String str) {
        int i = this.newsgroupCount;
        this.newsgroupCount = i + 1;
        if (i > 0) {
            this.newsgroups.append(',');
        }
        this.newsgroups.append(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getFromAddress() {
        return this.from;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getNewsgroups() {
        return this.newsgroups.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getSubject() {
        return this.subject;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
