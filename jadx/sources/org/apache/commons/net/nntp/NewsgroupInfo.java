package org.apache.commons.net.nntp;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class NewsgroupInfo {
    static final NewsgroupInfo[] EMPTY_ARRAY = new NewsgroupInfo[0];
    public static final int MODERATED_POSTING_PERMISSION = 1;
    public static final int PERMITTED_POSTING_PERMISSION = 2;
    public static final int PROHIBITED_POSTING_PERMISSION = 3;
    public static final int UNKNOWN_POSTING_PERMISSION = 0;
    private long estimatedArticleCount;
    private long firstArticle;
    private long lastArticle;
    private String newsgroup;
    private int postingPermission;

    @Deprecated
    public int getArticleCount() {
        return (int) this.estimatedArticleCount;
    }

    public long getArticleCountLong() {
        return this.estimatedArticleCount;
    }

    @Deprecated
    public int getFirstArticle() {
        return (int) this.firstArticle;
    }

    public long getFirstArticleLong() {
        return this.firstArticle;
    }

    @Deprecated
    public int getLastArticle() {
        return (int) this.lastArticle;
    }

    public long getLastArticleLong() {
        return this.lastArticle;
    }

    public String getNewsgroup() {
        return this.newsgroup;
    }

    public int getPostingPermission() {
        return this.postingPermission;
    }

    public void setArticleCount(long j10) {
        this.estimatedArticleCount = j10;
    }

    public void setFirstArticle(long j10) {
        this.firstArticle = j10;
    }

    public void setLastArticle(long j10) {
        this.lastArticle = j10;
    }

    public void setNewsgroup(String str) {
        this.newsgroup = str;
    }

    public void setPostingPermission(int i10) {
        this.postingPermission = i10;
    }
}
