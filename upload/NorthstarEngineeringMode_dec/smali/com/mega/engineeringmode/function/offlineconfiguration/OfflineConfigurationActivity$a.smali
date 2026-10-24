.class public final Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity$a;
.super Ln0/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity$a;->a:Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;

    invoke-direct {p0}, Ln0/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(ILjava/lang/String;)V
    .locals 11

    iget-object p0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity$a;->a:Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;

    const-string/jumbo v0, "onReceive  value.length = "

    const-string/jumbo v1, "onReceive  value = "

    const-string/jumbo v2, "onReceive  type "

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onReceive  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "OfflineConfigurationActivity"

    invoke-static {v5, v3}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v3, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->x:I

    if-ne p1, v3, :cond_4

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p2, "type"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string/jumbo v3, "status"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v6, "did_num"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->B:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string p1, "no current did data return"

    invoke-static {v5, p1}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " status "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " did "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-nez p2, :cond_2

    const-string/jumbo p2, "value"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->u:Landroid/os/Handler;

    new-instance v0, Ls0/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0, v6}, Ls0/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    new-array p2, p2, [B

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_1

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, p2, v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onReceive value "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v8, p2, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "onReceive value bvalue[%s] = %s, value[%s] = %s"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    aget-byte v9, p2, v3

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lv1/f;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v6, p1}, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    if-ne p2, v2, :cond_4

    iget-object p1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->u:Landroid/os/Handler;

    new-instance p2, Lv1/j;

    invoke-direct {p2, p0, v3}, Lv1/j;-><init>(Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget p1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->y:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_3

    iput p2, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->y:I

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->finish()V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->z:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->z:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->finish()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    :goto_2
    return-void
.end method
