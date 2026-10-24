.class public final Landroidx/viewpager2/widget/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li0/o;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/viewpager2/widget/l;


# direct methods
.method public synthetic constructor <init>(Landroidx/viewpager2/widget/l;I)V
    .locals 0

    iput p2, p0, Landroidx/viewpager2/widget/k;->a:I

    iput-object p1, p0, Landroidx/viewpager2/widget/k;->b:Landroidx/viewpager2/widget/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Landroid/view/View;)Z
    .locals 2

    iget v0, p0, Landroidx/viewpager2/widget/k;->a:I

    iget-object p0, p0, Landroidx/viewpager2/widget/k;->b:Landroidx/viewpager2/widget/l;

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    add-int/2addr p1, v1

    iget-object p0, p0, Landroidx/viewpager2/widget/l;->e:Landroidx/viewpager2/widget/ViewPager2;

    iget-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->c(I)V

    :cond_0
    return v1

    :goto_0
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    sub-int/2addr p1, v1

    iget-object p0, p0, Landroidx/viewpager2/widget/l;->e:Landroidx/viewpager2/widget/ViewPager2;

    iget-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->c(I)V

    :cond_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
