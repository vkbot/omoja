.class public Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity$SpacesItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpacesItemDecoration"
.end annotation


# instance fields
.field public a:I


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    iget p0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity$SpacesItemDecoration;->a:I

    iput p0, p1, Landroid/graphics/Rect;->left:I

    iput p0, p1, Landroid/graphics/Rect;->right:I

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
