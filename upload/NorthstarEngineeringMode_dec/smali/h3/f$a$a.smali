.class public final Lh3/f$a$a;
.super Lo3/i;
.source "SourceFile"

# interfaces
.implements Ln3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh3/f$a;->a(Lh3/f;Lh3/f;)Lh3/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
.field public static final r:Lh3/f$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lh3/f$a$a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lo3/i;-><init>(I)V

    sput-object v0, Lh3/f$a$a;->r:Lh3/f$a$a;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lh3/f;

    check-cast p2, Lh3/f$b;

    const-string p0, "acc"

    invoke-static {p1, p0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "element"

    invoke-static {p2, p0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lh3/f$b;->getKey()Lh3/f$c;

    move-result-object p0

    invoke-interface {p1, p0}, Lh3/f;->j(Lh3/f$c;)Lh3/f;

    move-result-object p0

    sget-object p1, Lh3/g;->c:Lh3/g;

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lh3/e$a;->c:Lh3/e$a;

    invoke-interface {p0, v0}, Lh3/f;->s(Lh3/f$c;)Lh3/f$b;

    move-result-object v1

    check-cast v1, Lh3/e;

    if-nez v1, :cond_1

    new-instance p1, Lh3/c;

    invoke-direct {p1, p2, p0}, Lh3/c;-><init>(Lh3/f$b;Lh3/f;)V

    :goto_0
    move-object p2, p1

    goto :goto_1

    :cond_1
    invoke-interface {p0, v0}, Lh3/f;->j(Lh3/f$c;)Lh3/f;

    move-result-object p0

    if-ne p0, p1, :cond_2

    new-instance p0, Lh3/c;

    invoke-direct {p0, v1, p2}, Lh3/c;-><init>(Lh3/f$b;Lh3/f;)V

    move-object p2, p0

    goto :goto_1

    :cond_2
    new-instance p1, Lh3/c;

    new-instance v0, Lh3/c;

    invoke-direct {v0, p2, p0}, Lh3/c;-><init>(Lh3/f$b;Lh3/f;)V

    invoke-direct {p1, v1, v0}, Lh3/c;-><init>(Lh3/f$b;Lh3/f;)V

    goto :goto_0

    :goto_1
    return-object p2
.end method
