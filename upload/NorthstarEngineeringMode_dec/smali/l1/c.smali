.class public final synthetic Ll1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic r:Ljava/lang/Object;

.field public final synthetic x:Z


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ll1/c;->c:I

    iput-object p2, p0, Ll1/c;->r:Ljava/lang/Object;

    iput-boolean p3, p0, Ll1/c;->x:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Ll1/c;->c:I

    const/4 v1, 0x0

    iget-boolean v2, p0, Ll1/c;->x:Z

    iget-object p0, p0, Ll1/c;->r:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/mega/engineeringmode/function/wifi/WifTestEnabler;

    invoke-virtual {p0, v2}, Lcom/mega/engineeringmode/function/wifi/WifTestEnabler;->e(Z)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->n:Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;

    iget-object v0, v0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->f1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->o:Lcom/mega/engineeringmode/function/connector/ConnectorStatus;

    invoke-virtual {p0, v2}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->u(Z)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/mega/engineeringmode/function/connector/ConnectorStatus;->f1:Ljava/lang/String;

    const/16 p0, 0x15

    invoke-virtual {v0, p0}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->n:Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;

    iget-object v0, v0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->g1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->o:Lcom/mega/engineeringmode/function/connector/ConnectorStatus;

    invoke-virtual {p0, v2}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->u(Z)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/mega/engineeringmode/function/connector/ConnectorStatus;->c:Ljava/lang/String;

    const/16 p0, 0x16

    invoke-virtual {v0, p0}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
