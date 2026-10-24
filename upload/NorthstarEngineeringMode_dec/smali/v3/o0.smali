.class public abstract Lv3/o0;
.super Lv3/w;
.source "SourceFile"


# instance fields
.field public Z:Lg3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg3/c<",
            "Lv3/j0<",
            "*>;>;"
        }
    .end annotation
.end field

.field public x:J

.field public y:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lv3/w;-><init>()V

    return-void
.end method


# virtual methods
.method public final B()V
    .locals 4

    iget-wide v0, p0, Lv3/o0;->x:J

    const-wide v2, 0x100000000L

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lv3/o0;->x:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lv3/o0;->y:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lv3/o0;->shutdown()V

    :cond_1
    return-void
.end method

.method public final D(Z)V
    .locals 4

    iget-wide v0, p0, Lv3/o0;->x:J

    if-eqz p1, :cond_0

    const-wide v2, 0x100000000L

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    :goto_0
    add-long/2addr v2, v0

    iput-wide v2, p0, Lv3/o0;->x:J

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lv3/o0;->y:Z

    :cond_1
    return-void
.end method

.method public final G()Z
    .locals 2

    iget-object p0, p0, Lv3/o0;->Z:Lg3/c;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lg3/c;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lg3/c;->f()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, Lv3/j0;

    if-nez p0, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Lv3/j0;->run()V

    const/4 p0, 0x1

    return p0
.end method

.method public shutdown()V
    .locals 0

    return-void
.end method
