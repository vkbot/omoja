.class public final Lp4/h;
.super Lp4/f;
.source "SourceFile"


# direct methods
.method public varargs constructor <init>(Lq4/c;Ljava/lang/Integer;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lp4/f;-><init>()V

    iget-object p0, p0, Lp4/f;->c:Lq4/a;

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lq4/a;->a(Lq4/c;[Ljava/lang/Object;)V

    return-void
.end method
