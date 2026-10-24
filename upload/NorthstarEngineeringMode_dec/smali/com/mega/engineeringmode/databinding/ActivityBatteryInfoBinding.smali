.class public abstract Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final Z:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b1:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c1:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d1:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public e1:Lcom/mega/engineeringmode/model/BatteryViewModel;
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

.field public final y:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, p1, p2, v0}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p3, p0, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBinding;->c:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBinding;->r:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBinding;->x:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBinding;->y:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBinding;->Z:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBinding;->b1:Landroid/widget/TextView;

    iput-object p9, p0, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBinding;->c1:Landroid/widget/TextView;

    iput-object p10, p0, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBinding;->d1:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public abstract b(Lcom/mega/engineeringmode/model/BatteryViewModel;)V
    .param p1    # Lcom/mega/engineeringmode/model/BatteryViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
