.class public final Lx3/v$c;
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
        "Lx3/y;",
        "Lh3/f$b;",
        "Lx3/y;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lx3/v$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lx3/v$c;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lo3/i;-><init>(I)V

    sput-object v0, Lx3/v$c;->r:Lx3/v$c;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lx3/y;

    check-cast p2, Lh3/f$b;

    instance-of p0, p2, Lv3/m1;

    if-eqz p0, :cond_0

    check-cast p2, Lv3/m1;

    iget-object p0, p1, Lx3/y;->a:Lh3/f;

    invoke-interface {p2, p0}, Lv3/m1;->d(Lh3/f;)Ljava/lang/String;

    move-result-object p0

    iget v0, p1, Lx3/y;->d:I

    iget-object v1, p1, Lx3/y;->b:[Ljava/lang/Object;

    aput-object p0, v1, v0

    add-int/lit8 p0, v0, 0x1

    iput p0, p1, Lx3/y;->d:I

    iget-object p0, p1, Lx3/y;->c:[Lv3/m1;

    aput-object p2, p0, v0

    :cond_0
    return-object p1
.end method
