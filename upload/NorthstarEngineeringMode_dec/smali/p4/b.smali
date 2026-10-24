.class public Lp4/b;
.super Lp4/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(II)V
    .locals 1

    sget-object v0, Lq4/c;->f1:Lq4/c;

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lp4/b;-><init>(Lq4/c;II)V

    return-void
.end method

.method public constructor <init>(Lq4/c;II)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lp4/e;-><init>(Lq4/c;Ljava/lang/Number;[Ljava/lang/Object;)V

    return-void
.end method
