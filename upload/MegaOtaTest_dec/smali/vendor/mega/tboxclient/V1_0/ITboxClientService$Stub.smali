.class public abstract Lvendor/mega/tboxclient/V1_0/ITboxClientService$Stub;
.super Landroid/os/HwBinder;
.source "ITboxClientService.java"

# interfaces
.implements Lvendor/mega/tboxclient/V1_0/ITboxClientService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mega/tboxclient/V1_0/ITboxClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 907
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 910
    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "fd"    # Landroid/os/NativeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 923
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 960
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 961
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 962
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 963
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 964
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 935
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 915
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mega.tboxclient@1.0::ITboxClientService"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 929
    const-string v0, "vendor.mega.tboxclient@1.0::ITboxClientService"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 948
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 970
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 972
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 10
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1000
    const-string v0, "vendor.mega.tboxclient@1.0::ITboxClientService"

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 1330
    :sswitch_0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1332
    invoke-virtual {p0}, Lvendor/mega/tboxclient/V1_0/ITboxClientService$Stub;->notifySyspropsChanged()V

    .line 1333
    goto/16 :goto_1

    .line 1319
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1321
    invoke-virtual {p0}, Lvendor/mega/tboxclient/V1_0/ITboxClientService$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1322
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1323
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1324
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1325
    goto/16 :goto_1

    .line 1309
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1311
    invoke-virtual {p0}, Lvendor/mega/tboxclient/V1_0/ITboxClientService$Stub;->ping()V

    .line 1312
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1313
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1314
    goto/16 :goto_1

    .line 1296
    :sswitch_3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1298
    invoke-virtual {p0}, Lvendor/mega/tboxclient/V1_0/ITboxClientService$Stub;->setHALInstrumentation()V

    .line 1299
    goto/16 :goto_1

    .line 1262
    :sswitch_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1264
    invoke-virtual {p0}, Lvendor/mega/tboxclient/V1_0/ITboxClientService$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1265
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1267
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 1269
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1270
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1271
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1272
    new-instance v1, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1273
    .local v1, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 1275
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1276
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1278
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 1282
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1283
    nop

    .line 1273
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1279
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1286
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1288
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1290
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1291
    goto/16 :goto_1

    .line 1251
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1253
    invoke-virtual {p0}, Lvendor/mega/tboxclient/V1_0/ITboxClientService$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1254
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1255
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1256
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1257
    goto/16 :goto_1

    .line 1239
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1241
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1242
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 1243
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mega/tboxclient/V1_0/ITboxClientService$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1244
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1245
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1246
    goto/16 :goto_1

    .line 1228
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1230
    invoke-virtual {p0}, Lvendor/mega/tboxclient/V1_0/ITboxClientService$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1231
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1232
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1233
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1234
    goto/16 :goto_1

    .line 1217
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1219
    invoke-virtual {p0}, Lvendor/mega/tboxclient/V1_0/ITboxClientService$Stub;->setFtpDefauleInfo()Z

    move-result v0

    .line 1220
    .local v0, "_hidl_out_result":Z
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1221
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1222
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1223
    goto/16 :goto_1

    .line 1206
    .end local v0    # "_hidl_out_result":Z
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1208
    invoke-virtual {p0}, Lvendor/mega/tboxclient/V1_0/ITboxClientService$Stub;->getFtpConnectPort()Ljava/lang/String;

    move-result-object v0

    .line 1209
    .local v0, "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1210
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1211
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1212
    goto/16 :goto_1

    .line 1195
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1197
    invoke-virtual {p0}, Lvendor/mega/tboxclient/V1_0/ITboxClientService$Stub;->getFtpConnectIp()Ljava/lang/String;

    move-result-object v0

    .line 1198
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1199
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1200
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1201
    goto/16 :goto_1

    .line 1184
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1186
    invoke-virtual {p0}, Lvendor/mega/tboxclient/V1_0/ITboxClientService$Stub;->getFtpUserPassWord()Ljava/lang/String;

    move-result-object v0

    .line 1187
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1188
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1189
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1190
    goto/16 :goto_1

    .line 1173
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1175
    invoke-virtual {p0}, Lvendor/mega/tboxclient/V1_0/ITboxClientService$Stub;->getFtpUserName()Ljava/lang/String;

    move-result-object v0

    .line 1176
    .restart local v0    # "_hidl_out_result":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1177
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1178
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1179
    goto/16 :goto_1

    .line 1161
    .end local v0    # "_hidl_out_result":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1163
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1164
    .local v0, "port":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/mega/tboxclient/V1_0/ITboxClientService$Stub;->setFtpConnectPort(Ljava/lang/String;)Z

    move-result v2

    .line 1165
    .local v2, "_hidl_out_result":Z
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1166
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1167
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1168
    goto/16 :goto_1

    .line 1149
    .end local v0    # "port":Ljava/lang/String;
    .end local v2    # "_hidl_out_result":Z
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1151
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1152
    .local v0, "ip":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/mega/tboxclient/V1_0/ITboxClientService$Stub;->setFtpConnectIp(Ljava/lang/String;)Z

    move-result v2

    .line 1153
    .restart local v2    # "_hidl_out_result":Z
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1154
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1155
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1156
    goto/16 :goto_1

    .line 1137
    .end local v0    # "ip":Ljava/lang/String;
    .end local v2    # "_hidl_out_result":Z
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1139
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1140
    .local v0, "password":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/mega/tboxclient/V1_0/ITboxClientService$Stub;->setFtpUserPassWord(Ljava/lang/String;)Z

    move-result v2

    .line 1141
    .restart local v2    # "_hidl_out_result":Z
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1142
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1143
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1144
    goto/16 :goto_1

    .line 1125
    .end local v0    # "password":Ljava/lang/String;
    .end local v2    # "_hidl_out_result":Z
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1127
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1128
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/mega/tboxclient/V1_0/ITboxClientService$Stub;->setFtpUserName(Ljava/lang/String;)Z

    move-result v2

    .line 1129
    .restart local v2    # "_hidl_out_result":Z
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1130
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1131
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1132
    goto/16 :goto_1

    .line 1112
    .end local v0    # "name":Ljava/lang/String;
    .end local v2    # "_hidl_out_result":Z
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1114
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1115
    .local v0, "uid":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1116
    .local v2, "ftpFilePath":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1117
    .local v3, "saveFilePath":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Lvendor/mega/tboxclient/V1_0/ITboxClientService$Stub;->startUploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1119
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1120
    goto/16 :goto_1

    .line 1099
    .end local v0    # "uid":Ljava/lang/String;
    .end local v2    # "ftpFilePath":Ljava/lang/String;
    .end local v3    # "saveFilePath":Ljava/lang/String;
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1101
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1102
    .restart local v0    # "uid":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1103
    .restart local v2    # "ftpFilePath":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1104
    .restart local v3    # "saveFilePath":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Lvendor/mega/tboxclient/V1_0/ITboxClientService$Stub;->startDownLoadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1106
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1107
    goto/16 :goto_1

    .line 1089
    .end local v0    # "uid":Ljava/lang/String;
    .end local v2    # "ftpFilePath":Ljava/lang/String;
    .end local v3    # "saveFilePath":Ljava/lang/String;
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1091
    invoke-virtual {p0}, Lvendor/mega/tboxclient/V1_0/ITboxClientService$Stub;->closeFtpLink()V

    .line 1092
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1093
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1094
    goto/16 :goto_1

    .line 1079
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1081
    invoke-virtual {p0}, Lvendor/mega/tboxclient/V1_0/ITboxClientService$Stub;->openFtpLink()V

    .line 1082
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1083
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1084
    goto/16 :goto_1

    .line 1066
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1068
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1069
    .restart local v0    # "uid":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mega/tboxclient/V1_0/ITboxClientFtpCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/mega/tboxclient/V1_0/ITboxClientFtpCallback;

    move-result-object v2

    .line 1070
    .local v2, "callback":Lvendor/mega/tboxclient/V1_0/ITboxClientFtpCallback;
    invoke-virtual {p0, v0, v2}, Lvendor/mega/tboxclient/V1_0/ITboxClientService$Stub;->unregisterFtpCallback(Ljava/lang/String;Lvendor/mega/tboxclient/V1_0/ITboxClientFtpCallback;)Z

    move-result v3

    .line 1071
    .local v3, "_hidl_out_result":Z
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1072
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1073
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1074
    goto/16 :goto_1

    .line 1053
    .end local v0    # "uid":Ljava/lang/String;
    .end local v2    # "callback":Lvendor/mega/tboxclient/V1_0/ITboxClientFtpCallback;
    .end local v3    # "_hidl_out_result":Z
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1055
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1056
    .restart local v0    # "uid":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mega/tboxclient/V1_0/ITboxClientFtpCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/mega/tboxclient/V1_0/ITboxClientFtpCallback;

    move-result-object v2

    .line 1057
    .restart local v2    # "callback":Lvendor/mega/tboxclient/V1_0/ITboxClientFtpCallback;
    invoke-virtual {p0, v0, v2}, Lvendor/mega/tboxclient/V1_0/ITboxClientService$Stub;->registerFtpCallback(Ljava/lang/String;Lvendor/mega/tboxclient/V1_0/ITboxClientFtpCallback;)Z

    move-result v3

    .line 1058
    .restart local v3    # "_hidl_out_result":Z
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1059
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1060
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1061
    goto :goto_1

    .line 1042
    .end local v0    # "uid":Ljava/lang/String;
    .end local v2    # "callback":Lvendor/mega/tboxclient/V1_0/ITboxClientFtpCallback;
    .end local v3    # "_hidl_out_result":Z
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1044
    invoke-virtual {p0}, Lvendor/mega/tboxclient/V1_0/ITboxClientService$Stub;->isTboxConnected()Z

    move-result v0

    .line 1045
    .local v0, "_hidl_out_result":Z
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1046
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1047
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1048
    goto :goto_1

    .line 1029
    .end local v0    # "_hidl_out_result":Z
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1031
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1032
    .local v0, "eventID":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mega/tboxclient/V1_0/ITboxClientServiceCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/mega/tboxclient/V1_0/ITboxClientServiceCallback;

    move-result-object v2

    .line 1033
    .local v2, "callback":Lvendor/mega/tboxclient/V1_0/ITboxClientServiceCallback;
    invoke-virtual {p0, v0, v2}, Lvendor/mega/tboxclient/V1_0/ITboxClientService$Stub;->unregisterRxCallback(Ljava/lang/String;Lvendor/mega/tboxclient/V1_0/ITboxClientServiceCallback;)Z

    move-result v3

    .line 1034
    .restart local v3    # "_hidl_out_result":Z
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1035
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1036
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1037
    goto :goto_1

    .line 1016
    .end local v0    # "eventID":Ljava/lang/String;
    .end local v2    # "callback":Lvendor/mega/tboxclient/V1_0/ITboxClientServiceCallback;
    .end local v3    # "_hidl_out_result":Z
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1018
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1019
    .restart local v0    # "eventID":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mega/tboxclient/V1_0/ITboxClientServiceCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/mega/tboxclient/V1_0/ITboxClientServiceCallback;

    move-result-object v2

    .line 1020
    .restart local v2    # "callback":Lvendor/mega/tboxclient/V1_0/ITboxClientServiceCallback;
    invoke-virtual {p0, v0, v2}, Lvendor/mega/tboxclient/V1_0/ITboxClientService$Stub;->registerRxCallback(Ljava/lang/String;Lvendor/mega/tboxclient/V1_0/ITboxClientServiceCallback;)Z

    move-result v3

    .line 1021
    .restart local v3    # "_hidl_out_result":Z
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1022
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1023
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1024
    goto :goto_1

    .line 1003
    .end local v0    # "eventID":Ljava/lang/String;
    .end local v2    # "callback":Lvendor/mega/tboxclient/V1_0/ITboxClientServiceCallback;
    .end local v3    # "_hidl_out_result":Z
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1005
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1006
    .restart local v0    # "eventID":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 1007
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mega/tboxclient/V1_0/ITboxClientService$Stub;->sendMsg(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v3

    .line 1008
    .restart local v3    # "_hidl_out_result":Z
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1009
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1010
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1011
    nop

    .line 1342
    .end local v0    # "eventID":Ljava/lang/String;
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v3    # "_hidl_out_result":Z
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_7
        0xf444247 -> :sswitch_6
        0xf445343 -> :sswitch_5
        0xf485348 -> :sswitch_4
        0xf494e54 -> :sswitch_3
        0xf504e47 -> :sswitch_2
        0xf524546 -> :sswitch_1
        0xf535953 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 954
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 982
    const-string v0, "vendor.mega.tboxclient@1.0::ITboxClientService"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 983
    return-object p0

    .line 985
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 989
    invoke-virtual {p0, p1}, Lvendor/mega/tboxclient/V1_0/ITboxClientService$Stub;->registerService(Ljava/lang/String;)V

    .line 990
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 944
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mega/tboxclient/V1_0/ITboxClientService$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 976
    const/4 v0, 0x1

    return v0
.end method
