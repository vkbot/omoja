.class public final Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity$c;
.super Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity$c;->a:Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;

    invoke-direct {p0}, Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "screenStatus = "

    const-string v1, "Screen/Info/resp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/String;

    invoke-static {p2}, Ld/f;->c0(Ljava/util/List;)[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    const-string p2, " onReceive value "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "PeripheralSoftwareActivity"

    invoke-static {v1, p2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-class v2, Lcom/mega/engineeringmode/function/screen/ScreenStatus;

    invoke-virtual {p1, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mega/engineeringmode/function/screen/ScreenStatus;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity$c;->a:Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;

    sget p2, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->w:I

    iget-object p1, p1, Lcom/mega/engineeringmode/function/screen/ScreenStatus;->softwareVersion:Ljava/lang/String;

    const/16 p2, 0x12

    invoke-virtual {p0, p2, p1}, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->n(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
