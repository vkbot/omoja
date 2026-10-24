.class public final Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity$a;
.super Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity$a;->a:Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;

    invoke-direct {p0}, Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "statusValue:"

    const-string/jumbo v1, "s"

    invoke-static {p1, v1}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "arrayList"

    invoke-static {p2, v1}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " onReceive  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isSdCardPathLocal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;->m:I

    iget-object p0, p0, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity$a;->a:Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->k()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FunctionSafeActivity"

    invoke-static {v2, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Screen/Log/resp"

    invoke-static {v1, p1}, Lo3/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;->k:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->k()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "data "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xbb8

    const v1, 0x7f120369

    :try_start_0
    invoke-static {p2}, Ld/f;->c0(Ljava/util/List;)[B

    move-result-object p2

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lu3/a;->a:Ljava/nio/charset/Charset;

    invoke-direct {v3, p2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "disp_id"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v3, "log_path"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "state"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v4, "TIMEOUT"

    invoke-static {p2, v4}, Lo3/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "ERROR"

    invoke-static {p2, v4}, Lo3/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "DONE"

    invoke-static {p2, v4}, Lo3/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "logPath"

    invoke-static {v3, p2}, Lo3/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0, v3}, Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;->n(Lcom/mega/engineeringmode/function/safe/FunctionSafeActivity;ILjava/lang/String;)V

    return-void

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lk2/d;->b(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "json exception: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1}, Lk2/d;->b(Landroid/content/Context;Ljava/lang/String;I)V

    nop

    :cond_3
    :goto_2
    return-void
.end method
