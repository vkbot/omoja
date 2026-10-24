.class public final Lcom/mega/engineeringmode/function/dtc/DtcActivity$a;
.super Ln0/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/engineeringmode/function/dtc/DtcActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/dtc/DtcActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/dtc/DtcActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/engineeringmode/function/dtc/DtcActivity$a;->a:Lcom/mega/engineeringmode/function/dtc/DtcActivity;

    invoke-direct {p0}, Ln0/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(ILjava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "type "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onReceive  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  data  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DtcActivity"

    invoke-static {v2, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/dtc/DtcActivity$a;->a:Lcom/mega/engineeringmode/function/dtc/DtcActivity;

    iget v1, p0, Lcom/mega/engineeringmode/function/dtc/DtcActivity;->i:I

    if-ne p1, v1, :cond_3

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p2, "type"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string/jumbo v1, "status"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v3, "value"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " status "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " info  "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    if-eqz p1, :cond_3

    const-string v0, "dtc_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dtc_num"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p2, :cond_0

    const v1, 0x7f120151

    goto :goto_0

    :cond_0
    const v1, 0x7f120153

    :goto_0
    new-instance v2, Lo1/b;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v0, v2, Lo1/b;->a:Ljava/lang/String;

    iput-object p1, v2, Lo1/b;->b:Ljava/lang/String;

    iput v1, v2, Lo1/b;->c:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo p1, "updateData  "

    if-nez p2, :cond_1

    :try_start_1
    iget-object p0, p0, Lcom/mega/engineeringmode/function/dtc/DtcActivity;->k:Lcom/mega/engineeringmode/function/dtc/DtcCurrentFragment;

    if-eqz p0, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DtcCurrentFragment"

    invoke-static {p2, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/dtc/DtcCurrentFragment;->b:Lcom/mega/engineeringmode/function/dtc/DtcAdapter;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v2}, Lcom/mega/engineeringmode/function/dtc/DtcAdapter;->a(Lo1/b;)V

    goto :goto_2

    :cond_1
    iget v0, p0, Lcom/mega/engineeringmode/function/dtc/DtcActivity;->j:I

    if-ne p2, v0, :cond_3

    iget-object p0, p0, Lcom/mega/engineeringmode/function/dtc/DtcActivity;->l:Lcom/mega/engineeringmode/function/dtc/DtcHistoryFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DtcHistoryFragment"

    invoke-static {p2, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/dtc/DtcHistoryFragment;->b:Lcom/mega/engineeringmode/function/dtc/DtcAdapter;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v2}, Lcom/mega/engineeringmode/function/dtc/DtcAdapter;->a(Lo1/b;)V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    const-string p0, "getDtcInfo fail"

    invoke-static {v2, p0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method
