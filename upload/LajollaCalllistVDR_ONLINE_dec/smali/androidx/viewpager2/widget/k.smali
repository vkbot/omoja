.class public final Landroidx/viewpager2/widget/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh0/o;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/viewpager2/widget/l;


# direct methods
.method public synthetic constructor <init>(Landroidx/viewpager2/widget/l;I)V
    .locals 0

    iput p2, p0, Landroidx/viewpager2/widget/k;->b:I

    iput-object p1, p0, Landroidx/viewpager2/widget/k;->c:Landroidx/viewpager2/widget/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final f(Landroid/view/View;)Z
    .locals 3

    iget v0, p0, Landroidx/viewpager2/widget/k;->b:I

    iget-object v1, p0, Landroidx/viewpager2/widget/k;->c:Landroidx/viewpager2/widget/l;

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    add-int/2addr p1, v2

    iget-object v0, v1, Landroidx/viewpager2/widget/l;->e:Landroidx/viewpager2/widget/ViewPager2;

    iget-boolean v1, v0, Landroidx/viewpager2/widget/ViewPager2;->s:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->c(I)V

    :cond_0
    return v2

    :goto_0
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    sub-int/2addr p1, v2

    iget-object v0, v1, Landroidx/viewpager2/widget/l;->e:Landroidx/viewpager2/widget/ViewPager2;

    iget-boolean v1, v0, Landroidx/viewpager2/widget/ViewPager2;->s:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->c(I)V

    :cond_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
