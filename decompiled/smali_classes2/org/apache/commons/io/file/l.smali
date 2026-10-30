.class public final synthetic Lorg/apache/commons/io/file/l;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/io/function/IOFunction;


# instance fields
.field public final synthetic b:[Ljava/nio/file/LinkOption;

.field public final synthetic c:[Lorg/apache/commons/io/file/DeleteOption;

.field public final synthetic d:Ljava/nio/file/Path;


# direct methods
.method public synthetic constructor <init>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lorg/apache/commons/io/file/l;->b:[Ljava/nio/file/LinkOption;

    .line 5
    .line 6
    iput-object p3, p0, Lorg/apache/commons/io/file/l;->c:[Lorg/apache/commons/io/file/DeleteOption;

    .line 7
    .line 8
    iput-object p1, p0, Lorg/apache/commons/io/file/l;->d:Ljava/nio/file/Path;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/file/l;->b:[Ljava/nio/file/LinkOption;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/io/file/l;->d:Ljava/nio/file/Path;

    .line 4
    .line 5
    check-cast p1, Ljava/nio/file/attribute/PosixFileAttributes;

    .line 6
    .line 7
    iget-object v2, p0, Lorg/apache/commons/io/file/l;->c:[Lorg/apache/commons/io/file/DeleteOption;

    .line 8
    .line 9
    invoke-static {v0, v2, v1, p1}, Lorg/apache/commons/io/file/PathUtils;->b([Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;Ljava/nio/file/Path;Ljava/nio/file/attribute/PosixFileAttributes;)Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
