.class public final synthetic Lg1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mega/engineeringmode/function/BaseFunctionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mega/engineeringmode/function/BaseFunctionActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lg1/h;->a:I

    iput-object p1, p0, Lg1/h;->b:Lcom/mega/engineeringmode/function/BaseFunctionActivity;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4

    iget v0, p0, Lg1/h;->a:I

    const/4 v1, 0x0

    iget-object p0, p0, Lg1/h;->b:Lcom/mega/engineeringmode/function/BaseFunctionActivity;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;

    sget v0, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;->m:I

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "group = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", checkedId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FunctionSafeActivity"

    invoke-static {v2, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p1, p2}, Lo3/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    invoke-static {v1, p1}, Ln2/n;->b(ILjava/lang/String;)I

    move-result p1

    invoke-static {}, Lmega/car/MegaCarProperty;->getInstance()Lmega/car/MegaCarProperty;

    move-result-object p2

    const v0, 0x670000c2

    invoke-virtual {p2, v0, p1}, Lmega/car/MegaCarProperty;->setIntProp(II)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "function_safe"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void

    :pswitch_0
    check-cast p0, Lcom/mega/engineeringmode/function/LogLevelActivity;

    sget-object p1, Lcom/mega/engineeringmode/function/LogLevelActivity;->A:Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x4

    const-string v0, "logleveltest_qnx_level"

    packed-switch p2, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_1
    const/4 p2, 0x3

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    sput-object v2, Lcom/mega/engineeringmode/function/LogLevelActivity;->E:Ljava/lang/Byte;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ln2/j;->a(Landroid/content/Context;)Ln2/j;

    move-result-object v2

    invoke-static {}, Ls2/a;->a()I

    move-result v3

    invoke-virtual {v2, p2, v3, v0}, Ln2/j;->b(IILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    sput-object p2, Lcom/mega/engineeringmode/function/LogLevelActivity;->E:Ljava/lang/Byte;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Ln2/j;->a(Landroid/content/Context;)Ln2/j;

    move-result-object p2

    invoke-static {}, Ls2/a;->a()I

    move-result v2

    invoke-virtual {p2, p1, v2, v0}, Ln2/j;->b(IILjava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const/4 p2, 0x5

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    sput-object v2, Lcom/mega/engineeringmode/function/LogLevelActivity;->E:Ljava/lang/Byte;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ln2/j;->a(Landroid/content/Context;)Ln2/j;

    move-result-object v2

    invoke-static {}, Ls2/a;->a()I

    move-result v3

    invoke-virtual {v2, p2, v3, v0}, Ln2/j;->b(IILjava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const/4 p2, 0x2

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    sput-object v2, Lcom/mega/engineeringmode/function/LogLevelActivity;->E:Ljava/lang/Byte;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ln2/j;->a(Landroid/content/Context;)Ln2/j;

    move-result-object v2

    invoke-static {}, Ls2/a;->a()I

    move-result v3

    invoke-virtual {v2, p2, v3, v0}, Ln2/j;->b(IILjava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const/4 p2, 0x7

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    sput-object v2, Lcom/mega/engineeringmode/function/LogLevelActivity;->E:Ljava/lang/Byte;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ln2/j;->a(Landroid/content/Context;)Ln2/j;

    move-result-object v2

    invoke-static {}, Ls2/a;->a()I

    move-result v3

    invoke-virtual {v2, p2, v3, v0}, Ln2/j;->b(IILjava/lang/String;)V

    goto :goto_0

    :pswitch_6
    const/4 p2, 0x6

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    sput-object v2, Lcom/mega/engineeringmode/function/LogLevelActivity;->E:Ljava/lang/Byte;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ln2/j;->a(Landroid/content/Context;)Ln2/j;

    move-result-object v2

    invoke-static {}, Ls2/a;->a()I

    move-result v3

    invoke-virtual {v2, p2, v3, v0}, Ln2/j;->b(IILjava/lang/String;)V

    goto :goto_0

    :pswitch_7
    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    sput-object v2, Lcom/mega/engineeringmode/function/LogLevelActivity;->E:Ljava/lang/Byte;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ln2/j;->a(Landroid/content/Context;)Ln2/j;

    move-result-object v2

    invoke-static {}, Ls2/a;->a()I

    move-result v3

    invoke-virtual {v2, p2, v3, v0}, Ln2/j;->b(IILjava/lang/String;)V

    :goto_0
    iget-object p2, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->z:Ljava/util/ArrayList;

    sget-object v0, Lcom/mega/engineeringmode/function/LogLevelActivity;->E:Ljava/lang/Byte;

    invoke-virtual {p2, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lg1/j;

    invoke-direct {p1, v1}, Lg1/j;-><init>(I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/LogLevelActivity;->i:Ln2/i;

    if-nez p0, :cond_1

    const-string p0, "LogLevelActivity"

    const-string p1, "message center is null"

    invoke-static {p0, p1}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "car_engineering_mode/general_ctrl/req"

    invoke-virtual {p0, p1, p2}, Ln2/i;->d(Ljava/lang/String;Ljava/util/ArrayList;)Z

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0a02f4
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
