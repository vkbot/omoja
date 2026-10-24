.class public final Lx3/v$b;
.super Lo3/i;
.source "SourceFile"

# interfaces
.implements Ln3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx3/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo3/i;",
        "Ln3/p<",
        "Lv3/m1<",
        "*>;",
        "Lh3/f$b;",
        "Lv3/m1<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final r:Lx3/v$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lx3/v$b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lo3/i;-><init>(I)V

    sput-object v0, Lx3/v$b;->r:Lx3/v$b;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lv3/m1;

    check-cast p2, Lh3/f$b;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of p0, p2, Lv3/m1;

    if-eqz p0, :cond_1

    check-cast p2, Lv3/m1;

    move-object p1, p2

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    move-object p1, p0

    :goto_0
    return-object p1
.end method
