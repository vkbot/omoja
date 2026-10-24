.class public abstract Lcom/mega/engineeringmode/databinding/VedioFragmentBinding;
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

.field public final x:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p3, p0, Lcom/mega/engineeringmode/databinding/VedioFragmentBinding;->c:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/mega/engineeringmode/databinding/VedioFragmentBinding;->r:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/mega/engineeringmode/databinding/VedioFragmentBinding;->x:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method
