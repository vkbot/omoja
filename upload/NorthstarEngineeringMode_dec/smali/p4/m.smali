.class public Lp4/m;
.super Lp4/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;Z)V
    .locals 0

    if-eqz p3, :cond_0

    sget-object p3, Lq4/c;->B1:Lq4/c;

    goto :goto_0

    :cond_0
    sget-object p3, Lq4/c;->C1:Lq4/c;

    .line 1
    :goto_0
    invoke-direct {p0, p3, p1, p2}, Lp4/m;-><init>(Lq4/c;Ljava/lang/Number;Ljava/lang/Number;)V

    return-void
.end method

.method public constructor <init>(Lq4/c;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 0

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lp4/e;-><init>(Lq4/c;Ljava/lang/Number;[Ljava/lang/Object;)V

    return-void
.end method
