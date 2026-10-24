.class public final synthetic Lorg/apache/poi/poifs/crypt/f;
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

    iput p2, p0, Lorg/apache/poi/poifs/crypt/f;->a:I

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/f;->b:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/poifs/crypt/f;->a:I

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/f;->b:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptionFlags()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptionMode()Lorg/apache/poi/poifs/crypt/EncryptionMode;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
