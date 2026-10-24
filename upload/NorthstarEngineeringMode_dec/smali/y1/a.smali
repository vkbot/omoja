.class public final synthetic Ly1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Ly1/a;->a:I

    iput-object p1, p0, Ly1/a;->b:Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Ly1/a;->a:I

    iget-object p0, p0, Ly1/a;->b:Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;

    const-string/jumbo v0, "this$0"

    packed-switch p1, :pswitch_data_0

    sget p1, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;->m:I

    invoke-static {p0, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;->o()Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/mega/engineeringmode/databinding/ActivityFunctionSafeBinding;->x:Lcom/mega/engineeringmode/ui/MegaSwitch;

    invoke-virtual {p0}, Lcom/mega/engineeringmode/ui/MegaSwitch;->g()V

    return-void

    :pswitch_0
    sget p1, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;->m:I

    invoke-static {p0, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMddHHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sget-object v2, Ln2/o;->a:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/screen0_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".log"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "exportScreenLog:"

    const-string/jumbo v1, "\uff0c isSdCardPathLocal = "

    invoke-static {v0, p1, v1}, Landroidx/activity/result/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FunctionSafeActivity"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f12024f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xbb8

    invoke-static {p1, p0, v0}, Lk2/d;->b(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;->k:Ljava/lang/String;

    const-string/jumbo p1, "sendScreenMsg0"

    invoke-static {v1, p1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;->j:Ln2/i;

    if-eqz p0, :cond_1

    const-string v0, "Screen/Log/req"

    invoke-virtual {p0, v0, p1}, Ln2/i;->d(Ljava/lang/String;Ljava/util/ArrayList;)Z

    :goto_0
    return-void

    :cond_1
    const-string p0, "mMsgUtil"

    invoke-static {p0}, Lo3/h;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
