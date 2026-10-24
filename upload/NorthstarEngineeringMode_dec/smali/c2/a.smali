.class public final synthetic Lc2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;
.implements Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;
.implements Lm5/y$a;
.implements Lm5/z0$j;


# instance fields
.field public final synthetic c:I

.field public final synthetic r:Ljava/lang/Object;

.field public final synthetic x:Ljava/lang/Object;

.field public final synthetic y:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lc2/a;->c:I

    iput-object p1, p0, Lc2/a;->r:Ljava/lang/Object;

    iput-object p2, p0, Lc2/a;->x:Ljava/lang/Object;

    iput-object p4, p0, Lc2/a;->y:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lm5/z0;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lc2/a;->r:Ljava/lang/Object;

    check-cast v0, Li5/z1;

    iget-object v1, p0, Lc2/a;->x:Ljava/lang/Object;

    check-cast v1, Ljava/io/Reader;

    iget-object p0, p0, Lc2/a;->y:Ljava/lang/Object;

    check-cast p0, Li5/c0;

    invoke-static {v0}, Lm5/z0;->u(Li5/z1;)Lm5/z0$k;

    move-result-object v2

    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2, p1, v3, v0}, Lm5/z0$h;->b(Lm5/z0;Lorg/xml/sax/InputSource;Li5/z1;)Lm5/h;

    move-result-object p1

    invoke-static {p1, p0, v0}, Lm5/z0;->d(Lm5/h;Li5/c0;Li5/z1;)V

    iget-object p0, p1, Lm5/h;->b:Lm5/w1;

    invoke-virtual {p0}, Lm5/w1;->g0()Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {p1}, Lm5/h;->h0()V

    return-object p0
.end method

.method public final b()I
    .locals 2

    iget-object v0, p0, Lc2/a;->r:Ljava/lang/Object;

    check-cast v0, Lc2/b;

    iget-object v1, p0, Lc2/a;->x:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Lc2/a;->y:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, v0, Lc2/b;->a:Lvendor/mega/tboxclient/V1_0/ITboxClientService;

    invoke-interface {v0, v1, p0}, Lvendor/mega/tboxclient/V1_0/ITboxClientService;->sendMsg(Ljava/lang/String;Ljava/util/ArrayList;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to set value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TBoxClient"

    invoke-static {v0, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x100

    :goto_0
    return p0
.end method

.method public final run()V
    .locals 3

    iget-object v0, p0, Lc2/a;->r:Ljava/lang/Object;

    check-cast v0, Lm5/y;

    iget-object v1, p0, Lc2/a;->x:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    iget-object p0, p0, Lc2/a;->y:Ljava/lang/Object;

    check-cast p0, Li5/z1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v1

    :try_start_0
    invoke-virtual {v0, v1, p0}, Lm5/y;->P1(Ljava/io/OutputStream;Li5/z1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null file specified"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final visitRecord(Lorg/apache/poi/hssf/record/Record;)V
    .locals 2

    iget-object v0, p0, Lc2/a;->r:Ljava/lang/Object;

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    iget-object v1, p0, Lc2/a;->x:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iget-object p0, p0, Lc2/a;->y:Ljava/lang/Object;

    check-cast p0, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;

    invoke-static {v0, v1, p0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->a(Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;Ljava/util/Map;Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;Lorg/apache/poi/hssf/record/Record;)V

    return-void
.end method

.method public final write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V
    .locals 3

    iget v0, p0, Lc2/a;->c:I

    iget-object v1, p0, Lc2/a;->y:Ljava/lang/Object;

    iget-object v2, p0, Lc2/a;->x:Ljava/lang/Object;

    iget-object p0, p0, Lc2/a;->r:Ljava/lang/Object;

    check-cast p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    packed-switch v0, :pswitch_data_0

    check-cast v2, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;

    check-cast v1, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;

    invoke-static {p0, v2, v1, p1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->b(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V

    return-void

    :pswitch_0
    check-cast v2, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;

    check-cast v1, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;

    invoke-static {p0, v2, v1, p1}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;->b(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
