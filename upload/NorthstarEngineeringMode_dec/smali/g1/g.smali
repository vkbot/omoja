.class public final synthetic Lg1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg1/g;->a:I

    iput-object p2, p0, Lg1/g;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget p1, p0, Lg1/g;->a:I

    iget-object p0, p0, Lg1/g;->b:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    check-cast p0, Lcom/mega/engineeringmode/function/wifi/AbsEnabler;

    invoke-virtual {p0, p2}, Lcom/mega/engineeringmode/function/wifi/AbsEnabler;->a(Z)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/mega/engineeringmode/function/LogLevelActivity;

    const-string p1, "logleveltest_log_dmc_switch"

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->l:Landroid/widget/RadioGroup;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Ln2/j;->a(Landroid/content/Context;)Ln2/j;

    move-result-object p0

    invoke-static {}, Ls2/a;->a()I

    move-result p2

    invoke-virtual {p0, v0, p2, p1}, Ln2/j;->b(IILjava/lang/String;)V

    goto :goto_1

    :cond_0
    sget-object p2, Lcom/mega/engineeringmode/function/LogLevelActivity;->A:Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    sput-object p2, Lcom/mega/engineeringmode/function/LogLevelActivity;->E:Ljava/lang/Byte;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->z:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->i:Ln2/i;

    if-nez p2, :cond_1

    const-string p2, "LogLevelActivity"

    const-string v0, "message center is null"

    invoke-static {p2, v0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "car_engineering_mode/general_ctrl/req"

    invoke-virtual {p2, v1, v0}, Ln2/i;->d(Ljava/lang/String;Ljava/util/ArrayList;)Z

    :goto_0
    iget-object p2, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->l:Landroid/widget/RadioGroup;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Ln2/j;->a(Landroid/content/Context;)Ln2/j;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {}, Ls2/a;->a()I

    move-result v0

    invoke-virtual {p0, p2, v0, p1}, Ln2/j;->b(IILjava/lang/String;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
