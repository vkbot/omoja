.class public final Landroidx/viewpager2/widget/n;
.super Landroidx/recyclerview/widget/f0;
.source "SourceFile"


# instance fields
.field public final synthetic e:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    iput-object p1, p0, Landroidx/viewpager2/widget/n;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {p0}, Landroidx/recyclerview/widget/f0;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Landroidx/recyclerview/widget/s0;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/viewpager2/widget/n;->e:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v0, v0, Landroidx/viewpager2/widget/ViewPager2;->o:Landroidx/appcompat/app/d;

    iget-object v0, v0, Landroidx/appcompat/app/d;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/viewpager2/widget/d;

    iget-boolean v0, v0, Landroidx/viewpager2/widget/d;->m:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/f0;->e(Landroidx/recyclerview/widget/s0;)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method
