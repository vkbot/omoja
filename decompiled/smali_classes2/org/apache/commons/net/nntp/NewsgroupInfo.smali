.class public final Lorg/apache/commons/net/nntp/NewsgroupInfo;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field static final EMPTY_ARRAY:[Lorg/apache/commons/net/nntp/NewsgroupInfo;

.field public static final MODERATED_POSTING_PERMISSION:I = 0x1

.field public static final PERMITTED_POSTING_PERMISSION:I = 0x2

.field public static final PROHIBITED_POSTING_PERMISSION:I = 0x3

.field public static final UNKNOWN_POSTING_PERMISSION:I


# instance fields
.field private estimatedArticleCount:J

.field private firstArticle:J

.field private lastArticle:J

.field private newsgroup:Ljava/lang/String;

.field private postingPermission:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lorg/apache/commons/net/nntp/NewsgroupInfo;

    .line 3
    .line 4
    sput-object v0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->EMPTY_ARRAY:[Lorg/apache/commons/net/nntp/NewsgroupInfo;

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getArticleCount()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->estimatedArticleCount:J

    .line 2
    .line 3
    long-to-int v0, v0

    .line 4
    return v0
.end method

.method public getArticleCountLong()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->estimatedArticleCount:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getFirstArticle()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->firstArticle:J

    .line 2
    .line 3
    long-to-int v0, v0

    .line 4
    return v0
.end method

.method public getFirstArticleLong()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->firstArticle:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLastArticle()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->lastArticle:J

    .line 2
    .line 3
    long-to-int v0, v0

    .line 4
    return v0
.end method

.method public getLastArticleLong()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->lastArticle:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getNewsgroup()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->newsgroup:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPostingPermission()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->postingPermission:I

    .line 2
    .line 3
    return v0
.end method

.method public setArticleCount(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->estimatedArticleCount:J

    .line 2
    .line 3
    return-void
.end method

.method public setFirstArticle(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->firstArticle:J

    .line 2
    .line 3
    return-void
.end method

.method public setLastArticle(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->lastArticle:J

    .line 2
    .line 3
    return-void
.end method

.method public setNewsgroup(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->newsgroup:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPostingPermission(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->postingPermission:I

    .line 2
    .line 3
    return-void
.end method
