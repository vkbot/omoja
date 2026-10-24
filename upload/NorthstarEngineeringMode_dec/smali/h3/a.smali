.class public abstract Lh3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh3/f$b;


# instance fields
.field public final c:Lh3/f$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh3/f$c<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lh3/f$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh3/f$c<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh3/a;->c:Lh3/f$c;

    return-void
.end method


# virtual methods
.method public final getKey()Lh3/f$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh3/f$c<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lh3/a;->c:Lh3/f$c;

    return-object p0
.end method

.method public j(Lh3/f$c;)Lh3/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh3/f$c<",
            "*>;)",
            "Lh3/f;"
        }
    .end annotation

    invoke-static {p0, p1}, Lh3/f$b$a;->b(Lh3/f$b;Lh3/f$c;)Lh3/f;

    move-result-object p0

    return-object p0
.end method

.method public final q(Lh3/f;)Lh3/f;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lh3/f$a;->a(Lh3/f;Lh3/f;)Lh3/f;

    move-result-object p0

    return-object p0
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

    invoke-interface {p2, p1, p0}, Ln3/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public s(Lh3/f$c;)Lh3/f$b;
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

    invoke-static {p0, p1}, Lh3/f$b$a;->a(Lh3/f$b;Lh3/f$c;)Lh3/f$b;

    move-result-object p0

    return-object p0
.end method
