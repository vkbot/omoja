.class public final Lcom/mega/engineeringmode/function/camera/CameraTestActivity$a;
.super Ln0/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/engineeringmode/function/camera/CameraTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/camera/CameraTestActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/camera/CameraTestActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity$a;->a:Lcom/mega/engineeringmode/function/camera/CameraTestActivity;

    invoke-direct {p0}, Ln0/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(ILjava/lang/String;)V
    .locals 7

    iget-object p0, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity$a;->a:Lcom/mega/engineeringmode/function/camera/CameraTestActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  onReceive  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraTestActivity"

    invoke-static {v1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p2, "type"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    if-ne p1, v3, :cond_8

    const/4 p1, 0x2

    if-ne p2, p1, :cond_8

    const/4 p2, 0x1

    if-ne v2, p2, :cond_8

    const-string v2, "callback suc"

    invoke-static {v1, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "value"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "dtc_num"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "dtc_status"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    sget v4, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->w:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Ln2/c;->a:Ljava/lang/String;

    const-string/jumbo v4, "ro.ecu.config.AVM_INTER_METHOD"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ld/f;->z(Ljava/lang/String;I)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isAvm method "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->u:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->t:Landroid/util/SparseArray;

    const/4 v6, 0x3

    if-eq v4, p2, :cond_0

    if-ne v4, p1, :cond_6

    :cond_0
    if-nez v0, :cond_6

    :try_start_1
    const-string p2, "0xFF030401"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/4 v4, -0x1

    if-eqz p2, :cond_1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v5, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_2

    :cond_1
    const-string p2, "0xFF030402"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v5, v6, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v3, v6

    goto :goto_1

    :cond_2
    const-string p2, "0xFF030403"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v5, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    move v3, p1

    goto :goto_1

    :cond_3
    const-string p2, "0xFF030404"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v5, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_4
    const-string p2, "0xFF031114"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {}, Ln2/c;->a()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v5, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_5
    move v3, v4

    :goto_1
    if-eq v3, v4, :cond_6

    invoke-virtual {p0, v3}, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->o(I)V

    :cond_6
    if-nez v0, :cond_8

    const-string p1, "0xFF030413"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0xd

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->o(I)V

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v5, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    :cond_7
    const-string p1, "0xFF034412"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v5, v6, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0, v6}, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->o(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_3
    return-void
.end method
