.class public final Lu/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lu/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/View;)I
    .locals 3

    iget p0, p0, Lu/f;->a:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object p0, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lh0/f0;->m(Landroid/view/View;)F

    move-result p0

    invoke-static {p2}, Lh0/f0;->m(Landroid/view/View;)F

    move-result p1

    cmpl-float p2, p0, p1

    if-lez p2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lz0/f;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lz0/f;

    iget-boolean p0, p0, Lz0/f;->a:Z

    iget-boolean p1, p1, Lz0/f;->a:Z

    if-eq p0, p1, :cond_3

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    move v1, v0

    :cond_3
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    iget v0, p0, Lu/f;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast p1, Lz0/e;

    check-cast p2, Lz0/e;

    iget p0, p1, Lz0/e;->a:I

    iget p1, p2, Lz0/e;->a:I

    sub-int/2addr p0, p1

    return p0

    :pswitch_1
    check-cast p1, [B

    check-cast p2, [B

    array-length p0, p1

    array-length v0, p2

    if-eq p0, v0, :cond_0

    array-length p0, p1

    array-length p1, p2

    sub-int/2addr p0, p1

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    move v0, p0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    if-eq v1, v2, :cond_1

    sub-int p0, v1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p0

    :pswitch_2
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lu/f;->a(Landroid/view/View;Landroid/view/View;)I

    move-result p0

    return p0

    :goto_2
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lu/f;->a(Landroid/view/View;Landroid/view/View;)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
