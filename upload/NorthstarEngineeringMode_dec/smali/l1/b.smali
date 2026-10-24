.class public final synthetic Ll1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic r:Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;

.field public final synthetic x:Z


# direct methods
.method public synthetic constructor <init>(ILcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ll1/b;->c:I

    iput-object p2, p0, Ll1/b;->r:Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;

    iput-boolean p3, p0, Ll1/b;->x:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Ll1/b;->c:I

    iget-boolean v1, p0, Ll1/b;->x:Z

    const/4 v2, 0x0

    iget-object p0, p0, Ll1/b;->r:Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->n:Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;

    iget-object v0, v0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->o:Lcom/mega/engineeringmode/function/connector/ConnectorStatus;

    invoke-virtual {p0, v1}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->u(Z)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/mega/engineeringmode/function/connector/ConnectorStatus;->b1:Ljava/lang/String;

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->n:Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;

    iget-object v0, v0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->e1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->o:Lcom/mega/engineeringmode/function/connector/ConnectorStatus;

    invoke-virtual {p0, v1}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->u(Z)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/mega/engineeringmode/function/connector/ConnectorStatus;->d1:Ljava/lang/String;

    const/16 p0, 0x10

    invoke-virtual {v0, p0}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
