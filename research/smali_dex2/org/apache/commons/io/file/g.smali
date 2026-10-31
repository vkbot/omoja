.class public final synthetic Lorg/apache/commons/io/file/g;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lorg/apache/commons/io/file/PathFilter;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/file/PathFilter;Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/commons/io/file/g;->a:Lorg/apache/commons/io/file/PathFilter;

    .line 5
    .line 6
    iput-boolean p2, p0, Lorg/apache/commons/io/file/g;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/io/file/g;->b:Z

    .line 2
    .line 3
    check-cast p1, Ljava/nio/file/Path;

    .line 4
    .line 5
    iget-object v1, p0, Lorg/apache/commons/io/file/g;->a:Lorg/apache/commons/io/file/PathFilter;

    .line 6
    .line 7
    invoke-static {v1, v0, p1}, Lorg/apache/commons/io/file/PathUtils;->d(Lorg/apache/commons/io/file/PathFilter;ZLjava/nio/file/Path;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method
