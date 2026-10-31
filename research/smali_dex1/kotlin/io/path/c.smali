.class public final synthetic Lkotlin/io/path/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Lkotlin/jvm/functions/Function3;

.field public final synthetic d:Ljava/nio/file/Path;

.field public final synthetic e:Ljava/nio/file/Path;

.field public final synthetic f:Ljava/nio/file/Path;

.field public final synthetic g:Lkotlin/jvm/functions/Function3;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlin/io/path/c;->b:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p2, p0, Lkotlin/io/path/c;->c:Lkotlin/jvm/functions/Function3;

    .line 7
    .line 8
    iput-object p3, p0, Lkotlin/io/path/c;->d:Ljava/nio/file/Path;

    .line 9
    .line 10
    iput-object p4, p0, Lkotlin/io/path/c;->e:Ljava/nio/file/Path;

    .line 11
    .line 12
    iput-object p5, p0, Lkotlin/io/path/c;->f:Ljava/nio/file/Path;

    .line 13
    .line 14
    iput-object p6, p0, Lkotlin/io/path/c;->g:Lkotlin/jvm/functions/Function3;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 1
    iget-object v2, p0, Lkotlin/io/path/c;->d:Ljava/nio/file/Path;

    .line 2
    .line 3
    iget-object v3, p0, Lkotlin/io/path/c;->e:Ljava/nio/file/Path;

    .line 4
    .line 5
    iget-object v4, p0, Lkotlin/io/path/c;->f:Ljava/nio/file/Path;

    .line 6
    .line 7
    iget-object v5, p0, Lkotlin/io/path/c;->g:Lkotlin/jvm/functions/Function3;

    .line 8
    .line 9
    move-object v6, p1

    .line 10
    check-cast v6, Lkotlin/io/path/FileVisitorBuilder;

    .line 11
    .line 12
    iget-object v0, p0, Lkotlin/io/path/c;->b:Ljava/util/ArrayList;

    .line 13
    .line 14
    iget-object v1, p0, Lkotlin/io/path/c;->c:Lkotlin/jvm/functions/Function3;

    .line 15
    .line 16
    invoke-static/range {v0 .. v6}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->c(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;Lkotlin/io/path/FileVisitorBuilder;)Lkotlin/Unit;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method
