.class public final Lcom/mega/carsettings/ui/SwipeLayout$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    iput-object p1, p0, Lcom/mega/carsettings/ui/SwipeLayout$b;->a:Lcom/mega/carsettings/ui/SwipeLayout;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    sget p1, Lcom/mega/carsettings/ui/SwipeLayout;->k:I

    iget-object p0, p0, Lcom/mega/carsettings/ui/SwipeLayout$b;->a:Lcom/mega/carsettings/ui/SwipeLayout;

    invoke-virtual {p0}, Lcom/mega/carsettings/ui/SwipeLayout;->getOpenStatus()Lcom/mega/carsettings/ui/SwipeLayout$f;

    move-result-object p1

    sget-object v0, Lcom/mega/carsettings/ui/SwipeLayout$f;->x:Lcom/mega/carsettings/ui/SwipeLayout$f;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
