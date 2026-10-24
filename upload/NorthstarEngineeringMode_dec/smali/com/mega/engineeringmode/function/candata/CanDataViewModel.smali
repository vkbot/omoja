.class public Lcom/mega/engineeringmode/function/candata/CanDataViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lj1/a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lj1/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lj1/a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lj1/a;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ln2/i;

.field public final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lcom/mega/engineeringmode/function/candata/CanDataViewModel$a;

.field public final i:Lcom/mega/engineeringmode/function/candata/CanDataViewModel$b;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 9
    .param p1    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/candata/CanDataViewModel;->a:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mega/engineeringmode/function/candata/CanDataViewModel;->b:Ljava/util/ArrayList;

    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v2, p0, Lcom/mega/engineeringmode/function/candata/CanDataViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v2, p0, Lcom/mega/engineeringmode/function/candata/CanDataViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mega/engineeringmode/function/candata/CanDataViewModel;->f:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mega/engineeringmode/function/candata/CanDataViewModel;->g:Ljava/util/ArrayList;

    new-instance v4, Lcom/mega/engineeringmode/function/candata/CanDataViewModel$a;

    invoke-direct {v4, p0}, Lcom/mega/engineeringmode/function/candata/CanDataViewModel$a;-><init>(Lcom/mega/engineeringmode/function/candata/CanDataViewModel;)V

    iput-object v4, p0, Lcom/mega/engineeringmode/function/candata/CanDataViewModel;->h:Lcom/mega/engineeringmode/function/candata/CanDataViewModel$a;

    new-instance v5, Lcom/mega/engineeringmode/function/candata/CanDataViewModel$b;

    invoke-direct {v5, p0}, Lcom/mega/engineeringmode/function/candata/CanDataViewModel$b;-><init>(Lcom/mega/engineeringmode/function/candata/CanDataViewModel;)V

    iput-object v5, p0, Lcom/mega/engineeringmode/function/candata/CanDataViewModel;->i:Lcom/mega/engineeringmode/function/candata/CanDataViewModel$b;

    new-instance v6, Ln2/i;

    invoke-direct {v6}, Ln2/i;-><init>()V

    iput-object v6, p0, Lcom/mega/engineeringmode/function/candata/CanDataViewModel;->e:Ln2/i;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "engine_can_data_insert.json"

    invoke-static {v7, v8}, Ld/f;->A(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p0, v8, v7}, Lcom/mega/engineeringmode/function/candata/CanDataViewModel;->b(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "engine_can_data_insert_out.json"

    invoke-static {p1, v0}, Ld/f;->A(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/mega/engineeringmode/function/candata/CanDataViewModel;->b(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, " sendTopics "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CanDataViewModel"

    invoke-static {p1, p0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, v6, Ln2/i;->a:Lvendor/mega/message_center/V1_0/IMessageCenter;

    if-eqz p0, :cond_0

    invoke-interface {p0, v2, v4}, Lvendor/mega/message_center/V1_0/IMessageCenter;->registerRxCallbackList(Ljava/util/ArrayList;Lvendor/mega/message_center/V1_0/IMsgRxCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    :try_start_1
    iget-object p0, v6, Ln2/i;->a:Lvendor/mega/message_center/V1_0/IMessageCenter;

    if-eqz p0, :cond_1

    invoke-interface {p0, v3, v5}, Lvendor/mega/message_center/V1_0/IMessageCenter;->registerRxCallbackList(Ljava/util/ArrayList;Lvendor/mega/message_center/V1_0/IMsgRxCallback;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public static a(Lcom/mega/engineeringmode/function/candata/CanDataViewModel;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "0x"

    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "int parse exception"

    const-string v0, "CanDataViewModel"

    invoke-static {v0, p0}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const-string p0, "double parse exception"

    invoke-static {v0, p0}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final b(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " fromJson "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CanDataViewModel"

    invoke-static {v2, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " signalValues "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p2

    invoke-static {v1, v3, v2}, Landroidx/activity/result/a;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    array-length v1, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_4

    aget-object v5, p2, v4

    new-instance v6, Lj1/a;

    invoke-direct {v6}, Lj1/a;-><init>()V

    const-string v7, "\""

    const-string v8, " "

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " subValue "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v8, v5

    invoke-static {v7, v8, v2}, Landroidx/activity/result/a;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    array-length v7, v5

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    const/4 v7, 0x1

    if-nez p1, :cond_1

    aget-object v9, v5, v7

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/mega/engineeringmode/function/candata/CanDataViewModel;->f:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    if-ne p1, v7, :cond_2

    aget-object v9, v5, v7

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/mega/engineeringmode/function/candata/CanDataViewModel;->g:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    aget-object v9, v5, v7

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lj1/a;->d:Ljava/lang/String;

    aget-object v5, v5, v3

    const-string v9, "/"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v9, v5

    if-ne v9, v8, :cond_3

    aget-object v8, v5, v3

    iput-object v8, v6, Lj1/a;->b:Ljava/lang/String;

    aget-object v5, v5, v7

    iput-object v5, v6, Lj1/a;->c:Ljava/lang/String;

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "CanSignalBean "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "datas size  "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final onCleared()V
    .locals 4

    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/candata/CanDataViewModel;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/candata/CanDataViewModel;->h:Lcom/mega/engineeringmode/function/candata/CanDataViewModel$a;

    iget-object v2, p0, Lcom/mega/engineeringmode/function/candata/CanDataViewModel;->e:Ln2/i;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v3, v2, Ln2/i;->a:Lvendor/mega/message_center/V1_0/IMessageCenter;

    if-eqz v3, :cond_0

    invoke-interface {v3, v0, v1}, Lvendor/mega/message_center/V1_0/IMessageCenter;->unregisterRxCallbackList(Ljava/util/ArrayList;Lvendor/mega/message_center/V1_0/IMsgRxCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mega/engineeringmode/function/candata/CanDataViewModel;->g:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/candata/CanDataViewModel;->i:Lcom/mega/engineeringmode/function/candata/CanDataViewModel$b;

    :try_start_1
    iget-object v1, v2, Ln2/i;->a:Lvendor/mega/message_center/V1_0/IMessageCenter;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0, p0}, Lvendor/mega/message_center/V1_0/IMessageCenter;->unregisterRxCallbackList(Ljava/util/ArrayList;Lvendor/mega/message_center/V1_0/IMsgRxCallback;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method
