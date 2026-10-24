.class public abstract Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final Z:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b1:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c1:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d1:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public e1:Lcom/mega/engineeringmode/function/display/AudioFragment;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final r:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final x:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final y:Landroidx/constraintlayout/widget/Group;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Group;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p3, p0, Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;->c:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p4, p0, Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;->r:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;->x:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;->y:Landroidx/constraintlayout/widget/Group;

    iput-object p7, p0, Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;->Z:Landroid/widget/Button;

    iput-object p8, p0, Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;->b1:Landroid/widget/TextView;

    iput-object p9, p0, Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;->c1:Landroid/widget/Button;

    iput-object p10, p0, Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;->d1:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public abstract b(Lcom/mega/engineeringmode/function/display/AudioFragment;)V
    .param p1    # Lcom/mega/engineeringmode/function/display/AudioFragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
