.class public final Lz0/c;
.super Landroid/database/DataSetObserver;
.source "SourceFile"

# interfaces
.implements Lz0/i;
.implements Lz0/h;


# instance fields
.field public final synthetic a:Landroidx/viewpager/widget/PagerTitleStrip;


# direct methods
.method public constructor <init>(Landroidx/viewpager/widget/PagerTitleStrip;)V
    .locals 0

    iput-object p1, p0, Lz0/c;->a:Landroidx/viewpager/widget/PagerTitleStrip;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IF)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    iget-object p0, p0, Lz0/c;->a:Landroidx/viewpager/widget/PagerTitleStrip;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/viewpager/widget/PagerTitleStrip;->c(IFZ)V

    return-void
.end method

.method public final b(I)V
    .locals 0

    return-void
.end method

.method public final c(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    iget-object p0, p0, Lz0/c;->a:Landroidx/viewpager/widget/PagerTitleStrip;

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->a()V

    return-void
.end method

.method public final onChanged()V
    .locals 3

    iget-object p0, p0, Lz0/c;->a:Landroidx/viewpager/widget/PagerTitleStrip;

    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lz0/a;

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/PagerTitleStrip;->b(I)V

    iget v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->f:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroidx/viewpager/widget/PagerTitleStrip;->c(IFZ)V

    return-void
.end method
