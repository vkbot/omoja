.class public Lcom/android/server/pm/RomPackageConfigManager;
.super Ljava/lang/Object;
.source "RomPackageConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/RomPackageConfigManager$DisablePackageConfig;,
        Lcom/android/server/pm/RomPackageConfigManager$EnablePackageConfig;,
        Lcom/android/server/pm/RomPackageConfigManager$conditionSystem;,
        Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RomPackageConfigManager"

.field private static sConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/RomPackageConfigManager$DisablePackageConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static sEnablePackageConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/RomPackageConfigManager$EnablePackageConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getMeetConditionDisableConfigs()Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/RomPackageConfigManager$DisablePackageConfig;",
            ">;"
        }
    .end annotation

    const-class v1, Lcom/android/server/pm/RomPackageConfigManager;

    monitor-enter v1

    .line 259
    :try_start_0
    sget-object v2, Lcom/android/server/pm/RomPackageConfigManager;->sConfigs:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 260
    sget-object v2, Lcom/android/server/pm/RomPackageConfigManager;->sConfigs:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v2

    .line 262
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/android/server/pm/RomPackageConfigManager;->sConfigs:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    :try_start_2
    const-string v2, "RomPackageConfigManager"

    const-string v3, "getMeetConditionDisableConfigs start"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/pms_sysprop_feature.conf"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    .local v2, "configFile":Ljava/io/File;
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    .line 268
    .local v3, "is":Ljava/io/InputStream;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 269
    .local v4, "bufferedReader":Ljava/io/BufferedReader;
    const-string v5, ""

    .line 270
    .local v5, "line":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .local v6, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    if-eqz v7, :cond_1

    .line 272
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 274
    :cond_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 277
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 278
    .local v7, "object_cfg":Lorg/json/JSONObject;
    const-string v8, "disable_apk"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 279
    const-string v8, "disable_apk"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 285
    .local v8, "array":Lorg/json/JSONArray;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v9, "conditionsCurSystem":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/RomPackageConfigManager$conditionSystem;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v10, "conditionConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v11, v12, :cond_1c

    .line 288
    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 290
    .local v12, "disbleObject":Lorg/json/JSONObject;
    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 291
    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 294
    const/4 v13, 0x0

    .line 295
    .local v13, "isDisabledApk":Z
    const-string v14, "disable_apk_sysprop_condition"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 296
    const-string v14, "disable_apk_sysprop_condition"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 297
    .local v14, "objDisableApkValue":Ljava/lang/Object;
    instance-of v15, v14, Lorg/json/JSONArray;

    if-eqz v15, :cond_7

    .line 298
    const-string v15, "disable_apk_sysprop_condition"

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 299
    .local v15, "sysCondition":Lorg/json/JSONArray;
    const/16 v16, 0x0

    move-object/from16 v17, v2

    move/from16 v2, v16

    .local v2, "j":I
    .local v17, "configFile":Ljava/io/File;
    :goto_2
    move-object/from16 v16, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .local v16, "is":Ljava/io/InputStream;
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 300
    invoke-virtual {v15, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 301
    .local v3, "sysConditionObject":Lorg/json/JSONObject;
    move-object/from16 v18, v4

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .local v18, "bufferedReader":Ljava/io/BufferedReader;
    const-string/jumbo v4, "key"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 302
    .local v4, "key":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 303
    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v20, v19

    .line 304
    .local v20, "values":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v19, v5

    .end local v5    # "line":Ljava/lang/String;
    .local v19, "line":Ljava/lang/String;
    const-string/jumbo v5, "value"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 305
    const-string/jumbo v5, "value"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 306
    .local v5, "value":I
    move-object/from16 v21, v6

    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .local v21, "sb":Ljava/lang/StringBuilder;
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move/from16 v22, v5

    move-object/from16 v5, v20

    .end local v20    # "values":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v5, "values":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v22, "value":I
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 304
    .end local v5    # "values":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v21    # "sb":Ljava/lang/StringBuilder;
    .end local v22    # "value":I
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local v20    # "values":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v21, v6

    move-object/from16 v5, v20

    .line 308
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v20    # "values":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v5    # "values":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v21    # "sb":Ljava/lang/StringBuilder;
    :goto_3
    const-string/jumbo v6, "values"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 309
    const-string/jumbo v6, "values"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 310
    .local v6, "valueArray":Lorg/json/JSONArray;
    const/16 v20, 0x0

    move-object/from16 v22, v3

    move/from16 v3, v20

    .local v3, "k":I
    .local v22, "sysConditionObject":Lorg/json/JSONObject;
    :goto_4
    move-object/from16 v20, v7

    .end local v7    # "object_cfg":Lorg/json/JSONObject;
    .local v20, "object_cfg":Lorg/json/JSONObject;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_4

    .line 311
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 310
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v7, v20

    goto :goto_4

    .line 308
    .end local v6    # "valueArray":Lorg/json/JSONArray;
    .end local v20    # "object_cfg":Lorg/json/JSONObject;
    .end local v22    # "sysConditionObject":Lorg/json/JSONObject;
    .local v3, "sysConditionObject":Lorg/json/JSONObject;
    .restart local v7    # "object_cfg":Lorg/json/JSONObject;
    :cond_3
    move-object/from16 v22, v3

    move-object/from16 v20, v7

    .line 314
    .end local v3    # "sysConditionObject":Lorg/json/JSONObject;
    .end local v7    # "object_cfg":Lorg/json/JSONObject;
    .restart local v20    # "object_cfg":Lorg/json/JSONObject;
    .restart local v22    # "sysConditionObject":Lorg/json/JSONObject;
    :cond_4
    new-instance v3, Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;

    invoke-direct {v3, v4, v5}, Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;-><init>(Ljava/lang/String;Ljava/util/HashSet;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 302
    .end local v19    # "line":Ljava/lang/String;
    .end local v20    # "object_cfg":Lorg/json/JSONObject;
    .end local v21    # "sb":Ljava/lang/StringBuilder;
    .end local v22    # "sysConditionObject":Lorg/json/JSONObject;
    .restart local v3    # "sysConditionObject":Lorg/json/JSONObject;
    .local v5, "line":Ljava/lang/String;
    .local v6, "sb":Ljava/lang/StringBuilder;
    .restart local v7    # "object_cfg":Lorg/json/JSONObject;
    :cond_5
    move-object/from16 v22, v3

    move-object/from16 v19, v5

    move-object/from16 v21, v6

    move-object/from16 v20, v7

    .line 299
    .end local v3    # "sysConditionObject":Lorg/json/JSONObject;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "object_cfg":Lorg/json/JSONObject;
    .restart local v19    # "line":Ljava/lang/String;
    .restart local v20    # "object_cfg":Lorg/json/JSONObject;
    .restart local v21    # "sb":Ljava/lang/StringBuilder;
    :goto_5
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v16

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v7, v20

    move-object/from16 v6, v21

    goto/16 :goto_2

    .end local v18    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v19    # "line":Ljava/lang/String;
    .end local v20    # "object_cfg":Lorg/json/JSONObject;
    .end local v21    # "sb":Ljava/lang/StringBuilder;
    .local v4, "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local v7    # "object_cfg":Lorg/json/JSONObject;
    :cond_6
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v21, v6

    move-object/from16 v20, v7

    .line 317
    .end local v2    # "j":I
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "object_cfg":Lorg/json/JSONObject;
    .end local v15    # "sysCondition":Lorg/json/JSONArray;
    .restart local v18    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v19    # "line":Ljava/lang/String;
    .restart local v20    # "object_cfg":Lorg/json/JSONObject;
    .restart local v21    # "sb":Ljava/lang/StringBuilder;
    goto :goto_7

    .line 318
    .end local v16    # "is":Ljava/io/InputStream;
    .end local v17    # "configFile":Ljava/io/File;
    .end local v18    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v19    # "line":Ljava/lang/String;
    .end local v20    # "object_cfg":Lorg/json/JSONObject;
    .end local v21    # "sb":Ljava/lang/StringBuilder;
    .local v2, "configFile":Ljava/io/File;
    .local v3, "is":Ljava/io/InputStream;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local v7    # "object_cfg":Lorg/json/JSONObject;
    :cond_7
    move-object/from16 v17, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v21, v6

    move-object/from16 v20, v7

    .end local v2    # "configFile":Ljava/io/File;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "object_cfg":Lorg/json/JSONObject;
    .restart local v16    # "is":Ljava/io/InputStream;
    .restart local v17    # "configFile":Ljava/io/File;
    .restart local v18    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v19    # "line":Ljava/lang/String;
    .restart local v20    # "object_cfg":Lorg/json/JSONObject;
    .restart local v21    # "sb":Ljava/lang/StringBuilder;
    const-string v2, "disable_apk_sysprop_condition"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 319
    .local v2, "sysConditionObject":Lorg/json/JSONObject;
    const-string/jumbo v3, "key"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, "key":Ljava/lang/String;
    if-eqz v3, :cond_a

    .line 321
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 322
    .local v4, "values":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string/jumbo v5, "value"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 323
    const-string/jumbo v5, "value"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 324
    .local v5, "value":I
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 326
    .end local v5    # "value":I
    :cond_8
    const-string/jumbo v5, "values"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 327
    const-string/jumbo v5, "values"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 328
    .local v5, "valueArray":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_6
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_9

    .line 329
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 328
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 332
    .end local v5    # "valueArray":Lorg/json/JSONArray;
    .end local v6    # "k":I
    :cond_9
    new-instance v5, Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;

    invoke-direct {v5, v3, v4}, Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;-><init>(Ljava/lang/String;Ljava/util/HashSet;)V

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    .end local v2    # "sysConditionObject":Lorg/json/JSONObject;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "values":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_a
    :goto_7
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;

    .line 337
    .local v3, "conf":Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;
    invoke-virtual {v3}, Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 338
    .local v4, "sysValue":Ljava/lang/String;
    const-string v5, "RomPackageConfigManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "disableapk, key:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " sysValue:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " condition prefer values:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v3}, Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;->getValues()Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 338
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual {v3}, Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;->getValues()Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 342
    const/4 v13, 0x1

    .line 343
    new-instance v5, Lcom/android/server/pm/RomPackageConfigManager$conditionSystem;

    invoke-virtual {v3}, Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/server/pm/RomPackageConfigManager$conditionSystem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    .end local v3    # "conf":Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;
    .end local v4    # "sysValue":Ljava/lang/String;
    goto :goto_8

    .line 345
    .restart local v3    # "conf":Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;
    .restart local v4    # "sysValue":Ljava/lang/String;
    :cond_b
    const/4 v2, 0x0

    .line 346
    .end local v13    # "isDisabledApk":Z
    .local v2, "isDisabledApk":Z
    move v13, v2

    .line 349
    .end local v2    # "isDisabledApk":Z
    .end local v3    # "conf":Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;
    .end local v4    # "sysValue":Ljava/lang/String;
    .end local v14    # "objDisableApkValue":Ljava/lang/Object;
    .restart local v13    # "isDisabledApk":Z
    :cond_c
    goto/16 :goto_10

    .end local v16    # "is":Ljava/io/InputStream;
    .end local v17    # "configFile":Ljava/io/File;
    .end local v18    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v19    # "line":Ljava/lang/String;
    .end local v20    # "object_cfg":Lorg/json/JSONObject;
    .end local v21    # "sb":Ljava/lang/StringBuilder;
    .local v2, "configFile":Ljava/io/File;
    .local v3, "is":Ljava/io/InputStream;
    .local v4, "bufferedReader":Ljava/io/BufferedReader;
    .local v5, "line":Ljava/lang/String;
    .local v6, "sb":Ljava/lang/StringBuilder;
    .restart local v7    # "object_cfg":Lorg/json/JSONObject;
    :cond_d
    move-object/from16 v17, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v21, v6

    move-object/from16 v20, v7

    .end local v2    # "configFile":Ljava/io/File;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "object_cfg":Lorg/json/JSONObject;
    .restart local v16    # "is":Ljava/io/InputStream;
    .restart local v17    # "configFile":Ljava/io/File;
    .restart local v18    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v19    # "line":Ljava/lang/String;
    .restart local v20    # "object_cfg":Lorg/json/JSONObject;
    .restart local v21    # "sb":Ljava/lang/StringBuilder;
    const-string v2, "disable_apk_sysprop_condition_not"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 350
    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 351
    const-string v2, "disable_apk_sysprop_condition_not"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 352
    .local v2, "objDisableApkValue":Ljava/lang/Object;
    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_13

    .line 353
    const-string v3, "disable_apk_sysprop_condition_not"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 354
    .local v3, "sysCondition":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_9
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_12

    .line 355
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 356
    .local v5, "sysConditionObject":Lorg/json/JSONObject;
    const-string/jumbo v6, "key"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 357
    .local v6, "key":Ljava/lang/String;
    if-eqz v6, :cond_11

    .line 358
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 359
    .local v7, "values":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string/jumbo v14, "value"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 360
    const-string/jumbo v14, "value"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 361
    .local v14, "value":I
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 363
    .end local v14    # "value":I
    :cond_e
    const-string/jumbo v14, "values"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 364
    const-string/jumbo v14, "values"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 365
    .local v14, "valueArray":Lorg/json/JSONArray;
    const/4 v15, 0x0

    .local v15, "k":I
    :goto_a
    move-object/from16 v22, v2

    .end local v2    # "objDisableApkValue":Ljava/lang/Object;
    .local v22, "objDisableApkValue":Ljava/lang/Object;
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v15, v2, :cond_10

    .line 366
    invoke-virtual {v14, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 365
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v22

    goto :goto_a

    .line 363
    .end local v14    # "valueArray":Lorg/json/JSONArray;
    .end local v15    # "k":I
    .end local v22    # "objDisableApkValue":Ljava/lang/Object;
    .restart local v2    # "objDisableApkValue":Ljava/lang/Object;
    :cond_f
    move-object/from16 v22, v2

    .line 369
    .end local v2    # "objDisableApkValue":Ljava/lang/Object;
    .restart local v22    # "objDisableApkValue":Ljava/lang/Object;
    :cond_10
    new-instance v2, Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;

    invoke-direct {v2, v6, v7}, Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;-><init>(Ljava/lang/String;Ljava/util/HashSet;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 357
    .end local v7    # "values":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v22    # "objDisableApkValue":Ljava/lang/Object;
    .restart local v2    # "objDisableApkValue":Ljava/lang/Object;
    :cond_11
    move-object/from16 v22, v2

    .line 354
    .end local v2    # "objDisableApkValue":Ljava/lang/Object;
    .end local v5    # "sysConditionObject":Lorg/json/JSONObject;
    .end local v6    # "key":Ljava/lang/String;
    .restart local v22    # "objDisableApkValue":Ljava/lang/Object;
    :goto_b
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v22

    goto :goto_9

    .end local v22    # "objDisableApkValue":Ljava/lang/Object;
    .restart local v2    # "objDisableApkValue":Ljava/lang/Object;
    :cond_12
    move-object/from16 v22, v2

    .line 372
    .end local v2    # "objDisableApkValue":Ljava/lang/Object;
    .end local v3    # "sysCondition":Lorg/json/JSONArray;
    .end local v4    # "j":I
    .restart local v22    # "objDisableApkValue":Ljava/lang/Object;
    goto :goto_d

    .line 373
    .end local v22    # "objDisableApkValue":Ljava/lang/Object;
    .restart local v2    # "objDisableApkValue":Ljava/lang/Object;
    :cond_13
    move-object/from16 v22, v2

    .end local v2    # "objDisableApkValue":Ljava/lang/Object;
    .restart local v22    # "objDisableApkValue":Ljava/lang/Object;
    const-string v2, "disable_apk_sysprop_condition_not"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 374
    .local v2, "sysConditionObject":Lorg/json/JSONObject;
    const-string/jumbo v3, "key"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 375
    .local v3, "key":Ljava/lang/String;
    if-eqz v3, :cond_16

    .line 376
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 377
    .local v4, "values":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string/jumbo v5, "value"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 378
    const-string/jumbo v5, "value"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 379
    .local v5, "value":I
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 381
    .end local v5    # "value":I
    :cond_14
    const-string/jumbo v5, "values"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 382
    const-string/jumbo v5, "values"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 383
    .local v5, "valueArray":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_c
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_15

    .line 384
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 383
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 387
    .end local v5    # "valueArray":Lorg/json/JSONArray;
    .end local v6    # "k":I
    :cond_15
    new-instance v5, Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;

    invoke-direct {v5, v3, v4}, Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;-><init>(Ljava/lang/String;Ljava/util/HashSet;)V

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    .end local v2    # "sysConditionObject":Lorg/json/JSONObject;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "values":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_16
    :goto_d
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;

    .line 392
    .local v3, "conf":Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;
    invoke-virtual {v3}, Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 393
    .local v4, "sysValue":Ljava/lang/String;
    const-string v5, "RomPackageConfigManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "disableapk, key:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " sysValue:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " condition_not prefer values:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v3}, Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;->getValues()Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 393
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-virtual {v3}, Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;->getValues()Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 397
    const/4 v2, 0x0

    .line 398
    .end local v13    # "isDisabledApk":Z
    .local v2, "isDisabledApk":Z
    move v13, v2

    goto :goto_f

    .line 400
    .end local v2    # "isDisabledApk":Z
    .restart local v13    # "isDisabledApk":Z
    :cond_17
    const/4 v13, 0x1

    .line 401
    new-instance v5, Lcom/android/server/pm/RomPackageConfigManager$conditionSystem;

    invoke-virtual {v3}, Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/server/pm/RomPackageConfigManager$conditionSystem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    nop

    .end local v3    # "conf":Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;
    .end local v4    # "sysValue":Ljava/lang/String;
    goto :goto_e

    .line 405
    .end local v22    # "objDisableApkValue":Ljava/lang/Object;
    :cond_18
    :goto_f
    goto :goto_10

    .line 406
    :cond_19
    const-string v2, "RomPackageConfigManager"

    const-string v3, "disable_apk config error, no disable_apk_sysprop_condition"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :goto_10
    if-eqz v13, :cond_1b

    .line 411
    new-instance v2, Lcom/android/server/pm/RomPackageConfigManager$DisablePackageConfig;

    invoke-direct {v2}, Lcom/android/server/pm/RomPackageConfigManager$DisablePackageConfig;-><init>()V

    .line 412
    .local v2, "disablePackageConfigs":Lcom/android/server/pm/RomPackageConfigManager$DisablePackageConfig;
    const-string v3, "disable_apk_file_path_list"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 413
    const-string v3, "disable_apk_file_path_list"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 414
    .local v3, "filePathArray":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_11
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1a

    .line 415
    iget-object v5, v2, Lcom/android/server/pm/RomPackageConfigManager$DisablePackageConfig;->filePaths:Ljava/util/HashSet;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 414
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 417
    .end local v4    # "j":I
    :cond_1a
    iget-object v4, v2, Lcom/android/server/pm/RomPackageConfigManager$DisablePackageConfig;->sysCondition:Ljava/util/List;

    invoke-interface {v4, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 418
    const-string v4, "RomPackageConfigManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "meet condition, ready to disable apk file path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/pm/RomPackageConfigManager$DisablePackageConfig;->filePaths:Ljava/util/HashSet;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    sget-object v4, Lcom/android/server/pm/RomPackageConfigManager;->sConfigs:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    .end local v2    # "disablePackageConfigs":Lcom/android/server/pm/RomPackageConfigManager$DisablePackageConfig;
    .end local v3    # "filePathArray":Lorg/json/JSONArray;
    .end local v12    # "disbleObject":Lorg/json/JSONObject;
    .end local v13    # "isDisabledApk":Z
    :cond_1b
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v16

    move-object/from16 v2, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v7, v20

    move-object/from16 v6, v21

    goto/16 :goto_1

    .end local v16    # "is":Ljava/io/InputStream;
    .end local v17    # "configFile":Ljava/io/File;
    .end local v18    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v19    # "line":Ljava/lang/String;
    .end local v20    # "object_cfg":Lorg/json/JSONObject;
    .end local v21    # "sb":Ljava/lang/StringBuilder;
    .local v2, "configFile":Ljava/io/File;
    .local v3, "is":Ljava/io/InputStream;
    .local v4, "bufferedReader":Ljava/io/BufferedReader;
    .local v5, "line":Ljava/lang/String;
    .local v6, "sb":Ljava/lang/StringBuilder;
    .local v7, "object_cfg":Lorg/json/JSONObject;
    :cond_1c
    move-object/from16 v17, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v21, v6

    move-object/from16 v20, v7

    .line 429
    .end local v2    # "configFile":Ljava/io/File;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "object_cfg":Lorg/json/JSONObject;
    .end local v8    # "array":Lorg/json/JSONArray;
    .end local v9    # "conditionsCurSystem":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/RomPackageConfigManager$conditionSystem;>;"
    .end local v10    # "conditionConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;>;"
    .end local v11    # "i":I
    goto :goto_12

    .line 281
    .restart local v2    # "configFile":Ljava/io/File;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local v7    # "object_cfg":Lorg/json/JSONObject;
    :cond_1d
    move-object/from16 v17, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v21, v6

    move-object/from16 v20, v7

    .end local v2    # "configFile":Ljava/io/File;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "object_cfg":Lorg/json/JSONObject;
    .restart local v16    # "is":Ljava/io/InputStream;
    .restart local v17    # "configFile":Ljava/io/File;
    .restart local v18    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v19    # "line":Ljava/lang/String;
    .restart local v20    # "object_cfg":Lorg/json/JSONObject;
    .restart local v21    # "sb":Ljava/lang/StringBuilder;
    const-string v2, "RomPackageConfigManager"

    const-string v3, "disable_apk config error, please check!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 282
    const/4 v2, 0x0

    monitor-exit v1

    return-object v2

    .line 427
    .end local v16    # "is":Ljava/io/InputStream;
    .end local v17    # "configFile":Ljava/io/File;
    .end local v18    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v19    # "line":Ljava/lang/String;
    .end local v20    # "object_cfg":Lorg/json/JSONObject;
    .end local v21    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 428
    .local v2, "e3":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "RomPackageConfigManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMeetConditionDisableConfigs, JSON parse error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 425
    .end local v2    # "e3":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    move-object v2, v0

    .line 426
    .local v2, "e2":Lorg/json/JSONException;
    const-string v3, "RomPackageConfigManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JSON parse error in pms_sysprop_feature: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    nop

    .end local v2    # "e2":Lorg/json/JSONException;
    goto :goto_12

    .line 423
    :catch_2
    move-exception v0

    move-object v2, v0

    .line 424
    .local v2, "e1":Ljava/io/IOException;
    const-string v3, "RomPackageConfigManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IO error when read pms_sysprop_feature: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    nop

    .line 431
    .end local v2    # "e1":Ljava/io/IOException;
    :goto_12
    sget-object v2, Lcom/android/server/pm/RomPackageConfigManager;->sConfigs:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    return-object v2

    .line 258
    :catchall_0
    move-exception v0

    move-object v2, v0

    monitor-exit v1

    throw v2
.end method

.method public static declared-synchronized getMeetConditionenableConfigs()Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/RomPackageConfigManager$EnablePackageConfig;",
            ">;"
        }
    .end annotation

    const-class v1, Lcom/android/server/pm/RomPackageConfigManager;

    monitor-enter v1

    .line 111
    :try_start_0
    sget-object v2, Lcom/android/server/pm/RomPackageConfigManager;->sEnablePackageConfigs:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 112
    sget-object v2, Lcom/android/server/pm/RomPackageConfigManager;->sEnablePackageConfigs:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v2

    .line 114
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/android/server/pm/RomPackageConfigManager;->sEnablePackageConfigs:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :try_start_2
    const-string v2, "RomPackageConfigManager"

    const-string v3, "getMeetConditionenableConfigs start"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/pms_sysprop_feature.conf"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v2, "configFile":Ljava/io/File;
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    .line 120
    .local v3, "is":Ljava/io/InputStream;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 121
    .local v4, "bufferedReader":Ljava/io/BufferedReader;
    const-string v5, ""

    .line 122
    .local v5, "line":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .local v6, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    if-eqz v7, :cond_1

    .line 124
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 128
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 130
    .local v7, "object":Lorg/json/JSONObject;
    const-string v8, "enable_status"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_2

    .line 131
    const-string v8, "RomPackageConfigManager"

    const-string v10, "enable_status config error, please check!"

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    monitor-exit v1

    return-object v9

    .line 135
    :cond_2
    :try_start_3
    const-string v8, "enable_status"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 136
    const-string v8, "RomPackageConfigManager"

    const-string v10, "disable package config func"

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 137
    monitor-exit v1

    return-object v9

    .line 141
    :cond_3
    :try_start_4
    const-string v8, "enable_apk"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 142
    const-string v8, "enable_apk"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 147
    .local v8, "arrayConfigs":Lorg/json/JSONArray;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v10, "conditionConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v11, "conditionsCurSystem":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/RomPackageConfigManager$conditionSystem;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v12, v13, :cond_17

    .line 151
    invoke-virtual {v8, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 152
    .local v13, "enableObject":Lorg/json/JSONObject;
    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 153
    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 156
    const/4 v14, 0x0

    .line 157
    .local v14, "enableAPK":Z
    const-string v15, "enable_apk_sysprop_condition"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 158
    const-string v15, "enable_apk_sysprop_condition"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 159
    .local v15, "sysCondition":Lorg/json/JSONArray;
    const/16 v16, 0x0

    move/from16 v9, v16

    .local v9, "j":I
    :goto_2
    move-object/from16 v16, v2

    .end local v2    # "configFile":Ljava/io/File;
    .local v16, "configFile":Ljava/io/File;
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v9, v2, :cond_8

    .line 160
    invoke-virtual {v15, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 161
    .local v2, "sysConditionObject":Lorg/json/JSONObject;
    move-object/from16 v17, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .local v17, "is":Ljava/io/InputStream;
    const-string/jumbo v3, "key"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, "key":Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 164
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v19, v18

    .line 165
    .local v19, "values":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v18, v4

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .local v18, "bufferedReader":Ljava/io/BufferedReader;
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 166
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 167
    .local v4, "value":I
    move-object/from16 v20, v5

    .end local v5    # "line":Ljava/lang/String;
    .local v20, "line":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v21, v4

    move-object/from16 v4, v19

    .end local v19    # "values":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v4, "values":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v21, "value":I
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 165
    .end local v4    # "values":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v20    # "line":Ljava/lang/String;
    .end local v21    # "value":I
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v19    # "values":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_4
    move-object/from16 v20, v5

    move-object/from16 v4, v19

    .line 169
    .end local v5    # "line":Ljava/lang/String;
    .end local v19    # "values":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v4    # "values":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v20    # "line":Ljava/lang/String;
    :goto_3
    const-string/jumbo v5, "values"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 170
    const-string/jumbo v5, "values"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 171
    .local v5, "valueArray":Lorg/json/JSONArray;
    const/16 v19, 0x0

    move-object/from16 v21, v2

    move/from16 v2, v19

    .local v2, "k":I
    .local v21, "sysConditionObject":Lorg/json/JSONObject;
    :goto_4
    move-object/from16 v19, v6

    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .local v19, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_6

    .line 172
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v6, v19

    goto :goto_4

    .line 169
    .end local v5    # "valueArray":Lorg/json/JSONArray;
    .end local v19    # "sb":Ljava/lang/StringBuilder;
    .end local v21    # "sysConditionObject":Lorg/json/JSONObject;
    .local v2, "sysConditionObject":Lorg/json/JSONObject;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    move-object/from16 v21, v2

    move-object/from16 v19, v6

    .line 175
    .end local v2    # "sysConditionObject":Lorg/json/JSONObject;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local v19    # "sb":Ljava/lang/StringBuilder;
    .restart local v21    # "sysConditionObject":Lorg/json/JSONObject;
    :cond_6
    new-instance v2, Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;

    invoke-direct {v2, v3, v4}, Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;-><init>(Ljava/lang/String;Ljava/util/HashSet;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 163
    .end local v18    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v19    # "sb":Ljava/lang/StringBuilder;
    .end local v20    # "line":Ljava/lang/String;
    .end local v21    # "sysConditionObject":Lorg/json/JSONObject;
    .restart local v2    # "sysConditionObject":Lorg/json/JSONObject;
    .local v4, "bufferedReader":Ljava/io/BufferedReader;
    .local v5, "line":Ljava/lang/String;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_7
    move-object/from16 v21, v2

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    move-object/from16 v19, v6

    .line 159
    .end local v2    # "sysConditionObject":Lorg/json/JSONObject;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local v18    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v19    # "sb":Ljava/lang/StringBuilder;
    .restart local v20    # "line":Ljava/lang/String;
    :goto_5
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    goto/16 :goto_2

    .end local v17    # "is":Ljava/io/InputStream;
    .end local v18    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v19    # "sb":Ljava/lang/StringBuilder;
    .end local v20    # "line":Ljava/lang/String;
    .local v3, "is":Ljava/io/InputStream;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_8
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    move-object/from16 v19, v6

    .line 178
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v9    # "j":I
    .restart local v17    # "is":Ljava/io/InputStream;
    .restart local v18    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v19    # "sb":Ljava/lang/StringBuilder;
    .restart local v20    # "line":Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;

    .line 179
    .local v3, "conf":Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;
    iget-object v4, v3, Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;->sysPropKey:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 180
    .local v4, "sysValue":I
    const-string v5, "RomPackageConfigManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enableapk, key:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " sysValue:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " condition prefer values:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v3}, Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;->getValues()Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 180
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {v3}, Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;->getValues()Ljava/util/HashSet;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 183
    const/4 v14, 0x1

    .line 184
    new-instance v5, Lcom/android/server/pm/RomPackageConfigManager$conditionSystem;

    invoke-virtual {v3}, Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v6, v9}, Lcom/android/server/pm/RomPackageConfigManager$conditionSystem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    .end local v3    # "conf":Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;
    .end local v4    # "sysValue":I
    goto :goto_6

    .line 186
    .restart local v3    # "conf":Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;
    .restart local v4    # "sysValue":I
    :cond_9
    const/4 v14, 0x0

    .line 190
    .end local v3    # "conf":Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;
    .end local v4    # "sysValue":I
    .end local v15    # "sysCondition":Lorg/json/JSONArray;
    :cond_a
    goto/16 :goto_c

    .end local v16    # "configFile":Ljava/io/File;
    .end local v17    # "is":Ljava/io/InputStream;
    .end local v18    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v19    # "sb":Ljava/lang/StringBuilder;
    .end local v20    # "line":Ljava/lang/String;
    .local v2, "configFile":Ljava/io/File;
    .local v3, "is":Ljava/io/InputStream;
    .local v4, "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_b
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    move-object/from16 v19, v6

    .end local v2    # "configFile":Ljava/io/File;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local v16    # "configFile":Ljava/io/File;
    .restart local v17    # "is":Ljava/io/InputStream;
    .restart local v18    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v19    # "sb":Ljava/lang/StringBuilder;
    .restart local v20    # "line":Ljava/lang/String;
    const-string v2, "enable_apk_sysprop_condition_not"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 191
    const-string v2, "enable_apk_sysprop_condition_not"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 193
    .local v2, "sysCondition":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_7
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_10

    .line 194
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 195
    .local v4, "sysConditionObject":Lorg/json/JSONObject;
    const-string/jumbo v5, "key"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 196
    .local v5, "key":Ljava/lang/String;
    if-eqz v5, :cond_f

    .line 197
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 198
    .local v6, "values":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string/jumbo v9, "value"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 199
    const-string/jumbo v9, "value"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 200
    .local v9, "value":I
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 202
    .end local v9    # "value":I
    :cond_c
    const-string/jumbo v9, "values"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 203
    const-string/jumbo v9, "values"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 204
    .local v9, "valueArray":Lorg/json/JSONArray;
    const/4 v15, 0x0

    .local v15, "k":I
    :goto_8
    move-object/from16 v21, v2

    .end local v2    # "sysCondition":Lorg/json/JSONArray;
    .local v21, "sysCondition":Lorg/json/JSONArray;
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v15, v2, :cond_e

    .line 205
    invoke-virtual {v9, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 204
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v21

    goto :goto_8

    .line 202
    .end local v9    # "valueArray":Lorg/json/JSONArray;
    .end local v15    # "k":I
    .end local v21    # "sysCondition":Lorg/json/JSONArray;
    .restart local v2    # "sysCondition":Lorg/json/JSONArray;
    :cond_d
    move-object/from16 v21, v2

    .line 208
    .end local v2    # "sysCondition":Lorg/json/JSONArray;
    .restart local v21    # "sysCondition":Lorg/json/JSONArray;
    :cond_e
    new-instance v2, Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;

    invoke-direct {v2, v5, v6}, Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;-><init>(Ljava/lang/String;Ljava/util/HashSet;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 196
    .end local v6    # "values":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v21    # "sysCondition":Lorg/json/JSONArray;
    .restart local v2    # "sysCondition":Lorg/json/JSONArray;
    :cond_f
    move-object/from16 v21, v2

    .line 193
    .end local v2    # "sysCondition":Lorg/json/JSONArray;
    .end local v4    # "sysConditionObject":Lorg/json/JSONObject;
    .end local v5    # "key":Ljava/lang/String;
    .restart local v21    # "sysCondition":Lorg/json/JSONArray;
    :goto_9
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, v21

    goto :goto_7

    .end local v21    # "sysCondition":Lorg/json/JSONArray;
    .restart local v2    # "sysCondition":Lorg/json/JSONArray;
    :cond_10
    move-object/from16 v21, v2

    .line 212
    .end local v2    # "sysCondition":Lorg/json/JSONArray;
    .end local v3    # "j":I
    .restart local v21    # "sysCondition":Lorg/json/JSONArray;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;

    .line 213
    .local v3, "conf":Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;
    iget-object v4, v3, Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;->sysPropKey:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 214
    .local v4, "sysValue":I
    const-string v6, "RomPackageConfigManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "enableapk, key:"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " sysValue:"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " condition_not prefer values:"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v3}, Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;->getValues()Ljava/util/HashSet;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 214
    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {v3}, Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;->getValues()Ljava/util/HashSet;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 217
    const/4 v2, 0x0

    .line 218
    .end local v14    # "enableAPK":Z
    .local v2, "enableAPK":Z
    move v14, v2

    goto :goto_b

    .line 220
    .end local v2    # "enableAPK":Z
    .restart local v14    # "enableAPK":Z
    :cond_11
    const/4 v14, 0x1

    .line 221
    new-instance v6, Lcom/android/server/pm/RomPackageConfigManager$conditionSystem;

    invoke-virtual {v3}, Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v6, v9, v15}, Lcom/android/server/pm/RomPackageConfigManager$conditionSystem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    nop

    .end local v3    # "conf":Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;
    .end local v4    # "sysValue":I
    goto :goto_a

    .line 224
    .end local v21    # "sysCondition":Lorg/json/JSONArray;
    :cond_12
    :goto_b
    nop

    .line 230
    :goto_c
    const/4 v2, 0x1

    if-ne v14, v2, :cond_15

    .line 232
    new-instance v2, Lcom/android/server/pm/RomPackageConfigManager$EnablePackageConfig;

    invoke-direct {v2}, Lcom/android/server/pm/RomPackageConfigManager$EnablePackageConfig;-><init>()V

    .line 233
    .local v2, "sConfigs":Lcom/android/server/pm/RomPackageConfigManager$EnablePackageConfig;
    iget-object v3, v2, Lcom/android/server/pm/RomPackageConfigManager$EnablePackageConfig;->sysCondition:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 234
    const-string v3, "enable_apk_file_path_list"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 235
    const-string v3, "enable_apk_file_path_list"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 236
    .local v3, "filePathArray":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_d
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_14

    .line 237
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 238
    .local v5, "path":Ljava/lang/String;
    if-eqz v5, :cond_13

    .line 239
    const-string v6, "RomPackageConfigManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "meet condition, enabled apk path"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v6, v2, Lcom/android/server/pm/RomPackageConfigManager$EnablePackageConfig;->filePaths:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 236
    .end local v5    # "path":Ljava/lang/String;
    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 244
    .end local v3    # "filePathArray":Lorg/json/JSONArray;
    .end local v4    # "j":I
    :cond_14
    sget-object v3, Lcom/android/server/pm/RomPackageConfigManager;->sEnablePackageConfigs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    .end local v2    # "sConfigs":Lcom/android/server/pm/RomPackageConfigManager$EnablePackageConfig;
    .end local v13    # "enableObject":Lorg/json/JSONObject;
    .end local v14    # "enableAPK":Z
    :cond_15
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    const/4 v9, 0x0

    goto/16 :goto_1

    .line 225
    .restart local v13    # "enableObject":Lorg/json/JSONObject;
    .restart local v14    # "enableAPK":Z
    :cond_16
    const-string v2, "RomPackageConfigManager"

    const-string v3, "enable_apk_sysprop_condition/not config error, please check!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 226
    monitor-exit v1

    const/4 v1, 0x0

    return-object v1

    .line 150
    .end local v13    # "enableObject":Lorg/json/JSONObject;
    .end local v14    # "enableAPK":Z
    .end local v16    # "configFile":Ljava/io/File;
    .end local v17    # "is":Ljava/io/InputStream;
    .end local v18    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v19    # "sb":Ljava/lang/StringBuilder;
    .end local v20    # "line":Ljava/lang/String;
    .local v2, "configFile":Ljava/io/File;
    .local v3, "is":Ljava/io/InputStream;
    .local v4, "bufferedReader":Ljava/io/BufferedReader;
    .local v5, "line":Ljava/lang/String;
    .local v6, "sb":Ljava/lang/StringBuilder;
    :cond_17
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    move-object/from16 v19, v6

    .line 253
    .end local v2    # "configFile":Ljava/io/File;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "object":Lorg/json/JSONObject;
    .end local v8    # "arrayConfigs":Lorg/json/JSONArray;
    .end local v10    # "conditionConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/RomPackageConfigManager$conditionConfig;>;"
    .end local v11    # "conditionsCurSystem":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/RomPackageConfigManager$conditionSystem;>;"
    .end local v12    # "i":I
    goto :goto_e

    .line 144
    .restart local v2    # "configFile":Ljava/io/File;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local v7    # "object":Lorg/json/JSONObject;
    :cond_18
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    move-object/from16 v19, v6

    .end local v2    # "configFile":Ljava/io/File;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local v16    # "configFile":Ljava/io/File;
    .restart local v17    # "is":Ljava/io/InputStream;
    .restart local v18    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v19    # "sb":Ljava/lang/StringBuilder;
    .restart local v20    # "line":Ljava/lang/String;
    :try_start_5
    const-string v2, "RomPackageConfigManager"

    const-string v3, "enable_apk config error, please check!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 145
    monitor-exit v1

    const/4 v1, 0x0

    return-object v1

    .line 251
    .end local v7    # "object":Lorg/json/JSONObject;
    .end local v16    # "configFile":Ljava/io/File;
    .end local v17    # "is":Ljava/io/InputStream;
    .end local v18    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v19    # "sb":Ljava/lang/StringBuilder;
    .end local v20    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 252
    .local v2, "e3":Ljava/lang/Exception;
    :try_start_6
    const-string v3, "RomPackageConfigManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMeetConditionenableConfigs,JSON parse error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 249
    .end local v2    # "e3":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    move-object v2, v0

    .line 250
    .local v2, "e2":Lorg/json/JSONException;
    const-string v3, "RomPackageConfigManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JSON parse error in pms_sysprop_feature: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    nop

    .end local v2    # "e2":Lorg/json/JSONException;
    goto :goto_e

    .line 247
    :catch_2
    move-exception v0

    move-object v2, v0

    .line 248
    .local v2, "e1":Ljava/io/IOException;
    const-string v3, "RomPackageConfigManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IO error when read pms_sysprop_feature: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    nop

    .line 255
    .end local v2    # "e1":Ljava/io/IOException;
    :goto_e
    sget-object v2, Lcom/android/server/pm/RomPackageConfigManager;->sEnablePackageConfigs:Ljava/util/List;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v1

    return-object v2

    .line 110
    :catchall_0
    move-exception v0

    move-object v2, v0

    monitor-exit v1

    throw v2
.end method
