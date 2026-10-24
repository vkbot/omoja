.class public final Lv3/r;
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


# static fields
.field public static final r:Lv3/r;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lv3/r;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lo3/i;-><init>(I)V

    sput-object v0, Lv3/r;->r:Lv3/r;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lh3/f;

    check-cast p2, Lh3/f$b;

    instance-of p0, p2, Lv3/q;

    if-eqz p0, :cond_0

    check-cast p2, Lv3/q;

    invoke-interface {p2}, Lv3/q;->n()Lv3/q;

    move-result-object p0

    invoke-interface {p1, p0}, Lh3/f;->q(Lh3/f;)Lh3/f;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Lh3/f;->q(Lh3/f;)Lh3/f;

    move-result-object p0

    :goto_0
    return-object p0
.end method
