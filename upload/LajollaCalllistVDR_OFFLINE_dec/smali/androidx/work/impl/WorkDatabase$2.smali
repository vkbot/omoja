.class Landroidx/work/impl/WorkDatabase$2;
.super Landroidx/room/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/WorkDatabase;->generateCleanupCallback()Landroidx/room/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/o;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpen(Lt0/a;)V
    .locals 0
    .param p1    # Lt0/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lu0/b;

    invoke-virtual {p1}, Lu0/b;->d()V

    :try_start_0
    invoke-static {}, Landroidx/work/impl/WorkDatabase;->getPruneSQL()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lu0/b;->p(Ljava/lang/String;)V

    invoke-virtual {p1}, Lu0/b;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lu0/b;->g()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Lu0/b;->g()V

    throw p0
.end method
