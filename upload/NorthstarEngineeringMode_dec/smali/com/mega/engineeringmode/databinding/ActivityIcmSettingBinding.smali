.class public abstract Lcom/mega/engineeringmode/databinding/ActivityIcmSettingBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# static fields
.field public static final synthetic x:I


# instance fields
.field public final c:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final r:Lcom/mega/engineeringmode/ui/custom/EasyButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/mega/engineeringmode/ui/custom/EasyButton;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p3, p0, Lcom/mega/engineeringmode/databinding/ActivityIcmSettingBinding;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p4, p0, Lcom/mega/engineeringmode/databinding/ActivityIcmSettingBinding;->r:Lcom/mega/engineeringmode/ui/custom/EasyButton;

    return-void
.end method
