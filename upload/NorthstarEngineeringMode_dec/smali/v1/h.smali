.class public final synthetic Lv1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lv1/h;->a:I

    iput-object p1, p0, Lv1/h;->b:Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Lv1/h;->a:I

    iget-object p0, p0, Lv1/h;->b:Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;

    packed-switch p1, :pswitch_data_0

    sget p1, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->D:I

    const-string p1, "6215"

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->n(Ljava/lang/String;)V

    return-void

    :pswitch_0
    sget p1, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->D:I

    const-string p1, "7041"

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->n(Ljava/lang/String;)V

    return-void

    :pswitch_1
    sget p1, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->D:I

    const-string p1, "701a"

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->n(Ljava/lang/String;)V

    return-void

    :pswitch_2
    sget p1, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->D:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->q()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
