.class public abstract Lcom/mega/engineeringmode/databinding/ActivityCarplayBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final c:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final r:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final x:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public y:Lcom/mega/engineeringmode/function/carplay/CarplayActivity;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p3, p0, Lcom/mega/engineeringmode/databinding/ActivityCarplayBinding;->c:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/mega/engineeringmode/databinding/ActivityCarplayBinding;->r:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/mega/engineeringmode/databinding/ActivityCarplayBinding;->x:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public abstract b(Lcom/mega/engineeringmode/function/carplay/CarplayActivity;)V
    .param p1    # Lcom/mega/engineeringmode/function/carplay/CarplayActivity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
