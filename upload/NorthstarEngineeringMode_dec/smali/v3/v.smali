.class public final Lv3/v;
.super Lo3/i;
.source "SourceFile"

# interfaces
.implements Ln3/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo3/i;",
        "Ln3/l<",
        "Lh3/f$b;",
        "Lv3/w;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lv3/v;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lv3/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lo3/i;-><init>(I)V

    sput-object v0, Lv3/v;->r:Lv3/v;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lh3/f$b;

    instance-of p0, p1, Lv3/w;

    if-eqz p0, :cond_0

    check-cast p1, Lv3/w;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
