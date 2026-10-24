.class public final synthetic Lorg/apache/poi/poifs/crypt/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/poi/poifs/crypt/EncryptionInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/poifs/crypt/EncryptionInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/poifs/crypt/g;->a:I

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/g;->b:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/poifs/crypt/g;->a:I

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/g;->b:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptor()Lorg/apache/poi/poifs/crypt/Encryptor;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMajor()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
