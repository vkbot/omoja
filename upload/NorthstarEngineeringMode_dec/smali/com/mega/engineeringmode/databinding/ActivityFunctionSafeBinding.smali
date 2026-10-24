.class public abstract Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final Z:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Landroid/widget/RadioGroup;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final r:Lcom/mega/engineeringmode/ui/MegaSwitch;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final x:Lcom/mega/engineeringmode/ui/MegaSwitch;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final y:Lcom/mega/engineeringmode/ui/MegaSwitch;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroid/widget/RadioGroup;Lcom/mega/engineeringmode/ui/MegaSwitch;Lcom/mega/engineeringmode/ui/MegaSwitch;Lcom/mega/engineeringmode/ui/MegaSwitch;Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p3, p0, Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;->c:Landroid/widget/RadioGroup;

    iput-object p4, p0, Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;->r:Lcom/mega/engineeringmode/ui/MegaSwitch;

    iput-object p5, p0, Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;->x:Lcom/mega/engineeringmode/ui/MegaSwitch;

    iput-object p6, p0, Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;->y:Lcom/mega/engineeringmode/ui/MegaSwitch;

    iput-object p7, p0, Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;->Z:Landroid/widget/TextView;

    return-void
.end method
