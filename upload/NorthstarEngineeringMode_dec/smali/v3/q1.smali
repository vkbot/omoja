.class public final Lv3/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh3/f$b;
.implements Lh3/f$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lh3/f$b;",
        "Lh3/f$c<",
        "Lv3/q1;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lv3/q1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv3/q1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lv3/q1;->c:Lv3/q1;

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

    return-object p0
.end method

.method public final j(Lh3/f$c;)Lh3/f;
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
    .locals 0

    invoke-static {p0, p1}, Lh3/f$b$a;->c(Lh3/f$b;Lh3/f;)Lh3/f;

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

    invoke-static {p0, p1}, Lh3/f$b$a;->a(Lh3/f$b;Lh3/f$c;)Lh3/f$b;

    move-result-object p0

    return-object p0
.end method
