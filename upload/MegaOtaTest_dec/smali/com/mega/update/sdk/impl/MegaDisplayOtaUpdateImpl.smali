.class public Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;
.super Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;
.source "MegaDisplayOtaUpdateImpl.java"

# interfaces
.implements Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;


# static fields
.field private static final ECU_NAME:Ljava/lang/String; = "display"

.field private static final ID_BACK_DISPLAY:I = 0x5

.field private static final ID_BACK_DISPLAY_OSD:I = 0x7

.field private static final ID_BACK_DISPLAY_TCON:I = 0x8

.field private static final ID_BACK_DISPLAY_TOUCH:I = 0x6

.field private static final ID_CLUSTER_DISPLAY:I = 0x1

.field private static final ID_CLUSTER_DISPLAY_OSD:I = 0x3

.field private static final ID_CLUSTER_DISPLAY_TCON:I = 0x4

.field private static final ID_CLUSTER_DISPLAY_TOUCH:I = 0x2

.field private static final ID_IVI_DISPALY_OSD:I = 0xb

.field private static final ID_IVI_DISPALY_TCON:I = 0xc

.field private static final ID_IVI_DISPALY_TOUCH:I = 0xa

.field private static final ID_IVI_DISPLAY:I = 0x9

.field private static final KIRKWOOD_PREFIX_BACK_DISPLAY_MCU:Ljava/lang/String; = "RCCPDisplayMCU"

.field private static final KIRKWOOD_PREFIX_BACK_DISPLAY_OSD:Ljava/lang/String; = "RCCPDisplayOSD"

.field private static final KIRKWOOD_PREFIX_BACK_DISPLAY_TCON:Ljava/lang/String; = "RCCPDisplayTcon"

.field private static final KIRKWOOD_PREFIX_BACK_DISPLAY_TOUCH:Ljava/lang/String; = "RCCPDisplayTouch"

.field private static final PREFIX_BACK_DISPLAY_MCU:Ljava/lang/String; = "BackDisplayMCU"

.field private static final PREFIX_BACK_DISPLAY_OSD:Ljava/lang/String; = "BackDisplayOSD"

.field private static final PREFIX_BACK_DISPLAY_TCON:Ljava/lang/String; = "BackDisplayTcon"

.field private static final PREFIX_BACK_DISPLAY_TOUCH:Ljava/lang/String; = "BackDisplayTouch"

.field private static final PREFIX_CLUSTER_DISPLAY_MCU:Ljava/lang/String; = "ClusterDisplayMCU"

.field private static final PREFIX_CLUSTER_DISPLAY_OSD:Ljava/lang/String; = "ClusterDisplayOSD"

.field private static final PREFIX_CLUSTER_DISPLAY_TCON:Ljava/lang/String; = "ClusterDisplayTcon"

.field private static final PREFIX_CLUSTER_DISPLAY_TOUCH:Ljava/lang/String; = "ClusterDisplayTouch"

.field private static final PREFIX_IVI_DISPALY_OSD:Ljava/lang/String; = "IviDisplayOSD"

.field private static final PREFIX_IVI_DISPALY_TCON:Ljava/lang/String; = "IviDisplayTcon"

.field private static final PREFIX_IVI_DISPALY_TOUCH:Ljava/lang/String; = "IviDisplayTouch"

.field private static final PREFIX_IVI_DISPLAY_MCU:Ljava/lang/String; = "IviDisplayMCU"

.field private static final SUFFIX_FLITER:Ljava/lang/String; = ".md5"

.field private static final TAG:Ljava/lang/String; = "MegaDisplayOtaUpdateImpl"

.field private static final TOPIC_TAG:Ljava/lang/String; = "dis"

.field private static final mAllDisplayOtaOrder:[I

.field private static final mBackDisplayOtaOrder:[I

.field private static final mDashBoardDisplayOtaOrder:[I

.field private static final mIviDisplayOtaOrder:[I


# instance fields
.field private mDisplayOtaOrder:[I

.field private mDisplayUpdateIndex:I

.field private mDisplayUpdateSuccessCount:I

.field private mFiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mOtaCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefixs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefixs_kirkwood:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mAllDisplayOtaOrder:[I

    .line 91
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mDashBoardDisplayOtaOrder:[I

    .line 97
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mBackDisplayOtaOrder:[I

    .line 103
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mIviDisplayOtaOrder:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data

    :array_2
    .array-data 4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x9
        0xa
        0xb
        0xc
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 169
    const-string v0, "cluster"

    invoke-direct {p0, p1, v0}, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .line 120
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "display"

    const-string v3, "dis"

    const/4 v4, 0x1

    .line 133
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 120
    move-object/from16 v6, p1

    invoke-direct {v0, v6, v2, v3, v4}, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 110
    const/4 v2, 0x0

    iput v2, v0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mDisplayUpdateSuccessCount:I

    .line 117
    iput v2, v0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mUpdateStatus:I

    .line 121
    const-string v2, "Dashboard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    sget-object v2, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mDashBoardDisplayOtaOrder:[I

    iput-object v2, v0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mDisplayOtaOrder:[I

    goto :goto_0

    .line 123
    :cond_0
    const-string v2, "Ivi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    sget-object v2, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mIviDisplayOtaOrder:[I

    iput-object v2, v0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mDisplayOtaOrder:[I

    goto :goto_0

    .line 125
    :cond_1
    const-string v2, "back"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 126
    sget-object v2, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mBackDisplayOtaOrder:[I

    iput-object v2, v0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mDisplayOtaOrder:[I

    goto :goto_0

    .line 127
    :cond_2
    const-string v2, "cluster"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 128
    sget-object v2, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mAllDisplayOtaOrder:[I

    iput-object v2, v0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mDisplayOtaOrder:[I

    .line 130
    :cond_3
    :goto_0
    iput-object v1, v0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mName:Ljava/lang/String;

    .line 131
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mFiles:Ljava/util/HashMap;

    .line 132
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mPrefixs:Ljava/util/HashMap;

    .line 133
    const-string v3, "ClusterDisplayMCU"

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v2, v0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mPrefixs:Ljava/util/HashMap;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "ClusterDisplayTouch"

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v2, v0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mPrefixs:Ljava/util/HashMap;

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "ClusterDisplayOSD"

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v2, v0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mPrefixs:Ljava/util/HashMap;

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "ClusterDisplayTcon"

    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v2, v0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mPrefixs:Ljava/util/HashMap;

    const/4 v11, 0x5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "BackDisplayMCU"

    invoke-virtual {v2, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v2, v0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mPrefixs:Ljava/util/HashMap;

    const/4 v13, 0x6

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "BackDisplayTouch"

    invoke-virtual {v2, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v2, v0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mPrefixs:Ljava/util/HashMap;

    const/16 v14, 0x8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v14, "BackDisplayTcon"

    invoke-virtual {v2, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v2, v0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mPrefixs:Ljava/util/HashMap;

    const/4 v14, 0x7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v14, "BackDisplayOSD"

    invoke-virtual {v2, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v2, v0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mPrefixs:Ljava/util/HashMap;

    const/16 v14, 0x9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v14, "IviDisplayMCU"

    invoke-virtual {v2, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v2, v0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mPrefixs:Ljava/util/HashMap;

    const/16 v15, 0xa

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v15, "IviDisplayTouch"

    invoke-virtual {v2, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v2, v0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mPrefixs:Ljava/util/HashMap;

    const/16 v13, 0xb

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "IviDisplayOSD"

    invoke-virtual {v2, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v2, v0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mPrefixs:Ljava/util/HashMap;

    const/16 v11, 0xc

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v11, "IviDisplayTcon"

    invoke-virtual {v2, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mPrefixs_kirkwood:Ljava/util/HashMap;

    .line 149
    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v2, v0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mPrefixs_kirkwood:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v2, v0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mPrefixs_kirkwood:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v2, v0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mPrefixs_kirkwood:Ljava/util/HashMap;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v2, v0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mPrefixs_kirkwood:Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "RCCPDisplayMCU"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v2, v0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mPrefixs_kirkwood:Ljava/util/HashMap;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "RCCPDisplayTouch"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v2, v0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mPrefixs_kirkwood:Ljava/util/HashMap;

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "RCCPDisplayOSD"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v2, v0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mPrefixs_kirkwood:Ljava/util/HashMap;

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "RCCPDisplayTcon"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v2, v0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mPrefixs_kirkwood:Ljava/util/HashMap;

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v2, v0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mPrefixs_kirkwood:Ljava/util/HashMap;

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v2, v0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mPrefixs_kirkwood:Ljava/util/HashMap;

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v2, v0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mPrefixs_kirkwood:Ljava/util/HashMap;

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, v0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mOtaCallbackList:Ljava/util/List;

    .line 165
    invoke-super {v0, v0}, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->registerCallback(Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;)Z

    .line 166
    return-void
.end method

.method private getAllDeviceInfo()Lcom/mega/update/sdk/utils/OtaDeviceInfo;
    .locals 9

    .line 364
    new-instance v0, Lcom/mega/update/sdk/utils/OtaDeviceInfo;

    invoke-direct {v0}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;-><init>()V

    .line 369
    .local v0, "displayInfo":Lcom/mega/update/sdk/utils/OtaDeviceInfo;
    const/16 v1, 0x9

    invoke-super {p0, v1}, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->setChildId(I)V

    .line 370
    invoke-super {p0}, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->getDeviceInfo()Lcom/mega/update/sdk/utils/OtaDeviceInfo;

    move-result-object v1

    .line 373
    .local v1, "iviMcuVersion":Lcom/mega/update/sdk/utils/OtaDeviceInfo;
    const/4 v2, 0x1

    invoke-super {p0, v2}, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->setChildId(I)V

    .line 374
    invoke-super {p0}, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->getDeviceInfo()Lcom/mega/update/sdk/utils/OtaDeviceInfo;

    move-result-object v2

    .line 377
    .local v2, "clusterMcuVersion":Lcom/mega/update/sdk/utils/OtaDeviceInfo;
    new-instance v3, Lcom/mega/update/sdk/impl/MegaDisplayVersionTransform;

    invoke-direct {v3}, Lcom/mega/update/sdk/impl/MegaDisplayVersionTransform;-><init>()V

    .line 379
    .local v3, "transformer":Lcom/mega/update/sdk/impl/MegaDisplayVersionTransform;
    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 383
    :cond_0
    invoke-virtual {v1}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->getSupplierCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->getSwVersion()Ljava/lang/String;

    move-result-object v5

    .line 384
    invoke-virtual {v1}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->getCalibVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->getSwVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->getCalibVersion()Ljava/lang/String;

    move-result-object v8

    .line 383
    invoke-virtual/range {v3 .. v8}, Lcom/mega/update/sdk/impl/MegaDisplayVersionTransform;->getVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->setSwVersion(Ljava/lang/String;)V

    .line 385
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " display SW version : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->getSwVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MegaDisplayOtaUpdateImpl"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 381
    :cond_1
    :goto_0
    const-string v4, "00.00.00"

    invoke-virtual {v0, v4}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->setSwVersion(Ljava/lang/String;)V

    .line 388
    :goto_1
    if-eqz v1, :cond_2

    .line 389
    invoke-virtual {v1}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->getBootVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->setBootVersion(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v1}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->getHwVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->setHwVersion(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v1}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->getSerialNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->setSerialNumber(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v1}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->getPartNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->setPartNumber(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v1}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->getSupplierCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->setSupplierCode(Ljava/lang/String;)V

    .line 396
    :cond_2
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 397
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->getCalibVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->getCalibVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->setCalibVersion(Ljava/lang/String;)V

    .line 399
    :cond_3
    return-object v0
.end method

.method private getDeviceInfo(I)Lcom/mega/update/sdk/utils/OtaDeviceInfo;
    .locals 7
    .param p1, "childId"    # I

    .line 404
    invoke-super {p0, p1}, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->setChildId(I)V

    .line 405
    invoke-super {p0}, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->getDeviceInfo()Lcom/mega/update/sdk/utils/OtaDeviceInfo;

    move-result-object v0

    .line 406
    .local v0, "tempDisplayInfo":Lcom/mega/update/sdk/utils/OtaDeviceInfo;
    new-instance v1, Lcom/mega/update/sdk/impl/MegaDisplayVersionTransform;

    invoke-direct {v1}, Lcom/mega/update/sdk/impl/MegaDisplayVersionTransform;-><init>()V

    .line 407
    .local v1, "transformer":Lcom/mega/update/sdk/impl/MegaDisplayVersionTransform;
    if-nez v0, :cond_0

    .line 408
    new-instance v2, Lcom/mega/update/sdk/utils/OtaDeviceInfo;

    invoke-direct {v2}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;-><init>()V

    .line 409
    .local v2, "displayInfo":Lcom/mega/update/sdk/utils/OtaDeviceInfo;
    const-string v3, "00.00.00_00.00.00"

    invoke-virtual {v2, v3}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->setSwVersion(Ljava/lang/String;)V

    goto :goto_0

    .line 411
    .end local v2    # "displayInfo":Lcom/mega/update/sdk/utils/OtaDeviceInfo;
    :cond_0
    invoke-virtual {v0}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->getSwVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mega/update/sdk/impl/MegaDisplayVersionTransform;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 412
    .local v2, "version":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "00.00.00_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->setSwVersion(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v0}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->getCalibVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mega/update/sdk/impl/MegaDisplayVersionTransform;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 414
    .local v3, "calibVString":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->setCalibVersion(Ljava/lang/String;)V

    .line 415
    move-object v4, v0

    .line 416
    .local v4, "displayInfo":Lcom/mega/update/sdk/utils/OtaDeviceInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " display SW version : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->getSwVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MegaDisplayOtaUpdateImpl"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 418
    .end local v3    # "calibVString":Ljava/lang/String;
    .end local v4    # "displayInfo":Lcom/mega/update/sdk/utils/OtaDeviceInfo;
    .local v2, "displayInfo":Lcom/mega/update/sdk/utils/OtaDeviceInfo;
    :goto_0
    return-object v2
.end method

.method private getNextChildId()I
    .locals 4

    .line 173
    iget v0, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mDisplayUpdateIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mDisplayUpdateIndex:I

    .line 175
    const-string v0, ""

    .line 176
    .local v0, "temp":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mDisplayOtaOrder:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mDisplayOtaOrder:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getNextChildId temp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MegaDisplayOtaUpdateImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_1
    iget v1, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mDisplayUpdateIndex:I

    iget-object v2, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mDisplayOtaOrder:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 181
    iget-object v3, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mFiles:Ljava/util/HashMap;

    aget v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mDisplayOtaOrder:[I

    iget v2, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mDisplayUpdateIndex:I

    aget v1, v1, v2

    return v1

    .line 184
    :cond_1
    iget v1, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mDisplayUpdateIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mDisplayUpdateIndex:I

    goto :goto_1

    .line 186
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method private static isE0xVersion()Z
    .locals 2

    .line 261
    const-string v0, "sys.update.package.regular"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "productName":Ljava/lang/String;
    const-string v1, "e0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "kirkwood"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 265
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 263
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public getDeviceInfo()Lcom/mega/update/sdk/utils/OtaDeviceInfo;
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mName:Ljava/lang/String;

    const-string v1, "Dashboard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->getDeviceInfo(I)Lcom/mega/update/sdk/utils/OtaDeviceInfo;

    move-result-object v0

    return-object v0

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mName:Ljava/lang/String;

    const-string v1, "Ivi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->getDeviceInfo(I)Lcom/mega/update/sdk/utils/OtaDeviceInfo;

    move-result-object v0

    return-object v0

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mName:Ljava/lang/String;

    const-string v1, "back"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 428
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->getDeviceInfo(I)Lcom/mega/update/sdk/utils/OtaDeviceInfo;

    move-result-object v0

    return-object v0

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mName:Ljava/lang/String;

    const-string v1, "cluster"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 430
    invoke-direct {p0}, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->getAllDeviceInfo()Lcom/mega/update/sdk/utils/OtaDeviceInfo;

    move-result-object v0

    return-object v0

    .line 432
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public otaUpdateProgress(Ljava/lang/String;II)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "childid"    # I
    .param p3, "totalProgress"    # I

    .line 192
    iget v0, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mUpdateStatus:I

    if-eqz v0, :cond_3

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 195
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "totalProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MegaDisplayOtaUpdateImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget v0, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mDisplayUpdateIndex:I

    iget-object v2, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mDisplayOtaOrder:[I

    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget v0, v2, v0

    const v2, 0xffffff

    and-int/2addr v2, p2

    if-ne v0, v2, :cond_2

    .line 199
    :try_start_0
    iget v0, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mDisplayUpdateSuccessCount:I

    mul-int/lit8 v0, v0, 0x64

    add-int/2addr v0, p3

    iget-object v2, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mFiles:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    div-int/2addr v0, v2

    .line 200
    .local v0, "mProgressPct":I
    iget-object v2, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mOtaCallbackList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;

    .line 201
    .local v3, "callback":Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;
    invoke-interface {v3, p1, p2, v0}, Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;->otaUpdateProgress(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .end local v3    # "callback":Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;
    goto :goto_0

    .line 205
    :cond_1
    goto :goto_1

    .line 203
    .end local v0    # "mProgressPct":I
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/ArithmeticException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mFiles.size  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mFiles:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .end local v0    # "e":Ljava/lang/ArithmeticException;
    :cond_2
    :goto_1
    return-void

    .line 193
    :cond_3
    :goto_2
    return-void
.end method

.method public otaUpdateStatus(Ljava/lang/String;III)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "childid"    # I
    .param p3, "code"    # I
    .param p4, "status"    # I

    .line 211
    iget v0, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mUpdateStatus:I

    if-eqz v0, :cond_6

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    goto/16 :goto_4

    .line 214
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "otaUpdateStatus name : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " childid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " update code : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " status:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MegaDisplayOtaUpdateImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    if-ne p4, v1, :cond_4

    .line 216
    iget v0, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mDisplayUpdateIndex:I

    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mDisplayOtaOrder:[I

    array-length v3, v1

    if-ge v0, v3, :cond_3

    aget v0, v1, v0

    const v1, 0xffffff

    and-int/2addr v1, p2

    if-ne v0, v1, :cond_3

    .line 217
    iget v0, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mDisplayUpdateSuccessCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mDisplayUpdateSuccessCount:I

    .line 218
    invoke-direct {p0}, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->getNextChildId()I

    move-result v0

    .line 219
    .local v0, "nextChild":I
    iget v1, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mDisplayUpdateSuccessCount:I

    iget-object v3, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mFiles:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 220
    const-string v1, "Update  display succeed"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mOtaCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;

    .line 222
    .local v2, "callback":Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;->otaUpdateStatus(Ljava/lang/String;III)V

    .line 223
    .end local v2    # "callback":Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;
    goto :goto_0

    .line 224
    :cond_1
    iput p4, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mUpdateStatus:I

    .line 225
    return-void

    .line 228
    :cond_2
    :try_start_0
    const-string v1, "Sleep..."

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-wide/16 v3, 0x7d0

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    goto :goto_1

    .line 230
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 233
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update  display "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mDisplayOtaOrder:[I

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-super {p0, v0}, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->setChildId(I)V

    .line 235
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mFiles:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-super {p0, v1, v2}, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->triggerUpgrade(Ljava/io/File;Landroid/os/Bundle;)I

    .line 236
    const/16 v1, 0xa

    iput v1, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mUpdateStatus:I

    .line 237
    return-void

    .line 239
    .end local v0    # "nextChild":I
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "order error: mDisplayUpdateIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mDisplayUpdateIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDisplayOtaOrder.length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mDisplayOtaOrder:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 241
    :cond_4
    const/16 v0, 0xb

    if-ne p4, v0, :cond_5

    .line 242
    const-string v0, "Flash display failed! "

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iput p4, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mUpdateStatus:I

    .line 244
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mOtaCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;

    .line 245
    .local v1, "callback":Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;->otaUpdateStatus(Ljava/lang/String;III)V

    .line 246
    .end local v1    # "callback":Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;
    goto :goto_2

    .line 248
    :cond_5
    :goto_3
    return-void

    .line 212
    :cond_6
    :goto_4
    return-void
.end method

.method public registerCallback(Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;)Z
    .locals 1
    .param p1, "listener"    # Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;

    .line 252
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mOtaCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public triggerUpgrade(Ljava/io/File;Landroid/os/Bundle;)I
    .locals 16
    .param p1, "f"    # Ljava/io/File;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 270
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "MegaDisplayOtaUpdateImpl"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "triggerUpgrade called with:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    if-eqz v2, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " File="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    const-string v5, " File=null"

    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    const-string v5, "mega_ota_2.0"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, v1, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mFiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 273
    const/4 v5, 0x0

    iput v5, v1, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mDisplayUpdateSuccessCount:I

    .line 278
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " zip file : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 281
    .local v0, "fileInputStream":Ljava/io/FileInputStream;
    new-instance v7, Ljava/util/zip/ZipInputStream;

    invoke-direct {v7, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 283
    .local v7, "inZip":Ljava/util/zip/ZipInputStream;
    const-string v8, ""

    .line 284
    .local v8, "szName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v9

    .line 285
    .local v9, "outPathString":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " outPathString  :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :goto_1
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v10

    move-object v11, v10

    .local v11, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v10, :cond_8

    .line 287
    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 288
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " szName "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 290
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "  isDirectory"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 296
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-static {}, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->isE0xVersion()Z

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, ".md5"

    if-eqz v10, :cond_4

    .line 298
    :try_start_1
    iget-object v10, v1, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mPrefixs_kirkwood:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 299
    .local v13, "i":Ljava/lang/Integer;
    iget-object v14, v1, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mPrefixs_kirkwood:Ljava/util/HashMap;

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 300
    .local v14, "prefix":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 301
    iget-object v5, v1, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mFiles:Ljava/util/HashMap;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .end local v13    # "i":Ljava/lang/Integer;
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 304
    .end local v14    # "prefix":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " triggerUpgrade mFiles1 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mFiles:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " mPrefixs_kirkwood = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mPrefixs_kirkwood:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 306
    :cond_4
    iget-object v5, v1, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mPrefixs:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 307
    .local v6, "i":Ljava/lang/Integer;
    iget-object v10, v1, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mPrefixs:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 308
    .local v10, "prefix":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 309
    iget-object v13, v1, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mFiles:Ljava/util/HashMap;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .end local v6    # "i":Ljava/lang/Integer;
    :cond_5
    goto :goto_3

    .line 312
    .end local v10    # "prefix":Ljava/lang/String;
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " triggerUpgrade mFiles2 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mFiles:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " mPrefixs = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mPrefixs:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " triggerUpgrade mFiles3 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mFiles:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 318
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 319
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Create the file:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 321
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 324
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 326
    .local v6, "out":Ljava/io/FileOutputStream;
    const/16 v10, 0x400

    new-array v10, v10, [B

    .line 328
    .local v10, "buffer":[B
    :goto_5
    invoke-virtual {v7, v10}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v12

    move v13, v12

    const/4 v14, -0x1

    .local v13, "len":I
    if-eq v12, v14, :cond_7

    .line 330
    const/4 v12, 0x0

    invoke-virtual {v6, v10, v12, v13}, Ljava/io/FileOutputStream;->write([BII)V

    .line 331
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    goto :goto_5

    .line 333
    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " file unzip "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " succeed."

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 335
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .end local v10    # "buffer":[B
    .end local v13    # "len":I
    nop

    .line 286
    .end local v11    # "zipEntry":Ljava/util/zip/ZipEntry;
    :goto_6
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 337
    .restart local v11    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_8
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 340
    .end local v0    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v7    # "inZip":Ljava/util/zip/ZipInputStream;
    .end local v8    # "szName":Ljava/lang/String;
    .end local v9    # "outPathString":Ljava/lang/String;
    .end local v11    # "zipEntry":Ljava/util/zip/ZipEntry;
    goto :goto_7

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 341
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " EXTRACT_FINISH  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mFiles:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v5, -0x1

    iput v5, v1, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mDisplayUpdateIndex:I

    .line 346
    invoke-direct/range {p0 .. p0}, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->getNextChildId()I

    move-result v0

    .line 347
    .local v0, "childId":I
    if-gez v0, :cond_9

    .line 348
    const-string v5, " NO valid update file !!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v4, 0x6

    return v4

    .line 351
    :cond_9
    invoke-super {v1, v0}, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->setChildId(I)V

    .line 352
    const/16 v4, 0xa

    iput v4, v1, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mUpdateStatus:I

    .line 354
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 355
    .local v4, "bundle2":Landroid/os/Bundle;
    const-string v5, "childId"

    if-eqz v3, :cond_a

    const-string v6, "isUSB"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 356
    const/high16 v6, 0x1000000

    or-int/2addr v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_8

    .line 358
    :cond_a
    const/high16 v6, 0x2000000

    or-int/2addr v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 360
    :goto_8
    new-instance v5, Ljava/io/File;

    iget-object v6, v1, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mFiles:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-super {v1, v5, v4}, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->triggerUpgrade(Ljava/io/File;Landroid/os/Bundle;)I

    move-result v5

    return v5
.end method

.method public unregisterCallback(Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;)V
    .locals 1
    .param p1, "listener"    # Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;

    .line 257
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDisplayOtaUpdateImpl;->mOtaCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 258
    return-void
.end method
