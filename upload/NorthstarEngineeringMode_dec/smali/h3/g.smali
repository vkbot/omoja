.class public final Lh3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh3/f;
.implements Ljava/io/Serializable;


# static fields
.field public static final c:Lh3/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh3/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lh3/g;->c:Lh3/g;

    return-void
.end method


# virtual methods
.method public final hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final j(Lh3/f$c;)Lh3/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh3/f$c<",
            "*>;)",
            "Lh3/f;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final q(Lh3/f;)Lh3/f;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Ln3/p;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Ln3/p<",
            "-TR;-",
            "Lh3/f$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    return-object p1
.end method

.method public final s(Lh3/f$c;)Lh3/f$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lh3/f$b;",
            ">(",
            "Lh3/f$c<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string p0, "key"

    invoke-static {p1, p0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "EmptyCoroutineContext"

    return-object p0
.end method
