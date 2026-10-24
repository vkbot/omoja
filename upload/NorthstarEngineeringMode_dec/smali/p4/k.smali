.class public final Lp4/k;
.super Lp4/m;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 2

    sget-object v0, Lp4/e;->r:Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lp4/m;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    return-void
.end method

.method public constructor <init>(Lq4/c;Ljava/lang/Number;)V
    .locals 1

    sget-object v0, Lp4/e;->r:Ljava/lang/Integer;

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lp4/m;-><init>(Lq4/c;Ljava/lang/Number;Ljava/lang/Number;)V

    return-void
.end method
