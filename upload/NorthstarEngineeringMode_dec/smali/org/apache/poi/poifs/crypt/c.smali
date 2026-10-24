.class public final synthetic Lorg/apache/poi/poifs/crypt/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/poi/poifs/crypt/EncryptionHeader;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/poifs/crypt/EncryptionHeader;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/poifs/crypt/c;->a:I

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/c;->b:Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/poifs/crypt/c;->a:I

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/c;->b:Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCspName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherProvider()Lorg/apache/poi/poifs/crypt/CipherProvider;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getFlags()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
