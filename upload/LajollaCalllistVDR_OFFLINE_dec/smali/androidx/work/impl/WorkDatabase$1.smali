.class Landroidx/work/impl/WorkDatabase$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt0/d;


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
.method public create(Lt0/c;)Lt0/e;
    .locals 3
    .param p1    # Lt0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase$1;->val$context:Landroid/content/Context;

    iget-object v0, p1, Lt0/c;->b:Ljava/lang/String;

    iget-object p1, p1, Lt0/c;->c:Lt0/b;

    if-eqz p1, :cond_2

    if-eqz p0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lt0/c;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, p1, v2}, Lt0/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lt0/b;Z)V

    new-instance p0, Lu0/e;

    iget-boolean p1, v1, Lt0/c;->d:Z

    iget-object v0, v1, Lt0/c;->b:Ljava/lang/String;

    iget-object v2, v1, Lt0/c;->a:Landroid/content/Context;

    iget-object v1, v1, Lt0/c;->c:Lt0/b;

    invoke-direct {p0, v2, v0, v1, p1}, Lu0/e;-><init>(Landroid/content/Context;Ljava/lang/String;Lt0/b;Z)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must set a non-null database name to a configuration that uses the no backup directory."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must set a non-null context to create the configuration."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must set a callback to create the configuration."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
