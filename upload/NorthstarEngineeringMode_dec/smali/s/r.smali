.class public final Ls/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls/r$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/j<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ls/h;

.field public final b:Lm/b;


# direct methods
.method public constructor <init>(Ls/h;Lm/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls/r;->a:Ls/h;

    iput-object p2, p0, Ls/r;->b:Lm/b;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Li/h;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Li/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ljava/io/InputStream;

    iget-object p0, p0, Ls/r;->a:Ls/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    return p0
.end method

.method public final b(Ljava/lang/Object;IILi/h;)Ll/x;
    .locals 14
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Li/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    check-cast v1, Ljava/io/InputStream;

    instance-of v2, v1, Ls/p;

    if-eqz v2, :cond_0

    check-cast v1, Ls/p;

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Ls/p;

    iget-object v3, v0, Ls/r;->b:Lm/b;

    invoke-direct {v2, v1, v3}, Ls/p;-><init>(Ljava/io/InputStream;Lm/b;)V

    const/4 v1, 0x1

    move-object v13, v2

    move v2, v1

    move-object v1, v13

    :goto_0
    sget-object v3, Lf0/c;->x:Ljava/util/ArrayDeque;

    monitor-enter v3

    :try_start_0
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf0/c;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v4, :cond_1

    new-instance v4, Lf0/c;

    invoke-direct {v4}, Lf0/c;-><init>()V

    :cond_1
    iput-object v1, v4, Lf0/c;->c:Ljava/io/InputStream;

    new-instance v5, Lf0/g;

    invoke-direct {v5, v4}, Lf0/g;-><init>(Lf0/c;)V

    new-instance v11, Ls/r$a;

    invoke-direct {v11, v1, v4}, Ls/r$a;-><init>(Ls/p;Lf0/c;)V

    const/4 v12, 0x0

    :try_start_1
    iget-object v6, v0, Ls/r;->a:Ls/h;

    new-instance v7, Ls/m$a;

    iget-object v0, v6, Ls/h;->d:Ljava/util/List;

    iget-object v8, v6, Ls/h;->c:Lm/b;

    invoke-direct {v7, v8, v5, v0}, Ls/m$a;-><init>(Lm/b;Ljava/io/InputStream;Ljava/util/List;)V

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v6 .. v11}, Ls/h;->a(Ls/m;IILi/h;Ls/h$b;)Ls/d;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput-object v12, v4, Lf0/c;->r:Ljava/io/IOException;

    iput-object v12, v4, Lf0/c;->c:Ljava/io/InputStream;

    monitor-enter v3

    :try_start_2
    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ls/p;->b()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    iput-object v12, v4, Lf0/c;->r:Ljava/io/IOException;

    iput-object v12, v4, Lf0/c;->c:Ljava/io/InputStream;

    sget-object v5, Lf0/c;->x:Ljava/util/ArrayDeque;

    monitor-enter v5

    :try_start_4
    invoke-virtual {v5, v4}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ls/p;->b()V

    :cond_3
    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0
.end method
