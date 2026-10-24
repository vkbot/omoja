.class public final Lx3/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lz1/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz1/d;

    const-string v1, "NO_THREAD_ELEMENTS"

    invoke-direct {v0, v1}, Lz1/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lx3/v;->a:Lz1/d;

    return-void
.end method

.method public static final a(Lh3/f;Ljava/lang/Object;)V
    .locals 4

    sget-object v0, Lx3/v;->a:Lz1/d;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lx3/y;

    if-eqz v0, :cond_2

    check-cast p1, Lx3/y;

    iget-object p0, p1, Lx3/y;->c:[Lv3/m1;

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    :goto_0
    add-int/lit8 v1, v0, -0x1

    aget-object v2, p0, v0

    invoke-static {v2}, Lo3/h;->c(Ljava/lang/Object;)V

    iget-object v3, p1, Lx3/y;->b:[Ljava/lang/Object;

    aget-object v0, v3, v0

    invoke-interface {v2, v0}, Lv3/m1;->p(Ljava/lang/Object;)V

    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v0, Lx3/v$b;->r:Lx3/v$b;

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lh3/f;->r(Ljava/lang/Object;Ln3/p;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {p0, v0}, Lo3/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lv3/m1;

    invoke-interface {p0, p1}, Lv3/m1;->p(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static final b(Lh3/f;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lx3/v$a;->r:Lx3/v$a;

    invoke-interface {p0, v0, v1}, Lh3/f;->r(Ljava/lang/Object;Ln3/p;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lo3/h;->c(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final c(Lh3/f;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    invoke-static {p0}, Lx3/v;->b(Lh3/f;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    sget-object p0, Lx3/v;->a:Lz1/d;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    new-instance v0, Lx3/y;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lx3/y;-><init>(Lh3/f;I)V

    sget-object p1, Lx3/v$c;->r:Lx3/v$c;

    invoke-interface {p0, v0, p1}, Lh3/f;->r(Ljava/lang/Object;Ln3/p;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_2
    check-cast p1, Lv3/m1;

    invoke-interface {p1, p0}, Lv3/m1;->d(Lh3/f;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
