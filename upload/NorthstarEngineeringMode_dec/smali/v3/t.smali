.class public final Lv3/t;
.super Lo3/i;
.source "SourceFile"

# interfaces
.implements Ln3/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo3/i;",
        "Ln3/p<",
        "Ljava/lang/Boolean;",
        "Lh3/f$b;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lv3/t;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lv3/t;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lo3/i;-><init>(I)V

    sput-object v0, Lv3/t;->r:Lv3/t;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p2, Lh3/f$b;

    if-nez p0, :cond_1

    instance-of p0, p2, Lv3/q;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
