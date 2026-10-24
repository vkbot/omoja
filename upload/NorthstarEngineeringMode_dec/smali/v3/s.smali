.class public final Lv3/s;
.super Lo3/i;
.source "SourceFile"

# interfaces
.implements Ln3/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo3/i;",
        "Ln3/p<",
        "Lh3/f;",
        "Lh3/f$b;",
        "Lh3/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lo3/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/m<",
            "Lh3/f;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic x:Z


# direct methods
.method public constructor <init>(Lo3/m;)V
    .locals 0

    iput-object p1, p0, Lv3/s;->r:Lo3/m;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lv3/s;->x:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lo3/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lh3/f;

    check-cast p2, Lh3/f$b;

    instance-of v0, p2, Lv3/q;

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Lh3/f;->q(Lh3/f;)Lh3/f;

    move-result-object p0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lv3/s;->r:Lo3/m;

    iget-object v1, v0, Lo3/m;->c:Ljava/lang/Object;

    check-cast v1, Lh3/f;

    invoke-interface {p2}, Lh3/f$b;->getKey()Lh3/f$c;

    move-result-object v2

    invoke-interface {v1, v2}, Lh3/f;->s(Lh3/f$c;)Lh3/f$b;

    move-result-object v1

    if-nez v1, :cond_2

    iget-boolean p0, p0, Lv3/s;->x:Z

    if-eqz p0, :cond_1

    check-cast p2, Lv3/q;

    invoke-interface {p2}, Lv3/q;->n()Lv3/q;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, p2

    check-cast p0, Lv3/q;

    :goto_0
    invoke-interface {p1, p0}, Lh3/f;->q(Lh3/f;)Lh3/f;

    move-result-object p0

    goto :goto_1

    :cond_2
    iget-object p0, v0, Lo3/m;->c:Ljava/lang/Object;

    check-cast p0, Lh3/f;

    invoke-interface {p2}, Lh3/f$b;->getKey()Lh3/f$c;

    move-result-object v1

    invoke-interface {p0, v1}, Lh3/f;->j(Lh3/f$c;)Lh3/f;

    move-result-object p0

    iput-object p0, v0, Lo3/m;->c:Ljava/lang/Object;

    check-cast p2, Lv3/q;

    invoke-interface {p2}, Lv3/q;->z()Lh3/f;

    move-result-object p0

    invoke-interface {p1, p0}, Lh3/f;->q(Lh3/f;)Lh3/f;

    move-result-object p0

    :goto_1
    return-object p0
.end method
