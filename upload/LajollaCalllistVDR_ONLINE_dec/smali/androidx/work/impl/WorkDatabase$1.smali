.class Landroidx/work/impl/WorkDatabase$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/WorkDatabase;->create(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Landroidx/work/impl/WorkDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroidx/work/impl/WorkDatabase$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ls0/c;)Ls0/e;
    .locals 4
    .param p1    # Ls0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase$1;->val$context:Landroid/content/Context;

    iget-object v1, p1, Ls0/c;->b:Ljava/lang/String;

    iget-object p1, p1, Ls0/c;->c:Ls0/b;

    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ls0/c;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, p1, v3}, Ls0/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ls0/b;Z)V

    new-instance p1, Lt0/e;

    iget-boolean v0, v2, Ls0/c;->d:Z

    iget-object v1, v2, Ls0/c;->b:Ljava/lang/String;

    iget-object v3, v2, Ls0/c;->a:Landroid/content/Context;

    iget-object v2, v2, Ls0/c;->c:Ls0/b;

    invoke-direct {p1, v3, v1, v2, v0}, Lt0/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ls0/b;Z)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must set a non-null database name to a configuration that uses the no backup directory."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must set a non-null context to create the configuration."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must set a callback to create the configuration."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
