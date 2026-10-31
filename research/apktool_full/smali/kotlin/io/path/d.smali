.class public final synthetic Lkotlin/io/path/d;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Lkotlin/jvm/functions/Function3;

.field public final synthetic d:Ljava/nio/file/Path;

.field public final synthetic e:Ljava/nio/file/Path;

.field public final synthetic f:Ljava/nio/file/Path;

.field public final synthetic g:Lkotlin/jvm/functions/Function3;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlin/io/path/d;->b:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p2, p0, Lkotlin/io/path/d;->c:Lkotlin/jvm/functions/Function3;

    .line 7
    .line 8
    iput-object p3, p0, Lkotlin/io/path/d;->d:Ljava/nio/file/Path;

    .line 9
    .line 10
    iput-object p4, p0, Lkotlin/io/path/d;->e:Ljava/nio/file/Path;

    .line 11
    .line 12
    iput-object p5, p0, Lkotlin/io/path/d;->f:Ljava/nio/file/Path;

    .line 13
    .line 14
    iput-object p6, p0, Lkotlin/io/path/d;->g:Lkotlin/jvm/functions/Function3;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v2, p0, Lkotlin/io/path/d;->d:Ljava/nio/file/Path;

    .line 2
    .line 3
    iget-object v3, p0, Lkotlin/io/path/d;->e:Ljava/nio/file/Path;

    .line 4
    .line 5
    iget-object v4, p0, Lkotlin/io/path/d;->f:Ljava/nio/file/Path;

    .line 6
    .line 7
    move-object v6, p1

    .line 8
    check-cast v6, Ljava/nio/file/Path;

    .line 9
    .line 10
    move-object v7, p2

    .line 11
    check-cast v7, Ljava/nio/file/attribute/BasicFileAttributes;

    .line 12
    .line 13
    iget-object v0, p0, Lkotlin/io/path/d;->b:Ljava/util/ArrayList;

    .line 14
    .line 15
    iget-object v1, p0, Lkotlin/io/path/d;->c:Lkotlin/jvm/functions/Function3;

    .line 16
    .line 17
    iget-object v5, p0, Lkotlin/io/path/d;->g:Lkotlin/jvm/functions/Function3;

    .line 18
    .line 19
    invoke-static/range {v0 .. v7}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->e(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method
