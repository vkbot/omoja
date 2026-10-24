.class public final Lp4/i;
.super Lp4/d;
.source "SourceFile"


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    sget-object p1, Lq4/c;->x1:Lq4/c;

    .line 1
    invoke-direct {p0, p1}, Lp4/i;-><init>(Lq4/c;)V

    return-void

    :cond_0
    sget-object p1, Lq4/c;->y1:Lq4/c;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-direct {p0, p1, v0}, Lp4/d;-><init>(Lq4/c;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 4

    sget-object v0, Lq4/c;->e1:Lq4/c;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Integer;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    new-array p1, v1, [Ljava/lang/Integer;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-direct {p0, v0, p1}, Lp4/d;-><init>(Lq4/c;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lq4/c;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    invoke-direct {p0, p1, v0}, Lp4/d;-><init>(Lq4/c;[Ljava/lang/Object;)V

    return-void
.end method
