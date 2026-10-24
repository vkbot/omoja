.class public final Lr4/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    invoke-virtual {v0, v2}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    return-void
.end method

.method public static a(Lr4/k;I)V
    .locals 3

    if-ltz p1, :cond_0

    invoke-interface {p0}, Lr4/k;->a()I

    move-result v0

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lp4/n;

    sget-object v1, Lq4/c;->b1:Lq4/c;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lr4/k;->a()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p1, v2, p0}, Lp4/n;-><init>(Lq4/c;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public static b(Lr4/k;I)V
    .locals 3

    if-ltz p1, :cond_0

    invoke-interface {p0}, Lr4/k;->c()I

    move-result v0

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lp4/n;

    sget-object v1, Lq4/c;->E1:Lq4/c;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lr4/k;->c()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p1, v2, p0}, Lp4/n;-><init>(Lq4/c;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public static c(Lr4/k;III)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lr4/h;->b(Lr4/k;I)V

    invoke-static {p0, p1}, Lr4/h;->b(Lr4/k;I)V

    if-ltz p1, :cond_1

    invoke-static {p0, p2}, Lr4/h;->a(Lr4/k;I)V

    invoke-static {p0, p3}, Lr4/h;->a(Lr4/k;I)V

    if-lt p3, p2, :cond_0

    return-void

    :cond_0
    new-instance p0, Lp4/m;

    sget-object p1, Lq4/c;->k1:Lq4/c;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lp4/m;-><init>(Lq4/c;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p0

    :cond_1
    new-instance p0, Lp4/m;

    sget-object p2, Lq4/c;->l1:Lq4/c;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p0, p2, p1, p3}, Lp4/m;-><init>(Lq4/c;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p0
.end method
