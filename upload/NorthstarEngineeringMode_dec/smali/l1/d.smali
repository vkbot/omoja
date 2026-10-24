.class public final synthetic Ll1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;

.field public final synthetic r:I

.field public final synthetic x:Z


# direct methods
.method public synthetic constructor <init>(ILcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ll1/d;->c:Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;

    iput p1, p0, Ll1/d;->r:I

    iput-boolean p3, p0, Ll1/d;->x:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Ll1/d;->c:Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;

    iget v1, p0, Ll1/d;->r:I

    iget-boolean p0, p0, Ll1/d;->x:Z

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->n:Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;

    iget-object v1, v1, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->o:Lcom/mega/engineeringmode/function/connector/ConnectorStatus;

    invoke-virtual {v0, p0}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->u(Z)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/mega/engineeringmode/function/connector/ConnectorStatus;->r:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    const/4 v5, 0x4

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->n:Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;

    iget-object v1, v1, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->x:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->o:Lcom/mega/engineeringmode/function/connector/ConnectorStatus;

    invoke-virtual {v0, p0}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->u(Z)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/mega/engineeringmode/function/connector/ConnectorStatus;->x:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    goto :goto_0

    :cond_1
    if-ne v1, v3, :cond_2

    iget-object v1, v0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->n:Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;

    iget-object v1, v1, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->y:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->o:Lcom/mega/engineeringmode/function/connector/ConnectorStatus;

    invoke-virtual {v0, p0}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->u(Z)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/mega/engineeringmode/function/connector/ConnectorStatus;->y:Ljava/lang/String;

    const/4 p0, 0x5

    invoke-virtual {v1, p0}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    goto :goto_0

    :cond_2
    if-ne v1, v5, :cond_3

    iget-object v1, v0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->n:Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;

    iget-object v1, v1, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->Z:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->o:Lcom/mega/engineeringmode/function/connector/ConnectorStatus;

    invoke-virtual {v0, p0}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->u(Z)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/mega/engineeringmode/function/connector/ConnectorStatus;->Z:Ljava/lang/String;

    const/4 p0, 0x6

    invoke-virtual {v1, p0}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    goto :goto_0

    :cond_3
    sget p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->r:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void
.end method
