.class public final synthetic Lv1/i;
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

    iput p2, p0, Lv1/i;->a:I

    iput-object p1, p0, Lv1/i;->b:Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Lv1/i;->a:I

    iget-object p0, p0, Lv1/i;->b:Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;

    packed-switch p1, :pswitch_data_0

    sget p1, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->D:I

    const-string p1, "621c"

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->n(Ljava/lang/String;)V

    return-void

    :pswitch_0
    sget p1, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->D:I

    const-string p1, "704a"

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->n(Ljava/lang/String;)V

    return-void

    :pswitch_1
    sget p1, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->D:I

    const-string p1, "701b"

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->n(Ljava/lang/String;)V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->w:Ln2/i;

    if-nez p1, :cond_0

    new-instance p1, Ln2/i;

    invoke-direct {p1}, Ln2/i;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->w:Ln2/i;

    :cond_0
    iget-object p0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->w:Ln2/i;

    invoke-virtual {p0}, Ln2/i;->f()Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
