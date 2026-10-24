.class public final synthetic Lorg/apache/poi/poifs/crypt/agile/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;


# instance fields
.field public final synthetic c:Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$AgileCipherOutputStream;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$AgileCipherOutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/agile/b;->c:Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$AgileCipherOutputStream;

    return-void
.end method


# virtual methods
.method public final write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/agile/b;->c:Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$AgileCipherOutputStream;

    invoke-static {p0, p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$AgileCipherOutputStream;->b(Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$AgileCipherOutputStream;Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V

    return-void
.end method
