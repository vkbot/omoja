.class public final Lcom/mega/engineeringmode/function/candata/CanDataViewModel$b;
.super Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/engineeringmode/function/candata/CanDataViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/candata/CanDataViewModel;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/candata/CanDataViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/engineeringmode/function/candata/CanDataViewModel$b;->a:Lcom/mega/engineeringmode/function/candata/CanDataViewModel;

    invoke-direct {p0}, Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-static {p2}, Ld/f;->c0(Ljava/util/List;)[B

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mSendCallback  "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "CanDataViewModel"

    invoke-static {v1, p2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    :goto_0
    iget-object v2, p0, Lcom/mega/engineeringmode/function/candata/CanDataViewModel$b;->a:Lcom/mega/engineeringmode/function/candata/CanDataViewModel;

    iget-object v3, v2, Lcom/mega/engineeringmode/function/candata/CanDataViewModel;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, -0x1

    if-ge p2, v4, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    move p2, v5

    :goto_1
    const-string p1, "findSendTopicIndex  "

    invoke-static {p1, p2, v1}, La4/a;->m(Ljava/lang/String;ILjava/lang/String;)V

    if-eq p2, v5, :cond_4

    iget-object p1, v2, Lcom/mega/engineeringmode/function/candata/CanDataViewModel;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_4

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/mega/engineeringmode/function/candata/CanDataViewModel;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj1/a;

    iput p2, v0, Lj1/a;->a:I

    const-string/jumbo p2, "valid"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_3

    :try_start_1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    :try_start_2
    const-string p1, "--"

    iput-object p1, v0, Lj1/a;->e:Ljava/lang/String;

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    invoke-static {v2, p1}, Lcom/mega/engineeringmode/function/candata/CanDataViewModel;->a(Lcom/mega/engineeringmode/function/candata/CanDataViewModel;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lj1/a;->e:Ljava/lang/String;

    :goto_3
    invoke-static {}, Ld/f;->B()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Ls0/h;

    const/4 v1, 0x1

    invoke-direct {p2, v1, p0, v0}, Ls0/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_5
    return-void
.end method
