.class public final Lp4/l;
.super Lp4/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Number;)V
    .locals 1

    sget-object v0, Lq4/c;->A1:Lq4/c;

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lp4/l;-><init>(Lq4/c;Ljava/lang/Number;Ljava/lang/Number;)V

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
