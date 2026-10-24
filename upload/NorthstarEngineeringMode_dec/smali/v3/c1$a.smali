.class public final Lv3/c1$a;
.super Lv3/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv3/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lv3/g<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e1:Lv3/c1;


# direct methods
.method public constructor <init>(Lh3/d;Lv3/c1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh3/d<",
            "-TT;>;",
            "Lv3/c1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lv3/g;-><init>(Lh3/d;)V

    iput-object p2, p0, Lv3/c1$a;->e1:Lv3/c1;

    return-void
.end method


# virtual methods
.method public final l(Lv3/c1;)Ljava/lang/Throwable;
    .locals 1

    iget-object p0, p0, Lv3/c1$a;->e1:Lv3/c1;

    invoke-virtual {p0}, Lv3/c1;->I()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lv3/c1$c;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lv3/c1$c;

    invoke-virtual {v0}, Lv3/c1$c;->d()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    instance-of v0, p0, Lv3/n;

    if-eqz v0, :cond_1

    check-cast p0, Lv3/n;

    iget-object p0, p0, Lv3/n;->a:Ljava/lang/Throwable;

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lv3/c1;->v()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    return-object p0
.end method

.method public final r()Ljava/lang/String;
    .locals 0

    const-string p0, "AwaitContinuation"

    return-object p0
.end method
