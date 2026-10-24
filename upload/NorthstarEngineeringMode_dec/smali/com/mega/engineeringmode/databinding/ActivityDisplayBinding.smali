.class public abstract Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final Z:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b1:Lcom/mega/engineeringmode/ui/MegaSwitch;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c1:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public d1:Lcom/mega/engineeringmode/function/display/DisplayActivity;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final r:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final x:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final y:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroid/widget/Button;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/mega/engineeringmode/ui/MegaSwitch;Landroid/widget/Button;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p3, p0, Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;->c:Landroid/widget/Button;

    iput-object p4, p0, Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;->r:Landroid/widget/FrameLayout;

    iput-object p5, p0, Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;->x:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;->y:Landroid/widget/LinearLayout;

    iput-object p7, p0, Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;->Z:Landroid/widget/LinearLayout;

    iput-object p8, p0, Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;->b1:Lcom/mega/engineeringmode/ui/MegaSwitch;

    iput-object p9, p0, Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;->c1:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public abstract b(Lcom/mega/engineeringmode/function/display/DisplayActivity;)V
    .param p1    # Lcom/mega/engineeringmode/function/display/DisplayActivity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
