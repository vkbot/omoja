.class public abstract Lorg/apache/commons/io/file/SimplePathVisitor;
.super Ljava/nio/file/SimpleFileVisitor;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/io/file/PathVisitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/file/SimplePathVisitor$AbstractBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/file/SimpleFileVisitor<",
        "Ljava/nio/file/Path;",
        ">;",
        "Lorg/apache/commons/io/file/PathVisitor;"
    }
.end annotation


# instance fields
.field private final visitFileFailedFunction:Lorg/apache/commons/io/function/IOBiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/io/function/IOBiFunction<",
            "Ljava/nio/file/Path;",
            "Ljava/io/IOException;",
            "Ljava/nio/file/FileVisitResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/nio/file/SimpleFileVisitor;-><init>()V

    .line 25
    new-instance v0, Lorg/apache/commons/io/file/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/file/m;-><init>(Lorg/apache/commons/io/file/SimplePathVisitor;I)V

    iput-object v0, p0, Lorg/apache/commons/io/file/SimplePathVisitor;->visitFileFailedFunction:Lorg/apache/commons/io/function/IOBiFunction;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/io/file/SimplePathVisitor$AbstractBuilder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/file/SimplePathVisitor$AbstractBuilder<",
            "**>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/nio/file/SimpleFileVisitor;-><init>()V

    .line 2
    .line 3
    .line 4
    # getter for: Lorg/apache/commons/io/file/SimplePathVisitor$AbstractBuilder;->visitFileFailedFunction:Lorg/apache/commons/io/function/IOBiFunction;
    invoke-static {p1}, Lorg/apache/commons/io/file/SimplePathVisitor$AbstractBuilder;->access$000(Lorg/apache/commons/io/file/SimplePathVisitor$AbstractBuilder;)Lorg/apache/commons/io/function/IOBiFunction;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_e

    .line 9
    .line 10
    # getter for: Lorg/apache/commons/io/file/SimplePathVisitor$AbstractBuilder;->visitFileFailedFunction:Lorg/apache/commons/io/function/IOBiFunction;
    invoke-static {p1}, Lorg/apache/commons/io/file/SimplePathVisitor$AbstractBuilder;->access$000(Lorg/apache/commons/io/file/SimplePathVisitor$AbstractBuilder;)Lorg/apache/commons/io/function/IOBiFunction;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    goto :goto_14

    .line 15
    :cond_e
    new-instance p1, Lorg/apache/commons/io/file/m;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-direct {p1, p0, v0}, Lorg/apache/commons/io/file/m;-><init>(Lorg/apache/commons/io/file/SimplePathVisitor;I)V

    .line 19
    .line 20
    .line 21
    :goto_14
    iput-object p1, p0, Lorg/apache/commons/io/file/SimplePathVisitor;->visitFileFailedFunction:Lorg/apache/commons/io/function/IOBiFunction;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/io/function/IOBiFunction;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOBiFunction<",
            "Ljava/nio/file/Path;",
            "Ljava/io/IOException;",
            "Ljava/nio/file/FileVisitResult;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/nio/file/SimpleFileVisitor;-><init>()V

    .line 27
    const-string v0, "visitFileFailedFunction"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lorg/apache/commons/io/function/IOBiFunction;

    iput-object p1, p0, Lorg/apache/commons/io/file/SimplePathVisitor;->visitFileFailedFunction:Lorg/apache/commons/io/function/IOBiFunction;

    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/io/file/SimplePathVisitor;Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/file/SimplePathVisitor;->lambda$new$1(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lorg/apache/commons/io/file/SimplePathVisitor;Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/file/SimplePathVisitor;->lambda$new$0(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Ljava/nio/file/SimpleFileVisitor;->visitFileFailed(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private synthetic lambda$new$1(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Ljava/nio/file/SimpleFileVisitor;->visitFileFailed(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method


# virtual methods
.method public bridge synthetic visitFileFailed(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .registers 3

    .line 12
    invoke-static {p1}, Lkotlin/internal/jdk8/a;->m(Ljava/lang/Object;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/file/SimplePathVisitor;->visitFileFailed(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public visitFileFailed(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/file/SimplePathVisitor;->visitFileFailedFunction:Lorg/apache/commons/io/function/IOBiFunction;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lorg/apache/commons/io/function/IOBiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lorg/apache/commons/io/file/f;->f(Ljava/lang/Object;)Ljava/nio/file/FileVisitResult;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
