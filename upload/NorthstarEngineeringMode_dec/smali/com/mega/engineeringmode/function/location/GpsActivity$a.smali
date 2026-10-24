.class public final Lcom/mega/engineeringmode/function/location/GpsActivity$a;
.super Lvendor/mega/tboxclient/V1_0/ITboxClientServiceCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/engineeringmode/function/location/GpsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/location/GpsActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/location/GpsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/engineeringmode/function/location/GpsActivity$a;->a:Lcom/mega/engineeringmode/function/location/GpsActivity;

    invoke-direct {p0}, Lvendor/mega/tboxclient/V1_0/ITboxClientServiceCallback$Stub;-><init>()V

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

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/lang/String;-><init>([B)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/location/GpsActivity$a;->a:Lcom/mega/engineeringmode/function/location/GpsActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onReceive  ,topic = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isMainThread = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v1, v3, :cond_1

    move v2, v4

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GpsActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "TBOX_GNSS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    :try_start_0
    const-class v0, Ls1/k;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/k;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    const-string p2, "BDNotification"

    iget-object v0, p1, Ls1/k;->aEventType:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->k:Landroid/widget/TextView;

    new-instance v0, Landroidx/constraintlayout/helper/widget/a;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    if-eqz p1, :cond_3

    const-string p2, "GLNotification"

    iget-object v0, p1, Ls1/k;->aEventType:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->l:Landroid/widget/TextView;

    new-instance v0, Ls1/b;

    invoke-direct {v0, p0, v4}, Ls1/b;-><init>(Lcom/mega/engineeringmode/function/location/GpsActivity;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object p2, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->m:Landroid/widget/TextView;

    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    iget-object p2, p1, Ls1/k;->nmea:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    iput-boolean v4, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->r:Z

    iget-object p1, p1, Ls1/k;->nmea:Ljava/lang/String;

    iget-object p2, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->m:Landroid/widget/TextView;

    new-instance v0, Ls0/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Ls0/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method
