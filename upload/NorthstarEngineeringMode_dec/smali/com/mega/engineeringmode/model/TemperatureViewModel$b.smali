.class public final Lcom/mega/engineeringmode/model/TemperatureViewModel$b;
.super Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/engineeringmode/model/TemperatureViewModel;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/model/TemperatureViewModel;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/model/TemperatureViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/engineeringmode/model/TemperatureViewModel$b;->a:Lcom/mega/engineeringmode/model/TemperatureViewModel;

    invoke-direct {p0}, Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Screen/Info/resp"

    invoke-static {v0, p1}, Lo3/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p2}, Ld/f;->c0(Ljava/util/List;)[B

    move-result-object p1

    new-instance p2, Ljava/lang/String;

    sget-object v0, Lu3/a;->a:Ljava/nio/charset/Charset;

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/model/TemperatureViewModel$b;->a:Lcom/mega/engineeringmode/model/TemperatureViewModel;

    iget-object p1, p0, Lcom/mega/engineeringmode/model/TemperatureViewModel;->a:Ljava/lang/String;

    const-string v0, " onReceive value "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/mega/engineeringmode/function/screen/ScreenStatus;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mega/engineeringmode/function/screen/ScreenStatus;

    const-string p2, "0x02"

    iget-object v0, p1, Lcom/mega/engineeringmode/function/screen/ScreenStatus;->type:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v0, "screenStatus.backlightTmp"

    if-eqz p2, :cond_0

    :try_start_1
    iget-object p0, p0, Lcom/mega/engineeringmode/model/TemperatureViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    iget-object p1, p1, Lcom/mega/engineeringmode/function/screen/ScreenStatus;->backlightTmp:Ljava/lang/String;

    invoke-static {p1, v0}, Lo3/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string p2, "0x01"

    iget-object v1, p1, Lcom/mega/engineeringmode/function/screen/ScreenStatus;->type:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/mega/engineeringmode/model/TemperatureViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    iget-object p1, p1, Lcom/mega/engineeringmode/function/screen/ScreenStatus;->backlightTmp:Ljava/lang/String;

    invoke-static {p1, v0}, Lo3/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method
