.class public abstract Lcom/mega/engineeringmode/databinding/ActivityTemperatureInfoBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public Z:Lcom/mega/engineeringmode/model/TemperatureViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final c:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
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

.field public final y:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p3, p0, Lcom/mega/engineeringmode/databinding/ActivityTemperatureInfoBinding;->c:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/mega/engineeringmode/databinding/ActivityTemperatureInfoBinding;->r:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/mega/engineeringmode/databinding/ActivityTemperatureInfoBinding;->x:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/mega/engineeringmode/databinding/ActivityTemperatureInfoBinding;->y:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public abstract b(Lcom/mega/engineeringmode/model/TemperatureViewModel;)V
    .param p1    # Lcom/mega/engineeringmode/model/TemperatureViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
