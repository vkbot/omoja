.class public final synthetic Ll1/a;
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

    iput p1, p0, Ll1/a;->c:I

    iput-object p2, p0, Ll1/a;->r:Ljava/lang/Object;

    iput-boolean p3, p0, Ll1/a;->x:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Ll1/a;->c:I

    const/4 v1, 0x0

    iget-boolean v2, p0, Ll1/a;->x:Z

    iget-object p0, p0, Ll1/a;->r:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/mega/carsettings/wifi/WifiSwitchController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/mega/carsettings/wifi/WifiSwitchController;->g(Z)V

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    check-cast p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->n:Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;

    iget-object v0, v0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->d1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->o:Lcom/mega/engineeringmode/function/connector/ConnectorStatus;

    invoke-virtual {p0, v2}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->u(Z)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/mega/engineeringmode/function/connector/ConnectorStatus;->c1:Ljava/lang/String;

    const/16 p0, 0xe

    invoke-virtual {v0, p0}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->n:Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;

    iget-object v0, v0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->c1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->o:Lcom/mega/engineeringmode/function/connector/ConnectorStatus;

    invoke-virtual {p0, v2}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->u(Z)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/mega/engineeringmode/function/connector/ConnectorStatus;->h1:Ljava/lang/String;

    const/16 p0, 0xb

    invoke-virtual {v0, p0}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
