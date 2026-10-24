.class public abstract Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final Z:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b1:Landroid/widget/Button;
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

.field public final e1:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final f1:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final g1:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final h1:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final i1:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public j1:Lcom/mega/engineeringmode/function/connector/ConnectorStatus;
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
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 4

    move-object v0, p0

    const/4 v1, 0x1

    move-object v2, p1

    move-object v3, p2

    invoke-direct {p0, p1, p2, v1}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p3

    iput-object v1, v0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->c:Landroid/widget/TextView;

    move-object v1, p4

    iput-object v1, v0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->r:Landroid/widget/TextView;

    move-object v1, p5

    iput-object v1, v0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->x:Landroid/widget/TextView;

    move-object v1, p6

    iput-object v1, v0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->y:Landroid/widget/TextView;

    move-object v1, p7

    iput-object v1, v0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->Z:Landroid/widget/TextView;

    move-object v1, p8

    iput-object v1, v0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->b1:Landroid/widget/Button;

    move-object v1, p9

    iput-object v1, v0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->c1:Landroid/widget/TextView;

    move-object v1, p10

    iput-object v1, v0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->d1:Landroid/widget/TextView;

    move-object v1, p11

    iput-object v1, v0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->e1:Landroid/widget/TextView;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->f1:Landroid/widget/TextView;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->g1:Landroid/widget/TextView;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->h1:Landroid/widget/TextView;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->i1:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public abstract b(Lcom/mega/engineeringmode/function/connector/ConnectorStatus;)V
    .param p1    # Lcom/mega/engineeringmode/function/connector/ConnectorStatus;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
