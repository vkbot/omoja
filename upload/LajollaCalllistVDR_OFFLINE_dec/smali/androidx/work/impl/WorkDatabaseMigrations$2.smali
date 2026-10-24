.class Landroidx/work/impl/WorkDatabaseMigrations$2;
.super Lr0/a;
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

    invoke-direct {p0, p1, p2}, Lr0/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Lt0/a;)V
    .locals 0
    .param p1    # Lt0/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p0, "UPDATE workspec SET schedule_requested_at=0 WHERE state NOT IN (2, 3, 5) AND schedule_requested_at=-1 AND interval_duration<>0"

    check-cast p1, Lu0/b;

    invoke-virtual {p1, p0}, Lu0/b;->p(Ljava/lang/String;)V

    return-void
.end method
