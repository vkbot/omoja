.class public Lorg/apache/commons/io/filefilter/PathMatcherFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field private final pathMatcher:Ljava/nio/file/PathMatcher;


# direct methods
.method public constructor <init>(Ljava/nio/file/PathMatcher;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "pathMatcher"

    .line 5
    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lorg/apache/commons/io/filefilter/f;->f(Ljava/lang/Object;)Ljava/nio/file/PathMatcher;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lorg/apache/commons/io/filefilter/PathMatcherFileFilter;->pathMatcher:Ljava/nio/file/PathMatcher;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 2

    .line 1
    if-eqz p1, :cond_e

    .line 2
    .line 3
    invoke-static {p1}, Lc5/h;->i(Ljava/io/File;)Ljava/nio/file/Path;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/filefilter/PathMatcherFileFilter;->matches(Ljava/nio/file/Path;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_e

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_e
    const/4 p1, 0x0

    .line 16
    return p1
.end method

.method public matches(Ljava/nio/file/Path;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/PathMatcherFileFilter;->pathMatcher:Ljava/nio/file/PathMatcher;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lorg/apache/commons/io/file/f;->x(Ljava/nio/file/PathMatcher;Ljava/nio/file/Path;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
