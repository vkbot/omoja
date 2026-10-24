.class public final Lc1/a;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mega/chery/widget/CropFrameLayout;


# direct methods
.method public constructor <init>(Lcom/mega/chery/widget/CropFrameLayout;)V
    .locals 0

    iput-object p1, p0, Lc1/a;->a:Lcom/mega/chery/widget/CropFrameLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    xor-int/2addr p1, p2

    iget-object p0, p0, Lc1/a;->a:Lcom/mega/chery/widget/CropFrameLayout;

    iput-boolean p1, p0, Lcom/mega/chery/widget/CropFrameLayout;->d:Z

    return-void
.end method
