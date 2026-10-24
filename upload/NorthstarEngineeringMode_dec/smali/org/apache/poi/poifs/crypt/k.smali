.class public final synthetic Lorg/apache/poi/poifs/crypt/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/poi/poifs/crypt/EncryptionVerifier;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/poifs/crypt/EncryptionVerifier;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/poifs/crypt/k;->a:I

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/k;->b:Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/poifs/crypt/k;->a:I

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/k;->b:Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getEncryptedVerifierHash()[B

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
