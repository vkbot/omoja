.class public Lorg/apache/poi/poifs/crypt/xor/XOREncryptionHeader;
.super Lorg/apache/poi/poifs/crypt/EncryptionHeader;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/xor/XOREncryptionHeader;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionHeader;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionHeader;->copy()Lorg/apache/poi/poifs/crypt/xor/XOREncryptionHeader;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/poifs/crypt/EncryptionHeader;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionHeader;->copy()Lorg/apache/poi/poifs/crypt/xor/XOREncryptionHeader;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/poifs/crypt/xor/XOREncryptionHeader;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionHeader;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionHeader;-><init>(Lorg/apache/poi/poifs/crypt/xor/XOREncryptionHeader;)V

    return-object v0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V
    .locals 0

    return-void
.end method
