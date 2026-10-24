.class public final Lcom/mega/carsettings/ui/SwipeLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/carsettings/ui/SwipeLayout;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/carsettings/ui/SwipeLayout;


# direct methods
.method public constructor <init>(Lcom/mega/carsettings/ui/SwipeLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/carsettings/ui/SwipeLayout$a;->a:Lcom/mega/carsettings/ui/SwipeLayout;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    sget p1, Lcom/mega/carsettings/ui/SwipeLayout;->k:I

    iget-object p0, p0, Lcom/mega/carsettings/ui/SwipeLayout$a;->a:Lcom/mega/carsettings/ui/SwipeLayout;

    invoke-virtual {p0}, Lcom/mega/carsettings/ui/SwipeLayout;->getOpenStatus()Lcom/mega/carsettings/ui/SwipeLayout$f;

    move-result-object p1

    sget-object v0, Lcom/mega/carsettings/ui/SwipeLayout$f;->x:Lcom/mega/carsettings/ui/SwipeLayout$f;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v0, p1, Landroid/widget/AdapterView;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/widget/AdapterView;

    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {p1, v0, p0, v1, v2}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_1
    :goto_0
    return-void
.end method
