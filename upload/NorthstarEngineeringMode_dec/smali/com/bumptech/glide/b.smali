.class public final Lcom/bumptech/glide/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/b$a;
    }
.end annotation


# static fields
.field public static volatile i:Lcom/bumptech/glide/b;

.field public static volatile j:Z


# instance fields
.field public final a:Lm/d;

.field public final b:Ln/h;

.field public final c:Lcom/bumptech/glide/d;

.field public final d:Lcom/bumptech/glide/f;

.field public final e:Lm/b;

.field public final f:Ly/j;

.field public final g:Ly/d;

.field public final h:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ll/m;Ln/h;Lm/d;Lm/b;Ly/j;Ly/d;ILcom/bumptech/glide/c;Landroidx/collection/ArrayMap;Ljava/util/List;)V
    .locals 23
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ll/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ln/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lm/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lm/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ly/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ly/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/bumptech/glide/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroidx/collection/ArrayMap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p4

    move-object/from16 v3, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/bumptech/glide/b;->h:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/bumptech/glide/b;->a:Lm/d;

    iput-object v3, v0, Lcom/bumptech/glide/b;->e:Lm/b;

    move-object/from16 v4, p3

    iput-object v4, v0, Lcom/bumptech/glide/b;->b:Ln/h;

    move-object/from16 v4, p6

    iput-object v4, v0, Lcom/bumptech/glide/b;->f:Ly/j;

    move-object/from16 v4, p7

    iput-object v4, v0, Lcom/bumptech/glide/b;->g:Ly/d;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v5, Lcom/bumptech/glide/f;

    invoke-direct {v5}, Lcom/bumptech/glide/f;-><init>()V

    iput-object v5, v0, Lcom/bumptech/glide/b;->d:Lcom/bumptech/glide/f;

    new-instance v6, Ls/f;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iget-object v7, v5, Lcom/bumptech/glide/f;->g:La0/b;

    monitor-enter v7

    :try_start_0
    iget-object v8, v7, La0/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v7

    new-instance v6, Ls/k;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iget-object v7, v5, Lcom/bumptech/glide/f;->g:La0/b;

    monitor-enter v7

    :try_start_1
    iget-object v8, v7, La0/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v7

    invoke-virtual {v5}, Lcom/bumptech/glide/f;->e()Ljava/util/ArrayList;

    move-result-object v6

    new-instance v7, Lw/a;

    invoke-direct {v7, v2, v6, v1, v3}, Lw/a;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lm/d;Lm/b;)V

    new-instance v8, Ls/u;

    new-instance v9, Ls/u$g;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-direct {v8, v1, v9}, Ls/u;-><init>(Lm/d;Ls/u$f;)V

    new-instance v9, Ls/h;

    invoke-virtual {v5}, Lcom/bumptech/glide/f;->e()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-direct {v9, v10, v11, v1, v3}, Ls/h;-><init>(Ljava/util/ArrayList;Landroid/util/DisplayMetrics;Lm/d;Lm/b;)V

    new-instance v10, Ls/e;

    invoke-direct {v10, v9}, Ls/e;-><init>(Ls/h;)V

    new-instance v11, Ls/r;

    invoke-direct {v11, v9, v3}, Ls/r;-><init>(Ls/h;Lm/b;)V

    new-instance v12, Lu/d;

    invoke-direct {v12, v2}, Lu/d;-><init>(Landroid/content/Context;)V

    new-instance v13, Lp/v$c;

    invoke-direct {v13, v4}, Lp/v$c;-><init>(Landroid/content/res/Resources;)V

    new-instance v14, Lp/v$d;

    invoke-direct {v14, v4}, Lp/v$d;-><init>(Landroid/content/res/Resources;)V

    new-instance v15, Lp/v$b;

    invoke-direct {v15, v4}, Lp/v$b;-><init>(Landroid/content/res/Resources;)V

    new-instance v0, Lp/v$a;

    invoke-direct {v0, v4}, Lp/v$a;-><init>(Landroid/content/res/Resources;)V

    new-instance v2, Ls/c;

    invoke-direct {v2, v3}, Ls/c;-><init>(Lm/b;)V

    move-object/from16 p3, v0

    new-instance v0, Lx/a;

    invoke-direct {v0}, Lx/a;-><init>()V

    move-object/from16 p6, v0

    new-instance v0, Lx/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object/from16 p7, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object/from16 v16, v0

    new-instance v0, Lp/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v17, v14

    const-class v14, Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v14, v0}, Lcom/bumptech/glide/f;->b(Ljava/lang/Class;Li/d;)V

    new-instance v0, Lp/w;

    invoke-direct {v0, v3}, Lp/w;-><init>(Lm/b;)V

    move-object/from16 v18, v15

    const-class v15, Ljava/io/InputStream;

    invoke-virtual {v5, v15, v0}, Lcom/bumptech/glide/f;->b(Ljava/lang/Class;Li/d;)V

    const-class v0, Landroid/graphics/Bitmap;

    move-object/from16 v19, v13

    const-string v13, "Bitmap"

    invoke-virtual {v5, v10, v14, v0, v13}, Lcom/bumptech/glide/f;->a(Li/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v5, v11, v15, v0, v13}, Lcom/bumptech/glide/f;->a(Li/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    move-object/from16 v20, v12

    new-instance v12, Ls/o;

    invoke-direct {v12, v9}, Ls/o;-><init>(Ls/h;)V

    const-class v9, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5, v12, v9, v0, v13}, Lcom/bumptech/glide/f;->a(Li/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v5, v8, v9, v0, v13}, Lcom/bumptech/glide/f;->a(Li/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v12, Ls/u;

    new-instance v3, Ls/u$c;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-direct {v12, v1, v3}, Ls/u;-><init>(Lm/d;Ls/u$f;)V

    const-class v3, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v5, v12, v3, v0, v13}, Lcom/bumptech/glide/f;->a(Li/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    sget-object v12, Lp/y$a;->a:Lp/y$a;

    invoke-virtual {v5, v0, v0, v12}, Lcom/bumptech/glide/f;->d(Ljava/lang/Class;Ljava/lang/Class;Lp/r;)V

    move-object/from16 v21, v3

    new-instance v3, Ls/t;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, v3, v0, v0, v13}, Lcom/bumptech/glide/f;->a(Li/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v5, v0, v2}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Li/k;)V

    new-instance v3, Ls/a;

    invoke-direct {v3, v4, v10}, Ls/a;-><init>(Landroid/content/res/Resources;Li/j;)V

    const-class v10, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v22, v0

    const-string v0, "BitmapDrawable"

    invoke-virtual {v5, v3, v14, v10, v0}, Lcom/bumptech/glide/f;->a(Li/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v3, Ls/a;

    invoke-direct {v3, v4, v11}, Ls/a;-><init>(Landroid/content/res/Resources;Li/j;)V

    invoke-virtual {v5, v3, v15, v10, v0}, Lcom/bumptech/glide/f;->a(Li/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v3, Ls/a;

    invoke-direct {v3, v4, v8}, Ls/a;-><init>(Landroid/content/res/Resources;Li/j;)V

    invoke-virtual {v5, v3, v9, v10, v0}, Lcom/bumptech/glide/f;->a(Li/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v0, Ls/b;

    invoke-direct {v0, v1, v2}, Ls/b;-><init>(Lm/d;Ls/c;)V

    invoke-virtual {v5, v10, v0}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Li/k;)V

    new-instance v0, Lw/h;

    move-object/from16 v3, p5

    invoke-direct {v0, v6, v7, v3}, Lw/h;-><init>(Ljava/util/ArrayList;Lw/a;Lm/b;)V

    const-class v2, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    const-string v6, "Gif"

    invoke-virtual {v5, v0, v15, v2, v6}, Lcom/bumptech/glide/f;->a(Li/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v5, v7, v14, v2, v6}, Lcom/bumptech/glide/f;->a(Li/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v0, Lw/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, v2, v0}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Li/k;)V

    const-class v0, Lh/a;

    invoke-virtual {v5, v0, v0, v12}, Lcom/bumptech/glide/f;->d(Ljava/lang/Class;Ljava/lang/Class;Lp/r;)V

    new-instance v6, Lw/f;

    invoke-direct {v6, v1}, Lw/f;-><init>(Lm/d;)V

    move-object/from16 v7, v22

    invoke-virtual {v5, v6, v0, v7, v13}, Lcom/bumptech/glide/f;->a(Li/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    const-class v0, Landroid/net/Uri;

    const-class v6, Landroid/graphics/drawable/Drawable;

    const-string v8, "legacy_append"

    move-object/from16 v11, v20

    invoke-virtual {v5, v11, v0, v6, v8}, Lcom/bumptech/glide/f;->a(Li/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v13, Ls/q;

    invoke-direct {v13, v11, v1}, Ls/q;-><init>(Lu/d;Lm/d;)V

    invoke-virtual {v5, v13, v0, v7, v8}, Lcom/bumptech/glide/f;->a(Li/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v11, Lt/a$a;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, v11}, Lcom/bumptech/glide/f;->g(Lj/e$a;)V

    new-instance v11, Lp/d$b;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    const-class v13, Ljava/io/File;

    invoke-virtual {v5, v13, v14, v11}, Lcom/bumptech/glide/f;->d(Ljava/lang/Class;Ljava/lang/Class;Lp/r;)V

    new-instance v11, Lp/f$e;

    move-object/from16 v20, v2

    new-instance v2, Lp/h;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-direct {v11, v2}, Lp/f$a;-><init>(Lp/f$d;)V

    invoke-virtual {v5, v13, v15, v11}, Lcom/bumptech/glide/f;->d(Ljava/lang/Class;Ljava/lang/Class;Lp/r;)V

    new-instance v2, Lv/a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, v2, v13, v13, v8}, Lcom/bumptech/glide/f;->a(Li/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v2, Lp/f$b;

    new-instance v11, Lp/g;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    invoke-direct {v2, v11}, Lp/f$a;-><init>(Lp/f$d;)V

    invoke-virtual {v5, v13, v9, v2}, Lcom/bumptech/glide/f;->d(Ljava/lang/Class;Ljava/lang/Class;Lp/r;)V

    invoke-virtual {v5, v13, v13, v12}, Lcom/bumptech/glide/f;->d(Ljava/lang/Class;Ljava/lang/Class;Lp/r;)V

    new-instance v2, Lj/k$a;

    invoke-direct {v2, v3}, Lj/k$a;-><init>(Lm/b;)V

    invoke-virtual {v5, v2}, Lcom/bumptech/glide/f;->g(Lj/e$a;)V

    new-instance v2, Lj/m$a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, v2}, Lcom/bumptech/glide/f;->g(Lj/e$a;)V

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v11, v19

    invoke-virtual {v5, v2, v15, v11}, Lcom/bumptech/glide/f;->d(Ljava/lang/Class;Ljava/lang/Class;Lp/r;)V

    move-object/from16 v3, v18

    invoke-virtual {v5, v2, v9, v3}, Lcom/bumptech/glide/f;->d(Ljava/lang/Class;Ljava/lang/Class;Lp/r;)V

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v5, v1, v15, v11}, Lcom/bumptech/glide/f;->d(Ljava/lang/Class;Ljava/lang/Class;Lp/r;)V

    invoke-virtual {v5, v1, v9, v3}, Lcom/bumptech/glide/f;->d(Ljava/lang/Class;Ljava/lang/Class;Lp/r;)V

    move-object/from16 v3, v17

    invoke-virtual {v5, v1, v0, v3}, Lcom/bumptech/glide/f;->d(Ljava/lang/Class;Ljava/lang/Class;Lp/r;)V

    move-object/from16 v11, p3

    move-object/from16 v22, v7

    move-object/from16 v7, v21

    invoke-virtual {v5, v2, v7, v11}, Lcom/bumptech/glide/f;->d(Ljava/lang/Class;Ljava/lang/Class;Lp/r;)V

    invoke-virtual {v5, v1, v7, v11}, Lcom/bumptech/glide/f;->d(Ljava/lang/Class;Ljava/lang/Class;Lp/r;)V

    invoke-virtual {v5, v2, v0, v3}, Lcom/bumptech/glide/f;->d(Ljava/lang/Class;Ljava/lang/Class;Lp/r;)V

    new-instance v1, Lp/e$c;

    invoke-direct {v1}, Lp/e$c;-><init>()V

    const-class v2, Ljava/lang/String;

    invoke-virtual {v5, v2, v15, v1}, Lcom/bumptech/glide/f;->d(Ljava/lang/Class;Ljava/lang/Class;Lp/r;)V

    new-instance v1, Lp/e$c;

    invoke-direct {v1}, Lp/e$c;-><init>()V

    invoke-virtual {v5, v0, v15, v1}, Lcom/bumptech/glide/f;->d(Ljava/lang/Class;Ljava/lang/Class;Lp/r;)V

    new-instance v1, Lp/x$c;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, v2, v15, v1}, Lcom/bumptech/glide/f;->d(Ljava/lang/Class;Ljava/lang/Class;Lp/r;)V

    new-instance v1, Lp/x$b;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, v2, v9, v1}, Lcom/bumptech/glide/f;->d(Ljava/lang/Class;Ljava/lang/Class;Lp/r;)V

    new-instance v1, Lp/x$a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, v2, v7, v1}, Lcom/bumptech/glide/f;->d(Ljava/lang/Class;Ljava/lang/Class;Lp/r;)V

    new-instance v1, Lq/b$a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, v0, v15, v1}, Lcom/bumptech/glide/f;->d(Ljava/lang/Class;Ljava/lang/Class;Lp/r;)V

    new-instance v1, Lp/a$c;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lp/a$c;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v5, v0, v15, v1}, Lcom/bumptech/glide/f;->d(Ljava/lang/Class;Ljava/lang/Class;Lp/r;)V

    new-instance v1, Lp/a$b;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lp/a$b;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v5, v0, v9, v1}, Lcom/bumptech/glide/f;->d(Ljava/lang/Class;Ljava/lang/Class;Lp/r;)V

    new-instance v1, Lq/c$a;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Lq/c$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v0, v15, v1}, Lcom/bumptech/glide/f;->d(Ljava/lang/Class;Ljava/lang/Class;Lp/r;)V

    new-instance v1, Lq/d$a;

    invoke-direct {v1, v2}, Lq/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v0, v15, v1}, Lcom/bumptech/glide/f;->d(Ljava/lang/Class;Ljava/lang/Class;Lp/r;)V

    new-instance v1, Lq/e$c;

    invoke-direct {v1, v2, v15}, Lq/e$a;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v0, v15, v1}, Lcom/bumptech/glide/f;->d(Ljava/lang/Class;Ljava/lang/Class;Lp/r;)V

    new-instance v1, Lq/e$b;

    invoke-direct {v1, v2, v9}, Lq/e$a;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v0, v9, v1}, Lcom/bumptech/glide/f;->d(Ljava/lang/Class;Ljava/lang/Class;Lp/r;)V

    new-instance v1, Lp/z$d;

    move-object/from16 v3, v16

    invoke-direct {v1, v3}, Lp/z$d;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v5, v0, v15, v1}, Lcom/bumptech/glide/f;->d(Ljava/lang/Class;Ljava/lang/Class;Lp/r;)V

    new-instance v1, Lp/z$b;

    invoke-direct {v1, v3}, Lp/z$b;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v5, v0, v9, v1}, Lcom/bumptech/glide/f;->d(Ljava/lang/Class;Ljava/lang/Class;Lp/r;)V

    new-instance v1, Lp/z$a;

    invoke-direct {v1, v3}, Lp/z$a;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v5, v0, v7, v1}, Lcom/bumptech/glide/f;->d(Ljava/lang/Class;Ljava/lang/Class;Lp/r;)V

    new-instance v1, Lp/a0$a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, v0, v15, v1}, Lcom/bumptech/glide/f;->d(Ljava/lang/Class;Ljava/lang/Class;Lp/r;)V

    new-instance v1, Lq/f$a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const-class v3, Ljava/net/URL;

    invoke-virtual {v5, v3, v15, v1}, Lcom/bumptech/glide/f;->d(Ljava/lang/Class;Ljava/lang/Class;Lp/r;)V

    new-instance v1, Lp/m$a;

    invoke-direct {v1, v2}, Lp/m$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v0, v13, v1}, Lcom/bumptech/glide/f;->d(Ljava/lang/Class;Ljava/lang/Class;Lp/r;)V

    new-instance v1, Lq/a$a;

    invoke-direct {v1}, Lq/a$a;-><init>()V

    const-class v3, Lp/i;

    invoke-virtual {v5, v3, v15, v1}, Lcom/bumptech/glide/f;->d(Ljava/lang/Class;Ljava/lang/Class;Lp/r;)V

    new-instance v1, Lp/b$a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const-class v3, [B

    invoke-virtual {v5, v3, v14, v1}, Lcom/bumptech/glide/f;->d(Ljava/lang/Class;Ljava/lang/Class;Lp/r;)V

    new-instance v1, Lp/b$d;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, v3, v15, v1}, Lcom/bumptech/glide/f;->d(Ljava/lang/Class;Ljava/lang/Class;Lp/r;)V

    invoke-virtual {v5, v0, v0, v12}, Lcom/bumptech/glide/f;->d(Ljava/lang/Class;Ljava/lang/Class;Lp/r;)V

    invoke-virtual {v5, v6, v6, v12}, Lcom/bumptech/glide/f;->d(Ljava/lang/Class;Ljava/lang/Class;Lp/r;)V

    new-instance v0, Lu/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, v0, v6, v6, v8}, Lcom/bumptech/glide/f;->a(Li/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v0, Lx/b;

    invoke-direct {v0, v4}, Lx/b;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 v1, v22

    invoke-virtual {v5, v1, v10, v0}, Lcom/bumptech/glide/f;->h(Ljava/lang/Class;Ljava/lang/Class;Lx/e;)V

    move-object/from16 v0, p6

    invoke-virtual {v5, v1, v3, v0}, Lcom/bumptech/glide/f;->h(Ljava/lang/Class;Ljava/lang/Class;Lx/e;)V

    new-instance v7, Lx/c;

    move-object/from16 v8, p4

    move-object/from16 v9, p7

    invoke-direct {v7, v8, v0, v9}, Lx/c;-><init>(Lm/d;Lx/a;Lx/d;)V

    invoke-virtual {v5, v6, v3, v7}, Lcom/bumptech/glide/f;->h(Ljava/lang/Class;Ljava/lang/Class;Lx/e;)V

    move-object/from16 v0, v20

    invoke-virtual {v5, v0, v3, v9}, Lcom/bumptech/glide/f;->h(Ljava/lang/Class;Ljava/lang/Class;Lx/e;)V

    new-instance v0, Ls/u;

    new-instance v3, Ls/u$d;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v8, v3}, Ls/u;-><init>(Lm/d;Ls/u$f;)V

    const-class v3, Ljava/nio/ByteBuffer;

    const-string v6, "legacy_append"

    invoke-virtual {v5, v0, v3, v1, v6}, Lcom/bumptech/glide/f;->a(Li/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v1, Ls/a;

    invoke-direct {v1, v4, v0}, Ls/a;-><init>(Landroid/content/res/Resources;Li/j;)V

    const-class v0, Ljava/nio/ByteBuffer;

    const-string v3, "legacy_append"

    invoke-virtual {v5, v1, v0, v10, v3}, Lcom/bumptech/glide/f;->a(Li/j;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v0, Lcom/bumptech/glide/d;

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object v4, v5

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v8, p2

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/bumptech/glide/d;-><init>(Landroid/content/Context;Lm/b;Lcom/bumptech/glide/f;Lcom/bumptech/glide/c;Landroidx/collection/ArrayMap;Ljava/util/List;Ll/m;I)V

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/b;->c:Lcom/bumptech/glide/d;

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static a(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    .locals 30
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/bumptech/glide/GeneratedAppGlideModule;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "Glide.class"
    .end annotation

    sget-boolean v0, Lcom/bumptech/glide/b;->j:Z

    if-nez v0, :cond_13

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bumptech/glide/b;->j:Z

    new-instance v11, Landroidx/collection/ArrayMap;

    invoke-direct {v11}, Landroidx/collection/ArrayMap;-><init>()V

    new-instance v10, Lcom/bumptech/glide/c;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    const-string v1, "Got app info metadata: "

    const-string v2, "ManifestParser"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Loading Glide modules"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v6, 0x2

    if-nez v5, :cond_1

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "Got null app info metadata"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_8

    :cond_1
    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "GlideModule"

    iget-object v8, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v8, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v5}, Lz/d;->a(Ljava/lang/String;)Lz/b;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Loaded Glide module: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "Finished loading Glide modules"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    const-string v1, "Glide"

    if-eqz p1, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/bumptech/glide/GeneratedAppGlideModule;->a()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/bumptech/glide/GeneratedAppGlideModule;->a()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lz/b;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "AppGlideModule excludes manifest GlideModule: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_8
    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz/b;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Discovered GlideModule from manifest: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz/b;

    invoke-interface {v2}, Lz/b;->b()V

    goto :goto_4

    :cond_a
    sget v1, Lo/a;->x:I

    const/4 v2, 0x4

    if-nez v1, :cond_b

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    sput v1, Lo/a;->x:I

    :cond_b
    sget v17, Lo/a;->x:I

    const-string/jumbo v1, "source"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v18, 0x0

    sget-object v20, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v21, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct/range {v21 .. v21}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v4, Lo/a$a;

    const/4 v12, 0x0

    invoke-direct {v4, v1, v12}, Lo/a$a;-><init>(Ljava/lang/String;Z)V

    move-object v15, v3

    move/from16 v16, v17

    move-object/from16 v22, v4

    invoke-direct/range {v15 .. v22}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v1, Lo/a;

    invoke-direct {v1, v3}, Lo/a;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    sget v3, Lo/a;->x:I

    const/4 v3, 0x1

    const-string v4, "disk-cache"

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11

    new-instance v5, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v18, 0x0

    sget-object v20, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v21, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct/range {v21 .. v21}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v7, Lo/a$a;

    invoke-direct {v7, v4, v3}, Lo/a$a;-><init>(Ljava/lang/String;Z)V

    move-object v15, v5

    move/from16 v16, v3

    move/from16 v17, v3

    move-object/from16 v22, v7

    invoke-direct/range {v15 .. v22}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v3, Lo/a;

    invoke-direct {v3, v5}, Lo/a;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    sget v4, Lo/a;->x:I

    if-nez v4, :cond_c

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    sput v4, Lo/a;->x:I

    :cond_c
    sget v4, Lo/a;->x:I

    if-lt v4, v2, :cond_d

    move/from16 v17, v6

    goto :goto_5

    :cond_d
    move/from16 v17, v0

    :goto_5
    const-string v2, "animation"

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    new-instance v4, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v18, 0x0

    sget-object v20, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v21, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct/range {v21 .. v21}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v5, Lo/a$a;

    invoke-direct {v5, v2, v0}, Lo/a$a;-><init>(Ljava/lang/String;Z)V

    move-object v15, v4

    move/from16 v16, v17

    move-object/from16 v22, v5

    invoke-direct/range {v15 .. v22}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v0, Lo/a;

    invoke-direct {v0, v4}, Lo/a;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    new-instance v2, Ln/i$a;

    invoke-direct {v2, v13}, Ln/i$a;-><init>(Landroid/content/Context;)V

    new-instance v4, Ln/i;

    invoke-direct {v4, v2}, Ln/i;-><init>(Ln/i$a;)V

    new-instance v8, Ly/f;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iget v2, v4, Ln/i;->a:I

    if-lez v2, :cond_e

    new-instance v5, Lm/j;

    int-to-long v6, v2

    invoke-direct {v5, v6, v7}, Lm/j;-><init>(J)V

    goto :goto_6

    :cond_e
    new-instance v2, Lm/e;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v5, v2

    :goto_6
    new-instance v6, Lm/i;

    iget v2, v4, Ln/i;->c:I

    invoke-direct {v6, v2}, Lm/i;-><init>(I)V

    new-instance v7, Ln/g;

    iget v2, v4, Ln/i;->b:I

    move-object/from16 v16, v10

    int-to-long v9, v2

    invoke-direct {v7, v9, v10}, Lf0/f;-><init>(J)V

    new-instance v2, Ln/f;

    new-instance v4, Ln/e;

    invoke-direct {v4, v13}, Ln/e;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v4}, Ln/c;-><init>(Ln/e;)V

    new-instance v4, Ll/m;

    new-instance v9, Lo/a;

    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v18, 0x0

    const v19, 0x7fffffff

    sget-wide v20, Lo/a;->r:J

    sget-object v22, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v23, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct/range {v23 .. v23}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v15, Lo/a$a;

    move-object/from16 v29, v14

    const-string/jumbo v14, "source-unlimited"

    invoke-direct {v15, v14, v12}, Lo/a$a;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v17, v10

    move-object/from16 v24, v15

    invoke-direct/range {v17 .. v24}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v9, v10}, Lo/a;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    move-object/from16 v22, v4

    move-object/from16 v23, v7

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v1

    move-object/from16 v27, v9

    move-object/from16 v28, v0

    invoke-direct/range {v22 .. v28}, Ll/m;-><init>(Ln/h;Ln/a$a;Lo/a;Lo/a;Lo/a;Lo/a;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    new-instance v9, Ly/j;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Ly/j;-><init>(Ly/j$b;)V

    new-instance v14, Lcom/bumptech/glide/b;

    move-object v1, v14

    move-object v2, v13

    move-object v3, v4

    move-object v4, v7

    move-object v7, v9

    const/4 v9, 0x4

    move-object/from16 v10, v16

    move v15, v12

    move-object v12, v0

    invoke-direct/range {v1 .. v12}, Lcom/bumptech/glide/b;-><init>(Landroid/content/Context;Ll/m;Ln/h;Lm/d;Lm/b;Ly/j;Ly/d;ILcom/bumptech/glide/c;Landroidx/collection/ArrayMap;Ljava/util/List;)V

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz/b;

    :try_start_1
    invoke-interface {v1}, Lz/b;->a()V
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you\'re using Glide v4. You\'ll need to find and remove (or update) the offending dependency. The v3 module name is: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_f
    invoke-virtual {v13, v14}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    sput-object v14, Lcom/bumptech/glide/b;->i:Lcom/bumptech/glide/b;

    sput-boolean v15, Lcom/bumptech/glide/b;->j:Z

    return-void

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must be non-null and non-empty, but given: animation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must be non-null and non-empty, but given: disk-cache"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must be non-null and non-empty, but given: source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_8
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to find metadata to parse GlideModules"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Landroid/content/Context;)Lcom/bumptech/glide/b;
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/b;->i:Lcom/bumptech/glide/b;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    const-string v1, "com.bumptech.glide.GeneratedAppGlideModuleImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/GeneratedAppGlideModule;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    goto :goto_3

    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    const-string v0, "Glide"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_4
    const-class v1, Lcom/bumptech/glide/b;

    monitor-enter v1

    :try_start_1
    sget-object v2, Lcom/bumptech/glide/b;->i:Lcom/bumptech/glide/b;

    if-nez v2, :cond_1

    invoke-static {p0, v0}, Lcom/bumptech/glide/b;->a(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_1
    :goto_5
    monitor-exit v1

    goto :goto_7

    :goto_6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_7
    sget-object p0, Lcom/bumptech/glide/b;->i:Lcom/bumptech/glide/b;

    return-object p0
.end method


# virtual methods
.method public final c(Lcom/bumptech/glide/h;)V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/b;->h:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/bumptech/glide/b;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot unregister not yet registered manager"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final onLowMemory()V
    .locals 3

    sget-object v0, Lf0/j;->a:[C

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/b;->b:Ln/h;

    check-cast v0, Lf0/f;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lf0/f;->e(J)V

    iget-object v0, p0, Lcom/bumptech/glide/b;->a:Lm/d;

    invoke-interface {v0}, Lm/d;->b()V

    iget-object p0, p0, Lcom/bumptech/glide/b;->e:Lm/b;

    invoke-interface {p0}, Lm/b;->b()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must call this method on the main thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onTrimMemory(I)V
    .locals 5

    sget-object v0, Lf0/j;->a:[C

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/bumptech/glide/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/h;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/b;->b:Ln/h;

    check-cast v0, Ln/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x28

    if-lt p1, v1, :cond_1

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lf0/f;->e(J)V

    goto :goto_1

    :cond_1
    const/16 v1, 0x14

    if-ge p1, v1, :cond_2

    const/16 v1, 0xf

    if-ne p1, v1, :cond_3

    :cond_2
    monitor-enter v0

    :try_start_0
    iget-wide v1, v0, Lf0/f;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lf0/f;->e(J)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/bumptech/glide/b;->a:Lm/d;

    invoke-interface {v0, p1}, Lm/d;->a(I)V

    iget-object p0, p0, Lcom/bumptech/glide/b;->e:Lm/b;

    invoke-interface {p0, p1}, Lm/b;->a(I)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You must call this method on the main thread"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
