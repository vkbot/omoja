.class public final Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity$c;
.super Ln0/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity$c;->a:Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;

    invoke-direct {p0}, Ln0/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(ILjava/lang/String;)V
    .locals 10

    const-string/jumbo v0, "onReceive  value "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  onReceive  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConnectorStatusActivity"

    invoke-static {v2, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p2, "type"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string/jumbo v3, "status"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v4, "value"

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    iget-object p0, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity$c;->a:Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;

    const/4 v8, 0x0

    if-ne p1, v5, :cond_2

    if-ne p2, v6, :cond_16

    if-ne v3, v7, :cond_16

    :try_start_1
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_b

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-ne p2, v7, :cond_16

    invoke-virtual {p1, v8}, Lorg/json/JSONArray;->getInt(I)I

    move-result p1

    if-ne p1, v7, :cond_1

    move v8, v7

    :cond_1
    sget p1, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->r:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ll1/c;

    invoke-direct {p1, v7, p0, v8}, Ll1/c;-><init>(ILjava/lang/Object;Z)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->i:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_c

    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_16

    if-ne p2, v6, :cond_16

    if-ne v3, v7, :cond_16

    const-string p1, "callback suc"

    invoke-static {v2, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_16

    const-string p2, "dtc_num"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "dtc_status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    sget v0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->r:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->t()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "isAvm method "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "0xFF030404"

    const-string v3, "0xFF030402"

    const/4 v4, 0x4

    if-eq v0, v7, :cond_c

    if-ne v0, v6, :cond_3

    goto/16 :goto_3

    :cond_3
    :try_start_2
    invoke-static {p0}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->q(Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "0xFF034412"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    if-nez p1, :cond_5

    move v0, v7

    goto :goto_1

    :cond_5
    move v0, v8

    :goto_1
    invoke-static {p0, v0}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->o(Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;Z)V

    :cond_6
    invoke-static {v7, p0, v8}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->n(ILcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;Z)V

    invoke-static {v6, p0, v8}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->n(ILcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;Z)V

    invoke-static {v5, p0, v8}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->n(ILcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;Z)V

    invoke-static {v4, p0, v8}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->n(ILcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;Z)V

    invoke-static {p0, v8}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->p(Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;Z)V

    goto/16 :goto_9

    :cond_7
    invoke-static {}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->t()I

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Ln2/c;->a:Ljava/lang/String;

    const-string/jumbo v0, "ro.ecu.config.RAV"

    invoke-static {v0, v8}, Ld/f;->z(Ljava/lang/String;I)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "getRvc "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v0, v7, :cond_b

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "0xFF031114"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    if-nez p1, :cond_9

    move v0, v7

    goto :goto_2

    :cond_9
    move v0, v8

    :goto_2
    invoke-static {p0, v0}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->p(Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;Z)V

    :cond_a
    invoke-static {v7, p0, v8}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->n(ILcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;Z)V

    invoke-static {v6, p0, v8}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->n(ILcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;Z)V

    invoke-static {v5, p0, v8}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->n(ILcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;Z)V

    invoke-static {v4, p0, v8}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->n(ILcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;Z)V

    invoke-static {p0, v8}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->o(Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;Z)V

    goto/16 :goto_9

    :cond_b
    invoke-static {p0, v8}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->o(Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;Z)V

    invoke-static {p0, v8}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->p(Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;Z)V

    invoke-static {v7, p0, v8}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->n(ILcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;Z)V

    invoke-static {v6, p0, v8}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->n(ILcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;Z)V

    invoke-static {v5, p0, v8}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->n(ILcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;Z)V

    invoke-static {v4, p0, v8}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->n(ILcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;Z)V

    goto :goto_9

    :cond_c
    :goto_3
    const-string v0, "0xFF030401"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    if-nez p1, :cond_d

    move v0, v7

    goto :goto_4

    :cond_d
    move v0, v8

    :goto_4
    invoke-static {v4, p0, v0}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->n(ILcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;Z)V

    goto :goto_8

    :cond_e
    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    if-nez p1, :cond_f

    move v0, v7

    goto :goto_5

    :cond_f
    move v0, v8

    :goto_5
    invoke-static {v5, p0, v0}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->n(ILcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;Z)V

    goto :goto_8

    :cond_10
    const-string v0, "0xFF030403"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    if-nez p1, :cond_11

    move v0, v7

    goto :goto_6

    :cond_11
    move v0, v8

    :goto_6
    invoke-static {v6, p0, v0}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->n(ILcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;Z)V

    goto :goto_8

    :cond_12
    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    if-nez p1, :cond_13

    move v0, v7

    goto :goto_7

    :cond_13
    move v0, v8

    :goto_7
    invoke-static {v7, p0, v0}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->n(ILcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;Z)V

    :cond_14
    :goto_8
    invoke-static {p0, v8}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->o(Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;Z)V

    invoke-static {p0, v8}, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->p(Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;Z)V

    :goto_9
    const-string v0, "0xFF030413"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_16

    if-nez p1, :cond_15

    goto :goto_a

    :cond_15
    move v7, v8

    :goto_a
    new-instance p1, Ll1/a;

    invoke-direct {p1, v8, p0, v7}, Ll1/a;-><init>(ILjava/lang/Object;Z)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/connector/ConnectorStatusActivity;->i:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_c

    :goto_b
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_16
    :goto_c
    return-void
.end method
