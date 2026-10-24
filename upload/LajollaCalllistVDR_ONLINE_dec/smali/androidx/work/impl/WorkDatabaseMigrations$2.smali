.class Landroidx/work/impl/WorkDatabaseMigrations$2;
.super Lq0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/WorkDatabaseMigrations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lq0/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Ls0/a;)V
    .locals 1
    .param p1    # Ls0/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "UPDATE workspec SET schedule_requested_at=0 WHERE state NOT IN (2, 3, 5) AND schedule_requested_at=-1 AND interval_duration<>0"

    check-cast p1, Lt0/b;

    invoke-virtual {p1, v0}, Lt0/b;->M(Ljava/lang/String;)V

    return-void
.end method
