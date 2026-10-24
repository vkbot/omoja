.class public final Lcom/bumptech/glide/g;
.super Lb0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lb0/a<",
        "Lcom/bumptech/glide/g<",
        "TTranscodeType;>;>;"
    }
.end annotation


# instance fields
.field public A1:Lcom/bumptech/glide/i;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/i<",
            "*-TTranscodeType;>;"
        }
    .end annotation
.end field

.field public B1:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final C1:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public D1:Z

.field public final w1:Landroid/content/Context;

.field public final x1:Lcom/bumptech/glide/h;

.field public final y1:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field public final z1:Lcom/bumptech/glide/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb0/f;

    invoke-direct {v0}, Lb0/f;-><init>()V

    sget-object v1, Ll/l;->b:Ll/l$c;

    invoke-virtual {v0, v1}, Lb0/a;->d(Ll/l;)Lb0/a;

    move-result-object v0

    check-cast v0, Lb0/f;

    invoke-virtual {v0}, Lb0/a;->g()Lb0/a;

    move-result-object v0

    check-cast v0, Lb0/f;

    invoke-virtual {v0}, Lb0/a;->j()Lb0/a;

    move-result-object v0

    check-cast v0, Lb0/f;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/h;Landroid/content/Context;)V
    .locals 4
    .param p1    # Lcom/bumptech/glide/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    const-class v0, Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lb0/a;-><init>()V

    iput-object p2, p0, Lcom/bumptech/glide/g;->x1:Lcom/bumptech/glide/h;

    iput-object v0, p0, Lcom/bumptech/glide/g;->y1:Ljava/lang/Class;

    iput-object p3, p0, Lcom/bumptech/glide/g;->w1:Landroid/content/Context;

    iget-object p3, p2, Lcom/bumptech/glide/h;->a:Lcom/bumptech/glide/b;

    iget-object p3, p3, Lcom/bumptech/glide/b;->c:Lcom/bumptech/glide/d;

    iget-object p3, p3, Lcom/bumptech/glide/d;->e:Ljava/util/Map;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/i;

    if-nez v1, :cond_1

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/i;

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    sget-object v1, Lcom/bumptech/glide/d;->j:Lcom/bumptech/glide/a;

    :cond_2
    iput-object v1, p0, Lcom/bumptech/glide/g;->A1:Lcom/bumptech/glide/i;

    iget-object p1, p1, Lcom/bumptech/glide/b;->c:Lcom/bumptech/glide/d;

    iput-object p1, p0, Lcom/bumptech/glide/g;->z1:Lcom/bumptech/glide/d;

    iget-object p1, p2, Lcom/bumptech/glide/h;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lb0/e;

    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/bumptech/glide/g;->C1:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/g;->C1:Ljava/util/ArrayList;

    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/g;->C1:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    monitor-enter p2

    :try_start_0
    iget-object p1, p2, Lcom/bumptech/glide/h;->k:Lb0/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/g;->n(Lb0/a;)Lcom/bumptech/glide/g;

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0
.end method


# virtual methods
.method public final a(Lb0/a;)Lb0/a;
    .locals 0
    .param p1    # Lb0/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Lf0/i;->b(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lb0/a;->a(Lb0/a;)Lb0/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/g;

    return-object p0
.end method

.method public final b()Lb0/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    invoke-super {p0}, Lb0/a;->b()Lb0/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/g;

    iget-object v0, p0, Lcom/bumptech/glide/g;->A1:Lcom/bumptech/glide/i;

    invoke-virtual {v0}, Lcom/bumptech/glide/i;->a()Lcom/bumptech/glide/i;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/g;->A1:Lcom/bumptech/glide/i;

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    invoke-super {p0}, Lb0/a;->b()Lb0/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/g;

    iget-object v0, p0, Lcom/bumptech/glide/g;->A1:Lcom/bumptech/glide/i;

    invoke-virtual {v0}, Lcom/bumptech/glide/i;->a()Lcom/bumptech/glide/i;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/g;->A1:Lcom/bumptech/glide/i;

    return-object p0
.end method

.method public final n(Lb0/a;)Lcom/bumptech/glide/g;
    .locals 0
    .param p1    # Lb0/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb0/a<",
            "*>;)",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-static {p1}, Lf0/i;->b(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lb0/a;->a(Lb0/a;)Lb0/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/g;

    return-object p0
.end method
