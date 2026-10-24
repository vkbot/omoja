.class public final synthetic Lf/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic r:Ljava/lang/String;

.field public final synthetic x:Ljava/lang/Object;

.field public final synthetic y:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lf/l;->c:I

    iput-object p3, p0, Lf/l;->x:Ljava/lang/Object;

    iput-object p2, p0, Lf/l;->r:Ljava/lang/String;

    iput-object p4, p0, Lf/l;->y:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget v0, p0, Lf/l;->c:I

    const/4 v1, 0x0

    iget-object v2, p0, Lf/l;->r:Ljava/lang/String;

    iget-object v3, p0, Lf/l;->y:Ljava/lang/Object;

    iget-object p0, p0, Lf/l;->x:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/mega/engineeringmode/ui/a$b;

    check-cast v3, Ljava/lang/String;

    iget-object p0, p0, Lcom/mega/engineeringmode/ui/a$b;->a:Lcom/mega/engineeringmode/ui/a;

    invoke-virtual {p0, v2, v3}, Lcom/mega/engineeringmode/ui/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;

    check-cast v3, Ljava/lang/String;

    sget v0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->D:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lv1/f;->a:La/a;

    const-string v4, "701a"

    const-string v5, "f"

    const/4 v6, 0x0

    if-nez v0, :cond_0

    const-string v0, "getListConfig 1"

    invoke-static {v5, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "7010"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "getListConfig 2"

    invoke-static {v5, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, La/a;->e()Ljava/util/ArrayList;

    move-result-object v6

    goto/16 :goto_0

    :cond_1
    const-string v0, "7019"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "getListConfig 3"

    invoke-static {v5, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, La/a;->f()Ljava/util/ArrayList;

    move-result-object v6

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "getListConfig 4"

    invoke-static {v5, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, La/a;->g()Ljava/util/ArrayList;

    move-result-object v6

    goto/16 :goto_0

    :cond_3
    const-string v0, "701b"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "getListConfig 5"

    invoke-static {v5, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, La/a;->h()Ljava/util/ArrayList;

    move-result-object v6

    goto/16 :goto_0

    :cond_4
    const-string v0, "6202"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "getListConfig 6"

    invoke-static {v5, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, La/a;->b()Ljava/util/ArrayList;

    move-result-object v6

    goto/16 :goto_0

    :cond_5
    const-string v0, "6215"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "getListConfig 7"

    invoke-static {v5, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, La/a;->d()Ljava/util/ArrayList;

    move-result-object v6

    goto/16 :goto_0

    :cond_6
    const-string v0, "7038"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "getListConfig 8"

    invoke-static {v5, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, La/a;->i()Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_0

    :cond_7
    const-string v0, "7041"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, La/a;->j()Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_0

    :cond_8
    const-string v0, "704a"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, La/a;->k()Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_0

    :cond_9
    const-string v0, "621c"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lv1/e;

    const-string v7, "Face Style 2"

    const/4 v8, 0x5

    invoke-direct {v0, v7, v1, v8}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lv1/e;

    const-string v7, "Anti-relay Attack"

    const/4 v9, 0x1

    invoke-direct {v0, v7, v8, v9}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lv1/e;

    sget-object v7, Lcom/mega/engineeringmode/EngineeringModeApplication;->b:Lcom/mega/engineeringmode/EngineeringModeApplication;

    const v8, 0x7f120168

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xc

    const/4 v9, 0x4

    invoke-direct {v0, v7, v8, v9}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lv1/e;

    sget-object v7, Lcom/mega/engineeringmode/EngineeringModeApplication;->b:Lcom/mega/engineeringmode/EngineeringModeApplication;

    const v8, 0x7f12008a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    const/16 v9, 0x8

    invoke-direct {v0, v7, v8, v9}, Lv1/e;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_a
    const-string v0, "getListConfig 9"

    invoke-static {v5, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v6, :cond_c

    const-string/jumbo v0, "updateListConfigValue "

    const-string v7, "  "

    invoke-static {v0, v3, v7}, Landroidx/activity/result/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lv1/e;

    iget v8, v7, Lv1/e;->c:I

    iget v9, v7, Lv1/e;->d:I

    add-int v10, v8, v9

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "updateListConfigValue  oldValue "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v11, v10, :cond_b

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-virtual {v3, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lv1/e;->b:Ljava/lang/String;

    goto :goto_2

    :cond_b
    const-string v11, "%0"

    const-string v12, "d"

    invoke-static {v11, v9, v12}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v9, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lv1/e;->b:Ljava/lang/String;

    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "updateListConfigValue start "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "  end "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "updateListConfigValue  newValue"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    iget-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->j:Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;

    if-eqz v0, :cond_13

    new-instance v1, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigDiffCallback;

    iget-object v5, v0, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->a:Ljava/util/ArrayList;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    iput-object v5, v1, Lcom/mega/engineeringmode/function/offlineconfiguration/BaseDiffCallback;->a:Ljava/util/List;

    iput-object v6, v1, Lcom/mega/engineeringmode/function/offlineconfiguration/BaseDiffCallback;->b:Ljava/util/List;

    invoke-static {v1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v1

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    if-eqz v6, :cond_e

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_d
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv1/e;

    iget-object v7, v6, Lv1/e;->a:Ljava/lang/String;

    iget-object v8, v0, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->d:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    iget-object v7, v6, Lv1/e;->a:Ljava/lang/String;

    invoke-virtual {v8, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_e
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v1, Lv1/a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lv1/a;->a:Ljava/lang/String;

    iput-object v3, v1, Lv1/a;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->c:Lv1/a;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    iget-object v1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->j:Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;

    const-string v2, "EAMP"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->finish()V

    goto :goto_4

    :cond_f
    :try_start_0
    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->q()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :cond_10
    iget-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->z:Ljava/lang/String;

    sget-object v1, Lv1/f;->b:Landroid/util/ArrayMap;

    const-string v3, ""

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string p0, "did = %s, didFromName = %s"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "OfflineConfigurationActivity"

    invoke-static {v0, p0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_11
    iget-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->j:Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->z:Ljava/lang/String;

    iget-object v2, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->finish()V

    goto :goto_4

    :cond_12
    :try_start_1
    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->q()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_13
    :goto_4
    return-void

    :pswitch_1
    check-cast p0, Lt0/c;

    iget-object p0, p0, Lt0/c;->a:Ljava/util/Vector;

    new-instance v0, Lt0/b;

    invoke-direct {v0, v1, v2, v3}, Lt0/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/Vector;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/android/settingslib/wifi/WifiTracker$e;

    check-cast v3, Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$e;->b:Lcom/android/settingslib/wifi/WifiTracker;

    iget-boolean p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->p:Z

    if-eqz p0, :cond_14

    const-string p0, "WifiTracker"

    invoke-static {p0, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_14
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
